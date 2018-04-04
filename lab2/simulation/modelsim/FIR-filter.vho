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

-- DATE "04/04/2018 00:43:29"

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
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	fir_transpose IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	x : IN std_logic_vector(8 DOWNTO 0);
	y : OUT std_logic_vector(10 DOWNTO 0)
	);
END fir_transpose;

-- Design Ports Information
-- y[0]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[8]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[9]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[10]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[4]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[5]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[6]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[7]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[8]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fir_transpose IS
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
SIGNAL ww_x : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(10 DOWNTO 0);
SIGNAL \Mult0~mac_AX_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0~mac_AY_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mult0~mac_BX_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult1~mac_AX_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult1~mac_AY_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Mult1~mac_BX_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult1~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult0~8\ : std_logic;
SIGNAL \Mult0~9\ : std_logic;
SIGNAL \Mult0~10\ : std_logic;
SIGNAL \Mult0~11\ : std_logic;
SIGNAL \Mult0~12\ : std_logic;
SIGNAL \Mult0~13\ : std_logic;
SIGNAL \Mult0~14\ : std_logic;
SIGNAL \Mult0~15\ : std_logic;
SIGNAL \Mult0~16\ : std_logic;
SIGNAL \Mult0~17\ : std_logic;
SIGNAL \Mult0~18\ : std_logic;
SIGNAL \Mult0~19\ : std_logic;
SIGNAL \Mult0~20\ : std_logic;
SIGNAL \Mult0~21\ : std_logic;
SIGNAL \Mult0~22\ : std_logic;
SIGNAL \Mult0~23\ : std_logic;
SIGNAL \Mult0~24\ : std_logic;
SIGNAL \Mult0~25\ : std_logic;
SIGNAL \Mult0~26\ : std_logic;
SIGNAL \Mult0~27\ : std_logic;
SIGNAL \Mult0~28\ : std_logic;
SIGNAL \Mult0~29\ : std_logic;
SIGNAL \Mult0~30\ : std_logic;
SIGNAL \Mult0~31\ : std_logic;
SIGNAL \Mult0~32\ : std_logic;
SIGNAL \Mult0~33\ : std_logic;
SIGNAL \Mult0~34\ : std_logic;
SIGNAL \Mult0~35\ : std_logic;
SIGNAL \Mult0~36\ : std_logic;
SIGNAL \Mult0~37\ : std_logic;
SIGNAL \Mult0~38\ : std_logic;
SIGNAL \Mult0~39\ : std_logic;
SIGNAL \Mult0~40\ : std_logic;
SIGNAL \Mult0~41\ : std_logic;
SIGNAL \Mult0~42\ : std_logic;
SIGNAL \Mult0~43\ : std_logic;
SIGNAL \Mult0~44\ : std_logic;
SIGNAL \Mult0~45\ : std_logic;
SIGNAL \Mult0~46\ : std_logic;
SIGNAL \Mult0~47\ : std_logic;
SIGNAL \Mult0~48\ : std_logic;
SIGNAL \Mult0~49\ : std_logic;
SIGNAL \Mult0~50\ : std_logic;
SIGNAL \Mult0~51\ : std_logic;
SIGNAL \Mult0~52\ : std_logic;
SIGNAL \Mult0~53\ : std_logic;
SIGNAL \Mult0~54\ : std_logic;
SIGNAL \Mult1~8\ : std_logic;
SIGNAL \Mult1~9\ : std_logic;
SIGNAL \Mult1~10\ : std_logic;
SIGNAL \Mult1~11\ : std_logic;
SIGNAL \Mult1~12\ : std_logic;
SIGNAL \Mult1~13\ : std_logic;
SIGNAL \Mult1~14\ : std_logic;
SIGNAL \Mult1~15\ : std_logic;
SIGNAL \Mult1~16\ : std_logic;
SIGNAL \Mult1~17\ : std_logic;
SIGNAL \Mult1~18\ : std_logic;
SIGNAL \Mult1~19\ : std_logic;
SIGNAL \Mult1~20\ : std_logic;
SIGNAL \Mult1~21\ : std_logic;
SIGNAL \Mult1~22\ : std_logic;
SIGNAL \Mult1~23\ : std_logic;
SIGNAL \Mult1~24\ : std_logic;
SIGNAL \Mult1~25\ : std_logic;
SIGNAL \Mult1~26\ : std_logic;
SIGNAL \Mult1~27\ : std_logic;
SIGNAL \Mult1~28\ : std_logic;
SIGNAL \Mult1~29\ : std_logic;
SIGNAL \Mult1~30\ : std_logic;
SIGNAL \Mult1~31\ : std_logic;
SIGNAL \Mult1~32\ : std_logic;
SIGNAL \Mult1~33\ : std_logic;
SIGNAL \Mult1~34\ : std_logic;
SIGNAL \Mult1~35\ : std_logic;
SIGNAL \Mult1~36\ : std_logic;
SIGNAL \Mult1~37\ : std_logic;
SIGNAL \Mult1~38\ : std_logic;
SIGNAL \Mult1~39\ : std_logic;
SIGNAL \Mult1~40\ : std_logic;
SIGNAL \Mult1~41\ : std_logic;
SIGNAL \Mult1~42\ : std_logic;
SIGNAL \Mult1~43\ : std_logic;
SIGNAL \Mult1~44\ : std_logic;
SIGNAL \Mult1~45\ : std_logic;
SIGNAL \Mult1~46\ : std_logic;
SIGNAL \Mult1~47\ : std_logic;
SIGNAL \Mult1~48\ : std_logic;
SIGNAL \Mult1~49\ : std_logic;
SIGNAL \Mult1~50\ : std_logic;
SIGNAL \Mult1~51\ : std_logic;
SIGNAL \Mult1~52\ : std_logic;
SIGNAL \Mult1~53\ : std_logic;
SIGNAL \Mult1~54\ : std_logic;
SIGNAL \Mult1~55\ : std_logic;
SIGNAL \Mult1~56\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \x[6]~input_o\ : std_logic;
SIGNAL \x[5]~input_o\ : std_logic;
SIGNAL \x[4]~input_o\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \Add4~22\ : std_logic;
SIGNAL \Add4~18\ : std_logic;
SIGNAL \Add4~14\ : std_logic;
SIGNAL \Add4~10\ : std_logic;
SIGNAL \Add4~6\ : std_logic;
SIGNAL \Add4~38\ : std_logic;
SIGNAL \Add4~1_sumout\ : std_logic;
SIGNAL \Add4~37_sumout\ : std_logic;
SIGNAL \Add5~38\ : std_logic;
SIGNAL \Add5~1_sumout\ : std_logic;
SIGNAL \x[7]~input_o\ : std_logic;
SIGNAL \x[8]~input_o\ : std_logic;
SIGNAL \mul[2][8]\ : std_logic;
SIGNAL \Add4~2\ : std_logic;
SIGNAL \Add4~26\ : std_logic;
SIGNAL \Add4~29_sumout\ : std_logic;
SIGNAL \Add4~25_sumout\ : std_logic;
SIGNAL \Add7~42\ : std_logic;
SIGNAL \Add7~38\ : std_logic;
SIGNAL \Add7~34\ : std_logic;
SIGNAL \Add7~1_sumout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \add[3][8]~q\ : std_logic;
SIGNAL \Add7~33_sumout\ : std_logic;
SIGNAL \add[3][7]~q\ : std_logic;
SIGNAL \mul[2][7]\ : std_logic;
SIGNAL \Add7~37_sumout\ : std_logic;
SIGNAL \add[3][6]~q\ : std_logic;
SIGNAL \mul[2][6]\ : std_logic;
SIGNAL \mul[2][5]\ : std_logic;
SIGNAL \Add7~41_sumout\ : std_logic;
SIGNAL \add[3][5]~q\ : std_logic;
SIGNAL \Add6~1_combout\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \add[3][4]~q\ : std_logic;
SIGNAL \mul[2][4]\ : std_logic;
SIGNAL \mul[2][3]\ : std_logic;
SIGNAL \Add6~3_combout\ : std_logic;
SIGNAL \add[3][3]~q\ : std_logic;
SIGNAL \mul[2][2]\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \add[3][2]~q\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \add[3][1]~q\ : std_logic;
SIGNAL \mul[2][1]\ : std_logic;
SIGNAL \add[3][0]~q\ : std_logic;
SIGNAL \mul[2][0]\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~66\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \add[2][8]~q\ : std_logic;
SIGNAL \mul[1][8]\ : std_logic;
SIGNAL \mul[1][7]\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \add[2][7]~q\ : std_logic;
SIGNAL \mul[1][6]\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \add[2][6]~q\ : std_logic;
SIGNAL \mul[1][5]\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \add[2][5]~q\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \add[2][4]~q\ : std_logic;
SIGNAL \mul[1][4]\ : std_logic;
SIGNAL \Add1~65_sumout\ : std_logic;
SIGNAL \add[2][3]~q\ : std_logic;
SIGNAL \mul[1][3]\ : std_logic;
SIGNAL \mul[1][2]\ : std_logic;
SIGNAL \Add1~69_sumout\ : std_logic;
SIGNAL \add[2][2]~q\ : std_logic;
SIGNAL \mul[1][1]\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \add[2][1]~q\ : std_logic;
SIGNAL \mul[1][0]\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \add[2][0]~q\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \add[1][8]~q\ : std_logic;
SIGNAL \Add5~37_sumout\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \add[1][7]~q\ : std_logic;
SIGNAL \Add4~5_sumout\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \add[1][6]~q\ : std_logic;
SIGNAL \Add4~9_sumout\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \add[1][5]~q\ : std_logic;
SIGNAL \Add4~13_sumout\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \add[1][4]~q\ : std_logic;
SIGNAL \Add4~17_sumout\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \add[1][3]~q\ : std_logic;
SIGNAL \Add4~21_sumout\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \add[1][2]~q\ : std_logic;
SIGNAL \Add2~66\ : std_logic;
SIGNAL \Add2~62\ : std_logic;
SIGNAL \Add2~58\ : std_logic;
SIGNAL \Add2~54\ : std_logic;
SIGNAL \Add2~50\ : std_logic;
SIGNAL \Add2~46\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \Add4~30\ : std_logic;
SIGNAL \Add4~33_sumout\ : std_logic;
SIGNAL \Add5~2\ : std_logic;
SIGNAL \Add5~6\ : std_logic;
SIGNAL \Add5~10\ : std_logic;
SIGNAL \Add5~14\ : std_logic;
SIGNAL \Add5~18\ : std_logic;
SIGNAL \Add5~22\ : std_logic;
SIGNAL \Add5~26\ : std_logic;
SIGNAL \Add5~30\ : std_logic;
SIGNAL \Add5~33_sumout\ : std_logic;
SIGNAL \mul[2][14]\ : std_logic;
SIGNAL \add[3][16]~q\ : std_logic;
SIGNAL \Add7~2\ : std_logic;
SIGNAL \Add7~6\ : std_logic;
SIGNAL \Add7~10\ : std_logic;
SIGNAL \Add7~14\ : std_logic;
SIGNAL \Add7~18\ : std_logic;
SIGNAL \Add7~22\ : std_logic;
SIGNAL \Add7~26\ : std_logic;
SIGNAL \Add7~29_sumout\ : std_logic;
SIGNAL \add[3][15]~q\ : std_logic;
SIGNAL \Add7~25_sumout\ : std_logic;
SIGNAL \add[3][14]~q\ : std_logic;
SIGNAL \mul[2][13]\ : std_logic;
SIGNAL \Add7~21_sumout\ : std_logic;
SIGNAL \add[3][13]~q\ : std_logic;
SIGNAL \mul[2][12]\ : std_logic;
SIGNAL \Add7~17_sumout\ : std_logic;
SIGNAL \add[3][12]~q\ : std_logic;
SIGNAL \mul[2][11]\ : std_logic;
SIGNAL \Add7~13_sumout\ : std_logic;
SIGNAL \add[3][11]~q\ : std_logic;
SIGNAL \Add7~9_sumout\ : std_logic;
SIGNAL \add[3][10]~q\ : std_logic;
SIGNAL \mul[2][10]\ : std_logic;
SIGNAL \Add7~5_sumout\ : std_logic;
SIGNAL \add[3][9]~q\ : std_logic;
SIGNAL \mul[2][9]\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \add[2][17]~q\ : std_logic;
SIGNAL \mul[1][16]\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \add[2][16]~q\ : std_logic;
SIGNAL \mul[1][15]\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \add[2][15]~q\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \add[2][14]~q\ : std_logic;
SIGNAL \mul[1][14]\ : std_logic;
SIGNAL \mul[1][13]\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \add[2][13]~q\ : std_logic;
SIGNAL \mul[1][12]\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \add[2][12]~q\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \add[2][11]~q\ : std_logic;
SIGNAL \mul[1][11]\ : std_logic;
SIGNAL \mul[1][10]\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \add[2][10]~q\ : std_logic;
SIGNAL \mul[1][9]\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \add[2][9]~q\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \add[1][18]~q\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \add[1][17]~q\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \add[1][16]~q\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \add[1][15]~q\ : std_logic;
SIGNAL \Add5~29_sumout\ : std_logic;
SIGNAL \Add5~25_sumout\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \add[1][14]~q\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \add[1][13]~q\ : std_logic;
SIGNAL \Add5~21_sumout\ : std_logic;
SIGNAL \Add5~17_sumout\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \add[1][12]~q\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \add[1][11]~q\ : std_logic;
SIGNAL \Add5~13_sumout\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \add[1][10]~q\ : std_logic;
SIGNAL \Add5~9_sumout\ : std_logic;
SIGNAL \Add5~5_sumout\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \add[1][9]~q\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~38\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~69_sumout\ : std_logic;
SIGNAL \Add2~61_sumout\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \add[1][0]~q\ : std_logic;
SIGNAL \Add2~65_sumout\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \add[1][1]~q\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \Add2~49_sumout\ : std_logic;
SIGNAL \Add2~57_sumout\ : std_logic;
SIGNAL \Add2~53_sumout\ : std_logic;
SIGNAL \Add2~45_sumout\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \Add3~46_cout\ : std_logic;
SIGNAL \Add3~1_sumout\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~5_sumout\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~9_sumout\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~13_sumout\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \Add3~14\ : std_logic;
SIGNAL \Add3~17_sumout\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \Add3~18\ : std_logic;
SIGNAL \Add3~21_sumout\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~25_sumout\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \Add3~26\ : std_logic;
SIGNAL \Add3~29_sumout\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \Add3~30\ : std_logic;
SIGNAL \Add3~33_sumout\ : std_logic;
SIGNAL \Add2~37_sumout\ : std_logic;
SIGNAL \Add3~34\ : std_logic;
SIGNAL \Add3~37_sumout\ : std_logic;
SIGNAL \Add2~41_sumout\ : std_logic;
SIGNAL \Add3~38\ : std_logic;
SIGNAL \Add3~41_sumout\ : std_logic;
SIGNAL y_out : std_logic_vector(10 DOWNTO 0);
SIGNAL \ALT_INV_x[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_Add6~1_combout\ : std_logic;
SIGNAL \ALT_INV_add[3][2]~q\ : std_logic;
SIGNAL \ALT_INV_add[3][3]~q\ : std_logic;
SIGNAL \ALT_INV_add[3][4]~q\ : std_logic;
SIGNAL \ALT_INV_add[3][5]~q\ : std_logic;
SIGNAL \ALT_INV_add[3][6]~q\ : std_logic;
SIGNAL \ALT_INV_add[3][7]~q\ : std_logic;
SIGNAL \ALT_INV_add[3][16]~q\ : std_logic;
SIGNAL \ALT_INV_add[3][15]~q\ : std_logic;
SIGNAL \ALT_INV_add[3][14]~q\ : std_logic;
SIGNAL \ALT_INV_add[3][13]~q\ : std_logic;
SIGNAL \ALT_INV_add[3][12]~q\ : std_logic;
SIGNAL \ALT_INV_add[3][11]~q\ : std_logic;
SIGNAL \ALT_INV_add[3][10]~q\ : std_logic;
SIGNAL \ALT_INV_add[3][9]~q\ : std_logic;
SIGNAL \ALT_INV_add[3][0]~q\ : std_logic;
SIGNAL \ALT_INV_add[3][1]~q\ : std_logic;
SIGNAL \ALT_INV_add[3][8]~q\ : std_logic;
SIGNAL \ALT_INV_add[2][2]~q\ : std_logic;
SIGNAL \ALT_INV_add[2][3]~q\ : std_logic;
SIGNAL \ALT_INV_add[2][4]~q\ : std_logic;
SIGNAL \ALT_INV_add[2][5]~q\ : std_logic;
SIGNAL \ALT_INV_add[2][6]~q\ : std_logic;
SIGNAL \ALT_INV_add[2][7]~q\ : std_logic;
SIGNAL \ALT_INV_add[2][17]~q\ : std_logic;
SIGNAL \ALT_INV_add[2][16]~q\ : std_logic;
SIGNAL \ALT_INV_add[2][15]~q\ : std_logic;
SIGNAL \ALT_INV_add[2][14]~q\ : std_logic;
SIGNAL \ALT_INV_add[2][13]~q\ : std_logic;
SIGNAL \ALT_INV_add[2][12]~q\ : std_logic;
SIGNAL \ALT_INV_add[2][11]~q\ : std_logic;
SIGNAL \ALT_INV_add[2][10]~q\ : std_logic;
SIGNAL \ALT_INV_add[2][9]~q\ : std_logic;
SIGNAL \ALT_INV_add[2][0]~q\ : std_logic;
SIGNAL \ALT_INV_add[2][1]~q\ : std_logic;
SIGNAL \ALT_INV_add[2][8]~q\ : std_logic;
SIGNAL \ALT_INV_add[1][2]~q\ : std_logic;
SIGNAL \ALT_INV_add[1][3]~q\ : std_logic;
SIGNAL \ALT_INV_add[1][4]~q\ : std_logic;
SIGNAL \ALT_INV_add[1][5]~q\ : std_logic;
SIGNAL \ALT_INV_add[1][6]~q\ : std_logic;
SIGNAL \ALT_INV_add[1][7]~q\ : std_logic;
SIGNAL \ALT_INV_add[1][18]~q\ : std_logic;
SIGNAL \ALT_INV_add[1][17]~q\ : std_logic;
SIGNAL \ALT_INV_add[1][16]~q\ : std_logic;
SIGNAL \ALT_INV_add[1][15]~q\ : std_logic;
SIGNAL \ALT_INV_add[1][14]~q\ : std_logic;
SIGNAL \ALT_INV_add[1][13]~q\ : std_logic;
SIGNAL \ALT_INV_add[1][12]~q\ : std_logic;
SIGNAL \ALT_INV_add[1][11]~q\ : std_logic;
SIGNAL \ALT_INV_add[1][10]~q\ : std_logic;
SIGNAL \ALT_INV_add[1][9]~q\ : std_logic;
SIGNAL \ALT_INV_WideOr0~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \ALT_INV_add[1][0]~q\ : std_logic;
SIGNAL \ALT_INV_add[1][1]~q\ : std_logic;
SIGNAL \ALT_INV_add[1][8]~q\ : std_logic;
SIGNAL \ALT_INV_Add2~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \ALT_INV_mul[2][14]\ : std_logic;
SIGNAL \ALT_INV_mul[2][13]\ : std_logic;
SIGNAL \ALT_INV_mul[2][12]\ : std_logic;
SIGNAL \ALT_INV_mul[2][11]\ : std_logic;
SIGNAL \ALT_INV_mul[2][10]\ : std_logic;
SIGNAL \ALT_INV_mul[2][9]\ : std_logic;
SIGNAL \ALT_INV_mul[2][8]\ : std_logic;
SIGNAL \ALT_INV_mul[2][7]\ : std_logic;
SIGNAL \ALT_INV_mul[2][6]\ : std_logic;
SIGNAL \ALT_INV_mul[2][5]\ : std_logic;
SIGNAL \ALT_INV_mul[2][4]\ : std_logic;
SIGNAL \ALT_INV_mul[2][3]\ : std_logic;
SIGNAL \ALT_INV_mul[2][2]\ : std_logic;
SIGNAL \ALT_INV_mul[2][1]\ : std_logic;
SIGNAL \ALT_INV_mul[2][0]\ : std_logic;
SIGNAL \ALT_INV_mul[1][16]\ : std_logic;
SIGNAL \ALT_INV_mul[1][15]\ : std_logic;
SIGNAL \ALT_INV_mul[1][14]\ : std_logic;
SIGNAL \ALT_INV_mul[1][13]\ : std_logic;
SIGNAL \ALT_INV_mul[1][12]\ : std_logic;
SIGNAL \ALT_INV_mul[1][11]\ : std_logic;
SIGNAL \ALT_INV_mul[1][10]\ : std_logic;
SIGNAL \ALT_INV_mul[1][9]\ : std_logic;
SIGNAL \ALT_INV_mul[1][8]\ : std_logic;
SIGNAL \ALT_INV_mul[1][7]\ : std_logic;
SIGNAL \ALT_INV_mul[1][6]\ : std_logic;
SIGNAL \ALT_INV_mul[1][5]\ : std_logic;
SIGNAL \ALT_INV_mul[1][4]\ : std_logic;
SIGNAL \ALT_INV_mul[1][3]\ : std_logic;
SIGNAL \ALT_INV_mul[1][2]\ : std_logic;
SIGNAL \ALT_INV_mul[1][1]\ : std_logic;
SIGNAL \ALT_INV_mul[1][0]\ : std_logic;
SIGNAL \ALT_INV_Add4~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~37_sumout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_x <= x;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult0~mac_AX_bus\ <= (\x[8]~input_o\ & \x[7]~input_o\ & \x[6]~input_o\ & \x[5]~input_o\ & \x[4]~input_o\ & \x[3]~input_o\ & \x[2]~input_o\ & \x[1]~input_o\ & \x[0]~input_o\);

\Mult0~mac_AY_bus\ <= (vcc & vcc & gnd & vcc & gnd & vcc & vcc & gnd);

\Mult0~mac_BX_bus\ <= (\x[8]~input_o\ & \x[8]~input_o\ & \x[8]~input_o\ & \x[8]~input_o\ & \x[8]~input_o\ & \x[8]~input_o\ & \x[8]~input_o\ & \x[8]~input_o\ & \x[8]~input_o\);

\mul[1][0]\ <= \Mult0~mac_RESULTA_bus\(0);
\mul[1][1]\ <= \Mult0~mac_RESULTA_bus\(1);
\mul[1][2]\ <= \Mult0~mac_RESULTA_bus\(2);
\mul[1][3]\ <= \Mult0~mac_RESULTA_bus\(3);
\mul[1][4]\ <= \Mult0~mac_RESULTA_bus\(4);
\mul[1][5]\ <= \Mult0~mac_RESULTA_bus\(5);
\mul[1][6]\ <= \Mult0~mac_RESULTA_bus\(6);
\mul[1][7]\ <= \Mult0~mac_RESULTA_bus\(7);
\mul[1][8]\ <= \Mult0~mac_RESULTA_bus\(8);
\mul[1][9]\ <= \Mult0~mac_RESULTA_bus\(9);
\mul[1][10]\ <= \Mult0~mac_RESULTA_bus\(10);
\mul[1][11]\ <= \Mult0~mac_RESULTA_bus\(11);
\mul[1][12]\ <= \Mult0~mac_RESULTA_bus\(12);
\mul[1][13]\ <= \Mult0~mac_RESULTA_bus\(13);
\mul[1][14]\ <= \Mult0~mac_RESULTA_bus\(14);
\mul[1][15]\ <= \Mult0~mac_RESULTA_bus\(15);
\mul[1][16]\ <= \Mult0~mac_RESULTA_bus\(16);
\Mult0~8\ <= \Mult0~mac_RESULTA_bus\(17);
\Mult0~9\ <= \Mult0~mac_RESULTA_bus\(18);
\Mult0~10\ <= \Mult0~mac_RESULTA_bus\(19);
\Mult0~11\ <= \Mult0~mac_RESULTA_bus\(20);
\Mult0~12\ <= \Mult0~mac_RESULTA_bus\(21);
\Mult0~13\ <= \Mult0~mac_RESULTA_bus\(22);
\Mult0~14\ <= \Mult0~mac_RESULTA_bus\(23);
\Mult0~15\ <= \Mult0~mac_RESULTA_bus\(24);
\Mult0~16\ <= \Mult0~mac_RESULTA_bus\(25);
\Mult0~17\ <= \Mult0~mac_RESULTA_bus\(26);
\Mult0~18\ <= \Mult0~mac_RESULTA_bus\(27);
\Mult0~19\ <= \Mult0~mac_RESULTA_bus\(28);
\Mult0~20\ <= \Mult0~mac_RESULTA_bus\(29);
\Mult0~21\ <= \Mult0~mac_RESULTA_bus\(30);
\Mult0~22\ <= \Mult0~mac_RESULTA_bus\(31);
\Mult0~23\ <= \Mult0~mac_RESULTA_bus\(32);
\Mult0~24\ <= \Mult0~mac_RESULTA_bus\(33);
\Mult0~25\ <= \Mult0~mac_RESULTA_bus\(34);
\Mult0~26\ <= \Mult0~mac_RESULTA_bus\(35);
\Mult0~27\ <= \Mult0~mac_RESULTA_bus\(36);
\Mult0~28\ <= \Mult0~mac_RESULTA_bus\(37);
\Mult0~29\ <= \Mult0~mac_RESULTA_bus\(38);
\Mult0~30\ <= \Mult0~mac_RESULTA_bus\(39);
\Mult0~31\ <= \Mult0~mac_RESULTA_bus\(40);
\Mult0~32\ <= \Mult0~mac_RESULTA_bus\(41);
\Mult0~33\ <= \Mult0~mac_RESULTA_bus\(42);
\Mult0~34\ <= \Mult0~mac_RESULTA_bus\(43);
\Mult0~35\ <= \Mult0~mac_RESULTA_bus\(44);
\Mult0~36\ <= \Mult0~mac_RESULTA_bus\(45);
\Mult0~37\ <= \Mult0~mac_RESULTA_bus\(46);
\Mult0~38\ <= \Mult0~mac_RESULTA_bus\(47);
\Mult0~39\ <= \Mult0~mac_RESULTA_bus\(48);
\Mult0~40\ <= \Mult0~mac_RESULTA_bus\(49);
\Mult0~41\ <= \Mult0~mac_RESULTA_bus\(50);
\Mult0~42\ <= \Mult0~mac_RESULTA_bus\(51);
\Mult0~43\ <= \Mult0~mac_RESULTA_bus\(52);
\Mult0~44\ <= \Mult0~mac_RESULTA_bus\(53);
\Mult0~45\ <= \Mult0~mac_RESULTA_bus\(54);
\Mult0~46\ <= \Mult0~mac_RESULTA_bus\(55);
\Mult0~47\ <= \Mult0~mac_RESULTA_bus\(56);
\Mult0~48\ <= \Mult0~mac_RESULTA_bus\(57);
\Mult0~49\ <= \Mult0~mac_RESULTA_bus\(58);
\Mult0~50\ <= \Mult0~mac_RESULTA_bus\(59);
\Mult0~51\ <= \Mult0~mac_RESULTA_bus\(60);
\Mult0~52\ <= \Mult0~mac_RESULTA_bus\(61);
\Mult0~53\ <= \Mult0~mac_RESULTA_bus\(62);
\Mult0~54\ <= \Mult0~mac_RESULTA_bus\(63);

\Mult1~mac_AX_bus\ <= (\x[8]~input_o\ & \x[7]~input_o\ & \x[6]~input_o\ & \x[5]~input_o\ & \x[4]~input_o\ & \x[3]~input_o\ & \x[2]~input_o\ & \x[1]~input_o\ & \x[0]~input_o\);

\Mult1~mac_AY_bus\ <= (vcc & vcc & vcc & gnd & gnd & vcc);

\Mult1~mac_BX_bus\ <= (\x[8]~input_o\ & \x[8]~input_o\ & \x[8]~input_o\ & \x[8]~input_o\ & \x[8]~input_o\ & \x[8]~input_o\ & \x[8]~input_o\ & \x[8]~input_o\ & \x[8]~input_o\);

\mul[2][0]\ <= \Mult1~mac_RESULTA_bus\(0);
\mul[2][1]\ <= \Mult1~mac_RESULTA_bus\(1);
\mul[2][2]\ <= \Mult1~mac_RESULTA_bus\(2);
\mul[2][3]\ <= \Mult1~mac_RESULTA_bus\(3);
\mul[2][4]\ <= \Mult1~mac_RESULTA_bus\(4);
\mul[2][5]\ <= \Mult1~mac_RESULTA_bus\(5);
\mul[2][6]\ <= \Mult1~mac_RESULTA_bus\(6);
\mul[2][7]\ <= \Mult1~mac_RESULTA_bus\(7);
\mul[2][8]\ <= \Mult1~mac_RESULTA_bus\(8);
\mul[2][9]\ <= \Mult1~mac_RESULTA_bus\(9);
\mul[2][10]\ <= \Mult1~mac_RESULTA_bus\(10);
\mul[2][11]\ <= \Mult1~mac_RESULTA_bus\(11);
\mul[2][12]\ <= \Mult1~mac_RESULTA_bus\(12);
\mul[2][13]\ <= \Mult1~mac_RESULTA_bus\(13);
\mul[2][14]\ <= \Mult1~mac_RESULTA_bus\(14);
\Mult1~8\ <= \Mult1~mac_RESULTA_bus\(15);
\Mult1~9\ <= \Mult1~mac_RESULTA_bus\(16);
\Mult1~10\ <= \Mult1~mac_RESULTA_bus\(17);
\Mult1~11\ <= \Mult1~mac_RESULTA_bus\(18);
\Mult1~12\ <= \Mult1~mac_RESULTA_bus\(19);
\Mult1~13\ <= \Mult1~mac_RESULTA_bus\(20);
\Mult1~14\ <= \Mult1~mac_RESULTA_bus\(21);
\Mult1~15\ <= \Mult1~mac_RESULTA_bus\(22);
\Mult1~16\ <= \Mult1~mac_RESULTA_bus\(23);
\Mult1~17\ <= \Mult1~mac_RESULTA_bus\(24);
\Mult1~18\ <= \Mult1~mac_RESULTA_bus\(25);
\Mult1~19\ <= \Mult1~mac_RESULTA_bus\(26);
\Mult1~20\ <= \Mult1~mac_RESULTA_bus\(27);
\Mult1~21\ <= \Mult1~mac_RESULTA_bus\(28);
\Mult1~22\ <= \Mult1~mac_RESULTA_bus\(29);
\Mult1~23\ <= \Mult1~mac_RESULTA_bus\(30);
\Mult1~24\ <= \Mult1~mac_RESULTA_bus\(31);
\Mult1~25\ <= \Mult1~mac_RESULTA_bus\(32);
\Mult1~26\ <= \Mult1~mac_RESULTA_bus\(33);
\Mult1~27\ <= \Mult1~mac_RESULTA_bus\(34);
\Mult1~28\ <= \Mult1~mac_RESULTA_bus\(35);
\Mult1~29\ <= \Mult1~mac_RESULTA_bus\(36);
\Mult1~30\ <= \Mult1~mac_RESULTA_bus\(37);
\Mult1~31\ <= \Mult1~mac_RESULTA_bus\(38);
\Mult1~32\ <= \Mult1~mac_RESULTA_bus\(39);
\Mult1~33\ <= \Mult1~mac_RESULTA_bus\(40);
\Mult1~34\ <= \Mult1~mac_RESULTA_bus\(41);
\Mult1~35\ <= \Mult1~mac_RESULTA_bus\(42);
\Mult1~36\ <= \Mult1~mac_RESULTA_bus\(43);
\Mult1~37\ <= \Mult1~mac_RESULTA_bus\(44);
\Mult1~38\ <= \Mult1~mac_RESULTA_bus\(45);
\Mult1~39\ <= \Mult1~mac_RESULTA_bus\(46);
\Mult1~40\ <= \Mult1~mac_RESULTA_bus\(47);
\Mult1~41\ <= \Mult1~mac_RESULTA_bus\(48);
\Mult1~42\ <= \Mult1~mac_RESULTA_bus\(49);
\Mult1~43\ <= \Mult1~mac_RESULTA_bus\(50);
\Mult1~44\ <= \Mult1~mac_RESULTA_bus\(51);
\Mult1~45\ <= \Mult1~mac_RESULTA_bus\(52);
\Mult1~46\ <= \Mult1~mac_RESULTA_bus\(53);
\Mult1~47\ <= \Mult1~mac_RESULTA_bus\(54);
\Mult1~48\ <= \Mult1~mac_RESULTA_bus\(55);
\Mult1~49\ <= \Mult1~mac_RESULTA_bus\(56);
\Mult1~50\ <= \Mult1~mac_RESULTA_bus\(57);
\Mult1~51\ <= \Mult1~mac_RESULTA_bus\(58);
\Mult1~52\ <= \Mult1~mac_RESULTA_bus\(59);
\Mult1~53\ <= \Mult1~mac_RESULTA_bus\(60);
\Mult1~54\ <= \Mult1~mac_RESULTA_bus\(61);
\Mult1~55\ <= \Mult1~mac_RESULTA_bus\(62);
\Mult1~56\ <= \Mult1~mac_RESULTA_bus\(63);
\ALT_INV_x[0]~input_o\ <= NOT \x[0]~input_o\;
\ALT_INV_x[8]~input_o\ <= NOT \x[8]~input_o\;
\ALT_INV_x[7]~input_o\ <= NOT \x[7]~input_o\;
\ALT_INV_x[6]~input_o\ <= NOT \x[6]~input_o\;
\ALT_INV_x[5]~input_o\ <= NOT \x[5]~input_o\;
\ALT_INV_x[4]~input_o\ <= NOT \x[4]~input_o\;
\ALT_INV_x[3]~input_o\ <= NOT \x[3]~input_o\;
\ALT_INV_x[2]~input_o\ <= NOT \x[2]~input_o\;
\ALT_INV_x[1]~input_o\ <= NOT \x[1]~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_Add6~1_combout\ <= NOT \Add6~1_combout\;
\ALT_INV_add[3][2]~q\ <= NOT \add[3][2]~q\;
\ALT_INV_add[3][3]~q\ <= NOT \add[3][3]~q\;
\ALT_INV_add[3][4]~q\ <= NOT \add[3][4]~q\;
\ALT_INV_add[3][5]~q\ <= NOT \add[3][5]~q\;
\ALT_INV_add[3][6]~q\ <= NOT \add[3][6]~q\;
\ALT_INV_add[3][7]~q\ <= NOT \add[3][7]~q\;
\ALT_INV_add[3][16]~q\ <= NOT \add[3][16]~q\;
\ALT_INV_add[3][15]~q\ <= NOT \add[3][15]~q\;
\ALT_INV_add[3][14]~q\ <= NOT \add[3][14]~q\;
\ALT_INV_add[3][13]~q\ <= NOT \add[3][13]~q\;
\ALT_INV_add[3][12]~q\ <= NOT \add[3][12]~q\;
\ALT_INV_add[3][11]~q\ <= NOT \add[3][11]~q\;
\ALT_INV_add[3][10]~q\ <= NOT \add[3][10]~q\;
\ALT_INV_add[3][9]~q\ <= NOT \add[3][9]~q\;
\ALT_INV_add[3][0]~q\ <= NOT \add[3][0]~q\;
\ALT_INV_add[3][1]~q\ <= NOT \add[3][1]~q\;
\ALT_INV_add[3][8]~q\ <= NOT \add[3][8]~q\;
\ALT_INV_add[2][2]~q\ <= NOT \add[2][2]~q\;
\ALT_INV_add[2][3]~q\ <= NOT \add[2][3]~q\;
\ALT_INV_add[2][4]~q\ <= NOT \add[2][4]~q\;
\ALT_INV_add[2][5]~q\ <= NOT \add[2][5]~q\;
\ALT_INV_add[2][6]~q\ <= NOT \add[2][6]~q\;
\ALT_INV_add[2][7]~q\ <= NOT \add[2][7]~q\;
\ALT_INV_add[2][17]~q\ <= NOT \add[2][17]~q\;
\ALT_INV_add[2][16]~q\ <= NOT \add[2][16]~q\;
\ALT_INV_add[2][15]~q\ <= NOT \add[2][15]~q\;
\ALT_INV_add[2][14]~q\ <= NOT \add[2][14]~q\;
\ALT_INV_add[2][13]~q\ <= NOT \add[2][13]~q\;
\ALT_INV_add[2][12]~q\ <= NOT \add[2][12]~q\;
\ALT_INV_add[2][11]~q\ <= NOT \add[2][11]~q\;
\ALT_INV_add[2][10]~q\ <= NOT \add[2][10]~q\;
\ALT_INV_add[2][9]~q\ <= NOT \add[2][9]~q\;
\ALT_INV_add[2][0]~q\ <= NOT \add[2][0]~q\;
\ALT_INV_add[2][1]~q\ <= NOT \add[2][1]~q\;
\ALT_INV_add[2][8]~q\ <= NOT \add[2][8]~q\;
\ALT_INV_add[1][2]~q\ <= NOT \add[1][2]~q\;
\ALT_INV_add[1][3]~q\ <= NOT \add[1][3]~q\;
\ALT_INV_add[1][4]~q\ <= NOT \add[1][4]~q\;
\ALT_INV_add[1][5]~q\ <= NOT \add[1][5]~q\;
\ALT_INV_add[1][6]~q\ <= NOT \add[1][6]~q\;
\ALT_INV_add[1][7]~q\ <= NOT \add[1][7]~q\;
\ALT_INV_add[1][18]~q\ <= NOT \add[1][18]~q\;
\ALT_INV_add[1][17]~q\ <= NOT \add[1][17]~q\;
\ALT_INV_add[1][16]~q\ <= NOT \add[1][16]~q\;
\ALT_INV_add[1][15]~q\ <= NOT \add[1][15]~q\;
\ALT_INV_add[1][14]~q\ <= NOT \add[1][14]~q\;
\ALT_INV_add[1][13]~q\ <= NOT \add[1][13]~q\;
\ALT_INV_add[1][12]~q\ <= NOT \add[1][12]~q\;
\ALT_INV_add[1][11]~q\ <= NOT \add[1][11]~q\;
\ALT_INV_add[1][10]~q\ <= NOT \add[1][10]~q\;
\ALT_INV_add[1][9]~q\ <= NOT \add[1][9]~q\;
\ALT_INV_WideOr0~combout\ <= NOT \WideOr0~combout\;
\ALT_INV_WideOr0~0_combout\ <= NOT \WideOr0~0_combout\;
\ALT_INV_add[1][0]~q\ <= NOT \add[1][0]~q\;
\ALT_INV_add[1][1]~q\ <= NOT \add[1][1]~q\;
\ALT_INV_add[1][8]~q\ <= NOT \add[1][8]~q\;
\ALT_INV_Add2~33_sumout\ <= NOT \Add2~33_sumout\;
\ALT_INV_Add2~29_sumout\ <= NOT \Add2~29_sumout\;
\ALT_INV_Add2~25_sumout\ <= NOT \Add2~25_sumout\;
\ALT_INV_Add2~21_sumout\ <= NOT \Add2~21_sumout\;
\ALT_INV_Add2~17_sumout\ <= NOT \Add2~17_sumout\;
\ALT_INV_Add2~13_sumout\ <= NOT \Add2~13_sumout\;
\ALT_INV_Add2~9_sumout\ <= NOT \Add2~9_sumout\;
\ALT_INV_Add2~5_sumout\ <= NOT \Add2~5_sumout\;
\ALT_INV_Add2~1_sumout\ <= NOT \Add2~1_sumout\;
\ALT_INV_mul[2][14]\ <= NOT \mul[2][14]\;
\ALT_INV_mul[2][13]\ <= NOT \mul[2][13]\;
\ALT_INV_mul[2][12]\ <= NOT \mul[2][12]\;
\ALT_INV_mul[2][11]\ <= NOT \mul[2][11]\;
\ALT_INV_mul[2][10]\ <= NOT \mul[2][10]\;
\ALT_INV_mul[2][9]\ <= NOT \mul[2][9]\;
\ALT_INV_mul[2][8]\ <= NOT \mul[2][8]\;
\ALT_INV_mul[2][7]\ <= NOT \mul[2][7]\;
\ALT_INV_mul[2][6]\ <= NOT \mul[2][6]\;
\ALT_INV_mul[2][5]\ <= NOT \mul[2][5]\;
\ALT_INV_mul[2][4]\ <= NOT \mul[2][4]\;
\ALT_INV_mul[2][3]\ <= NOT \mul[2][3]\;
\ALT_INV_mul[2][2]\ <= NOT \mul[2][2]\;
\ALT_INV_mul[2][1]\ <= NOT \mul[2][1]\;
\ALT_INV_mul[2][0]\ <= NOT \mul[2][0]\;
\ALT_INV_mul[1][16]\ <= NOT \mul[1][16]\;
\ALT_INV_mul[1][15]\ <= NOT \mul[1][15]\;
\ALT_INV_mul[1][14]\ <= NOT \mul[1][14]\;
\ALT_INV_mul[1][13]\ <= NOT \mul[1][13]\;
\ALT_INV_mul[1][12]\ <= NOT \mul[1][12]\;
\ALT_INV_mul[1][11]\ <= NOT \mul[1][11]\;
\ALT_INV_mul[1][10]\ <= NOT \mul[1][10]\;
\ALT_INV_mul[1][9]\ <= NOT \mul[1][9]\;
\ALT_INV_mul[1][8]\ <= NOT \mul[1][8]\;
\ALT_INV_mul[1][7]\ <= NOT \mul[1][7]\;
\ALT_INV_mul[1][6]\ <= NOT \mul[1][6]\;
\ALT_INV_mul[1][5]\ <= NOT \mul[1][5]\;
\ALT_INV_mul[1][4]\ <= NOT \mul[1][4]\;
\ALT_INV_mul[1][3]\ <= NOT \mul[1][3]\;
\ALT_INV_mul[1][2]\ <= NOT \mul[1][2]\;
\ALT_INV_mul[1][1]\ <= NOT \mul[1][1]\;
\ALT_INV_mul[1][0]\ <= NOT \mul[1][0]\;
\ALT_INV_Add4~37_sumout\ <= NOT \Add4~37_sumout\;
\ALT_INV_Add4~33_sumout\ <= NOT \Add4~33_sumout\;
\ALT_INV_Add4~29_sumout\ <= NOT \Add4~29_sumout\;
\ALT_INV_Add4~25_sumout\ <= NOT \Add4~25_sumout\;
\ALT_INV_Add4~21_sumout\ <= NOT \Add4~21_sumout\;
\ALT_INV_Add4~17_sumout\ <= NOT \Add4~17_sumout\;
\ALT_INV_Add4~13_sumout\ <= NOT \Add4~13_sumout\;
\ALT_INV_Add4~9_sumout\ <= NOT \Add4~9_sumout\;
\ALT_INV_Add4~5_sumout\ <= NOT \Add4~5_sumout\;
\ALT_INV_Add5~37_sumout\ <= NOT \Add5~37_sumout\;
\ALT_INV_Add4~1_sumout\ <= NOT \Add4~1_sumout\;
\ALT_INV_Add5~33_sumout\ <= NOT \Add5~33_sumout\;
\ALT_INV_Add5~29_sumout\ <= NOT \Add5~29_sumout\;
\ALT_INV_Add5~25_sumout\ <= NOT \Add5~25_sumout\;
\ALT_INV_Add5~21_sumout\ <= NOT \Add5~21_sumout\;
\ALT_INV_Add5~17_sumout\ <= NOT \Add5~17_sumout\;
\ALT_INV_Add5~13_sumout\ <= NOT \Add5~13_sumout\;
\ALT_INV_Add5~9_sumout\ <= NOT \Add5~9_sumout\;
\ALT_INV_Add5~5_sumout\ <= NOT \Add5~5_sumout\;
\ALT_INV_Add2~69_sumout\ <= NOT \Add2~69_sumout\;
\ALT_INV_Add2~65_sumout\ <= NOT \Add2~65_sumout\;
\ALT_INV_Add2~61_sumout\ <= NOT \Add2~61_sumout\;
\ALT_INV_Add2~57_sumout\ <= NOT \Add2~57_sumout\;
\ALT_INV_Add2~53_sumout\ <= NOT \Add2~53_sumout\;
\ALT_INV_Add2~49_sumout\ <= NOT \Add2~49_sumout\;
\ALT_INV_Add2~45_sumout\ <= NOT \Add2~45_sumout\;
\ALT_INV_Add5~1_sumout\ <= NOT \Add5~1_sumout\;
\ALT_INV_Add2~41_sumout\ <= NOT \Add2~41_sumout\;
\ALT_INV_Add2~37_sumout\ <= NOT \Add2~37_sumout\;

-- Location: IOOBUF_X89_Y23_N5
\y[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => y_out(0),
	devoe => ww_devoe,
	o => ww_y(0));

-- Location: IOOBUF_X80_Y0_N53
\y[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => y_out(1),
	devoe => ww_devoe,
	o => ww_y(1));

-- Location: IOOBUF_X89_Y20_N96
\y[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => y_out(2),
	devoe => ww_devoe,
	o => ww_y(2));

-- Location: IOOBUF_X89_Y20_N79
\y[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => y_out(3),
	devoe => ww_devoe,
	o => ww_y(3));

-- Location: IOOBUF_X40_Y81_N19
\y[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => y_out(4),
	devoe => ww_devoe,
	o => ww_y(4));

-- Location: IOOBUF_X89_Y20_N62
\y[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => y_out(5),
	devoe => ww_devoe,
	o => ww_y(5));

-- Location: IOOBUF_X89_Y15_N22
\y[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => y_out(6),
	devoe => ww_devoe,
	o => ww_y(6));

-- Location: IOOBUF_X40_Y81_N53
\y[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => y_out(7),
	devoe => ww_devoe,
	o => ww_y(7));

-- Location: IOOBUF_X89_Y16_N22
\y[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => y_out(8),
	devoe => ww_devoe,
	o => ww_y(8));

-- Location: IOOBUF_X89_Y21_N22
\y[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => y_out(9),
	devoe => ww_devoe,
	o => ww_y(9));

-- Location: IOOBUF_X89_Y20_N45
\y[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => y_out(10),
	devoe => ww_devoe,
	o => ww_y(10));

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

-- Location: IOIBUF_X89_Y21_N38
\x[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(6),
	o => \x[6]~input_o\);

-- Location: IOIBUF_X89_Y21_N55
\x[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(5),
	o => \x[5]~input_o\);

-- Location: IOIBUF_X89_Y23_N38
\x[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(4),
	o => \x[4]~input_o\);

-- Location: IOIBUF_X89_Y23_N55
\x[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: IOIBUF_X89_Y25_N4
\x[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: IOIBUF_X89_Y25_N55
\x[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: IOIBUF_X89_Y25_N38
\x[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: LABCELL_X85_Y34_N0
\Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~21_sumout\ = SUM(( !\x[0]~input_o\ ) + ( VCC ) + ( !VCC ))
-- \Add4~22\ = CARRY(( !\x[0]~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x[0]~input_o\,
	cin => GND,
	sumout => \Add4~21_sumout\,
	cout => \Add4~22\);

-- Location: LABCELL_X85_Y34_N3
\Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~17_sumout\ = SUM(( !\x[1]~input_o\ ) + ( GND ) + ( \Add4~22\ ))
-- \Add4~18\ = CARRY(( !\x[1]~input_o\ ) + ( GND ) + ( \Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[1]~input_o\,
	cin => \Add4~22\,
	sumout => \Add4~17_sumout\,
	cout => \Add4~18\);

-- Location: LABCELL_X85_Y34_N6
\Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~13_sumout\ = SUM(( !\x[2]~input_o\ ) + ( GND ) + ( \Add4~18\ ))
-- \Add4~14\ = CARRY(( !\x[2]~input_o\ ) + ( GND ) + ( \Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x[2]~input_o\,
	cin => \Add4~18\,
	sumout => \Add4~13_sumout\,
	cout => \Add4~14\);

-- Location: LABCELL_X85_Y34_N9
\Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~9_sumout\ = SUM(( !\x[3]~input_o\ ) + ( GND ) + ( \Add4~14\ ))
-- \Add4~10\ = CARRY(( !\x[3]~input_o\ ) + ( GND ) + ( \Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x[3]~input_o\,
	cin => \Add4~14\,
	sumout => \Add4~9_sumout\,
	cout => \Add4~10\);

-- Location: LABCELL_X85_Y34_N12
\Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~5_sumout\ = SUM(( !\x[4]~input_o\ ) + ( GND ) + ( \Add4~10\ ))
-- \Add4~6\ = CARRY(( !\x[4]~input_o\ ) + ( GND ) + ( \Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x[4]~input_o\,
	cin => \Add4~10\,
	sumout => \Add4~5_sumout\,
	cout => \Add4~6\);

-- Location: LABCELL_X85_Y34_N15
\Add4~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~37_sumout\ = SUM(( !\x[5]~input_o\ ) + ( GND ) + ( \Add4~6\ ))
-- \Add4~38\ = CARRY(( !\x[5]~input_o\ ) + ( GND ) + ( \Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[5]~input_o\,
	cin => \Add4~6\,
	sumout => \Add4~37_sumout\,
	cout => \Add4~38\);

-- Location: LABCELL_X85_Y34_N18
\Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~1_sumout\ = SUM(( !\x[6]~input_o\ ) + ( GND ) + ( \Add4~38\ ))
-- \Add4~2\ = CARRY(( !\x[6]~input_o\ ) + ( GND ) + ( \Add4~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x[6]~input_o\,
	cin => \Add4~38\,
	sumout => \Add4~1_sumout\,
	cout => \Add4~2\);

-- Location: LABCELL_X85_Y34_N30
\Add5~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~37_sumout\ = SUM(( \Add4~37_sumout\ ) + ( \x[0]~input_o\ ) + ( !VCC ))
-- \Add5~38\ = CARRY(( \Add4~37_sumout\ ) + ( \x[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add4~37_sumout\,
	datac => \ALT_INV_x[0]~input_o\,
	cin => GND,
	sumout => \Add5~37_sumout\,
	cout => \Add5~38\);

-- Location: LABCELL_X85_Y34_N33
\Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~1_sumout\ = SUM(( \x[1]~input_o\ ) + ( \Add4~1_sumout\ ) + ( \Add5~38\ ))
-- \Add5~2\ = CARRY(( \x[1]~input_o\ ) + ( \Add4~1_sumout\ ) + ( \Add5~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~1_sumout\,
	datad => \ALT_INV_x[1]~input_o\,
	cin => \Add5~38\,
	sumout => \Add5~1_sumout\,
	cout => \Add5~2\);

-- Location: IOIBUF_X89_Y21_N4
\x[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(7),
	o => \x[7]~input_o\);

-- Location: IOIBUF_X89_Y16_N38
\x[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(8),
	o => \x[8]~input_o\);

-- Location: DSP_X86_Y30_N0
\Mult1~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 9,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 6,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 9,
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m9x9",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \Mult1~mac_AX_bus\,
	ay => \Mult1~mac_AY_bus\,
	bx => \Mult1~mac_BX_bus\,
	resulta => \Mult1~mac_RESULTA_bus\);

-- Location: LABCELL_X85_Y34_N21
\Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~25_sumout\ = SUM(( !\x[7]~input_o\ ) + ( GND ) + ( \Add4~2\ ))
-- \Add4~26\ = CARRY(( !\x[7]~input_o\ ) + ( GND ) + ( \Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x[7]~input_o\,
	cin => \Add4~2\,
	sumout => \Add4~25_sumout\,
	cout => \Add4~26\);

-- Location: LABCELL_X85_Y34_N24
\Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~29_sumout\ = SUM(( !\x[8]~input_o\ ) + ( GND ) + ( \Add4~26\ ))
-- \Add4~30\ = CARRY(( !\x[8]~input_o\ ) + ( GND ) + ( \Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x[8]~input_o\,
	cin => \Add4~26\,
	sumout => \Add4~29_sumout\,
	cout => \Add4~30\);

-- Location: MLABCELL_X84_Y30_N0
\Add7~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~41_sumout\ = SUM(( \Add4~37_sumout\ ) + ( \x[0]~input_o\ ) + ( !VCC ))
-- \Add7~42\ = CARRY(( \Add4~37_sumout\ ) + ( \x[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x[0]~input_o\,
	datac => \ALT_INV_Add4~37_sumout\,
	cin => GND,
	sumout => \Add7~41_sumout\,
	cout => \Add7~42\);

-- Location: MLABCELL_X84_Y30_N3
\Add7~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~37_sumout\ = SUM(( !\x[0]~input_o\ $ (!\x[1]~input_o\) ) + ( \Add4~1_sumout\ ) + ( \Add7~42\ ))
-- \Add7~38\ = CARRY(( !\x[0]~input_o\ $ (!\x[1]~input_o\) ) + ( \Add4~1_sumout\ ) + ( \Add7~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x[0]~input_o\,
	datad => \ALT_INV_x[1]~input_o\,
	dataf => \ALT_INV_Add4~1_sumout\,
	cin => \Add7~42\,
	sumout => \Add7~37_sumout\,
	cout => \Add7~38\);

-- Location: MLABCELL_X84_Y30_N6
\Add7~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~33_sumout\ = SUM(( \Add4~25_sumout\ ) + ( !\x[2]~input_o\ $ (((!\x[1]~input_o\ & !\x[0]~input_o\))) ) + ( \Add7~38\ ))
-- \Add7~34\ = CARRY(( \Add4~25_sumout\ ) + ( !\x[2]~input_o\ $ (((!\x[1]~input_o\ & !\x[0]~input_o\))) ) + ( \Add7~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100001111000011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[1]~input_o\,
	datab => \ALT_INV_x[0]~input_o\,
	datac => \ALT_INV_x[2]~input_o\,
	datad => \ALT_INV_Add4~25_sumout\,
	cin => \Add7~38\,
	sumout => \Add7~33_sumout\,
	cout => \Add7~34\);

-- Location: MLABCELL_X84_Y30_N9
\Add7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~1_sumout\ = SUM(( !\x[3]~input_o\ $ (((!\x[1]~input_o\ & (!\x[0]~input_o\ & !\x[2]~input_o\)))) ) + ( \Add4~29_sumout\ ) + ( \Add7~34\ ))
-- \Add7~2\ = CARRY(( !\x[3]~input_o\ $ (((!\x[1]~input_o\ & (!\x[0]~input_o\ & !\x[2]~input_o\)))) ) + ( \Add4~29_sumout\ ) + ( \Add7~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000111111110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[1]~input_o\,
	datab => \ALT_INV_x[0]~input_o\,
	datac => \ALT_INV_x[2]~input_o\,
	datad => \ALT_INV_x[3]~input_o\,
	dataf => \ALT_INV_Add4~29_sumout\,
	cin => \Add7~34\,
	sumout => \Add7~1_sumout\,
	cout => \Add7~2\);

-- Location: IOIBUF_X89_Y25_N21
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X83_Y30_N1
\add[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add7~1_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[3][8]~q\);

-- Location: FF_X84_Y30_N7
\add[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~33_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[3][7]~q\);

-- Location: FF_X84_Y30_N4
\add[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~37_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[3][6]~q\);

-- Location: FF_X84_Y30_N1
\add[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~41_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[3][5]~q\);

-- Location: LABCELL_X81_Y30_N15
\Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~1_combout\ = ( \x[0]~input_o\ ) # ( !\x[0]~input_o\ & ( \x[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[1]~input_o\,
	dataf => \ALT_INV_x[0]~input_o\,
	combout => \Add6~1_combout\);

-- Location: MLABCELL_X84_Y30_N39
\Add6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = ( \x[2]~input_o\ & ( !\x[4]~input_o\ ) ) # ( !\x[2]~input_o\ & ( !\x[4]~input_o\ $ (((!\Add6~1_combout\ & !\x[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100001111000111100001111000001111000011110001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add6~1_combout\,
	datab => \ALT_INV_x[3]~input_o\,
	datac => \ALT_INV_x[4]~input_o\,
	datae => \ALT_INV_x[2]~input_o\,
	combout => \Add6~2_combout\);

-- Location: FF_X84_Y30_N40
\add[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[3][4]~q\);

-- Location: MLABCELL_X84_Y30_N42
\Add6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~3_combout\ = ( \x[2]~input_o\ & ( !\x[3]~input_o\ ) ) # ( !\x[2]~input_o\ & ( !\x[3]~input_o\ $ (!\Add6~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100110011001100110000111100001111001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x[3]~input_o\,
	datac => \ALT_INV_Add6~1_combout\,
	datae => \ALT_INV_x[2]~input_o\,
	combout => \Add6~3_combout\);

-- Location: FF_X84_Y30_N43
\add[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[3][3]~q\);

-- Location: LABCELL_X83_Y30_N21
\Add6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = ( \x[2]~input_o\ & ( !\Add6~1_combout\ ) ) # ( !\x[2]~input_o\ & ( \Add6~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add6~1_combout\,
	dataf => \ALT_INV_x[2]~input_o\,
	combout => \Add6~4_combout\);

-- Location: FF_X83_Y30_N22
\add[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[3][2]~q\);

-- Location: MLABCELL_X84_Y30_N51
\Add6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = ( \x[0]~input_o\ & ( !\x[1]~input_o\ ) ) # ( !\x[0]~input_o\ & ( \x[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[1]~input_o\,
	dataf => \ALT_INV_x[0]~input_o\,
	combout => \Add6~0_combout\);

-- Location: FF_X84_Y30_N52
\add[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[3][1]~q\);

-- Location: FF_X84_Y30_N34
\add[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[0]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[3][0]~q\);

-- Location: LABCELL_X85_Y30_N0
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( \add[3][0]~q\ ) + ( \mul[2][0]\ ) + ( !VCC ))
-- \Add1~10\ = CARRY(( \add[3][0]~q\ ) + ( \mul[2][0]\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_add[3][0]~q\,
	dataf => \ALT_INV_mul[2][0]\,
	cin => GND,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: LABCELL_X85_Y30_N3
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( \add[3][1]~q\ ) + ( \mul[2][1]\ ) + ( \Add1~10\ ))
-- \Add1~6\ = CARRY(( \add[3][1]~q\ ) + ( \mul[2][1]\ ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_add[3][1]~q\,
	dataf => \ALT_INV_mul[2][1]\,
	cin => \Add1~10\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: LABCELL_X85_Y30_N6
\Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~69_sumout\ = SUM(( \add[3][2]~q\ ) + ( \mul[2][2]\ ) + ( \Add1~6\ ))
-- \Add1~70\ = CARRY(( \add[3][2]~q\ ) + ( \mul[2][2]\ ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_mul[2][2]\,
	datad => \ALT_INV_add[3][2]~q\,
	cin => \Add1~6\,
	sumout => \Add1~69_sumout\,
	cout => \Add1~70\);

-- Location: LABCELL_X85_Y30_N9
\Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~65_sumout\ = SUM(( \mul[2][3]\ ) + ( \add[3][3]~q\ ) + ( \Add1~70\ ))
-- \Add1~66\ = CARRY(( \mul[2][3]\ ) + ( \add[3][3]~q\ ) + ( \Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mul[2][3]\,
	datac => \ALT_INV_add[3][3]~q\,
	cin => \Add1~70\,
	sumout => \Add1~65_sumout\,
	cout => \Add1~66\);

-- Location: LABCELL_X85_Y30_N12
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( \mul[2][4]\ ) + ( \add[3][4]~q\ ) + ( \Add1~66\ ))
-- \Add1~62\ = CARRY(( \mul[2][4]\ ) + ( \add[3][4]~q\ ) + ( \Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_add[3][4]~q\,
	datad => \ALT_INV_mul[2][4]\,
	cin => \Add1~66\,
	sumout => \Add1~61_sumout\,
	cout => \Add1~62\);

-- Location: LABCELL_X85_Y30_N15
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( \mul[2][5]\ ) + ( \add[3][5]~q\ ) + ( \Add1~62\ ))
-- \Add1~58\ = CARRY(( \mul[2][5]\ ) + ( \add[3][5]~q\ ) + ( \Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_mul[2][5]\,
	datac => \ALT_INV_add[3][5]~q\,
	cin => \Add1~62\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: LABCELL_X85_Y30_N18
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( \mul[2][6]\ ) + ( \add[3][6]~q\ ) + ( \Add1~58\ ))
-- \Add1~54\ = CARRY(( \mul[2][6]\ ) + ( \add[3][6]~q\ ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_add[3][6]~q\,
	datac => \ALT_INV_mul[2][6]\,
	cin => \Add1~58\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: LABCELL_X85_Y30_N21
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( \mul[2][7]\ ) + ( \add[3][7]~q\ ) + ( \Add1~54\ ))
-- \Add1~50\ = CARRY(( \mul[2][7]\ ) + ( \add[3][7]~q\ ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_add[3][7]~q\,
	datac => \ALT_INV_mul[2][7]\,
	cin => \Add1~54\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: LABCELL_X85_Y30_N24
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( \mul[2][8]\ ) + ( \add[3][8]~q\ ) + ( \Add1~50\ ))
-- \Add1~2\ = CARRY(( \mul[2][8]\ ) + ( \add[3][8]~q\ ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_mul[2][8]\,
	datac => \ALT_INV_add[3][8]~q\,
	cin => \Add1~50\,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: FF_X85_Y30_N26
\add[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~1_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[2][8]~q\);

-- Location: DSP_X86_Y33_N0
\Mult0~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 9,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 8,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 9,
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m9x9",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \Mult0~mac_AX_bus\,
	ay => \Mult0~mac_AY_bus\,
	bx => \Mult0~mac_BX_bus\,
	resulta => \Mult0~mac_RESULTA_bus\);

-- Location: FF_X85_Y30_N22
\add[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~49_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[2][7]~q\);

-- Location: FF_X85_Y30_N19
\add[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~53_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[2][6]~q\);

-- Location: FF_X85_Y30_N16
\add[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~57_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[2][5]~q\);

-- Location: FF_X85_Y30_N13
\add[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~61_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[2][4]~q\);

-- Location: FF_X85_Y30_N11
\add[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~65_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[2][3]~q\);

-- Location: FF_X85_Y30_N7
\add[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~69_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[2][2]~q\);

-- Location: FF_X85_Y30_N5
\add[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~5_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[2][1]~q\);

-- Location: FF_X85_Y30_N1
\add[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[2][0]~q\);

-- Location: LABCELL_X83_Y34_N0
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \add[2][0]~q\ ) + ( \mul[1][0]\ ) + ( !VCC ))
-- \Add0~10\ = CARRY(( \add[2][0]~q\ ) + ( \mul[1][0]\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_mul[1][0]\,
	datad => \ALT_INV_add[2][0]~q\,
	cin => GND,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: LABCELL_X83_Y34_N3
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \add[2][1]~q\ ) + ( \mul[1][1]\ ) + ( \Add0~10\ ))
-- \Add0~6\ = CARRY(( \add[2][1]~q\ ) + ( \mul[1][1]\ ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mul[1][1]\,
	datad => \ALT_INV_add[2][1]~q\,
	cin => \Add0~10\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: LABCELL_X83_Y34_N6
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( \mul[1][2]\ ) + ( \add[2][2]~q\ ) + ( \Add0~6\ ))
-- \Add0~74\ = CARRY(( \mul[1][2]\ ) + ( \add[2][2]~q\ ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mul[1][2]\,
	datac => \ALT_INV_add[2][2]~q\,
	cin => \Add0~6\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: LABCELL_X83_Y34_N9
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( \add[2][3]~q\ ) + ( \mul[1][3]\ ) + ( \Add0~74\ ))
-- \Add0~70\ = CARRY(( \add[2][3]~q\ ) + ( \mul[1][3]\ ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_add[2][3]~q\,
	dataf => \ALT_INV_mul[1][3]\,
	cin => \Add0~74\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: LABCELL_X83_Y34_N12
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( \add[2][4]~q\ ) + ( \mul[1][4]\ ) + ( \Add0~70\ ))
-- \Add0~66\ = CARRY(( \add[2][4]~q\ ) + ( \mul[1][4]\ ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_add[2][4]~q\,
	dataf => \ALT_INV_mul[1][4]\,
	cin => \Add0~70\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: LABCELL_X83_Y34_N15
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( \mul[1][5]\ ) + ( \add[2][5]~q\ ) + ( \Add0~66\ ))
-- \Add0~62\ = CARRY(( \mul[1][5]\ ) + ( \add[2][5]~q\ ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_mul[1][5]\,
	datac => \ALT_INV_add[2][5]~q\,
	cin => \Add0~66\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: LABCELL_X83_Y34_N18
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( \add[2][6]~q\ ) + ( \mul[1][6]\ ) + ( \Add0~62\ ))
-- \Add0~58\ = CARRY(( \add[2][6]~q\ ) + ( \mul[1][6]\ ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_mul[1][6]\,
	datad => \ALT_INV_add[2][6]~q\,
	cin => \Add0~62\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: LABCELL_X83_Y34_N21
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( \mul[1][7]\ ) + ( \add[2][7]~q\ ) + ( \Add0~58\ ))
-- \Add0~54\ = CARRY(( \mul[1][7]\ ) + ( \add[2][7]~q\ ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mul[1][7]\,
	datac => \ALT_INV_add[2][7]~q\,
	cin => \Add0~58\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: LABCELL_X83_Y34_N24
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \add[2][8]~q\ ) + ( \mul[1][8]\ ) + ( \Add0~54\ ))
-- \Add0~2\ = CARRY(( \add[2][8]~q\ ) + ( \mul[1][8]\ ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_add[2][8]~q\,
	dataf => \ALT_INV_mul[1][8]\,
	cin => \Add0~54\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X83_Y34_N25
\add[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[1][8]~q\);

-- Location: FF_X83_Y34_N23
\add[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[1][7]~q\);

-- Location: FF_X83_Y34_N19
\add[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[1][6]~q\);

-- Location: FF_X82_Y34_N52
\add[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~61_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[1][5]~q\);

-- Location: FF_X82_Y34_N23
\add[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~65_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[1][4]~q\);

-- Location: FF_X82_Y34_N59
\add[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~69_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[1][3]~q\);

-- Location: FF_X82_Y34_N56
\add[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~73_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[1][2]~q\);

-- Location: MLABCELL_X82_Y34_N0
\Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~65_sumout\ = SUM(( \add[1][2]~q\ ) + ( \Add4~21_sumout\ ) + ( !VCC ))
-- \Add2~66\ = CARRY(( \add[1][2]~q\ ) + ( \Add4~21_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add4~21_sumout\,
	datad => \ALT_INV_add[1][2]~q\,
	cin => GND,
	sumout => \Add2~65_sumout\,
	cout => \Add2~66\);

-- Location: MLABCELL_X82_Y34_N3
\Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~61_sumout\ = SUM(( \add[1][3]~q\ ) + ( \Add4~17_sumout\ ) + ( \Add2~66\ ))
-- \Add2~62\ = CARRY(( \add[1][3]~q\ ) + ( \Add4~17_sumout\ ) + ( \Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add4~17_sumout\,
	datad => \ALT_INV_add[1][3]~q\,
	cin => \Add2~66\,
	sumout => \Add2~61_sumout\,
	cout => \Add2~62\);

-- Location: MLABCELL_X82_Y34_N6
\Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~57_sumout\ = SUM(( \add[1][4]~q\ ) + ( \Add4~13_sumout\ ) + ( \Add2~62\ ))
-- \Add2~58\ = CARRY(( \add[1][4]~q\ ) + ( \Add4~13_sumout\ ) + ( \Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add4~13_sumout\,
	datad => \ALT_INV_add[1][4]~q\,
	cin => \Add2~62\,
	sumout => \Add2~57_sumout\,
	cout => \Add2~58\);

-- Location: MLABCELL_X82_Y34_N9
\Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~53_sumout\ = SUM(( \add[1][5]~q\ ) + ( \Add4~9_sumout\ ) + ( \Add2~58\ ))
-- \Add2~54\ = CARRY(( \add[1][5]~q\ ) + ( \Add4~9_sumout\ ) + ( \Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add4~9_sumout\,
	datad => \ALT_INV_add[1][5]~q\,
	cin => \Add2~58\,
	sumout => \Add2~53_sumout\,
	cout => \Add2~54\);

-- Location: MLABCELL_X82_Y34_N12
\Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~49_sumout\ = SUM(( \Add4~5_sumout\ ) + ( \add[1][6]~q\ ) + ( \Add2~54\ ))
-- \Add2~50\ = CARRY(( \Add4~5_sumout\ ) + ( \add[1][6]~q\ ) + ( \Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~5_sumout\,
	datac => \ALT_INV_add[1][6]~q\,
	cin => \Add2~54\,
	sumout => \Add2~49_sumout\,
	cout => \Add2~50\);

-- Location: MLABCELL_X82_Y34_N15
\Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~45_sumout\ = SUM(( \add[1][7]~q\ ) + ( \Add5~37_sumout\ ) + ( \Add2~50\ ))
-- \Add2~46\ = CARRY(( \add[1][7]~q\ ) + ( \Add5~37_sumout\ ) + ( \Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add5~37_sumout\,
	datad => \ALT_INV_add[1][7]~q\,
	cin => \Add2~50\,
	sumout => \Add2~45_sumout\,
	cout => \Add2~46\);

-- Location: MLABCELL_X82_Y34_N18
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( \add[1][8]~q\ ) + ( \Add5~1_sumout\ ) + ( \Add2~46\ ))
-- \Add2~2\ = CARRY(( \add[1][8]~q\ ) + ( \Add5~1_sumout\ ) + ( \Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add5~1_sumout\,
	datad => \ALT_INV_add[1][8]~q\,
	cin => \Add2~46\,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: LABCELL_X85_Y34_N27
\Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~33_sumout\ = SUM(( !\x[8]~input_o\ ) + ( GND ) + ( \Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[8]~input_o\,
	cin => \Add4~30\,
	sumout => \Add4~33_sumout\);

-- Location: LABCELL_X85_Y34_N36
\Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~5_sumout\ = SUM(( \Add4~25_sumout\ ) + ( \x[2]~input_o\ ) + ( \Add5~2\ ))
-- \Add5~6\ = CARRY(( \Add4~25_sumout\ ) + ( \x[2]~input_o\ ) + ( \Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x[2]~input_o\,
	datac => \ALT_INV_Add4~25_sumout\,
	cin => \Add5~2\,
	sumout => \Add5~5_sumout\,
	cout => \Add5~6\);

-- Location: LABCELL_X85_Y34_N39
\Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~9_sumout\ = SUM(( \Add4~29_sumout\ ) + ( \x[3]~input_o\ ) + ( \Add5~6\ ))
-- \Add5~10\ = CARRY(( \Add4~29_sumout\ ) + ( \x[3]~input_o\ ) + ( \Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~29_sumout\,
	datac => \ALT_INV_x[3]~input_o\,
	cin => \Add5~6\,
	sumout => \Add5~9_sumout\,
	cout => \Add5~10\);

-- Location: LABCELL_X85_Y34_N42
\Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~13_sumout\ = SUM(( \Add4~33_sumout\ ) + ( \x[4]~input_o\ ) + ( \Add5~10\ ))
-- \Add5~14\ = CARRY(( \Add4~33_sumout\ ) + ( \x[4]~input_o\ ) + ( \Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~33_sumout\,
	datac => \ALT_INV_x[4]~input_o\,
	cin => \Add5~10\,
	sumout => \Add5~13_sumout\,
	cout => \Add5~14\);

-- Location: LABCELL_X85_Y34_N45
\Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~17_sumout\ = SUM(( \x[5]~input_o\ ) + ( \Add4~33_sumout\ ) + ( \Add5~14\ ))
-- \Add5~18\ = CARRY(( \x[5]~input_o\ ) + ( \Add4~33_sumout\ ) + ( \Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~33_sumout\,
	datad => \ALT_INV_x[5]~input_o\,
	cin => \Add5~14\,
	sumout => \Add5~17_sumout\,
	cout => \Add5~18\);

-- Location: LABCELL_X85_Y34_N48
\Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~21_sumout\ = SUM(( \Add4~33_sumout\ ) + ( \x[6]~input_o\ ) + ( \Add5~18\ ))
-- \Add5~22\ = CARRY(( \Add4~33_sumout\ ) + ( \x[6]~input_o\ ) + ( \Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add4~33_sumout\,
	dataf => \ALT_INV_x[6]~input_o\,
	cin => \Add5~18\,
	sumout => \Add5~21_sumout\,
	cout => \Add5~22\);

-- Location: LABCELL_X85_Y34_N51
\Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~25_sumout\ = SUM(( \Add4~33_sumout\ ) + ( \x[7]~input_o\ ) + ( \Add5~22\ ))
-- \Add5~26\ = CARRY(( \Add4~33_sumout\ ) + ( \x[7]~input_o\ ) + ( \Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~33_sumout\,
	datac => \ALT_INV_x[7]~input_o\,
	cin => \Add5~22\,
	sumout => \Add5~25_sumout\,
	cout => \Add5~26\);

-- Location: LABCELL_X85_Y34_N54
\Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~29_sumout\ = SUM(( \Add4~33_sumout\ ) + ( \x[8]~input_o\ ) + ( \Add5~26\ ))
-- \Add5~30\ = CARRY(( \Add4~33_sumout\ ) + ( \x[8]~input_o\ ) + ( \Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~33_sumout\,
	datac => \ALT_INV_x[8]~input_o\,
	cin => \Add5~26\,
	sumout => \Add5~29_sumout\,
	cout => \Add5~30\);

-- Location: LABCELL_X85_Y34_N57
\Add5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~33_sumout\ = SUM(( \Add4~33_sumout\ ) + ( \x[8]~input_o\ ) + ( \Add5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~33_sumout\,
	dataf => \ALT_INV_x[8]~input_o\,
	cin => \Add5~30\,
	sumout => \Add5~33_sumout\);

-- Location: FF_X84_Y30_N56
\add[3][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add4~33_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[3][16]~q\);

-- Location: MLABCELL_X84_Y30_N12
\Add7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~5_sumout\ = SUM(( \Add4~33_sumout\ ) + ( !\x[4]~input_o\ $ (((!\x[3]~input_o\ & (!\x[2]~input_o\ & !\Add6~1_combout\)))) ) + ( \Add7~2\ ))
-- \Add7~6\ = CARRY(( \Add4~33_sumout\ ) + ( !\x[4]~input_o\ $ (((!\x[3]~input_o\ & (!\x[2]~input_o\ & !\Add6~1_combout\)))) ) + ( \Add7~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100101010101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[4]~input_o\,
	datab => \ALT_INV_x[3]~input_o\,
	datac => \ALT_INV_x[2]~input_o\,
	datad => \ALT_INV_Add4~33_sumout\,
	dataf => \ALT_INV_Add6~1_combout\,
	cin => \Add7~2\,
	sumout => \Add7~5_sumout\,
	cout => \Add7~6\);

-- Location: MLABCELL_X84_Y30_N15
\Add7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~9_sumout\ = SUM(( \Add4~37_sumout\ ) + ( \Add4~33_sumout\ ) + ( \Add7~6\ ))
-- \Add7~10\ = CARRY(( \Add4~37_sumout\ ) + ( \Add4~33_sumout\ ) + ( \Add7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add4~33_sumout\,
	datad => \ALT_INV_Add4~37_sumout\,
	cin => \Add7~6\,
	sumout => \Add7~9_sumout\,
	cout => \Add7~10\);

-- Location: MLABCELL_X84_Y30_N18
\Add7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~13_sumout\ = SUM(( \Add4~33_sumout\ ) + ( \Add4~1_sumout\ ) + ( \Add7~10\ ))
-- \Add7~14\ = CARRY(( \Add4~33_sumout\ ) + ( \Add4~1_sumout\ ) + ( \Add7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add4~33_sumout\,
	dataf => \ALT_INV_Add4~1_sumout\,
	cin => \Add7~10\,
	sumout => \Add7~13_sumout\,
	cout => \Add7~14\);

-- Location: MLABCELL_X84_Y30_N21
\Add7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~17_sumout\ = SUM(( \Add4~33_sumout\ ) + ( \Add4~25_sumout\ ) + ( \Add7~14\ ))
-- \Add7~18\ = CARRY(( \Add4~33_sumout\ ) + ( \Add4~25_sumout\ ) + ( \Add7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add4~33_sumout\,
	datac => \ALT_INV_Add4~25_sumout\,
	cin => \Add7~14\,
	sumout => \Add7~17_sumout\,
	cout => \Add7~18\);

-- Location: MLABCELL_X84_Y30_N24
\Add7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~21_sumout\ = SUM(( \Add4~33_sumout\ ) + ( \Add4~29_sumout\ ) + ( \Add7~18\ ))
-- \Add7~22\ = CARRY(( \Add4~33_sumout\ ) + ( \Add4~29_sumout\ ) + ( \Add7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add4~33_sumout\,
	dataf => \ALT_INV_Add4~29_sumout\,
	cin => \Add7~18\,
	sumout => \Add7~21_sumout\,
	cout => \Add7~22\);

-- Location: MLABCELL_X84_Y30_N27
\Add7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~25_sumout\ = SUM(( \Add4~33_sumout\ ) + ( \Add4~33_sumout\ ) + ( \Add7~22\ ))
-- \Add7~26\ = CARRY(( \Add4~33_sumout\ ) + ( \Add4~33_sumout\ ) + ( \Add7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add4~33_sumout\,
	cin => \Add7~22\,
	sumout => \Add7~25_sumout\,
	cout => \Add7~26\);

-- Location: MLABCELL_X84_Y30_N30
\Add7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~29_sumout\ = SUM(( GND ) + ( GND ) + ( \Add7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add7~26\,
	sumout => \Add7~29_sumout\);

-- Location: FF_X84_Y30_N31
\add[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~29_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[3][15]~q\);

-- Location: FF_X84_Y30_N28
\add[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~25_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[3][14]~q\);

-- Location: FF_X84_Y30_N25
\add[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~21_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[3][13]~q\);

-- Location: FF_X84_Y30_N22
\add[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~17_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[3][12]~q\);

-- Location: FF_X84_Y30_N19
\add[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[3][11]~q\);

-- Location: FF_X84_Y30_N16
\add[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[3][10]~q\);

-- Location: FF_X84_Y30_N13
\add[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~5_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[3][9]~q\);

-- Location: LABCELL_X85_Y30_N27
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( \mul[2][9]\ ) + ( \add[3][9]~q\ ) + ( \Add1~2\ ))
-- \Add1~14\ = CARRY(( \mul[2][9]\ ) + ( \add[3][9]~q\ ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_add[3][9]~q\,
	datac => \ALT_INV_mul[2][9]\,
	cin => \Add1~2\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: LABCELL_X85_Y30_N30
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( \mul[2][10]\ ) + ( \add[3][10]~q\ ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( \mul[2][10]\ ) + ( \add[3][10]~q\ ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_add[3][10]~q\,
	datac => \ALT_INV_mul[2][10]\,
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: LABCELL_X85_Y30_N33
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( \mul[2][11]\ ) + ( \add[3][11]~q\ ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( \mul[2][11]\ ) + ( \add[3][11]~q\ ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mul[2][11]\,
	datac => \ALT_INV_add[3][11]~q\,
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: LABCELL_X85_Y30_N36
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( \add[3][12]~q\ ) + ( \mul[2][12]\ ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( \add[3][12]~q\ ) + ( \mul[2][12]\ ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_mul[2][12]\,
	datad => \ALT_INV_add[3][12]~q\,
	cin => \Add1~22\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: LABCELL_X85_Y30_N39
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( \mul[2][13]\ ) + ( \add[3][13]~q\ ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( \mul[2][13]\ ) + ( \add[3][13]~q\ ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mul[2][13]\,
	datac => \ALT_INV_add[3][13]~q\,
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: LABCELL_X85_Y30_N42
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( \add[3][14]~q\ ) + ( \mul[2][14]\ ) + ( \Add1~30\ ))
-- \Add1~34\ = CARRY(( \add[3][14]~q\ ) + ( \mul[2][14]\ ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mul[2][14]\,
	datad => \ALT_INV_add[3][14]~q\,
	cin => \Add1~30\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: LABCELL_X85_Y30_N45
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( \mul[2][14]\ ) + ( \add[3][15]~q\ ) + ( \Add1~34\ ))
-- \Add1~38\ = CARRY(( \mul[2][14]\ ) + ( \add[3][15]~q\ ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mul[2][14]\,
	dataf => \ALT_INV_add[3][15]~q\,
	cin => \Add1~34\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: LABCELL_X85_Y30_N48
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( \mul[2][14]\ ) + ( \add[3][16]~q\ ) + ( \Add1~38\ ))
-- \Add1~42\ = CARRY(( \mul[2][14]\ ) + ( \add[3][16]~q\ ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mul[2][14]\,
	datac => \ALT_INV_add[3][16]~q\,
	cin => \Add1~38\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: LABCELL_X85_Y30_N51
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( \mul[2][14]\ ) + ( \add[3][16]~q\ ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mul[2][14]\,
	dataf => \ALT_INV_add[3][16]~q\,
	cin => \Add1~42\,
	sumout => \Add1~45_sumout\);

-- Location: FF_X85_Y30_N53
\add[2][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~45_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[2][17]~q\);

-- Location: FF_X85_Y30_N50
\add[2][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~41_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[2][16]~q\);

-- Location: FF_X85_Y30_N46
\add[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~37_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[2][15]~q\);

-- Location: FF_X85_Y30_N44
\add[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~33_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[2][14]~q\);

-- Location: FF_X85_Y30_N41
\add[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~29_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[2][13]~q\);

-- Location: FF_X85_Y30_N37
\add[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~25_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[2][12]~q\);

-- Location: FF_X85_Y30_N34
\add[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~21_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[2][11]~q\);

-- Location: FF_X85_Y30_N32
\add[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~17_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[2][10]~q\);

-- Location: FF_X85_Y30_N28
\add[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[2][9]~q\);

-- Location: LABCELL_X83_Y34_N27
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \mul[1][9]\ ) + ( \add[2][9]~q\ ) + ( \Add0~2\ ))
-- \Add0~14\ = CARRY(( \mul[1][9]\ ) + ( \add[2][9]~q\ ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mul[1][9]\,
	datac => \ALT_INV_add[2][9]~q\,
	cin => \Add0~2\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: LABCELL_X83_Y34_N30
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \add[2][10]~q\ ) + ( \mul[1][10]\ ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( \add[2][10]~q\ ) + ( \mul[1][10]\ ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_mul[1][10]\,
	datad => \ALT_INV_add[2][10]~q\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: LABCELL_X83_Y34_N33
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \add[2][11]~q\ ) + ( \mul[1][11]\ ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( \add[2][11]~q\ ) + ( \mul[1][11]\ ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_add[2][11]~q\,
	dataf => \ALT_INV_mul[1][11]\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: LABCELL_X83_Y34_N36
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \add[2][12]~q\ ) + ( \mul[1][12]\ ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \add[2][12]~q\ ) + ( \mul[1][12]\ ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mul[1][12]\,
	datad => \ALT_INV_add[2][12]~q\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: LABCELL_X83_Y34_N39
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \mul[1][13]\ ) + ( \add[2][13]~q\ ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( \mul[1][13]\ ) + ( \add[2][13]~q\ ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_mul[1][13]\,
	datac => \ALT_INV_add[2][13]~q\,
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: LABCELL_X83_Y34_N42
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( \mul[1][14]\ ) + ( \add[2][14]~q\ ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( \mul[1][14]\ ) + ( \add[2][14]~q\ ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_add[2][14]~q\,
	datad => \ALT_INV_mul[1][14]\,
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: LABCELL_X83_Y34_N45
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( \mul[1][15]\ ) + ( \add[2][15]~q\ ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( \mul[1][15]\ ) + ( \add[2][15]~q\ ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_mul[1][15]\,
	datac => \ALT_INV_add[2][15]~q\,
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: LABCELL_X83_Y34_N48
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( \add[2][16]~q\ ) + ( \mul[1][16]\ ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( \add[2][16]~q\ ) + ( \mul[1][16]\ ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mul[1][16]\,
	datad => \ALT_INV_add[2][16]~q\,
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: LABCELL_X83_Y34_N51
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( \mul[1][16]\ ) + ( \add[2][17]~q\ ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( \mul[1][16]\ ) + ( \add[2][17]~q\ ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mul[1][16]\,
	datac => \ALT_INV_add[2][17]~q\,
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: LABCELL_X83_Y34_N54
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( \mul[1][16]\ ) + ( \add[2][17]~q\ ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_add[2][17]~q\,
	datac => \ALT_INV_mul[1][16]\,
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\);

-- Location: FF_X83_Y34_N56
\add[1][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[1][18]~q\);

-- Location: FF_X83_Y34_N53
\add[1][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[1][17]~q\);

-- Location: FF_X83_Y34_N49
\add[1][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[1][16]~q\);

-- Location: FF_X83_Y34_N47
\add[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[1][15]~q\);

-- Location: FF_X83_Y34_N44
\add[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[1][14]~q\);

-- Location: FF_X83_Y34_N41
\add[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[1][13]~q\);

-- Location: FF_X83_Y34_N38
\add[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[1][12]~q\);

-- Location: FF_X83_Y34_N35
\add[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[1][11]~q\);

-- Location: FF_X83_Y34_N32
\add[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[1][10]~q\);

-- Location: FF_X83_Y34_N28
\add[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[1][9]~q\);

-- Location: MLABCELL_X82_Y34_N21
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( \add[1][9]~q\ ) + ( \Add5~5_sumout\ ) + ( \Add2~2\ ))
-- \Add2~6\ = CARRY(( \add[1][9]~q\ ) + ( \Add5~5_sumout\ ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add5~5_sumout\,
	datad => \ALT_INV_add[1][9]~q\,
	cin => \Add2~2\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: MLABCELL_X82_Y34_N24
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( \add[1][10]~q\ ) + ( \Add5~9_sumout\ ) + ( \Add2~6\ ))
-- \Add2~10\ = CARRY(( \add[1][10]~q\ ) + ( \Add5~9_sumout\ ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_add[1][10]~q\,
	dataf => \ALT_INV_Add5~9_sumout\,
	cin => \Add2~6\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: MLABCELL_X82_Y34_N27
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( \Add5~13_sumout\ ) + ( \add[1][11]~q\ ) + ( \Add2~10\ ))
-- \Add2~14\ = CARRY(( \Add5~13_sumout\ ) + ( \add[1][11]~q\ ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_add[1][11]~q\,
	datac => \ALT_INV_Add5~13_sumout\,
	cin => \Add2~10\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: MLABCELL_X82_Y34_N30
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( \add[1][12]~q\ ) + ( \Add5~17_sumout\ ) + ( \Add2~14\ ))
-- \Add2~18\ = CARRY(( \add[1][12]~q\ ) + ( \Add5~17_sumout\ ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add5~17_sumout\,
	datad => \ALT_INV_add[1][12]~q\,
	cin => \Add2~14\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: MLABCELL_X82_Y34_N33
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( \Add5~21_sumout\ ) + ( \add[1][13]~q\ ) + ( \Add2~18\ ))
-- \Add2~22\ = CARRY(( \Add5~21_sumout\ ) + ( \add[1][13]~q\ ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_add[1][13]~q\,
	datac => \ALT_INV_Add5~21_sumout\,
	cin => \Add2~18\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: MLABCELL_X82_Y34_N36
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( \add[1][14]~q\ ) + ( \Add5~25_sumout\ ) + ( \Add2~22\ ))
-- \Add2~26\ = CARRY(( \add[1][14]~q\ ) + ( \Add5~25_sumout\ ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add5~25_sumout\,
	datad => \ALT_INV_add[1][14]~q\,
	cin => \Add2~22\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: MLABCELL_X82_Y34_N39
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( \add[1][15]~q\ ) + ( \Add5~29_sumout\ ) + ( \Add2~26\ ))
-- \Add2~30\ = CARRY(( \add[1][15]~q\ ) + ( \Add5~29_sumout\ ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_add[1][15]~q\,
	dataf => \ALT_INV_Add5~29_sumout\,
	cin => \Add2~26\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: MLABCELL_X82_Y34_N42
\Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( \add[1][16]~q\ ) + ( \Add5~33_sumout\ ) + ( \Add2~30\ ))
-- \Add2~34\ = CARRY(( \add[1][16]~q\ ) + ( \Add5~33_sumout\ ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add5~33_sumout\,
	datad => \ALT_INV_add[1][16]~q\,
	cin => \Add2~30\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\);

-- Location: MLABCELL_X82_Y34_N45
\Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~37_sumout\ = SUM(( \add[1][17]~q\ ) + ( \Add5~33_sumout\ ) + ( \Add2~34\ ))
-- \Add2~38\ = CARRY(( \add[1][17]~q\ ) + ( \Add5~33_sumout\ ) + ( \Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_add[1][17]~q\,
	dataf => \ALT_INV_Add5~33_sumout\,
	cin => \Add2~34\,
	sumout => \Add2~37_sumout\,
	cout => \Add2~38\);

-- Location: MLABCELL_X82_Y34_N48
\Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~41_sumout\ = SUM(( \add[1][18]~q\ ) + ( \Add5~33_sumout\ ) + ( \Add2~38\ ))
-- \Add2~42\ = CARRY(( \add[1][18]~q\ ) + ( \Add5~33_sumout\ ) + ( \Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add5~33_sumout\,
	datad => \ALT_INV_add[1][18]~q\,
	cin => \Add2~38\,
	sumout => \Add2~41_sumout\,
	cout => \Add2~42\);

-- Location: MLABCELL_X82_Y34_N51
\Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~69_sumout\ = SUM(( \Add5~33_sumout\ ) + ( \add[1][18]~q\ ) + ( \Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~33_sumout\,
	datac => \ALT_INV_add[1][18]~q\,
	cin => \Add2~42\,
	sumout => \Add2~69_sumout\);

-- Location: FF_X83_Y34_N1
\add[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[1][0]~q\);

-- Location: FF_X83_Y34_N4
\add[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add[1][1]~q\);

-- Location: MLABCELL_X82_Y34_N57
\WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = ( !\add[1][1]~q\ & ( (!\add[1][0]~q\ & !\Add2~65_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_add[1][0]~q\,
	datad => \ALT_INV_Add2~65_sumout\,
	dataf => \ALT_INV_add[1][1]~q\,
	combout => \WideOr0~0_combout\);

-- Location: LABCELL_X81_Y34_N57
WideOr0 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = ( \Add2~53_sumout\ & ( \Add2~45_sumout\ ) ) # ( !\Add2~53_sumout\ & ( \Add2~45_sumout\ ) ) # ( \Add2~53_sumout\ & ( !\Add2~45_sumout\ ) ) # ( !\Add2~53_sumout\ & ( !\Add2~45_sumout\ & ( ((!\WideOr0~0_combout\) # ((\Add2~57_sumout\) # 
-- (\Add2~49_sumout\))) # (\Add2~61_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~61_sumout\,
	datab => \ALT_INV_WideOr0~0_combout\,
	datac => \ALT_INV_Add2~49_sumout\,
	datad => \ALT_INV_Add2~57_sumout\,
	datae => \ALT_INV_Add2~53_sumout\,
	dataf => \ALT_INV_Add2~45_sumout\,
	combout => \WideOr0~combout\);

-- Location: LABCELL_X81_Y34_N0
\Add3~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~46_cout\ = CARRY(( \WideOr0~combout\ ) + ( \Add2~69_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add2~69_sumout\,
	datad => \ALT_INV_WideOr0~combout\,
	cin => GND,
	cout => \Add3~46_cout\);

-- Location: LABCELL_X81_Y34_N3
\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_sumout\ = SUM(( GND ) + ( \Add2~1_sumout\ ) + ( \Add3~46_cout\ ))
-- \Add3~2\ = CARRY(( GND ) + ( \Add2~1_sumout\ ) + ( \Add3~46_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add2~1_sumout\,
	cin => \Add3~46_cout\,
	sumout => \Add3~1_sumout\,
	cout => \Add3~2\);

-- Location: FF_X81_Y34_N4
\y_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~1_sumout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_out(0));

-- Location: LABCELL_X81_Y34_N6
\Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~5_sumout\ = SUM(( \Add2~5_sumout\ ) + ( GND ) + ( \Add3~2\ ))
-- \Add3~6\ = CARRY(( \Add2~5_sumout\ ) + ( GND ) + ( \Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add2~5_sumout\,
	cin => \Add3~2\,
	sumout => \Add3~5_sumout\,
	cout => \Add3~6\);

-- Location: FF_X81_Y34_N8
\y_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~5_sumout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_out(1));

-- Location: LABCELL_X81_Y34_N9
\Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~9_sumout\ = SUM(( GND ) + ( \Add2~9_sumout\ ) + ( \Add3~6\ ))
-- \Add3~10\ = CARRY(( GND ) + ( \Add2~9_sumout\ ) + ( \Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add2~9_sumout\,
	cin => \Add3~6\,
	sumout => \Add3~9_sumout\,
	cout => \Add3~10\);

-- Location: FF_X81_Y34_N10
\y_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~9_sumout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_out(2));

-- Location: LABCELL_X81_Y34_N12
\Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~13_sumout\ = SUM(( \Add2~13_sumout\ ) + ( GND ) + ( \Add3~10\ ))
-- \Add3~14\ = CARRY(( \Add2~13_sumout\ ) + ( GND ) + ( \Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add2~13_sumout\,
	cin => \Add3~10\,
	sumout => \Add3~13_sumout\,
	cout => \Add3~14\);

-- Location: FF_X81_Y34_N13
\y_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~13_sumout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_out(3));

-- Location: LABCELL_X81_Y34_N15
\Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~17_sumout\ = SUM(( GND ) + ( \Add2~17_sumout\ ) + ( \Add3~14\ ))
-- \Add3~18\ = CARRY(( GND ) + ( \Add2~17_sumout\ ) + ( \Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~17_sumout\,
	cin => \Add3~14\,
	sumout => \Add3~17_sumout\,
	cout => \Add3~18\);

-- Location: FF_X81_Y34_N17
\y_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~17_sumout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_out(4));

-- Location: LABCELL_X81_Y34_N18
\Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~21_sumout\ = SUM(( GND ) + ( \Add2~21_sumout\ ) + ( \Add3~18\ ))
-- \Add3~22\ = CARRY(( GND ) + ( \Add2~21_sumout\ ) + ( \Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add2~21_sumout\,
	cin => \Add3~18\,
	sumout => \Add3~21_sumout\,
	cout => \Add3~22\);

-- Location: FF_X81_Y34_N19
\y_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~21_sumout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_out(5));

-- Location: LABCELL_X81_Y34_N21
\Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~25_sumout\ = SUM(( \Add2~25_sumout\ ) + ( GND ) + ( \Add3~22\ ))
-- \Add3~26\ = CARRY(( \Add2~25_sumout\ ) + ( GND ) + ( \Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add2~25_sumout\,
	cin => \Add3~22\,
	sumout => \Add3~25_sumout\,
	cout => \Add3~26\);

-- Location: FF_X81_Y34_N22
\y_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~25_sumout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_out(6));

-- Location: LABCELL_X81_Y34_N24
\Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~29_sumout\ = SUM(( GND ) + ( \Add2~29_sumout\ ) + ( \Add3~26\ ))
-- \Add3~30\ = CARRY(( GND ) + ( \Add2~29_sumout\ ) + ( \Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add2~29_sumout\,
	cin => \Add3~26\,
	sumout => \Add3~29_sumout\,
	cout => \Add3~30\);

-- Location: FF_X81_Y34_N26
\y_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~29_sumout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_out(7));

-- Location: LABCELL_X81_Y34_N27
\Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~33_sumout\ = SUM(( \Add2~33_sumout\ ) + ( GND ) + ( \Add3~30\ ))
-- \Add3~34\ = CARRY(( \Add2~33_sumout\ ) + ( GND ) + ( \Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add2~33_sumout\,
	cin => \Add3~30\,
	sumout => \Add3~33_sumout\,
	cout => \Add3~34\);

-- Location: FF_X81_Y34_N28
\y_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~33_sumout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_out(8));

-- Location: LABCELL_X81_Y34_N30
\Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~37_sumout\ = SUM(( GND ) + ( \Add2~37_sumout\ ) + ( \Add3~34\ ))
-- \Add3~38\ = CARRY(( GND ) + ( \Add2~37_sumout\ ) + ( \Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add2~37_sumout\,
	cin => \Add3~34\,
	sumout => \Add3~37_sumout\,
	cout => \Add3~38\);

-- Location: FF_X81_Y34_N31
\y_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~37_sumout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_out(9));

-- Location: LABCELL_X81_Y34_N33
\Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~41_sumout\ = SUM(( GND ) + ( \Add2~41_sumout\ ) + ( \Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add2~41_sumout\,
	cin => \Add3~38\,
	sumout => \Add3~41_sumout\);

-- Location: FF_X81_Y34_N34
\y_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~41_sumout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_out(10));

-- Location: MLABCELL_X6_Y8_N0
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


