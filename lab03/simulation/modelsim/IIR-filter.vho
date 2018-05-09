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

-- DATE "04/01/2018 18:52:53"

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

ENTITY 	iir_pipe_2_fractional IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	x_in : IN std_logic_vector(14 DOWNTO 0);
	y_out : OUT std_logic_vector(14 DOWNTO 0)
	);
END iir_pipe_2_fractional;

-- Design Ports Information
-- y_out[0]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[1]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[2]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[3]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[5]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[7]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[8]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[9]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[10]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[11]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[12]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[13]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[14]	=>  Location: PIN_AJ14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[0]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[1]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[2]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[5]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[6]	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[7]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[8]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[9]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[10]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[11]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[12]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[13]	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[14]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF iir_pipe_2_fractional IS
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
SIGNAL ww_x_in : std_logic_vector(14 DOWNTO 0);
SIGNAL ww_y_out : std_logic_vector(14 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \x_in[4]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \x_in[1]~input_o\ : std_logic;
SIGNAL \x_in[0]~input_o\ : std_logic;
SIGNAL \x_in[14]~input_o\ : std_logic;
SIGNAL \Add0~62_cout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \x_in[3]~input_o\ : std_logic;
SIGNAL \x_in[2]~input_o\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \Add1~62_cout\ : std_logic;
SIGNAL \Add1~63\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \x_in[6]~input_o\ : std_logic;
SIGNAL \x_in[7]~input_o\ : std_logic;
SIGNAL \x_in[5]~input_o\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \x_in[8]~input_o\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \x_in[12]~input_o\ : std_logic;
SIGNAL \x_in[11]~input_o\ : std_logic;
SIGNAL \x_in[9]~input_o\ : std_logic;
SIGNAL \x_in[10]~input_o\ : std_logic;
SIGNAL \x[10]~feeder_combout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \Add7~30_cout\ : std_logic;
SIGNAL \Add7~1_sumout\ : std_logic;
SIGNAL \WideOr4~1_combout\ : std_logic;
SIGNAL \x_in[13]~input_o\ : std_logic;
SIGNAL \Add11~0_combout\ : std_logic;
SIGNAL \Add10~1_sumout\ : std_logic;
SIGNAL \Add3~46_cout\ : std_logic;
SIGNAL \Add3~1_sumout\ : std_logic;
SIGNAL \WideOr2~1_combout\ : std_logic;
SIGNAL \Add5~50_cout\ : std_logic;
SIGNAL \Add5~51\ : std_logic;
SIGNAL \Add5~1_sumout\ : std_logic;
SIGNAL \Add12~1_sumout\ : std_logic;
SIGNAL \Add13~1_sumout\ : std_logic;
SIGNAL \Add14~49_sumout\ : std_logic;
SIGNAL \Add7~2\ : std_logic;
SIGNAL \Add7~6\ : std_logic;
SIGNAL \Add7~10\ : std_logic;
SIGNAL \Add7~14\ : std_logic;
SIGNAL \Add7~18\ : std_logic;
SIGNAL \Add7~22\ : std_logic;
SIGNAL \Add7~25_sumout\ : std_logic;
SIGNAL \Add9~2_combout\ : std_logic;
SIGNAL \Add11~2_combout\ : std_logic;
SIGNAL \Add7~21_sumout\ : std_logic;
SIGNAL \Add7~17_sumout\ : std_logic;
SIGNAL \Add7~13_sumout\ : std_logic;
SIGNAL \Add7~9_sumout\ : std_logic;
SIGNAL \Add9~1_combout\ : std_logic;
SIGNAL \Add11~1_combout\ : std_logic;
SIGNAL \Add7~5_sumout\ : std_logic;
SIGNAL \Add10~2\ : std_logic;
SIGNAL \Add10~3\ : std_logic;
SIGNAL \Add10~6\ : std_logic;
SIGNAL \Add10~7\ : std_logic;
SIGNAL \Add10~10\ : std_logic;
SIGNAL \Add10~11\ : std_logic;
SIGNAL \Add10~14\ : std_logic;
SIGNAL \Add10~15\ : std_logic;
SIGNAL \Add10~18\ : std_logic;
SIGNAL \Add10~19\ : std_logic;
SIGNAL \Add10~22\ : std_logic;
SIGNAL \Add10~23\ : std_logic;
SIGNAL \Add10~26\ : std_logic;
SIGNAL \Add10~27\ : std_logic;
SIGNAL \Add10~29_sumout\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~14\ : std_logic;
SIGNAL \Add3~18\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~26\ : std_logic;
SIGNAL \Add3~30\ : std_logic;
SIGNAL \Add3~34\ : std_logic;
SIGNAL \Add3~38\ : std_logic;
SIGNAL \Add3~41_sumout\ : std_logic;
SIGNAL \Add3~37_sumout\ : std_logic;
SIGNAL \Add3~33_sumout\ : std_logic;
SIGNAL \Add3~29_sumout\ : std_logic;
SIGNAL \Add3~25_sumout\ : std_logic;
SIGNAL \Add3~21_sumout\ : std_logic;
SIGNAL \Add3~17_sumout\ : std_logic;
SIGNAL \Add3~13_sumout\ : std_logic;
SIGNAL \Add3~9_sumout\ : std_logic;
SIGNAL \Add3~5_sumout\ : std_logic;
SIGNAL \Add5~2\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~6\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~10\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~14\ : std_logic;
SIGNAL \Add5~15\ : std_logic;
SIGNAL \Add5~18\ : std_logic;
SIGNAL \Add5~19\ : std_logic;
SIGNAL \Add5~22\ : std_logic;
SIGNAL \Add5~23\ : std_logic;
SIGNAL \Add5~26\ : std_logic;
SIGNAL \Add5~27\ : std_logic;
SIGNAL \Add5~30\ : std_logic;
SIGNAL \Add5~31\ : std_logic;
SIGNAL \Add5~34\ : std_logic;
SIGNAL \Add5~35\ : std_logic;
SIGNAL \Add5~38\ : std_logic;
SIGNAL \Add5~39\ : std_logic;
SIGNAL \Add5~41_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Add5~37_sumout\ : std_logic;
SIGNAL \Add5~33_sumout\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Add5~29_sumout\ : std_logic;
SIGNAL \Add5~25_sumout\ : std_logic;
SIGNAL \Add10~25_sumout\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add5~21_sumout\ : std_logic;
SIGNAL \Add10~21_sumout\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add5~17_sumout\ : std_logic;
SIGNAL \Add10~17_sumout\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add5~13_sumout\ : std_logic;
SIGNAL \Add10~13_sumout\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add10~9_sumout\ : std_logic;
SIGNAL \Add5~9_sumout\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Add10~5_sumout\ : std_logic;
SIGNAL \Add5~5_sumout\ : std_logic;
SIGNAL \Add12~2\ : std_logic;
SIGNAL \Add12~3\ : std_logic;
SIGNAL \Add12~6\ : std_logic;
SIGNAL \Add12~7\ : std_logic;
SIGNAL \Add12~10\ : std_logic;
SIGNAL \Add12~11\ : std_logic;
SIGNAL \Add12~14\ : std_logic;
SIGNAL \Add12~15\ : std_logic;
SIGNAL \Add12~18\ : std_logic;
SIGNAL \Add12~19\ : std_logic;
SIGNAL \Add12~22\ : std_logic;
SIGNAL \Add12~23\ : std_logic;
SIGNAL \Add12~26\ : std_logic;
SIGNAL \Add12~27\ : std_logic;
SIGNAL \Add12~30\ : std_logic;
SIGNAL \Add12~31\ : std_logic;
SIGNAL \Add12~34\ : std_logic;
SIGNAL \Add12~35\ : std_logic;
SIGNAL \Add12~38\ : std_logic;
SIGNAL \Add12~39\ : std_logic;
SIGNAL \Add12~41_sumout\ : std_logic;
SIGNAL \Add12~37_sumout\ : std_logic;
SIGNAL \Add12~33_sumout\ : std_logic;
SIGNAL \Add12~29_sumout\ : std_logic;
SIGNAL \Add12~25_sumout\ : std_logic;
SIGNAL \Add12~21_sumout\ : std_logic;
SIGNAL \Add12~17_sumout\ : std_logic;
SIGNAL \Add12~13_sumout\ : std_logic;
SIGNAL \Add12~9_sumout\ : std_logic;
SIGNAL \Add12~5_sumout\ : std_logic;
SIGNAL \Add13~2\ : std_logic;
SIGNAL \Add13~6\ : std_logic;
SIGNAL \Add13~10\ : std_logic;
SIGNAL \Add13~14\ : std_logic;
SIGNAL \Add13~18\ : std_logic;
SIGNAL \Add13~22\ : std_logic;
SIGNAL \Add13~26\ : std_logic;
SIGNAL \Add13~30\ : std_logic;
SIGNAL \Add13~34\ : std_logic;
SIGNAL \Add13~38\ : std_logic;
SIGNAL \Add13~41_sumout\ : std_logic;
SIGNAL \y[13]~DUPLICATE_q\ : std_logic;
SIGNAL \Add13~37_sumout\ : std_logic;
SIGNAL \Add14~37_sumout\ : std_logic;
SIGNAL \Add13~17_sumout\ : std_logic;
SIGNAL \y[7]~DUPLICATE_q\ : std_logic;
SIGNAL \y[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Add19~42_cout\ : std_logic;
SIGNAL \Add19~2\ : std_logic;
SIGNAL \Add19~6\ : std_logic;
SIGNAL \Add19~10\ : std_logic;
SIGNAL \Add19~13_sumout\ : std_logic;
SIGNAL \Add17~13_sumout\ : std_logic;
SIGNAL \Add17~9_sumout\ : std_logic;
SIGNAL \Add19~9_sumout\ : std_logic;
SIGNAL \Add19~5_sumout\ : std_logic;
SIGNAL \Add17~5_sumout\ : std_logic;
SIGNAL \Add19~1_sumout\ : std_logic;
SIGNAL \Add23~0_combout\ : std_logic;
SIGNAL \Add13~9_sumout\ : std_logic;
SIGNAL \Add14~9_sumout\ : std_logic;
SIGNAL \Add14~1_sumout\ : std_logic;
SIGNAL \WideOr7~0_combout\ : std_logic;
SIGNAL \Add15~122_cout\ : std_logic;
SIGNAL \Add15~123\ : std_logic;
SIGNAL \Add15~62\ : std_logic;
SIGNAL \Add15~63\ : std_logic;
SIGNAL \Add15~65_sumout\ : std_logic;
SIGNAL \Add20~3\ : std_logic;
SIGNAL \Add20~5_sumout\ : std_logic;
SIGNAL \Add21~0_combout\ : std_logic;
SIGNAL \Add20~1_sumout\ : std_logic;
SIGNAL \WideOr10~1_combout\ : std_logic;
SIGNAL \Add22~2\ : std_logic;
SIGNAL \Add22~5_sumout\ : std_logic;
SIGNAL \Add15~61_sumout\ : std_logic;
SIGNAL \Add15~2\ : std_logic;
SIGNAL \Add15~5_sumout\ : std_logic;
SIGNAL \Add13~5_sumout\ : std_logic;
SIGNAL \Add25~2\ : std_logic;
SIGNAL \Add25~5_sumout\ : std_logic;
SIGNAL \Add14~58_cout\ : std_logic;
SIGNAL \Add14~2\ : std_logic;
SIGNAL \Add14~5_sumout\ : std_logic;
SIGNAL \Add15~66\ : std_logic;
SIGNAL \Add15~67\ : std_logic;
SIGNAL \Add15~69_sumout\ : std_logic;
SIGNAL \Add20~7\ : std_logic;
SIGNAL \Add20~9_sumout\ : std_logic;
SIGNAL \Add22~6\ : std_logic;
SIGNAL \Add22~9_sumout\ : std_logic;
SIGNAL \Add15~6\ : std_logic;
SIGNAL \Add15~9_sumout\ : std_logic;
SIGNAL \Add25~6\ : std_logic;
SIGNAL \Add25~9_sumout\ : std_logic;
SIGNAL \WideOr8~0_combout\ : std_logic;
SIGNAL \Add17~46_cout\ : std_logic;
SIGNAL \Add17~1_sumout\ : std_logic;
SIGNAL \Add20~2\ : std_logic;
SIGNAL \Add20~6\ : std_logic;
SIGNAL \Add20~10\ : std_logic;
SIGNAL \Add20~11\ : std_logic;
SIGNAL \Add20~13_sumout\ : std_logic;
SIGNAL \Add22~10\ : std_logic;
SIGNAL \Add22~13_sumout\ : std_logic;
SIGNAL \Add14~13_sumout\ : std_logic;
SIGNAL \Add15~70\ : std_logic;
SIGNAL \Add15~71\ : std_logic;
SIGNAL \Add15~73_sumout\ : std_logic;
SIGNAL \Add15~10\ : std_logic;
SIGNAL \Add15~13_sumout\ : std_logic;
SIGNAL \Add13~13_sumout\ : std_logic;
SIGNAL \Add25~10\ : std_logic;
SIGNAL \Add25~13_sumout\ : std_logic;
SIGNAL \y[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Add14~6\ : std_logic;
SIGNAL \Add14~10\ : std_logic;
SIGNAL \Add14~14\ : std_logic;
SIGNAL \Add14~18\ : std_logic;
SIGNAL \Add14~21_sumout\ : std_logic;
SIGNAL \Add15~74\ : std_logic;
SIGNAL \Add15~75\ : std_logic;
SIGNAL \Add15~78\ : std_logic;
SIGNAL \Add15~79\ : std_logic;
SIGNAL \Add15~81_sumout\ : std_logic;
SIGNAL \Add17~21_sumout\ : std_logic;
SIGNAL \y[11]~DUPLICATE_q\ : std_logic;
SIGNAL \y[10]~DUPLICATE_q\ : std_logic;
SIGNAL \Add19~14\ : std_logic;
SIGNAL \Add19~18\ : std_logic;
SIGNAL \Add19~21_sumout\ : std_logic;
SIGNAL \Add19~17_sumout\ : std_logic;
SIGNAL \Add17~17_sumout\ : std_logic;
SIGNAL \Add20~14\ : std_logic;
SIGNAL \Add20~15\ : std_logic;
SIGNAL \Add20~18\ : std_logic;
SIGNAL \Add20~19\ : std_logic;
SIGNAL \Add20~21_sumout\ : std_logic;
SIGNAL \Add20~17_sumout\ : std_logic;
SIGNAL \Add22~14\ : std_logic;
SIGNAL \Add22~18\ : std_logic;
SIGNAL \Add22~21_sumout\ : std_logic;
SIGNAL \Add22~17_sumout\ : std_logic;
SIGNAL \Add15~14\ : std_logic;
SIGNAL \Add15~18\ : std_logic;
SIGNAL \Add15~21_sumout\ : std_logic;
SIGNAL \Add13~21_sumout\ : std_logic;
SIGNAL \Add25~14\ : std_logic;
SIGNAL \Add25~18\ : std_logic;
SIGNAL \Add25~21_sumout\ : std_logic;
SIGNAL \y[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Add17~2\ : std_logic;
SIGNAL \Add17~6\ : std_logic;
SIGNAL \Add17~10\ : std_logic;
SIGNAL \Add17~14\ : std_logic;
SIGNAL \Add17~18\ : std_logic;
SIGNAL \Add17~22\ : std_logic;
SIGNAL \Add17~25_sumout\ : std_logic;
SIGNAL \Add19~22\ : std_logic;
SIGNAL \Add19~25_sumout\ : std_logic;
SIGNAL \Add20~22\ : std_logic;
SIGNAL \Add20~23\ : std_logic;
SIGNAL \Add20~25_sumout\ : std_logic;
SIGNAL \Add22~22\ : std_logic;
SIGNAL \Add22~25_sumout\ : std_logic;
SIGNAL \Add14~22\ : std_logic;
SIGNAL \Add14~25_sumout\ : std_logic;
SIGNAL \Add15~82\ : std_logic;
SIGNAL \Add15~83\ : std_logic;
SIGNAL \Add15~85_sumout\ : std_logic;
SIGNAL \Add15~22\ : std_logic;
SIGNAL \Add15~25_sumout\ : std_logic;
SIGNAL \Add13~25_sumout\ : std_logic;
SIGNAL \Add25~22\ : std_logic;
SIGNAL \Add25~25_sumout\ : std_logic;
SIGNAL \y[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Add14~17_sumout\ : std_logic;
SIGNAL \Add15~77_sumout\ : std_logic;
SIGNAL \Add15~17_sumout\ : std_logic;
SIGNAL \Add25~17_sumout\ : std_logic;
SIGNAL \y[4]~feeder_combout\ : std_logic;
SIGNAL \WideOr9~0_combout\ : std_logic;
SIGNAL \Add23~1_combout\ : std_logic;
SIGNAL \Add19~26\ : std_logic;
SIGNAL \Add19~30\ : std_logic;
SIGNAL \Add19~33_sumout\ : std_logic;
SIGNAL \Add17~26\ : std_logic;
SIGNAL \Add17~30\ : std_logic;
SIGNAL \Add17~33_sumout\ : std_logic;
SIGNAL \Add19~29_sumout\ : std_logic;
SIGNAL \Add17~29_sumout\ : std_logic;
SIGNAL \Add20~26\ : std_logic;
SIGNAL \Add20~27\ : std_logic;
SIGNAL \Add20~30\ : std_logic;
SIGNAL \Add20~31\ : std_logic;
SIGNAL \Add20~33_sumout\ : std_logic;
SIGNAL \Add20~29_sumout\ : std_logic;
SIGNAL \Add22~26\ : std_logic;
SIGNAL \Add22~30\ : std_logic;
SIGNAL \Add22~33_sumout\ : std_logic;
SIGNAL \Add15~86\ : std_logic;
SIGNAL \Add15~87\ : std_logic;
SIGNAL \Add15~90\ : std_logic;
SIGNAL \Add15~91\ : std_logic;
SIGNAL \Add15~93_sumout\ : std_logic;
SIGNAL \Add22~29_sumout\ : std_logic;
SIGNAL \Add15~26\ : std_logic;
SIGNAL \Add15~30\ : std_logic;
SIGNAL \Add15~33_sumout\ : std_logic;
SIGNAL \Add13~33_sumout\ : std_logic;
SIGNAL \Add13~29_sumout\ : std_logic;
SIGNAL \Add25~26\ : std_logic;
SIGNAL \Add25~30\ : std_logic;
SIGNAL \Add25~33_sumout\ : std_logic;
SIGNAL \y[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Add14~26\ : std_logic;
SIGNAL \Add14~30\ : std_logic;
SIGNAL \Add14~33_sumout\ : std_logic;
SIGNAL \Add15~94\ : std_logic;
SIGNAL \Add15~95\ : std_logic;
SIGNAL \Add15~97_sumout\ : std_logic;
SIGNAL \Add19~34\ : std_logic;
SIGNAL \Add19~37_sumout\ : std_logic;
SIGNAL \Add17~34\ : std_logic;
SIGNAL \Add17~37_sumout\ : std_logic;
SIGNAL \Add20~34\ : std_logic;
SIGNAL \Add20~35\ : std_logic;
SIGNAL \Add20~37_sumout\ : std_logic;
SIGNAL \Add22~34\ : std_logic;
SIGNAL \Add22~37_sumout\ : std_logic;
SIGNAL \Add15~34\ : std_logic;
SIGNAL \Add15~37_sumout\ : std_logic;
SIGNAL \Add25~34\ : std_logic;
SIGNAL \Add25~37_sumout\ : std_logic;
SIGNAL \y[9]~DUPLICATE_q\ : std_logic;
SIGNAL \Add14~29_sumout\ : std_logic;
SIGNAL \Add15~89_sumout\ : std_logic;
SIGNAL \Add15~29_sumout\ : std_logic;
SIGNAL \Add25~29_sumout\ : std_logic;
SIGNAL \WideOr10~0_combout\ : std_logic;
SIGNAL \Add21~1_combout\ : std_logic;
SIGNAL \Add17~38\ : std_logic;
SIGNAL \Add17~41_sumout\ : std_logic;
SIGNAL \Add23~2_combout\ : std_logic;
SIGNAL \Add20~38\ : std_logic;
SIGNAL \Add20~39\ : std_logic;
SIGNAL \Add20~41_sumout\ : std_logic;
SIGNAL \Add22~38\ : std_logic;
SIGNAL \Add22~41_sumout\ : std_logic;
SIGNAL \Add15~98\ : std_logic;
SIGNAL \Add15~99\ : std_logic;
SIGNAL \Add15~101_sumout\ : std_logic;
SIGNAL \Add15~38\ : std_logic;
SIGNAL \Add15~41_sumout\ : std_logic;
SIGNAL \Add25~38\ : std_logic;
SIGNAL \Add25~41_sumout\ : std_logic;
SIGNAL \Add14~34\ : std_logic;
SIGNAL \Add14~38\ : std_logic;
SIGNAL \Add14~41_sumout\ : std_logic;
SIGNAL \Add15~102\ : std_logic;
SIGNAL \Add15~103\ : std_logic;
SIGNAL \Add15~107\ : std_logic;
SIGNAL \Add15~109_sumout\ : std_logic;
SIGNAL \Add20~42\ : std_logic;
SIGNAL \Add20~43\ : std_logic;
SIGNAL \Add20~45_sumout\ : std_logic;
SIGNAL \Add22~42\ : std_logic;
SIGNAL \Add22~45_sumout\ : std_logic;
SIGNAL \Add15~42\ : std_logic;
SIGNAL \Add15~46\ : std_logic;
SIGNAL \Add15~49_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \Add5~42\ : std_logic;
SIGNAL \Add5~43\ : std_logic;
SIGNAL \Add5~45_sumout\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \Add12~42\ : std_logic;
SIGNAL \Add12~43\ : std_logic;
SIGNAL \Add12~46\ : std_logic;
SIGNAL \Add12~47\ : std_logic;
SIGNAL \Add12~49_sumout\ : std_logic;
SIGNAL \Add12~45_sumout\ : std_logic;
SIGNAL \Add13~42\ : std_logic;
SIGNAL \Add13~46\ : std_logic;
SIGNAL \Add13~49_sumout\ : std_logic;
SIGNAL \Add13~45_sumout\ : std_logic;
SIGNAL \Add25~42\ : std_logic;
SIGNAL \Add25~46\ : std_logic;
SIGNAL \Add25~49_sumout\ : std_logic;
SIGNAL \y[12]~DUPLICATE_q\ : std_logic;
SIGNAL \Add14~42\ : std_logic;
SIGNAL \Add14~45_sumout\ : std_logic;
SIGNAL \Add15~106\ : std_logic;
SIGNAL \Add15~110\ : std_logic;
SIGNAL \Add15~111\ : std_logic;
SIGNAL \Add15~113_sumout\ : std_logic;
SIGNAL \Add15~50\ : std_logic;
SIGNAL \Add15~53_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \Add12~50\ : std_logic;
SIGNAL \Add12~51\ : std_logic;
SIGNAL \Add12~53_sumout\ : std_logic;
SIGNAL \Add13~50\ : std_logic;
SIGNAL \Add13~53_sumout\ : std_logic;
SIGNAL \Add25~50\ : std_logic;
SIGNAL \Add25~53_sumout\ : std_logic;
SIGNAL \Add14~46\ : std_logic;
SIGNAL \Add14~50\ : std_logic;
SIGNAL \Add14~53_sumout\ : std_logic;
SIGNAL \Add15~114\ : std_logic;
SIGNAL \Add15~115\ : std_logic;
SIGNAL \Add15~117_sumout\ : std_logic;
SIGNAL \Add15~54\ : std_logic;
SIGNAL \Add15~57_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \Add12~54\ : std_logic;
SIGNAL \Add12~55\ : std_logic;
SIGNAL \Add12~57_sumout\ : std_logic;
SIGNAL \Add13~54\ : std_logic;
SIGNAL \Add13~57_sumout\ : std_logic;
SIGNAL \Add25~54\ : std_logic;
SIGNAL \Add25~57_sumout\ : std_logic;
SIGNAL \y[14]~DUPLICATE_q\ : std_logic;
SIGNAL \Add15~105_sumout\ : std_logic;
SIGNAL \Add15~45_sumout\ : std_logic;
SIGNAL \Add25~45_sumout\ : std_logic;
SIGNAL \Add22~1_sumout\ : std_logic;
SIGNAL \Add15~1_sumout\ : std_logic;
SIGNAL \Add25~1_sumout\ : std_logic;
SIGNAL \y[0]~DUPLICATE_q\ : std_logic;
SIGNAL x : std_logic_vector(14 DOWNTO 0);
SIGNAL x3 : std_logic_vector(14 DOWNTO 0);
SIGNAL sx : std_logic_vector(14 DOWNTO 0);
SIGNAL y9 : std_logic_vector(14 DOWNTO 0);
SIGNAL y : std_logic_vector(14 DOWNTO 0);
SIGNAL \ALT_INV_y[14]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_y[13]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_y[12]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_y[11]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_y[10]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_y[9]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_y[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_y[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_y[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_y[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_y[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_y[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_y[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_x_in[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_WideOr3~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr2~1_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add11~2_combout\ : std_logic;
SIGNAL \ALT_INV_Add9~2_combout\ : std_logic;
SIGNAL \ALT_INV_Add9~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add11~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add9~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add11~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr4~1_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr4~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add23~2_combout\ : std_logic;
SIGNAL \ALT_INV_Add23~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add23~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add21~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add21~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr10~1_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr10~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr9~0_combout\ : std_logic;
SIGNAL ALT_INV_x : std_logic_vector(14 DOWNTO 0);
SIGNAL ALT_INV_x3 : std_logic_vector(14 DOWNTO 0);
SIGNAL ALT_INV_sx : std_logic_vector(14 DOWNTO 0);
SIGNAL ALT_INV_y9 : std_logic_vector(14 DOWNTO 0);
SIGNAL ALT_INV_y : std_logic_vector(14 DOWNTO 0);
SIGNAL \ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add17~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add19~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add17~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add19~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add17~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add10~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add19~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add17~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add10~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add19~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add17~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add10~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add19~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add17~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add10~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add19~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add17~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add10~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add19~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add17~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add10~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add19~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add17~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add10~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add19~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add17~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add10~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add19~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add17~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add20~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add20~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add20~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add20~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add20~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add20~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add20~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add20~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add20~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add20~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add20~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add20~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add15~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add15~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add15~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add22~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add15~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add22~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add15~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add22~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add15~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add22~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add15~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add22~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add15~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add22~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add15~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add22~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add15~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add22~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add15~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add22~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add15~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add22~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add15~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add22~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add15~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add22~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add15~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add25~17_sumout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_x_in <= x_in;
y_out <= ww_y_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_y[14]~DUPLICATE_q\ <= NOT \y[14]~DUPLICATE_q\;
\ALT_INV_y[13]~DUPLICATE_q\ <= NOT \y[13]~DUPLICATE_q\;
\ALT_INV_y[12]~DUPLICATE_q\ <= NOT \y[12]~DUPLICATE_q\;
\ALT_INV_y[11]~DUPLICATE_q\ <= NOT \y[11]~DUPLICATE_q\;
\ALT_INV_y[10]~DUPLICATE_q\ <= NOT \y[10]~DUPLICATE_q\;
\ALT_INV_y[9]~DUPLICATE_q\ <= NOT \y[9]~DUPLICATE_q\;
\ALT_INV_y[8]~DUPLICATE_q\ <= NOT \y[8]~DUPLICATE_q\;
\ALT_INV_y[7]~DUPLICATE_q\ <= NOT \y[7]~DUPLICATE_q\;
\ALT_INV_y[6]~DUPLICATE_q\ <= NOT \y[6]~DUPLICATE_q\;
\ALT_INV_y[5]~DUPLICATE_q\ <= NOT \y[5]~DUPLICATE_q\;
\ALT_INV_y[4]~DUPLICATE_q\ <= NOT \y[4]~DUPLICATE_q\;
\ALT_INV_y[3]~DUPLICATE_q\ <= NOT \y[3]~DUPLICATE_q\;
\ALT_INV_y[0]~DUPLICATE_q\ <= NOT \y[0]~DUPLICATE_q\;
\ALT_INV_x_in[10]~input_o\ <= NOT \x_in[10]~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_WideOr3~0_combout\ <= NOT \WideOr3~0_combout\;
\ALT_INV_WideOr0~0_combout\ <= NOT \WideOr0~0_combout\;
\ALT_INV_WideOr2~1_combout\ <= NOT \WideOr2~1_combout\;
\ALT_INV_WideOr8~0_combout\ <= NOT \WideOr8~0_combout\;
\ALT_INV_Add11~2_combout\ <= NOT \Add11~2_combout\;
\ALT_INV_Add9~2_combout\ <= NOT \Add9~2_combout\;
\ALT_INV_Add9~1_combout\ <= NOT \Add9~1_combout\;
\ALT_INV_Add11~1_combout\ <= NOT \Add11~1_combout\;
\ALT_INV_Add9~0_combout\ <= NOT \Add9~0_combout\;
\ALT_INV_Add11~0_combout\ <= NOT \Add11~0_combout\;
\ALT_INV_WideOr4~1_combout\ <= NOT \WideOr4~1_combout\;
\ALT_INV_WideOr4~0_combout\ <= NOT \WideOr4~0_combout\;
\ALT_INV_WideOr2~0_combout\ <= NOT \WideOr2~0_combout\;
\ALT_INV_WideOr1~0_combout\ <= NOT \WideOr1~0_combout\;
\ALT_INV_Add23~2_combout\ <= NOT \Add23~2_combout\;
\ALT_INV_Add23~1_combout\ <= NOT \Add23~1_combout\;
\ALT_INV_Add23~0_combout\ <= NOT \Add23~0_combout\;
\ALT_INV_WideOr7~0_combout\ <= NOT \WideOr7~0_combout\;
\ALT_INV_Add21~1_combout\ <= NOT \Add21~1_combout\;
\ALT_INV_Add21~0_combout\ <= NOT \Add21~0_combout\;
\ALT_INV_WideOr10~1_combout\ <= NOT \WideOr10~1_combout\;
\ALT_INV_WideOr10~0_combout\ <= NOT \WideOr10~0_combout\;
\ALT_INV_WideOr9~0_combout\ <= NOT \WideOr9~0_combout\;
ALT_INV_x(14) <= NOT x(14);
ALT_INV_x3(14) <= NOT x3(14);
ALT_INV_x(13) <= NOT x(13);
ALT_INV_x3(13) <= NOT x3(13);
ALT_INV_x(12) <= NOT x(12);
ALT_INV_x3(12) <= NOT x3(12);
ALT_INV_x(11) <= NOT x(11);
ALT_INV_x3(11) <= NOT x3(11);
ALT_INV_x(10) <= NOT x(10);
ALT_INV_x3(10) <= NOT x3(10);
ALT_INV_x(9) <= NOT x(9);
ALT_INV_x3(9) <= NOT x3(9);
ALT_INV_x(8) <= NOT x(8);
ALT_INV_x3(8) <= NOT x3(8);
ALT_INV_x(7) <= NOT x(7);
ALT_INV_x3(7) <= NOT x3(7);
ALT_INV_x(6) <= NOT x(6);
ALT_INV_x3(6) <= NOT x3(6);
ALT_INV_x(5) <= NOT x(5);
ALT_INV_x3(5) <= NOT x3(5);
ALT_INV_x(4) <= NOT x(4);
ALT_INV_x3(4) <= NOT x3(4);
ALT_INV_x(3) <= NOT x(3);
ALT_INV_x3(3) <= NOT x3(3);
ALT_INV_x(2) <= NOT x(2);
ALT_INV_x3(2) <= NOT x3(2);
ALT_INV_x(1) <= NOT x(1);
ALT_INV_x3(1) <= NOT x3(1);
ALT_INV_x(0) <= NOT x(0);
ALT_INV_x3(0) <= NOT x3(0);
ALT_INV_sx(14) <= NOT sx(14);
ALT_INV_y9(14) <= NOT y9(14);
ALT_INV_sx(13) <= NOT sx(13);
ALT_INV_y9(13) <= NOT y9(13);
ALT_INV_sx(12) <= NOT sx(12);
ALT_INV_y9(12) <= NOT y9(12);
ALT_INV_sx(11) <= NOT sx(11);
ALT_INV_y9(11) <= NOT y9(11);
ALT_INV_sx(10) <= NOT sx(10);
ALT_INV_y9(10) <= NOT y9(10);
ALT_INV_sx(9) <= NOT sx(9);
ALT_INV_y9(9) <= NOT y9(9);
ALT_INV_sx(8) <= NOT sx(8);
ALT_INV_y9(8) <= NOT y9(8);
ALT_INV_sx(7) <= NOT sx(7);
ALT_INV_y9(7) <= NOT y9(7);
ALT_INV_sx(6) <= NOT sx(6);
ALT_INV_y9(6) <= NOT y9(6);
ALT_INV_sx(5) <= NOT sx(5);
ALT_INV_y9(5) <= NOT y9(5);
ALT_INV_sx(4) <= NOT sx(4);
ALT_INV_y9(4) <= NOT y9(4);
ALT_INV_sx(3) <= NOT sx(3);
ALT_INV_y9(3) <= NOT y9(3);
ALT_INV_sx(2) <= NOT sx(2);
ALT_INV_y9(2) <= NOT y9(2);
ALT_INV_sx(1) <= NOT sx(1);
ALT_INV_y9(1) <= NOT y9(1);
ALT_INV_sx(0) <= NOT sx(0);
ALT_INV_y9(0) <= NOT y9(0);
ALT_INV_y(14) <= NOT y(14);
ALT_INV_y(13) <= NOT y(13);
ALT_INV_y(12) <= NOT y(12);
ALT_INV_y(11) <= NOT y(11);
ALT_INV_y(10) <= NOT y(10);
ALT_INV_y(9) <= NOT y(9);
ALT_INV_y(8) <= NOT y(8);
ALT_INV_y(7) <= NOT y(7);
ALT_INV_y(6) <= NOT y(6);
ALT_INV_y(5) <= NOT y(5);
ALT_INV_y(4) <= NOT y(4);
ALT_INV_y(3) <= NOT y(3);
ALT_INV_y(2) <= NOT y(2);
ALT_INV_y(1) <= NOT y(1);
ALT_INV_y(0) <= NOT y(0);
\ALT_INV_Add0~57_sumout\ <= NOT \Add0~57_sumout\;
\ALT_INV_Add0~53_sumout\ <= NOT \Add0~53_sumout\;
\ALT_INV_Add0~49_sumout\ <= NOT \Add0~49_sumout\;
\ALT_INV_Add0~45_sumout\ <= NOT \Add0~45_sumout\;
\ALT_INV_Add0~41_sumout\ <= NOT \Add0~41_sumout\;
\ALT_INV_Add3~41_sumout\ <= NOT \Add3~41_sumout\;
\ALT_INV_Add0~37_sumout\ <= NOT \Add0~37_sumout\;
\ALT_INV_Add3~37_sumout\ <= NOT \Add3~37_sumout\;
\ALT_INV_Add0~33_sumout\ <= NOT \Add0~33_sumout\;
\ALT_INV_Add3~33_sumout\ <= NOT \Add3~33_sumout\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add3~29_sumout\ <= NOT \Add3~29_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add3~25_sumout\ <= NOT \Add3~25_sumout\;
\ALT_INV_Add7~25_sumout\ <= NOT \Add7~25_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add3~21_sumout\ <= NOT \Add3~21_sumout\;
\ALT_INV_Add7~21_sumout\ <= NOT \Add7~21_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add3~17_sumout\ <= NOT \Add3~17_sumout\;
\ALT_INV_Add7~17_sumout\ <= NOT \Add7~17_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add3~13_sumout\ <= NOT \Add3~13_sumout\;
\ALT_INV_Add7~13_sumout\ <= NOT \Add7~13_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add3~9_sumout\ <= NOT \Add3~9_sumout\;
\ALT_INV_Add7~9_sumout\ <= NOT \Add7~9_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add3~5_sumout\ <= NOT \Add3~5_sumout\;
\ALT_INV_Add7~5_sumout\ <= NOT \Add7~5_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
\ALT_INV_Add3~1_sumout\ <= NOT \Add3~1_sumout\;
\ALT_INV_Add7~1_sumout\ <= NOT \Add7~1_sumout\;
\ALT_INV_Add1~57_sumout\ <= NOT \Add1~57_sumout\;
\ALT_INV_Add1~53_sumout\ <= NOT \Add1~53_sumout\;
\ALT_INV_Add1~49_sumout\ <= NOT \Add1~49_sumout\;
\ALT_INV_Add1~45_sumout\ <= NOT \Add1~45_sumout\;
\ALT_INV_Add5~45_sumout\ <= NOT \Add5~45_sumout\;
\ALT_INV_Add1~41_sumout\ <= NOT \Add1~41_sumout\;
\ALT_INV_Add5~41_sumout\ <= NOT \Add5~41_sumout\;
\ALT_INV_Add17~41_sumout\ <= NOT \Add17~41_sumout\;
\ALT_INV_Add1~37_sumout\ <= NOT \Add1~37_sumout\;
\ALT_INV_Add5~37_sumout\ <= NOT \Add5~37_sumout\;
\ALT_INV_Add19~37_sumout\ <= NOT \Add19~37_sumout\;
\ALT_INV_Add17~37_sumout\ <= NOT \Add17~37_sumout\;
\ALT_INV_Add1~33_sumout\ <= NOT \Add1~33_sumout\;
\ALT_INV_Add5~33_sumout\ <= NOT \Add5~33_sumout\;
\ALT_INV_Add19~33_sumout\ <= NOT \Add19~33_sumout\;
\ALT_INV_Add17~33_sumout\ <= NOT \Add17~33_sumout\;
\ALT_INV_Add1~29_sumout\ <= NOT \Add1~29_sumout\;
\ALT_INV_Add5~29_sumout\ <= NOT \Add5~29_sumout\;
\ALT_INV_Add10~29_sumout\ <= NOT \Add10~29_sumout\;
\ALT_INV_Add19~29_sumout\ <= NOT \Add19~29_sumout\;
\ALT_INV_Add17~29_sumout\ <= NOT \Add17~29_sumout\;
\ALT_INV_Add1~25_sumout\ <= NOT \Add1~25_sumout\;
\ALT_INV_Add5~25_sumout\ <= NOT \Add5~25_sumout\;
\ALT_INV_Add10~25_sumout\ <= NOT \Add10~25_sumout\;
\ALT_INV_Add19~25_sumout\ <= NOT \Add19~25_sumout\;
\ALT_INV_Add17~25_sumout\ <= NOT \Add17~25_sumout\;
\ALT_INV_Add1~21_sumout\ <= NOT \Add1~21_sumout\;
\ALT_INV_Add5~21_sumout\ <= NOT \Add5~21_sumout\;
\ALT_INV_Add10~21_sumout\ <= NOT \Add10~21_sumout\;
\ALT_INV_Add19~21_sumout\ <= NOT \Add19~21_sumout\;
\ALT_INV_Add17~21_sumout\ <= NOT \Add17~21_sumout\;
\ALT_INV_Add1~17_sumout\ <= NOT \Add1~17_sumout\;
\ALT_INV_Add5~17_sumout\ <= NOT \Add5~17_sumout\;
\ALT_INV_Add10~17_sumout\ <= NOT \Add10~17_sumout\;
\ALT_INV_Add19~17_sumout\ <= NOT \Add19~17_sumout\;
\ALT_INV_Add17~17_sumout\ <= NOT \Add17~17_sumout\;
\ALT_INV_Add1~13_sumout\ <= NOT \Add1~13_sumout\;
\ALT_INV_Add5~13_sumout\ <= NOT \Add5~13_sumout\;
\ALT_INV_Add10~13_sumout\ <= NOT \Add10~13_sumout\;
\ALT_INV_Add19~13_sumout\ <= NOT \Add19~13_sumout\;
\ALT_INV_Add17~13_sumout\ <= NOT \Add17~13_sumout\;
\ALT_INV_Add1~9_sumout\ <= NOT \Add1~9_sumout\;
\ALT_INV_Add5~9_sumout\ <= NOT \Add5~9_sumout\;
\ALT_INV_Add10~9_sumout\ <= NOT \Add10~9_sumout\;
\ALT_INV_Add19~9_sumout\ <= NOT \Add19~9_sumout\;
\ALT_INV_Add17~9_sumout\ <= NOT \Add17~9_sumout\;
\ALT_INV_Add1~5_sumout\ <= NOT \Add1~5_sumout\;
\ALT_INV_Add5~5_sumout\ <= NOT \Add5~5_sumout\;
\ALT_INV_Add10~5_sumout\ <= NOT \Add10~5_sumout\;
\ALT_INV_Add19~5_sumout\ <= NOT \Add19~5_sumout\;
\ALT_INV_Add17~5_sumout\ <= NOT \Add17~5_sumout\;
\ALT_INV_Add1~1_sumout\ <= NOT \Add1~1_sumout\;
\ALT_INV_Add5~1_sumout\ <= NOT \Add5~1_sumout\;
\ALT_INV_Add10~1_sumout\ <= NOT \Add10~1_sumout\;
\ALT_INV_Add19~1_sumout\ <= NOT \Add19~1_sumout\;
\ALT_INV_Add17~1_sumout\ <= NOT \Add17~1_sumout\;
\ALT_INV_Add14~53_sumout\ <= NOT \Add14~53_sumout\;
\ALT_INV_Add14~49_sumout\ <= NOT \Add14~49_sumout\;
\ALT_INV_Add20~45_sumout\ <= NOT \Add20~45_sumout\;
\ALT_INV_Add14~45_sumout\ <= NOT \Add14~45_sumout\;
\ALT_INV_Add20~41_sumout\ <= NOT \Add20~41_sumout\;
\ALT_INV_Add14~41_sumout\ <= NOT \Add14~41_sumout\;
\ALT_INV_Add20~37_sumout\ <= NOT \Add20~37_sumout\;
\ALT_INV_Add14~37_sumout\ <= NOT \Add14~37_sumout\;
\ALT_INV_Add20~33_sumout\ <= NOT \Add20~33_sumout\;
\ALT_INV_Add14~33_sumout\ <= NOT \Add14~33_sumout\;
\ALT_INV_Add20~29_sumout\ <= NOT \Add20~29_sumout\;
\ALT_INV_Add14~29_sumout\ <= NOT \Add14~29_sumout\;
\ALT_INV_Add20~25_sumout\ <= NOT \Add20~25_sumout\;
\ALT_INV_Add14~25_sumout\ <= NOT \Add14~25_sumout\;
\ALT_INV_Add20~21_sumout\ <= NOT \Add20~21_sumout\;
\ALT_INV_Add14~21_sumout\ <= NOT \Add14~21_sumout\;
\ALT_INV_Add20~17_sumout\ <= NOT \Add20~17_sumout\;
\ALT_INV_Add14~17_sumout\ <= NOT \Add14~17_sumout\;
\ALT_INV_Add20~13_sumout\ <= NOT \Add20~13_sumout\;
\ALT_INV_Add14~13_sumout\ <= NOT \Add14~13_sumout\;
\ALT_INV_Add20~9_sumout\ <= NOT \Add20~9_sumout\;
\ALT_INV_Add14~9_sumout\ <= NOT \Add14~9_sumout\;
\ALT_INV_Add20~5_sumout\ <= NOT \Add20~5_sumout\;
\ALT_INV_Add14~5_sumout\ <= NOT \Add14~5_sumout\;
\ALT_INV_Add20~1_sumout\ <= NOT \Add20~1_sumout\;
\ALT_INV_Add14~1_sumout\ <= NOT \Add14~1_sumout\;
\ALT_INV_Add15~117_sumout\ <= NOT \Add15~117_sumout\;
\ALT_INV_Add15~113_sumout\ <= NOT \Add15~113_sumout\;
\ALT_INV_Add15~109_sumout\ <= NOT \Add15~109_sumout\;
\ALT_INV_Add22~45_sumout\ <= NOT \Add22~45_sumout\;
\ALT_INV_Add15~105_sumout\ <= NOT \Add15~105_sumout\;
\ALT_INV_Add22~41_sumout\ <= NOT \Add22~41_sumout\;
\ALT_INV_Add15~101_sumout\ <= NOT \Add15~101_sumout\;
\ALT_INV_Add22~37_sumout\ <= NOT \Add22~37_sumout\;
\ALT_INV_Add15~97_sumout\ <= NOT \Add15~97_sumout\;
\ALT_INV_Add22~33_sumout\ <= NOT \Add22~33_sumout\;
\ALT_INV_Add15~93_sumout\ <= NOT \Add15~93_sumout\;
\ALT_INV_Add22~29_sumout\ <= NOT \Add22~29_sumout\;
\ALT_INV_Add15~89_sumout\ <= NOT \Add15~89_sumout\;
\ALT_INV_Add22~25_sumout\ <= NOT \Add22~25_sumout\;
\ALT_INV_Add15~85_sumout\ <= NOT \Add15~85_sumout\;
\ALT_INV_Add22~21_sumout\ <= NOT \Add22~21_sumout\;
\ALT_INV_Add15~81_sumout\ <= NOT \Add15~81_sumout\;
\ALT_INV_Add22~17_sumout\ <= NOT \Add22~17_sumout\;
\ALT_INV_Add15~77_sumout\ <= NOT \Add15~77_sumout\;
\ALT_INV_Add22~13_sumout\ <= NOT \Add22~13_sumout\;
\ALT_INV_Add15~73_sumout\ <= NOT \Add15~73_sumout\;
\ALT_INV_Add22~9_sumout\ <= NOT \Add22~9_sumout\;
\ALT_INV_Add15~69_sumout\ <= NOT \Add15~69_sumout\;
\ALT_INV_Add22~5_sumout\ <= NOT \Add22~5_sumout\;
\ALT_INV_Add15~65_sumout\ <= NOT \Add15~65_sumout\;
\ALT_INV_Add22~1_sumout\ <= NOT \Add22~1_sumout\;
\ALT_INV_Add15~61_sumout\ <= NOT \Add15~61_sumout\;
\ALT_INV_Add25~17_sumout\ <= NOT \Add25~17_sumout\;

-- Location: IOOBUF_X89_Y13_N39
\y_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_y_out(0));

-- Location: IOOBUF_X40_Y0_N19
\y_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => y(1),
	devoe => ww_devoe,
	o => ww_y_out(1));

-- Location: IOOBUF_X38_Y81_N19
\y_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => y(2),
	devoe => ww_devoe,
	o => ww_y_out(2));

-- Location: IOOBUF_X38_Y0_N2
\y_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_y_out(3));

-- Location: IOOBUF_X89_Y25_N39
\y_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_y_out(4));

-- Location: IOOBUF_X40_Y81_N2
\y_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y[5]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_y_out(5));

-- Location: IOOBUF_X40_Y81_N19
\y_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y[6]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_y_out(6));

-- Location: IOOBUF_X38_Y81_N36
\y_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_y_out(7));

-- Location: IOOBUF_X36_Y81_N36
\y_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y[8]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_y_out(8));

-- Location: IOOBUF_X38_Y81_N53
\y_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => y(9),
	devoe => ww_devoe,
	o => ww_y_out(9));

-- Location: IOOBUF_X38_Y81_N2
\y_out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => y(10),
	devoe => ww_devoe,
	o => ww_y_out(10));

-- Location: IOOBUF_X40_Y0_N53
\y_out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y[11]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_y_out(11));

-- Location: IOOBUF_X40_Y81_N36
\y_out[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => y(12),
	devoe => ww_devoe,
	o => ww_y_out(12));

-- Location: IOOBUF_X40_Y81_N53
\y_out[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y[13]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_y_out(13));

-- Location: IOOBUF_X40_Y0_N36
\y_out[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y[14]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_y_out(14));

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

-- Location: IOIBUF_X60_Y0_N18
\x_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(4),
	o => \x_in[4]~input_o\);

-- Location: IOIBUF_X50_Y0_N41
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X52_Y25_N50
\x[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x_in[4]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(4));

-- Location: IOIBUF_X40_Y0_N1
\x_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(1),
	o => \x_in[1]~input_o\);

-- Location: FF_X52_Y25_N38
\x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x_in[1]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(1));

-- Location: IOIBUF_X52_Y0_N52
\x_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(0),
	o => \x_in[0]~input_o\);

-- Location: FF_X52_Y25_N41
\x[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x_in[0]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(0));

-- Location: IOIBUF_X50_Y0_N92
\x_in[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(14),
	o => \x_in[14]~input_o\);

-- Location: FF_X51_Y25_N38
\x[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x_in[14]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(14));

-- Location: LABCELL_X50_Y25_N0
\Add0~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~62_cout\ = CARRY(( x(14) ) + ( x(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_x(0),
	datad => ALT_INV_x(14),
	cin => GND,
	cout => \Add0~62_cout\);

-- Location: LABCELL_X50_Y25_N3
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( x(1) ) + ( GND ) + ( \Add0~62_cout\ ))
-- \Add0~2\ = CARRY(( x(1) ) + ( GND ) + ( \Add0~62_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_x(1),
	cin => \Add0~62_cout\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: IOIBUF_X52_Y0_N1
\x_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(3),
	o => \x_in[3]~input_o\);

-- Location: FF_X52_Y25_N56
\x[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x_in[3]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(3));

-- Location: IOIBUF_X52_Y0_N18
\x_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(2),
	o => \x_in[2]~input_o\);

-- Location: FF_X52_Y25_N59
\x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x_in[2]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(2));

-- Location: LABCELL_X48_Y26_N48
\WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = ( !x(0) & ( !x(2) & ( (!x(3) & !x(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_x(3),
	datac => ALT_INV_x(1),
	datae => ALT_INV_x(0),
	dataf => ALT_INV_x(2),
	combout => \WideOr0~0_combout\);

-- Location: LABCELL_X50_Y26_N0
\Add1~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~62_cout\ = CARRY(( !x(14) $ (\WideOr0~0_combout\) ) + ( !VCC ) + ( !VCC ))
-- \Add1~63\ = SHARE((x(14) & !\WideOr0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_x(14),
	datad => \ALT_INV_WideOr0~0_combout\,
	cin => GND,
	sharein => GND,
	cout => \Add1~62_cout\,
	shareout => \Add1~63\);

-- Location: LABCELL_X50_Y26_N3
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( !x(4) $ (!\Add0~1_sumout\) ) + ( \Add1~63\ ) + ( \Add1~62_cout\ ))
-- \Add1~2\ = CARRY(( !x(4) $ (!\Add0~1_sumout\) ) + ( \Add1~63\ ) + ( \Add1~62_cout\ ))
-- \Add1~3\ = SHARE((x(4) & \Add0~1_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_x(4),
	datad => \ALT_INV_Add0~1_sumout\,
	cin => \Add1~62_cout\,
	sharein => \Add1~63\,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\,
	shareout => \Add1~3\);

-- Location: IOIBUF_X54_Y0_N52
\x_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(6),
	o => \x_in[6]~input_o\);

-- Location: FF_X51_Y25_N56
\x[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x_in[6]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(6));

-- Location: IOIBUF_X50_Y0_N58
\x_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(7),
	o => \x_in[7]~input_o\);

-- Location: FF_X51_Y25_N59
\x[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x_in[7]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(7));

-- Location: IOIBUF_X50_Y0_N75
\x_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(5),
	o => \x_in[5]~input_o\);

-- Location: FF_X51_Y25_N26
\x[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x_in[5]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(5));

-- Location: LABCELL_X51_Y25_N57
\WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = ( !x(5) & ( (!x(6) & !x(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_x(6),
	datad => ALT_INV_x(7),
	dataf => ALT_INV_x(5),
	combout => \WideOr2~0_combout\);

-- Location: IOIBUF_X56_Y0_N1
\x_in[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(8),
	o => \x_in[8]~input_o\);

-- Location: FF_X51_Y25_N29
\x[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x_in[8]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(8));

-- Location: MLABCELL_X52_Y25_N39
\WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = ( !x(4) & ( (!x(1) & (!x(2) & (!x(3) & !x(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_x(1),
	datab => ALT_INV_x(2),
	datac => ALT_INV_x(3),
	datad => ALT_INV_x(0),
	dataf => ALT_INV_x(4),
	combout => \WideOr1~0_combout\);

-- Location: IOIBUF_X54_Y0_N18
\x_in[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(12),
	o => \x_in[12]~input_o\);

-- Location: FF_X51_Y25_N44
\x[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x_in[12]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(12));

-- Location: IOIBUF_X54_Y0_N1
\x_in[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(11),
	o => \x_in[11]~input_o\);

-- Location: FF_X51_Y25_N41
\x[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x_in[11]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(11));

-- Location: IOIBUF_X52_Y0_N35
\x_in[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(9),
	o => \x_in[9]~input_o\);

-- Location: FF_X52_Y25_N53
\x[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x_in[9]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(9));

-- Location: IOIBUF_X38_Y0_N18
\x_in[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(10),
	o => \x_in[10]~input_o\);

-- Location: LABCELL_X50_Y25_N48
\x[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[10]~feeder_combout\ = ( \x_in[10]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_x_in[10]~input_o\,
	combout => \x[10]~feeder_combout\);

-- Location: FF_X50_Y25_N50
\x[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x[10]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(10));

-- Location: MLABCELL_X52_Y25_N51
\WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = ( !x(10) & ( (!x(11) & !x(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_x(11),
	datad => ALT_INV_x(9),
	dataf => ALT_INV_x(10),
	combout => \WideOr4~0_combout\);

-- Location: MLABCELL_X52_Y25_N57
\Add9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = ( x(14) & ( \WideOr4~0_combout\ & ( !x(12) $ (((\WideOr2~0_combout\ & (!x(8) & \WideOr1~0_combout\)))) ) ) ) # ( !x(14) & ( \WideOr4~0_combout\ & ( x(12) ) ) ) # ( x(14) & ( !\WideOr4~0_combout\ & ( !x(12) ) ) ) # ( !x(14) & ( 
-- !\WideOr4~0_combout\ & ( x(12) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000000000000111111111111101100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr2~0_combout\,
	datab => ALT_INV_x(8),
	datac => \ALT_INV_WideOr1~0_combout\,
	datad => ALT_INV_x(12),
	datae => ALT_INV_x(14),
	dataf => \ALT_INV_WideOr4~0_combout\,
	combout => \Add9~0_combout\);

-- Location: LABCELL_X51_Y25_N27
\WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = ( \WideOr1~0_combout\ & ( (\WideOr2~0_combout\ & !x(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_WideOr2~0_combout\,
	datad => ALT_INV_x(8),
	dataf => \ALT_INV_WideOr1~0_combout\,
	combout => \WideOr3~0_combout\);

-- Location: LABCELL_X51_Y25_N30
\Add7~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~30_cout\ = CARRY(( x(14) ) + ( !\WideOr3~0_combout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_WideOr3~0_combout\,
	datad => ALT_INV_x(14),
	cin => GND,
	cout => \Add7~30_cout\);

-- Location: LABCELL_X51_Y25_N33
\Add7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~1_sumout\ = SUM(( x(9) ) + ( GND ) + ( \Add7~30_cout\ ))
-- \Add7~2\ = CARRY(( x(9) ) + ( GND ) + ( \Add7~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_x(9),
	cin => \Add7~30_cout\,
	sumout => \Add7~1_sumout\,
	cout => \Add7~2\);

-- Location: MLABCELL_X52_Y25_N45
\WideOr4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr4~1_combout\ = ( \WideOr4~0_combout\ & ( (\WideOr1~0_combout\ & (!x(8) & \WideOr2~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_WideOr1~0_combout\,
	datac => ALT_INV_x(8),
	datad => \ALT_INV_WideOr2~0_combout\,
	dataf => \ALT_INV_WideOr4~0_combout\,
	combout => \WideOr4~1_combout\);

-- Location: IOIBUF_X54_Y0_N35
\x_in[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(13),
	o => \x_in[13]~input_o\);

-- Location: FF_X51_Y25_N47
\x[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x_in[13]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(13));

-- Location: MLABCELL_X52_Y25_N48
\Add11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~0_combout\ = ( x(14) & ( !x(13) $ (((!x(12) & \WideOr4~1_combout\))) ) ) # ( !x(14) & ( x(13) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111010010110100101101001011010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_x(12),
	datab => \ALT_INV_WideOr4~1_combout\,
	datac => ALT_INV_x(13),
	dataf => ALT_INV_x(14),
	combout => \Add11~0_combout\);

-- Location: LABCELL_X51_Y25_N0
\Add10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~1_sumout\ = SUM(( !\Add9~0_combout\ $ (!\Add7~1_sumout\ $ (\Add11~0_combout\)) ) + ( !VCC ) + ( !VCC ))
-- \Add10~2\ = CARRY(( !\Add9~0_combout\ $ (!\Add7~1_sumout\ $ (\Add11~0_combout\)) ) + ( !VCC ) + ( !VCC ))
-- \Add10~3\ = SHARE((!\Add9~0_combout\ & (\Add7~1_sumout\ & \Add11~0_combout\)) # (\Add9~0_combout\ & ((\Add11~0_combout\) # (\Add7~1_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add9~0_combout\,
	datac => \ALT_INV_Add7~1_sumout\,
	datad => \ALT_INV_Add11~0_combout\,
	cin => GND,
	sharein => GND,
	sumout => \Add10~1_sumout\,
	cout => \Add10~2\,
	shareout => \Add10~3\);

-- Location: MLABCELL_X52_Y25_N0
\Add3~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~46_cout\ = CARRY(( x(14) ) + ( !\WideOr1~0_combout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_WideOr1~0_combout\,
	datad => ALT_INV_x(14),
	cin => GND,
	cout => \Add3~46_cout\);

-- Location: MLABCELL_X52_Y25_N3
\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_sumout\ = SUM(( x(5) ) + ( GND ) + ( \Add3~46_cout\ ))
-- \Add3~2\ = CARRY(( x(5) ) + ( GND ) + ( \Add3~46_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_x(5),
	cin => \Add3~46_cout\,
	sumout => \Add3~1_sumout\,
	cout => \Add3~2\);

-- Location: MLABCELL_X52_Y25_N36
\WideOr2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr2~1_combout\ = ( \WideOr1~0_combout\ & ( \WideOr2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_WideOr2~0_combout\,
	dataf => \ALT_INV_WideOr1~0_combout\,
	combout => \WideOr2~1_combout\);

-- Location: MLABCELL_X52_Y26_N0
\Add5~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~50_cout\ = CARRY(( !x(14) $ (\WideOr2~1_combout\) ) + ( !VCC ) + ( !VCC ))
-- \Add5~51\ = SHARE((x(14) & !\WideOr2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_x(14),
	datac => \ALT_INV_WideOr2~1_combout\,
	cin => GND,
	sharein => GND,
	cout => \Add5~50_cout\,
	shareout => \Add5~51\);

-- Location: MLABCELL_X52_Y26_N3
\Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~1_sumout\ = SUM(( !x(8) $ (!\Add3~1_sumout\) ) + ( \Add5~51\ ) + ( \Add5~50_cout\ ))
-- \Add5~2\ = CARRY(( !x(8) $ (!\Add3~1_sumout\) ) + ( \Add5~51\ ) + ( \Add5~50_cout\ ))
-- \Add5~3\ = SHARE((x(8) & \Add3~1_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_x(8),
	datad => \ALT_INV_Add3~1_sumout\,
	cin => \Add5~50_cout\,
	sharein => \Add5~51\,
	sumout => \Add5~1_sumout\,
	cout => \Add5~2\,
	shareout => \Add5~3\);

-- Location: LABCELL_X51_Y26_N0
\Add12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~1_sumout\ = SUM(( !\Add1~1_sumout\ $ (!\Add10~1_sumout\ $ (\Add5~1_sumout\)) ) + ( !VCC ) + ( !VCC ))
-- \Add12~2\ = CARRY(( !\Add1~1_sumout\ $ (!\Add10~1_sumout\ $ (\Add5~1_sumout\)) ) + ( !VCC ) + ( !VCC ))
-- \Add12~3\ = SHARE((!\Add1~1_sumout\ & (\Add10~1_sumout\ & \Add5~1_sumout\)) # (\Add1~1_sumout\ & ((\Add5~1_sumout\) # (\Add10~1_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add1~1_sumout\,
	datac => \ALT_INV_Add10~1_sumout\,
	datad => \ALT_INV_Add5~1_sumout\,
	cin => GND,
	sharein => GND,
	sumout => \Add12~1_sumout\,
	cout => \Add12~2\,
	shareout => \Add12~3\);

-- Location: FF_X51_Y26_N2
\x3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~1_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x3(0));

-- Location: LABCELL_X48_Y26_N0
\Add13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~1_sumout\ = SUM(( x(0) ) + ( x3(0) ) + ( !VCC ))
-- \Add13~2\ = CARRY(( x(0) ) + ( x3(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_x3(0),
	datad => ALT_INV_x(0),
	cin => GND,
	sumout => \Add13~1_sumout\,
	cout => \Add13~2\);

-- Location: FF_X48_Y26_N1
\sx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~1_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sx(0));

-- Location: LABCELL_X45_Y42_N39
\Add14~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~49_sumout\ = SUM(( \y[14]~DUPLICATE_q\ ) + ( GND ) + ( \Add14~46\ ))
-- \Add14~50\ = CARRY(( \y[14]~DUPLICATE_q\ ) + ( GND ) + ( \Add14~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_y[14]~DUPLICATE_q\,
	cin => \Add14~46\,
	sumout => \Add14~49_sumout\,
	cout => \Add14~50\);

-- Location: LABCELL_X51_Y25_N36
\Add7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~5_sumout\ = SUM(( x(10) ) + ( GND ) + ( \Add7~2\ ))
-- \Add7~6\ = CARRY(( x(10) ) + ( GND ) + ( \Add7~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_x(10),
	cin => \Add7~2\,
	sumout => \Add7~5_sumout\,
	cout => \Add7~6\);

-- Location: LABCELL_X51_Y25_N39
\Add7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~9_sumout\ = SUM(( x(11) ) + ( GND ) + ( \Add7~6\ ))
-- \Add7~10\ = CARRY(( x(11) ) + ( GND ) + ( \Add7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_x(11),
	cin => \Add7~6\,
	sumout => \Add7~9_sumout\,
	cout => \Add7~10\);

-- Location: LABCELL_X51_Y25_N42
\Add7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~13_sumout\ = SUM(( x(12) ) + ( GND ) + ( \Add7~10\ ))
-- \Add7~14\ = CARRY(( x(12) ) + ( GND ) + ( \Add7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_x(12),
	cin => \Add7~10\,
	sumout => \Add7~13_sumout\,
	cout => \Add7~14\);

-- Location: LABCELL_X51_Y25_N45
\Add7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~17_sumout\ = SUM(( x(13) ) + ( GND ) + ( \Add7~14\ ))
-- \Add7~18\ = CARRY(( x(13) ) + ( GND ) + ( \Add7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_x(13),
	cin => \Add7~14\,
	sumout => \Add7~17_sumout\,
	cout => \Add7~18\);

-- Location: LABCELL_X51_Y25_N48
\Add7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~21_sumout\ = SUM(( x(14) ) + ( GND ) + ( \Add7~18\ ))
-- \Add7~22\ = CARRY(( x(14) ) + ( GND ) + ( \Add7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_x(14),
	cin => \Add7~18\,
	sumout => \Add7~21_sumout\,
	cout => \Add7~22\);

-- Location: LABCELL_X51_Y25_N51
\Add7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~25_sumout\ = SUM(( x(14) ) + ( GND ) + ( \Add7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_x(14),
	cin => \Add7~22\,
	sumout => \Add7~25_sumout\);

-- Location: MLABCELL_X52_Y25_N42
\Add9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~2_combout\ = ( x(14) & ( (x(12) & (x(13) & !\WideOr4~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_x(12),
	datac => ALT_INV_x(13),
	datad => \ALT_INV_WideOr4~1_combout\,
	dataf => ALT_INV_x(14),
	combout => \Add9~2_combout\);

-- Location: LABCELL_X50_Y25_N57
\Add11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~2_combout\ = ( x(8) & ( \WideOr4~0_combout\ & ( !x(13) ) ) ) # ( !x(8) & ( \WideOr4~0_combout\ & ( (!x(13)) # ((\WideOr1~0_combout\ & (!x(12) & \WideOr2~0_combout\))) ) ) ) # ( x(8) & ( !\WideOr4~0_combout\ & ( !x(13) ) ) ) # ( !x(8) & ( 
-- !\WideOr4~0_combout\ & ( !x(13) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000001001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr1~0_combout\,
	datab => ALT_INV_x(12),
	datac => \ALT_INV_WideOr2~0_combout\,
	datad => ALT_INV_x(13),
	datae => ALT_INV_x(8),
	dataf => \ALT_INV_WideOr4~0_combout\,
	combout => \Add11~2_combout\);

-- Location: LABCELL_X51_Y25_N54
\Add9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~1_combout\ = ( \WideOr4~1_combout\ & ( x(13) ) ) # ( !\WideOr4~1_combout\ & ( !x(13) $ (((!x(14)) # (!x(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011000110110001101100011011000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_x(14),
	datab => ALT_INV_x(13),
	datac => ALT_INV_x(12),
	dataf => \ALT_INV_WideOr4~1_combout\,
	combout => \Add9~1_combout\);

-- Location: LABCELL_X51_Y25_N24
\Add11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~1_combout\ = ( \WideOr4~1_combout\ & ( (x(14) & ((!x(13)) # (!x(12)))) ) ) # ( !\WideOr4~1_combout\ & ( (x(14) & !x(13)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001010100010101000101010001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_x(14),
	datab => ALT_INV_x(13),
	datac => ALT_INV_x(12),
	dataf => \ALT_INV_WideOr4~1_combout\,
	combout => \Add11~1_combout\);

-- Location: LABCELL_X51_Y25_N3
\Add10~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~5_sumout\ = SUM(( !\Add9~1_combout\ $ (!\Add11~1_combout\ $ (\Add7~5_sumout\)) ) + ( \Add10~3\ ) + ( \Add10~2\ ))
-- \Add10~6\ = CARRY(( !\Add9~1_combout\ $ (!\Add11~1_combout\ $ (\Add7~5_sumout\)) ) + ( \Add10~3\ ) + ( \Add10~2\ ))
-- \Add10~7\ = SHARE((!\Add9~1_combout\ & (\Add11~1_combout\ & \Add7~5_sumout\)) # (\Add9~1_combout\ & ((\Add7~5_sumout\) # (\Add11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add9~1_combout\,
	datac => \ALT_INV_Add11~1_combout\,
	datad => \ALT_INV_Add7~5_sumout\,
	cin => \Add10~2\,
	sharein => \Add10~3\,
	sumout => \Add10~5_sumout\,
	cout => \Add10~6\,
	shareout => \Add10~7\);

-- Location: LABCELL_X51_Y25_N6
\Add10~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~9_sumout\ = SUM(( !\Add9~2_combout\ $ (!\Add7~9_sumout\ $ (((!\Add11~2_combout\ & x(14))))) ) + ( \Add10~7\ ) + ( \Add10~6\ ))
-- \Add10~10\ = CARRY(( !\Add9~2_combout\ $ (!\Add7~9_sumout\ $ (((!\Add11~2_combout\ & x(14))))) ) + ( \Add10~7\ ) + ( \Add10~6\ ))
-- \Add10~11\ = SHARE((!\Add9~2_combout\ & (x(14) & ((\Add7~9_sumout\) # (\Add11~2_combout\)))) # (\Add9~2_combout\ & (\Add7~9_sumout\ & ((!x(14)) # (\Add11~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100101101100000000000000000101100110100110",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add9~2_combout\,
	datab => \ALT_INV_Add11~2_combout\,
	datac => ALT_INV_x(14),
	datad => \ALT_INV_Add7~9_sumout\,
	cin => \Add10~6\,
	sharein => \Add10~7\,
	sumout => \Add10~9_sumout\,
	cout => \Add10~10\,
	shareout => \Add10~11\);

-- Location: LABCELL_X51_Y25_N9
\Add10~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~13_sumout\ = SUM(( !\Add7~13_sumout\ $ (((!x(14)) # (!\Add9~2_combout\ $ (!\Add11~2_combout\)))) ) + ( \Add10~11\ ) + ( \Add10~10\ ))
-- \Add10~14\ = CARRY(( !\Add7~13_sumout\ $ (((!x(14)) # (!\Add9~2_combout\ $ (!\Add11~2_combout\)))) ) + ( \Add10~11\ ) + ( \Add10~10\ ))
-- \Add10~15\ = SHARE((x(14) & ((!\Add9~2_combout\ & ((\Add7~13_sumout\) # (\Add11~2_combout\))) # (\Add9~2_combout\ & (\Add11~2_combout\ & \Add7~13_sumout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010101100000000000000000000111110010110",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add9~2_combout\,
	datab => \ALT_INV_Add11~2_combout\,
	datac => \ALT_INV_Add7~13_sumout\,
	datad => ALT_INV_x(14),
	cin => \Add10~10\,
	sharein => \Add10~11\,
	sumout => \Add10~13_sumout\,
	cout => \Add10~14\,
	shareout => \Add10~15\);

-- Location: LABCELL_X51_Y25_N12
\Add10~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~17_sumout\ = SUM(( !\Add7~17_sumout\ $ (((!x(14)) # (!\Add9~2_combout\ $ (!\Add11~2_combout\)))) ) + ( \Add10~15\ ) + ( \Add10~14\ ))
-- \Add10~18\ = CARRY(( !\Add7~17_sumout\ $ (((!x(14)) # (!\Add9~2_combout\ $ (!\Add11~2_combout\)))) ) + ( \Add10~15\ ) + ( \Add10~14\ ))
-- \Add10~19\ = SHARE((x(14) & ((!\Add9~2_combout\ & ((\Add7~17_sumout\) # (\Add11~2_combout\))) # (\Add9~2_combout\ & (\Add11~2_combout\ & \Add7~17_sumout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000101100000000000000000000100111110110",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add9~2_combout\,
	datab => \ALT_INV_Add11~2_combout\,
	datac => ALT_INV_x(14),
	datad => \ALT_INV_Add7~17_sumout\,
	cin => \Add10~14\,
	sharein => \Add10~15\,
	sumout => \Add10~17_sumout\,
	cout => \Add10~18\,
	shareout => \Add10~19\);

-- Location: LABCELL_X51_Y25_N15
\Add10~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~21_sumout\ = SUM(( !\Add7~21_sumout\ $ (((!x(14)) # (!\Add9~2_combout\ $ (!\Add11~2_combout\)))) ) + ( \Add10~19\ ) + ( \Add10~18\ ))
-- \Add10~22\ = CARRY(( !\Add7~21_sumout\ $ (((!x(14)) # (!\Add9~2_combout\ $ (!\Add11~2_combout\)))) ) + ( \Add10~19\ ) + ( \Add10~18\ ))
-- \Add10~23\ = SHARE((x(14) & ((!\Add9~2_combout\ & ((\Add7~21_sumout\) # (\Add11~2_combout\))) # (\Add9~2_combout\ & (\Add11~2_combout\ & \Add7~21_sumout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000101100000000000000000000100111110110",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add9~2_combout\,
	datab => \ALT_INV_Add11~2_combout\,
	datac => ALT_INV_x(14),
	datad => \ALT_INV_Add7~21_sumout\,
	cin => \Add10~18\,
	sharein => \Add10~19\,
	sumout => \Add10~21_sumout\,
	cout => \Add10~22\,
	shareout => \Add10~23\);

-- Location: LABCELL_X51_Y25_N18
\Add10~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~25_sumout\ = SUM(( !\Add7~25_sumout\ $ (((!x(14)) # (!\Add9~2_combout\ $ (!\Add11~2_combout\)))) ) + ( \Add10~23\ ) + ( \Add10~22\ ))
-- \Add10~26\ = CARRY(( !\Add7~25_sumout\ $ (((!x(14)) # (!\Add9~2_combout\ $ (!\Add11~2_combout\)))) ) + ( \Add10~23\ ) + ( \Add10~22\ ))
-- \Add10~27\ = SHARE((x(14) & ((!\Add7~25_sumout\ & (!\Add9~2_combout\ & \Add11~2_combout\)) # (\Add7~25_sumout\ & ((!\Add9~2_combout\) # (\Add11~2_combout\))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000011000100000000000000000110010101010110",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add7~25_sumout\,
	datab => ALT_INV_x(14),
	datac => \ALT_INV_Add9~2_combout\,
	datad => \ALT_INV_Add11~2_combout\,
	cin => \Add10~22\,
	sharein => \Add10~23\,
	sumout => \Add10~25_sumout\,
	cout => \Add10~26\,
	shareout => \Add10~27\);

-- Location: LABCELL_X51_Y25_N21
\Add10~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~29_sumout\ = SUM(( !\Add7~25_sumout\ $ (((!x(14)) # (!\Add9~2_combout\ $ (!\Add11~2_combout\)))) ) + ( \Add10~27\ ) + ( \Add10~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000110010101010110",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add7~25_sumout\,
	datab => ALT_INV_x(14),
	datac => \ALT_INV_Add9~2_combout\,
	datad => \ALT_INV_Add11~2_combout\,
	cin => \Add10~26\,
	sharein => \Add10~27\,
	sumout => \Add10~29_sumout\);

-- Location: MLABCELL_X52_Y25_N6
\Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~5_sumout\ = SUM(( x(6) ) + ( GND ) + ( \Add3~2\ ))
-- \Add3~6\ = CARRY(( x(6) ) + ( GND ) + ( \Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_x(6),
	cin => \Add3~2\,
	sumout => \Add3~5_sumout\,
	cout => \Add3~6\);

-- Location: MLABCELL_X52_Y25_N9
\Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~9_sumout\ = SUM(( x(7) ) + ( GND ) + ( \Add3~6\ ))
-- \Add3~10\ = CARRY(( x(7) ) + ( GND ) + ( \Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_x(7),
	cin => \Add3~6\,
	sumout => \Add3~9_sumout\,
	cout => \Add3~10\);

-- Location: MLABCELL_X52_Y25_N12
\Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~13_sumout\ = SUM(( x(8) ) + ( GND ) + ( \Add3~10\ ))
-- \Add3~14\ = CARRY(( x(8) ) + ( GND ) + ( \Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_x(8),
	cin => \Add3~10\,
	sumout => \Add3~13_sumout\,
	cout => \Add3~14\);

-- Location: MLABCELL_X52_Y25_N15
\Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~17_sumout\ = SUM(( x(9) ) + ( GND ) + ( \Add3~14\ ))
-- \Add3~18\ = CARRY(( x(9) ) + ( GND ) + ( \Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_x(9),
	cin => \Add3~14\,
	sumout => \Add3~17_sumout\,
	cout => \Add3~18\);

-- Location: MLABCELL_X52_Y25_N18
\Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~21_sumout\ = SUM(( x(10) ) + ( GND ) + ( \Add3~18\ ))
-- \Add3~22\ = CARRY(( x(10) ) + ( GND ) + ( \Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_x(10),
	cin => \Add3~18\,
	sumout => \Add3~21_sumout\,
	cout => \Add3~22\);

-- Location: MLABCELL_X52_Y25_N21
\Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~25_sumout\ = SUM(( x(11) ) + ( GND ) + ( \Add3~22\ ))
-- \Add3~26\ = CARRY(( x(11) ) + ( GND ) + ( \Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_x(11),
	cin => \Add3~22\,
	sumout => \Add3~25_sumout\,
	cout => \Add3~26\);

-- Location: MLABCELL_X52_Y25_N24
\Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~29_sumout\ = SUM(( x(12) ) + ( GND ) + ( \Add3~26\ ))
-- \Add3~30\ = CARRY(( x(12) ) + ( GND ) + ( \Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_x(12),
	cin => \Add3~26\,
	sumout => \Add3~29_sumout\,
	cout => \Add3~30\);

-- Location: MLABCELL_X52_Y25_N27
\Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~33_sumout\ = SUM(( x(13) ) + ( GND ) + ( \Add3~30\ ))
-- \Add3~34\ = CARRY(( x(13) ) + ( GND ) + ( \Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_x(13),
	cin => \Add3~30\,
	sumout => \Add3~33_sumout\,
	cout => \Add3~34\);

-- Location: MLABCELL_X52_Y25_N30
\Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~37_sumout\ = SUM(( x(14) ) + ( GND ) + ( \Add3~34\ ))
-- \Add3~38\ = CARRY(( x(14) ) + ( GND ) + ( \Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_x(14),
	cin => \Add3~34\,
	sumout => \Add3~37_sumout\,
	cout => \Add3~38\);

-- Location: MLABCELL_X52_Y25_N33
\Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~41_sumout\ = SUM(( x(14) ) + ( GND ) + ( \Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_x(14),
	cin => \Add3~38\,
	sumout => \Add3~41_sumout\);

-- Location: MLABCELL_X52_Y26_N6
\Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~5_sumout\ = SUM(( !x(9) $ (!\Add3~5_sumout\) ) + ( \Add5~3\ ) + ( \Add5~2\ ))
-- \Add5~6\ = CARRY(( !x(9) $ (!\Add3~5_sumout\) ) + ( \Add5~3\ ) + ( \Add5~2\ ))
-- \Add5~7\ = SHARE((x(9) & \Add3~5_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_x(9),
	datad => \ALT_INV_Add3~5_sumout\,
	cin => \Add5~2\,
	sharein => \Add5~3\,
	sumout => \Add5~5_sumout\,
	cout => \Add5~6\,
	shareout => \Add5~7\);

-- Location: MLABCELL_X52_Y26_N9
\Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~9_sumout\ = SUM(( !x(10) $ (!\Add3~9_sumout\) ) + ( \Add5~7\ ) + ( \Add5~6\ ))
-- \Add5~10\ = CARRY(( !x(10) $ (!\Add3~9_sumout\) ) + ( \Add5~7\ ) + ( \Add5~6\ ))
-- \Add5~11\ = SHARE((x(10) & \Add3~9_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_x(10),
	datad => \ALT_INV_Add3~9_sumout\,
	cin => \Add5~6\,
	sharein => \Add5~7\,
	sumout => \Add5~9_sumout\,
	cout => \Add5~10\,
	shareout => \Add5~11\);

-- Location: MLABCELL_X52_Y26_N12
\Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~13_sumout\ = SUM(( !x(11) $ (!\Add3~13_sumout\) ) + ( \Add5~11\ ) + ( \Add5~10\ ))
-- \Add5~14\ = CARRY(( !x(11) $ (!\Add3~13_sumout\) ) + ( \Add5~11\ ) + ( \Add5~10\ ))
-- \Add5~15\ = SHARE((x(11) & \Add3~13_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_x(11),
	datac => \ALT_INV_Add3~13_sumout\,
	cin => \Add5~10\,
	sharein => \Add5~11\,
	sumout => \Add5~13_sumout\,
	cout => \Add5~14\,
	shareout => \Add5~15\);

-- Location: MLABCELL_X52_Y26_N15
\Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~17_sumout\ = SUM(( !\Add3~17_sumout\ $ (!x(12)) ) + ( \Add5~15\ ) + ( \Add5~14\ ))
-- \Add5~18\ = CARRY(( !\Add3~17_sumout\ $ (!x(12)) ) + ( \Add5~15\ ) + ( \Add5~14\ ))
-- \Add5~19\ = SHARE((\Add3~17_sumout\ & x(12)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add3~17_sumout\,
	datad => ALT_INV_x(12),
	cin => \Add5~14\,
	sharein => \Add5~15\,
	sumout => \Add5~17_sumout\,
	cout => \Add5~18\,
	shareout => \Add5~19\);

-- Location: MLABCELL_X52_Y26_N18
\Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~21_sumout\ = SUM(( !x(13) $ (!\Add3~21_sumout\) ) + ( \Add5~19\ ) + ( \Add5~18\ ))
-- \Add5~22\ = CARRY(( !x(13) $ (!\Add3~21_sumout\) ) + ( \Add5~19\ ) + ( \Add5~18\ ))
-- \Add5~23\ = SHARE((x(13) & \Add3~21_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_x(13),
	datad => \ALT_INV_Add3~21_sumout\,
	cin => \Add5~18\,
	sharein => \Add5~19\,
	sumout => \Add5~21_sumout\,
	cout => \Add5~22\,
	shareout => \Add5~23\);

-- Location: MLABCELL_X52_Y26_N21
\Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~25_sumout\ = SUM(( !x(14) $ (!\Add3~25_sumout\) ) + ( \Add5~23\ ) + ( \Add5~22\ ))
-- \Add5~26\ = CARRY(( !x(14) $ (!\Add3~25_sumout\) ) + ( \Add5~23\ ) + ( \Add5~22\ ))
-- \Add5~27\ = SHARE((x(14) & \Add3~25_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_x(14),
	datac => \ALT_INV_Add3~25_sumout\,
	cin => \Add5~22\,
	sharein => \Add5~23\,
	sumout => \Add5~25_sumout\,
	cout => \Add5~26\,
	shareout => \Add5~27\);

-- Location: MLABCELL_X52_Y26_N24
\Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~29_sumout\ = SUM(( !x(14) $ (!\Add3~29_sumout\) ) + ( \Add5~27\ ) + ( \Add5~26\ ))
-- \Add5~30\ = CARRY(( !x(14) $ (!\Add3~29_sumout\) ) + ( \Add5~27\ ) + ( \Add5~26\ ))
-- \Add5~31\ = SHARE((x(14) & \Add3~29_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_x(14),
	datac => \ALT_INV_Add3~29_sumout\,
	cin => \Add5~26\,
	sharein => \Add5~27\,
	sumout => \Add5~29_sumout\,
	cout => \Add5~30\,
	shareout => \Add5~31\);

-- Location: MLABCELL_X52_Y26_N27
\Add5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~33_sumout\ = SUM(( !x(14) $ (!\Add3~33_sumout\) ) + ( \Add5~31\ ) + ( \Add5~30\ ))
-- \Add5~34\ = CARRY(( !x(14) $ (!\Add3~33_sumout\) ) + ( \Add5~31\ ) + ( \Add5~30\ ))
-- \Add5~35\ = SHARE((x(14) & \Add3~33_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_x(14),
	datad => \ALT_INV_Add3~33_sumout\,
	cin => \Add5~30\,
	sharein => \Add5~31\,
	sumout => \Add5~33_sumout\,
	cout => \Add5~34\,
	shareout => \Add5~35\);

-- Location: MLABCELL_X52_Y26_N30
\Add5~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~37_sumout\ = SUM(( !x(14) $ (!\Add3~37_sumout\) ) + ( \Add5~35\ ) + ( \Add5~34\ ))
-- \Add5~38\ = CARRY(( !x(14) $ (!\Add3~37_sumout\) ) + ( \Add5~35\ ) + ( \Add5~34\ ))
-- \Add5~39\ = SHARE((x(14) & \Add3~37_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_x(14),
	datad => \ALT_INV_Add3~37_sumout\,
	cin => \Add5~34\,
	sharein => \Add5~35\,
	sumout => \Add5~37_sumout\,
	cout => \Add5~38\,
	shareout => \Add5~39\);

-- Location: MLABCELL_X52_Y26_N33
\Add5~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~41_sumout\ = SUM(( !x(14) $ (!\Add3~41_sumout\) ) + ( \Add5~39\ ) + ( \Add5~38\ ))
-- \Add5~42\ = CARRY(( !x(14) $ (!\Add3~41_sumout\) ) + ( \Add5~39\ ) + ( \Add5~38\ ))
-- \Add5~43\ = SHARE((x(14) & \Add3~41_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_x(14),
	datac => \ALT_INV_Add3~41_sumout\,
	cin => \Add5~38\,
	sharein => \Add5~39\,
	sumout => \Add5~41_sumout\,
	cout => \Add5~42\,
	shareout => \Add5~43\);

-- Location: LABCELL_X50_Y25_N6
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( x(2) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( x(2) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_x(2),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: LABCELL_X50_Y25_N9
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( x(3) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( x(3) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_x(3),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: LABCELL_X50_Y25_N12
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( x(4) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( x(4) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_x(4),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: LABCELL_X50_Y25_N15
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( x(5) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( x(5) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_x(5),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: LABCELL_X50_Y25_N18
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( x(6) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( x(6) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_x(6),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: LABCELL_X50_Y25_N21
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( x(7) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( x(7) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_x(7),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: LABCELL_X50_Y25_N24
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( x(8) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( x(8) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_x(8),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: LABCELL_X50_Y25_N27
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( x(9) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( x(9) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_x(9),
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: LABCELL_X50_Y25_N30
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( x(10) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( x(10) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_x(10),
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: LABCELL_X50_Y25_N33
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( x(11) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( x(11) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_x(11),
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: LABCELL_X50_Y26_N6
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( !x(5) $ (!\Add0~5_sumout\) ) + ( \Add1~3\ ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( !x(5) $ (!\Add0~5_sumout\) ) + ( \Add1~3\ ) + ( \Add1~2\ ))
-- \Add1~7\ = SHARE((x(5) & \Add0~5_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_x(5),
	datad => \ALT_INV_Add0~5_sumout\,
	cin => \Add1~2\,
	sharein => \Add1~3\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\,
	shareout => \Add1~7\);

-- Location: LABCELL_X50_Y26_N9
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( !x(6) $ (!\Add0~9_sumout\) ) + ( \Add1~7\ ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( !x(6) $ (!\Add0~9_sumout\) ) + ( \Add1~7\ ) + ( \Add1~6\ ))
-- \Add1~11\ = SHARE((x(6) & \Add0~9_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_x(6),
	datad => \ALT_INV_Add0~9_sumout\,
	cin => \Add1~6\,
	sharein => \Add1~7\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\,
	shareout => \Add1~11\);

-- Location: LABCELL_X50_Y26_N12
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( !\Add0~13_sumout\ $ (!x(7)) ) + ( \Add1~11\ ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( !\Add0~13_sumout\ $ (!x(7)) ) + ( \Add1~11\ ) + ( \Add1~10\ ))
-- \Add1~15\ = SHARE((\Add0~13_sumout\ & x(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~13_sumout\,
	datad => ALT_INV_x(7),
	cin => \Add1~10\,
	sharein => \Add1~11\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\,
	shareout => \Add1~15\);

-- Location: LABCELL_X50_Y26_N15
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( !x(8) $ (!\Add0~17_sumout\) ) + ( \Add1~15\ ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( !x(8) $ (!\Add0~17_sumout\) ) + ( \Add1~15\ ) + ( \Add1~14\ ))
-- \Add1~19\ = SHARE((x(8) & \Add0~17_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_x(8),
	datad => \ALT_INV_Add0~17_sumout\,
	cin => \Add1~14\,
	sharein => \Add1~15\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\,
	shareout => \Add1~19\);

-- Location: LABCELL_X50_Y26_N18
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( !x(9) $ (!\Add0~21_sumout\) ) + ( \Add1~19\ ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( !x(9) $ (!\Add0~21_sumout\) ) + ( \Add1~19\ ) + ( \Add1~18\ ))
-- \Add1~23\ = SHARE((x(9) & \Add0~21_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_x(9),
	datac => \ALT_INV_Add0~21_sumout\,
	cin => \Add1~18\,
	sharein => \Add1~19\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\,
	shareout => \Add1~23\);

-- Location: LABCELL_X50_Y26_N21
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( !\Add0~25_sumout\ $ (!x(10)) ) + ( \Add1~23\ ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( !\Add0~25_sumout\ $ (!x(10)) ) + ( \Add1~23\ ) + ( \Add1~22\ ))
-- \Add1~27\ = SHARE((\Add0~25_sumout\ & x(10)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~25_sumout\,
	datad => ALT_INV_x(10),
	cin => \Add1~22\,
	sharein => \Add1~23\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\,
	shareout => \Add1~27\);

-- Location: LABCELL_X50_Y26_N24
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( !x(11) $ (!\Add0~29_sumout\) ) + ( \Add1~27\ ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( !x(11) $ (!\Add0~29_sumout\) ) + ( \Add1~27\ ) + ( \Add1~26\ ))
-- \Add1~31\ = SHARE((x(11) & \Add0~29_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_x(11),
	datad => \ALT_INV_Add0~29_sumout\,
	cin => \Add1~26\,
	sharein => \Add1~27\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\,
	shareout => \Add1~31\);

-- Location: LABCELL_X50_Y26_N27
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( !\Add0~33_sumout\ $ (!x(12)) ) + ( \Add1~31\ ) + ( \Add1~30\ ))
-- \Add1~34\ = CARRY(( !\Add0~33_sumout\ $ (!x(12)) ) + ( \Add1~31\ ) + ( \Add1~30\ ))
-- \Add1~35\ = SHARE((\Add0~33_sumout\ & x(12)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~33_sumout\,
	datad => ALT_INV_x(12),
	cin => \Add1~30\,
	sharein => \Add1~31\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\,
	shareout => \Add1~35\);

-- Location: LABCELL_X50_Y26_N30
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( !x(13) $ (!\Add0~37_sumout\) ) + ( \Add1~35\ ) + ( \Add1~34\ ))
-- \Add1~38\ = CARRY(( !x(13) $ (!\Add0~37_sumout\) ) + ( \Add1~35\ ) + ( \Add1~34\ ))
-- \Add1~39\ = SHARE((x(13) & \Add0~37_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_x(13),
	datad => \ALT_INV_Add0~37_sumout\,
	cin => \Add1~34\,
	sharein => \Add1~35\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\,
	shareout => \Add1~39\);

-- Location: LABCELL_X50_Y26_N33
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( !x(14) $ (!\Add0~41_sumout\) ) + ( \Add1~39\ ) + ( \Add1~38\ ))
-- \Add1~42\ = CARRY(( !x(14) $ (!\Add0~41_sumout\) ) + ( \Add1~39\ ) + ( \Add1~38\ ))
-- \Add1~43\ = SHARE((x(14) & \Add0~41_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_x(14),
	datad => \ALT_INV_Add0~41_sumout\,
	cin => \Add1~38\,
	sharein => \Add1~39\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\,
	shareout => \Add1~43\);

-- Location: LABCELL_X51_Y26_N3
\Add12~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~5_sumout\ = SUM(( !\Add1~5_sumout\ $ (!\Add10~5_sumout\ $ (\Add5~5_sumout\)) ) + ( \Add12~3\ ) + ( \Add12~2\ ))
-- \Add12~6\ = CARRY(( !\Add1~5_sumout\ $ (!\Add10~5_sumout\ $ (\Add5~5_sumout\)) ) + ( \Add12~3\ ) + ( \Add12~2\ ))
-- \Add12~7\ = SHARE((!\Add1~5_sumout\ & (\Add10~5_sumout\ & \Add5~5_sumout\)) # (\Add1~5_sumout\ & ((\Add5~5_sumout\) # (\Add10~5_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~5_sumout\,
	datac => \ALT_INV_Add10~5_sumout\,
	datad => \ALT_INV_Add5~5_sumout\,
	cin => \Add12~2\,
	sharein => \Add12~3\,
	sumout => \Add12~5_sumout\,
	cout => \Add12~6\,
	shareout => \Add12~7\);

-- Location: LABCELL_X51_Y26_N6
\Add12~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~9_sumout\ = SUM(( !\Add1~9_sumout\ $ (!\Add10~9_sumout\ $ (\Add5~9_sumout\)) ) + ( \Add12~7\ ) + ( \Add12~6\ ))
-- \Add12~10\ = CARRY(( !\Add1~9_sumout\ $ (!\Add10~9_sumout\ $ (\Add5~9_sumout\)) ) + ( \Add12~7\ ) + ( \Add12~6\ ))
-- \Add12~11\ = SHARE((!\Add1~9_sumout\ & (\Add10~9_sumout\ & \Add5~9_sumout\)) # (\Add1~9_sumout\ & ((\Add5~9_sumout\) # (\Add10~9_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add1~9_sumout\,
	datac => \ALT_INV_Add10~9_sumout\,
	datad => \ALT_INV_Add5~9_sumout\,
	cin => \Add12~6\,
	sharein => \Add12~7\,
	sumout => \Add12~9_sumout\,
	cout => \Add12~10\,
	shareout => \Add12~11\);

-- Location: LABCELL_X51_Y26_N9
\Add12~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~13_sumout\ = SUM(( !\Add1~13_sumout\ $ (!\Add5~13_sumout\ $ (\Add10~13_sumout\)) ) + ( \Add12~11\ ) + ( \Add12~10\ ))
-- \Add12~14\ = CARRY(( !\Add1~13_sumout\ $ (!\Add5~13_sumout\ $ (\Add10~13_sumout\)) ) + ( \Add12~11\ ) + ( \Add12~10\ ))
-- \Add12~15\ = SHARE((!\Add1~13_sumout\ & (\Add5~13_sumout\ & \Add10~13_sumout\)) # (\Add1~13_sumout\ & ((\Add10~13_sumout\) # (\Add5~13_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~13_sumout\,
	datac => \ALT_INV_Add5~13_sumout\,
	datad => \ALT_INV_Add10~13_sumout\,
	cin => \Add12~10\,
	sharein => \Add12~11\,
	sumout => \Add12~13_sumout\,
	cout => \Add12~14\,
	shareout => \Add12~15\);

-- Location: LABCELL_X51_Y26_N12
\Add12~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~17_sumout\ = SUM(( !\Add1~17_sumout\ $ (!\Add5~17_sumout\ $ (\Add10~17_sumout\)) ) + ( \Add12~15\ ) + ( \Add12~14\ ))
-- \Add12~18\ = CARRY(( !\Add1~17_sumout\ $ (!\Add5~17_sumout\ $ (\Add10~17_sumout\)) ) + ( \Add12~15\ ) + ( \Add12~14\ ))
-- \Add12~19\ = SHARE((!\Add1~17_sumout\ & (\Add5~17_sumout\ & \Add10~17_sumout\)) # (\Add1~17_sumout\ & ((\Add10~17_sumout\) # (\Add5~17_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~17_sumout\,
	datac => \ALT_INV_Add5~17_sumout\,
	datad => \ALT_INV_Add10~17_sumout\,
	cin => \Add12~14\,
	sharein => \Add12~15\,
	sumout => \Add12~17_sumout\,
	cout => \Add12~18\,
	shareout => \Add12~19\);

-- Location: LABCELL_X51_Y26_N15
\Add12~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~21_sumout\ = SUM(( !\Add1~21_sumout\ $ (!\Add5~21_sumout\ $ (\Add10~21_sumout\)) ) + ( \Add12~19\ ) + ( \Add12~18\ ))
-- \Add12~22\ = CARRY(( !\Add1~21_sumout\ $ (!\Add5~21_sumout\ $ (\Add10~21_sumout\)) ) + ( \Add12~19\ ) + ( \Add12~18\ ))
-- \Add12~23\ = SHARE((!\Add1~21_sumout\ & (\Add5~21_sumout\ & \Add10~21_sumout\)) # (\Add1~21_sumout\ & ((\Add10~21_sumout\) # (\Add5~21_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add1~21_sumout\,
	datac => \ALT_INV_Add5~21_sumout\,
	datad => \ALT_INV_Add10~21_sumout\,
	cin => \Add12~18\,
	sharein => \Add12~19\,
	sumout => \Add12~21_sumout\,
	cout => \Add12~22\,
	shareout => \Add12~23\);

-- Location: LABCELL_X51_Y26_N18
\Add12~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~25_sumout\ = SUM(( !\Add5~25_sumout\ $ (!\Add10~25_sumout\ $ (\Add1~25_sumout\)) ) + ( \Add12~23\ ) + ( \Add12~22\ ))
-- \Add12~26\ = CARRY(( !\Add5~25_sumout\ $ (!\Add10~25_sumout\ $ (\Add1~25_sumout\)) ) + ( \Add12~23\ ) + ( \Add12~22\ ))
-- \Add12~27\ = SHARE((!\Add5~25_sumout\ & (\Add10~25_sumout\ & \Add1~25_sumout\)) # (\Add5~25_sumout\ & ((\Add1~25_sumout\) # (\Add10~25_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add5~25_sumout\,
	datac => \ALT_INV_Add10~25_sumout\,
	datad => \ALT_INV_Add1~25_sumout\,
	cin => \Add12~22\,
	sharein => \Add12~23\,
	sumout => \Add12~25_sumout\,
	cout => \Add12~26\,
	shareout => \Add12~27\);

-- Location: LABCELL_X51_Y26_N21
\Add12~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~29_sumout\ = SUM(( !\Add10~29_sumout\ $ (!\Add1~29_sumout\ $ (\Add5~29_sumout\)) ) + ( \Add12~27\ ) + ( \Add12~26\ ))
-- \Add12~30\ = CARRY(( !\Add10~29_sumout\ $ (!\Add1~29_sumout\ $ (\Add5~29_sumout\)) ) + ( \Add12~27\ ) + ( \Add12~26\ ))
-- \Add12~31\ = SHARE((!\Add10~29_sumout\ & (\Add1~29_sumout\ & \Add5~29_sumout\)) # (\Add10~29_sumout\ & ((\Add5~29_sumout\) # (\Add1~29_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add10~29_sumout\,
	datac => \ALT_INV_Add1~29_sumout\,
	datad => \ALT_INV_Add5~29_sumout\,
	cin => \Add12~26\,
	sharein => \Add12~27\,
	sumout => \Add12~29_sumout\,
	cout => \Add12~30\,
	shareout => \Add12~31\);

-- Location: LABCELL_X51_Y26_N24
\Add12~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~33_sumout\ = SUM(( !\Add10~29_sumout\ $ (!\Add5~33_sumout\ $ (\Add1~33_sumout\)) ) + ( \Add12~31\ ) + ( \Add12~30\ ))
-- \Add12~34\ = CARRY(( !\Add10~29_sumout\ $ (!\Add5~33_sumout\ $ (\Add1~33_sumout\)) ) + ( \Add12~31\ ) + ( \Add12~30\ ))
-- \Add12~35\ = SHARE((!\Add10~29_sumout\ & (\Add5~33_sumout\ & \Add1~33_sumout\)) # (\Add10~29_sumout\ & ((\Add1~33_sumout\) # (\Add5~33_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add10~29_sumout\,
	datac => \ALT_INV_Add5~33_sumout\,
	datad => \ALT_INV_Add1~33_sumout\,
	cin => \Add12~30\,
	sharein => \Add12~31\,
	sumout => \Add12~33_sumout\,
	cout => \Add12~34\,
	shareout => \Add12~35\);

-- Location: LABCELL_X51_Y26_N27
\Add12~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~37_sumout\ = SUM(( !\Add10~29_sumout\ $ (!\Add1~37_sumout\ $ (\Add5~37_sumout\)) ) + ( \Add12~35\ ) + ( \Add12~34\ ))
-- \Add12~38\ = CARRY(( !\Add10~29_sumout\ $ (!\Add1~37_sumout\ $ (\Add5~37_sumout\)) ) + ( \Add12~35\ ) + ( \Add12~34\ ))
-- \Add12~39\ = SHARE((!\Add10~29_sumout\ & (\Add1~37_sumout\ & \Add5~37_sumout\)) # (\Add10~29_sumout\ & ((\Add5~37_sumout\) # (\Add1~37_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add10~29_sumout\,
	datac => \ALT_INV_Add1~37_sumout\,
	datad => \ALT_INV_Add5~37_sumout\,
	cin => \Add12~34\,
	sharein => \Add12~35\,
	sumout => \Add12~37_sumout\,
	cout => \Add12~38\,
	shareout => \Add12~39\);

-- Location: LABCELL_X51_Y26_N30
\Add12~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~41_sumout\ = SUM(( !\Add10~29_sumout\ $ (!\Add5~41_sumout\ $ (\Add1~41_sumout\)) ) + ( \Add12~39\ ) + ( \Add12~38\ ))
-- \Add12~42\ = CARRY(( !\Add10~29_sumout\ $ (!\Add5~41_sumout\ $ (\Add1~41_sumout\)) ) + ( \Add12~39\ ) + ( \Add12~38\ ))
-- \Add12~43\ = SHARE((!\Add10~29_sumout\ & (\Add5~41_sumout\ & \Add1~41_sumout\)) # (\Add10~29_sumout\ & ((\Add1~41_sumout\) # (\Add5~41_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add10~29_sumout\,
	datac => \ALT_INV_Add5~41_sumout\,
	datad => \ALT_INV_Add1~41_sumout\,
	cin => \Add12~38\,
	sharein => \Add12~39\,
	sumout => \Add12~41_sumout\,
	cout => \Add12~42\,
	shareout => \Add12~43\);

-- Location: FF_X51_Y26_N31
\x3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~41_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x3(10));

-- Location: FF_X51_Y26_N29
\x3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~37_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x3(9));

-- Location: FF_X51_Y26_N25
\x3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~33_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x3(8));

-- Location: FF_X51_Y26_N23
\x3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~29_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x3(7));

-- Location: FF_X51_Y26_N19
\x3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~25_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x3(6));

-- Location: FF_X51_Y26_N16
\x3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~21_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x3(5));

-- Location: FF_X51_Y26_N13
\x3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~17_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x3(4));

-- Location: FF_X51_Y26_N10
\x3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x3(3));

-- Location: FF_X51_Y26_N7
\x3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x3(2));

-- Location: FF_X51_Y26_N4
\x3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~5_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x3(1));

-- Location: LABCELL_X48_Y26_N3
\Add13~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~5_sumout\ = SUM(( x3(1) ) + ( x(1) ) + ( \Add13~2\ ))
-- \Add13~6\ = CARRY(( x3(1) ) + ( x(1) ) + ( \Add13~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_x3(1),
	dataf => ALT_INV_x(1),
	cin => \Add13~2\,
	sumout => \Add13~5_sumout\,
	cout => \Add13~6\);

-- Location: LABCELL_X48_Y26_N6
\Add13~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~9_sumout\ = SUM(( x3(2) ) + ( x(2) ) + ( \Add13~6\ ))
-- \Add13~10\ = CARRY(( x3(2) ) + ( x(2) ) + ( \Add13~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_x3(2),
	dataf => ALT_INV_x(2),
	cin => \Add13~6\,
	sumout => \Add13~9_sumout\,
	cout => \Add13~10\);

-- Location: LABCELL_X48_Y26_N9
\Add13~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~13_sumout\ = SUM(( x3(3) ) + ( x(3) ) + ( \Add13~10\ ))
-- \Add13~14\ = CARRY(( x3(3) ) + ( x(3) ) + ( \Add13~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_x(3),
	datac => ALT_INV_x3(3),
	cin => \Add13~10\,
	sumout => \Add13~13_sumout\,
	cout => \Add13~14\);

-- Location: LABCELL_X48_Y26_N12
\Add13~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~17_sumout\ = SUM(( x3(4) ) + ( x(4) ) + ( \Add13~14\ ))
-- \Add13~18\ = CARRY(( x3(4) ) + ( x(4) ) + ( \Add13~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_x(4),
	datac => ALT_INV_x3(4),
	cin => \Add13~14\,
	sumout => \Add13~17_sumout\,
	cout => \Add13~18\);

-- Location: LABCELL_X48_Y26_N15
\Add13~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~21_sumout\ = SUM(( x3(5) ) + ( x(5) ) + ( \Add13~18\ ))
-- \Add13~22\ = CARRY(( x3(5) ) + ( x(5) ) + ( \Add13~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_x(5),
	datad => ALT_INV_x3(5),
	cin => \Add13~18\,
	sumout => \Add13~21_sumout\,
	cout => \Add13~22\);

-- Location: LABCELL_X48_Y26_N18
\Add13~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~25_sumout\ = SUM(( x3(6) ) + ( x(6) ) + ( \Add13~22\ ))
-- \Add13~26\ = CARRY(( x3(6) ) + ( x(6) ) + ( \Add13~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_x(6),
	datac => ALT_INV_x3(6),
	cin => \Add13~22\,
	sumout => \Add13~25_sumout\,
	cout => \Add13~26\);

-- Location: LABCELL_X48_Y26_N21
\Add13~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~29_sumout\ = SUM(( x3(7) ) + ( x(7) ) + ( \Add13~26\ ))
-- \Add13~30\ = CARRY(( x3(7) ) + ( x(7) ) + ( \Add13~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_x(7),
	datad => ALT_INV_x3(7),
	cin => \Add13~26\,
	sumout => \Add13~29_sumout\,
	cout => \Add13~30\);

-- Location: LABCELL_X48_Y26_N24
\Add13~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~33_sumout\ = SUM(( x3(8) ) + ( x(8) ) + ( \Add13~30\ ))
-- \Add13~34\ = CARRY(( x3(8) ) + ( x(8) ) + ( \Add13~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_x(8),
	datac => ALT_INV_x3(8),
	cin => \Add13~30\,
	sumout => \Add13~33_sumout\,
	cout => \Add13~34\);

-- Location: LABCELL_X48_Y26_N27
\Add13~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~37_sumout\ = SUM(( x3(9) ) + ( x(9) ) + ( \Add13~34\ ))
-- \Add13~38\ = CARRY(( x3(9) ) + ( x(9) ) + ( \Add13~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_x3(9),
	dataf => ALT_INV_x(9),
	cin => \Add13~34\,
	sumout => \Add13~37_sumout\,
	cout => \Add13~38\);

-- Location: LABCELL_X48_Y26_N30
\Add13~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~41_sumout\ = SUM(( x3(10) ) + ( x(10) ) + ( \Add13~38\ ))
-- \Add13~42\ = CARRY(( x3(10) ) + ( x(10) ) + ( \Add13~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_x(10),
	datad => ALT_INV_x3(10),
	cin => \Add13~38\,
	sumout => \Add13~41_sumout\,
	cout => \Add13~42\);

-- Location: FF_X48_Y26_N32
\sx[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~41_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sx(10));

-- Location: FF_X40_Y41_N37
\y[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add25~49_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(12));

-- Location: FF_X40_Y41_N41
\y[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add25~53_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[13]~DUPLICATE_q\);

-- Location: FF_X48_Y26_N28
\sx[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~37_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sx(9));

-- Location: LABCELL_X45_Y42_N30
\Add14~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~37_sumout\ = SUM(( y(11) ) + ( GND ) + ( \Add14~34\ ))
-- \Add14~38\ = CARRY(( y(11) ) + ( GND ) + ( \Add14~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_y(11),
	cin => \Add14~34\,
	sumout => \Add14~37_sumout\,
	cout => \Add14~38\);

-- Location: FF_X48_Y26_N14
\sx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~17_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sx(4));

-- Location: FF_X40_Y41_N23
\y[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add25~29_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[7]~DUPLICATE_q\);

-- Location: FF_X39_Y41_N37
\y[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \y[4]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[4]~DUPLICATE_q\);

-- Location: FF_X40_Y41_N29
\y[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add25~37_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(9));

-- Location: FF_X40_Y41_N26
\y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add25~33_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(8));

-- Location: FF_X40_Y41_N20
\y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add25~25_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(6));

-- Location: MLABCELL_X39_Y41_N0
\Add19~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~42_cout\ = CARRY(( !\WideOr9~0_combout\ ) + ( \y[14]~DUPLICATE_q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_y[14]~DUPLICATE_q\,
	datad => \ALT_INV_WideOr9~0_combout\,
	cin => GND,
	cout => \Add19~42_cout\);

-- Location: MLABCELL_X39_Y41_N3
\Add19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~1_sumout\ = SUM(( y(6) ) + ( GND ) + ( \Add19~42_cout\ ))
-- \Add19~2\ = CARRY(( y(6) ) + ( GND ) + ( \Add19~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_y(6),
	cin => \Add19~42_cout\,
	sumout => \Add19~1_sumout\,
	cout => \Add19~2\);

-- Location: MLABCELL_X39_Y41_N6
\Add19~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~5_sumout\ = SUM(( \y[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add19~2\ ))
-- \Add19~6\ = CARRY(( \y[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add19~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_y[7]~DUPLICATE_q\,
	cin => \Add19~2\,
	sumout => \Add19~5_sumout\,
	cout => \Add19~6\);

-- Location: MLABCELL_X39_Y41_N9
\Add19~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~9_sumout\ = SUM(( y(8) ) + ( GND ) + ( \Add19~6\ ))
-- \Add19~10\ = CARRY(( y(8) ) + ( GND ) + ( \Add19~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_y(8),
	cin => \Add19~6\,
	sumout => \Add19~9_sumout\,
	cout => \Add19~10\);

-- Location: MLABCELL_X39_Y41_N12
\Add19~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~13_sumout\ = SUM(( y(9) ) + ( GND ) + ( \Add19~10\ ))
-- \Add19~14\ = CARRY(( y(9) ) + ( GND ) + ( \Add19~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_y(9),
	cin => \Add19~10\,
	sumout => \Add19~13_sumout\,
	cout => \Add19~14\);

-- Location: LABCELL_X43_Y41_N12
\Add17~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~13_sumout\ = SUM(( \y[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add17~10\ ))
-- \Add17~14\ = CARRY(( \y[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add17~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_y[8]~DUPLICATE_q\,
	cin => \Add17~10\,
	sumout => \Add17~13_sumout\,
	cout => \Add17~14\);

-- Location: LABCELL_X43_Y41_N9
\Add17~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~9_sumout\ = SUM(( \y[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add17~6\ ))
-- \Add17~10\ = CARRY(( \y[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add17~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_y[7]~DUPLICATE_q\,
	cin => \Add17~6\,
	sumout => \Add17~9_sumout\,
	cout => \Add17~10\);

-- Location: LABCELL_X43_Y41_N6
\Add17~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~5_sumout\ = SUM(( \y[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add17~2\ ))
-- \Add17~6\ = CARRY(( \y[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add17~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_y[6]~DUPLICATE_q\,
	cin => \Add17~2\,
	sumout => \Add17~5_sumout\,
	cout => \Add17~6\);

-- Location: LABCELL_X45_Y41_N54
\Add23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~0_combout\ = ( \y[12]~DUPLICATE_q\ & ( \WideOr9~0_combout\ & ( !y(13) $ (!\y[14]~DUPLICATE_q\) ) ) ) # ( !\y[12]~DUPLICATE_q\ & ( \WideOr9~0_combout\ & ( !y(13) $ (((!\y[14]~DUPLICATE_q\) # ((\WideOr10~0_combout\ & !y(11))))) ) ) ) # ( 
-- \y[12]~DUPLICATE_q\ & ( !\WideOr9~0_combout\ & ( !y(13) $ (!\y[14]~DUPLICATE_q\) ) ) ) # ( !\y[12]~DUPLICATE_q\ & ( !\WideOr9~0_combout\ & ( !y(13) $ (!\y[14]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111101101000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr10~0_combout\,
	datab => ALT_INV_y(11),
	datac => ALT_INV_y(13),
	datad => \ALT_INV_y[14]~DUPLICATE_q\,
	datae => \ALT_INV_y[12]~DUPLICATE_q\,
	dataf => \ALT_INV_WideOr9~0_combout\,
	combout => \Add23~0_combout\);

-- Location: FF_X39_Y41_N44
\y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add25~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(3));

-- Location: FF_X48_Y26_N7
\sx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sx(2));

-- Location: LABCELL_X45_Y42_N9
\Add14~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~9_sumout\ = SUM(( \y[4]~DUPLICATE_q\ ) + ( GND ) + ( \Add14~6\ ))
-- \Add14~10\ = CARRY(( \y[4]~DUPLICATE_q\ ) + ( GND ) + ( \Add14~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_y[4]~DUPLICATE_q\,
	cin => \Add14~6\,
	sumout => \Add14~9_sumout\,
	cout => \Add14~10\);

-- Location: LABCELL_X45_Y42_N3
\Add14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~1_sumout\ = SUM(( y(2) ) + ( GND ) + ( \Add14~58_cout\ ))
-- \Add14~2\ = CARRY(( y(2) ) + ( GND ) + ( \Add14~58_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_y(2),
	cin => \Add14~58_cout\,
	sumout => \Add14~1_sumout\,
	cout => \Add14~2\);

-- Location: LABCELL_X43_Y42_N39
\WideOr7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr7~0_combout\ = ( !y(1) & ( !y(2) & ( (!\y[3]~DUPLICATE_q\ & !\y[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y[3]~DUPLICATE_q\,
	datad => \ALT_INV_y[0]~DUPLICATE_q\,
	datae => ALT_INV_y(1),
	dataf => ALT_INV_y(2),
	combout => \WideOr7~0_combout\);

-- Location: LABCELL_X46_Y42_N0
\Add15~122\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~122_cout\ = CARRY(( !\y[14]~DUPLICATE_q\ $ (\WideOr7~0_combout\) ) + ( !VCC ) + ( !VCC ))
-- \Add15~123\ = SHARE((\y[14]~DUPLICATE_q\ & !\WideOr7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_y[14]~DUPLICATE_q\,
	datad => \ALT_INV_WideOr7~0_combout\,
	cin => GND,
	sharein => GND,
	cout => \Add15~122_cout\,
	shareout => \Add15~123\);

-- Location: LABCELL_X46_Y42_N3
\Add15~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~61_sumout\ = SUM(( !\Add14~1_sumout\ $ (!\y[4]~DUPLICATE_q\) ) + ( \Add15~123\ ) + ( \Add15~122_cout\ ))
-- \Add15~62\ = CARRY(( !\Add14~1_sumout\ $ (!\y[4]~DUPLICATE_q\) ) + ( \Add15~123\ ) + ( \Add15~122_cout\ ))
-- \Add15~63\ = SHARE((\Add14~1_sumout\ & \y[4]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add14~1_sumout\,
	datad => \ALT_INV_y[4]~DUPLICATE_q\,
	cin => \Add15~122_cout\,
	sharein => \Add15~123\,
	sumout => \Add15~61_sumout\,
	cout => \Add15~62\,
	shareout => \Add15~63\);

-- Location: LABCELL_X46_Y42_N6
\Add15~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~65_sumout\ = SUM(( !\Add14~5_sumout\ $ (!\y[5]~DUPLICATE_q\) ) + ( \Add15~63\ ) + ( \Add15~62\ ))
-- \Add15~66\ = CARRY(( !\Add14~5_sumout\ $ (!\y[5]~DUPLICATE_q\) ) + ( \Add15~63\ ) + ( \Add15~62\ ))
-- \Add15~67\ = SHARE((\Add14~5_sumout\ & \y[5]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add14~5_sumout\,
	datad => \ALT_INV_y[5]~DUPLICATE_q\,
	cin => \Add15~62\,
	sharein => \Add15~63\,
	sumout => \Add15~65_sumout\,
	cout => \Add15~66\,
	shareout => \Add15~67\);

-- Location: LABCELL_X45_Y41_N0
\Add20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~1_sumout\ = SUM(( !\Add19~1_sumout\ $ (!\Add23~0_combout\ $ (\Add17~1_sumout\)) ) + ( !VCC ) + ( !VCC ))
-- \Add20~2\ = CARRY(( !\Add19~1_sumout\ $ (!\Add23~0_combout\ $ (\Add17~1_sumout\)) ) + ( !VCC ) + ( !VCC ))
-- \Add20~3\ = SHARE((!\Add19~1_sumout\ & (\Add23~0_combout\ & \Add17~1_sumout\)) # (\Add19~1_sumout\ & ((\Add17~1_sumout\) # (\Add23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add19~1_sumout\,
	datac => \ALT_INV_Add23~0_combout\,
	datad => \ALT_INV_Add17~1_sumout\,
	cin => GND,
	sharein => GND,
	sumout => \Add20~1_sumout\,
	cout => \Add20~2\,
	shareout => \Add20~3\);

-- Location: LABCELL_X45_Y41_N3
\Add20~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~5_sumout\ = SUM(( !\Add23~1_combout\ $ (!\Add19~5_sumout\ $ (\Add17~5_sumout\)) ) + ( \Add20~3\ ) + ( \Add20~2\ ))
-- \Add20~6\ = CARRY(( !\Add23~1_combout\ $ (!\Add19~5_sumout\ $ (\Add17~5_sumout\)) ) + ( \Add20~3\ ) + ( \Add20~2\ ))
-- \Add20~7\ = SHARE((!\Add23~1_combout\ & (\Add19~5_sumout\ & \Add17~5_sumout\)) # (\Add23~1_combout\ & ((\Add17~5_sumout\) # (\Add19~5_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add23~1_combout\,
	datac => \ALT_INV_Add19~5_sumout\,
	datad => \ALT_INV_Add17~5_sumout\,
	cin => \Add20~2\,
	sharein => \Add20~3\,
	sumout => \Add20~5_sumout\,
	cout => \Add20~6\,
	shareout => \Add20~7\);

-- Location: LABCELL_X46_Y41_N45
\Add21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~0_combout\ = ( !\WideOr10~0_combout\ & ( \WideOr9~0_combout\ & ( \y[14]~DUPLICATE_q\ ) ) ) # ( \WideOr10~0_combout\ & ( !\WideOr9~0_combout\ & ( \y[14]~DUPLICATE_q\ ) ) ) # ( !\WideOr10~0_combout\ & ( !\WideOr9~0_combout\ & ( \y[14]~DUPLICATE_q\ ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_y[14]~DUPLICATE_q\,
	datae => \ALT_INV_WideOr10~0_combout\,
	dataf => \ALT_INV_WideOr9~0_combout\,
	combout => \Add21~0_combout\);

-- Location: LABCELL_X46_Y41_N51
\WideOr10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr10~1_combout\ = ( \WideOr10~0_combout\ & ( \WideOr9~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_WideOr10~0_combout\,
	dataf => \ALT_INV_WideOr9~0_combout\,
	combout => \WideOr10~1_combout\);

-- Location: LABCELL_X46_Y41_N0
\Add22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add22~1_sumout\ = SUM(( \Add20~1_sumout\ ) + ( !y(11) $ (((!\y[14]~DUPLICATE_q\) # (\WideOr10~1_combout\))) ) + ( !VCC ))
-- \Add22~2\ = CARRY(( \Add20~1_sumout\ ) + ( !y(11) $ (((!\y[14]~DUPLICATE_q\) # (\WideOr10~1_combout\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001011010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_y(11),
	datac => \ALT_INV_y[14]~DUPLICATE_q\,
	datad => \ALT_INV_Add20~1_sumout\,
	dataf => \ALT_INV_WideOr10~1_combout\,
	cin => GND,
	sumout => \Add22~1_sumout\,
	cout => \Add22~2\);

-- Location: LABCELL_X46_Y41_N3
\Add22~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add22~5_sumout\ = SUM(( !y(12) $ (((!y(11)) # (!\Add21~0_combout\))) ) + ( \Add20~5_sumout\ ) + ( \Add22~2\ ))
-- \Add22~6\ = CARRY(( !y(12) $ (((!y(11)) # (!\Add21~0_combout\))) ) + ( \Add20~5_sumout\ ) + ( \Add22~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_y(11),
	datab => ALT_INV_y(12),
	datac => \ALT_INV_Add20~5_sumout\,
	datad => \ALT_INV_Add21~0_combout\,
	cin => \Add22~2\,
	sumout => \Add22~5_sumout\,
	cout => \Add22~6\);

-- Location: MLABCELL_X47_Y41_N0
\Add15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~1_sumout\ = SUM(( \Add15~61_sumout\ ) + ( \Add22~1_sumout\ ) + ( !VCC ))
-- \Add15~2\ = CARRY(( \Add15~61_sumout\ ) + ( \Add22~1_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add22~1_sumout\,
	datad => \ALT_INV_Add15~61_sumout\,
	cin => GND,
	sumout => \Add15~1_sumout\,
	cout => \Add15~2\);

-- Location: MLABCELL_X47_Y41_N3
\Add15~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~5_sumout\ = SUM(( \Add15~65_sumout\ ) + ( \Add22~5_sumout\ ) + ( \Add15~2\ ))
-- \Add15~6\ = CARRY(( \Add15~65_sumout\ ) + ( \Add22~5_sumout\ ) + ( \Add15~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add15~65_sumout\,
	datac => \ALT_INV_Add22~5_sumout\,
	cin => \Add15~2\,
	sumout => \Add15~5_sumout\,
	cout => \Add15~6\);

-- Location: FF_X47_Y41_N4
\y9[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add15~5_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y9(1));

-- Location: FF_X48_Y26_N5
\sx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~5_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sx(1));

-- Location: LABCELL_X40_Y41_N0
\Add25~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add25~1_sumout\ = SUM(( y9(0) ) + ( sx(0) ) + ( !VCC ))
-- \Add25~2\ = CARRY(( y9(0) ) + ( sx(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_sx(0),
	datad => ALT_INV_y9(0),
	cin => GND,
	sumout => \Add25~1_sumout\,
	cout => \Add25~2\);

-- Location: LABCELL_X40_Y41_N3
\Add25~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add25~5_sumout\ = SUM(( sx(1) ) + ( y9(1) ) + ( \Add25~2\ ))
-- \Add25~6\ = CARRY(( sx(1) ) + ( y9(1) ) + ( \Add25~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_y9(1),
	datad => ALT_INV_sx(1),
	cin => \Add25~2\,
	sumout => \Add25~5_sumout\,
	cout => \Add25~6\);

-- Location: FF_X39_Y41_N47
\y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add25~5_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(1));

-- Location: LABCELL_X45_Y42_N0
\Add14~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~58_cout\ = CARRY(( \y[14]~DUPLICATE_q\ ) + ( (\y[0]~DUPLICATE_q\) # (y(1)) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_y(1),
	datac => \ALT_INV_y[0]~DUPLICATE_q\,
	datad => \ALT_INV_y[14]~DUPLICATE_q\,
	cin => GND,
	cout => \Add14~58_cout\);

-- Location: LABCELL_X45_Y42_N6
\Add14~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~5_sumout\ = SUM(( \y[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add14~2\ ))
-- \Add14~6\ = CARRY(( \y[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add14~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_y[3]~DUPLICATE_q\,
	cin => \Add14~2\,
	sumout => \Add14~5_sumout\,
	cout => \Add14~6\);

-- Location: LABCELL_X46_Y42_N9
\Add15~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~69_sumout\ = SUM(( !\Add14~9_sumout\ $ (!\y[6]~DUPLICATE_q\) ) + ( \Add15~67\ ) + ( \Add15~66\ ))
-- \Add15~70\ = CARRY(( !\Add14~9_sumout\ $ (!\y[6]~DUPLICATE_q\) ) + ( \Add15~67\ ) + ( \Add15~66\ ))
-- \Add15~71\ = SHARE((\Add14~9_sumout\ & \y[6]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add14~9_sumout\,
	datad => \ALT_INV_y[6]~DUPLICATE_q\,
	cin => \Add15~66\,
	sharein => \Add15~67\,
	sumout => \Add15~69_sumout\,
	cout => \Add15~70\,
	shareout => \Add15~71\);

-- Location: LABCELL_X45_Y41_N6
\Add20~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~9_sumout\ = SUM(( !\Add23~1_combout\ $ (!\Add17~9_sumout\ $ (\Add19~9_sumout\)) ) + ( \Add20~7\ ) + ( \Add20~6\ ))
-- \Add20~10\ = CARRY(( !\Add23~1_combout\ $ (!\Add17~9_sumout\ $ (\Add19~9_sumout\)) ) + ( \Add20~7\ ) + ( \Add20~6\ ))
-- \Add20~11\ = SHARE((!\Add23~1_combout\ & (\Add17~9_sumout\ & \Add19~9_sumout\)) # (\Add23~1_combout\ & ((\Add19~9_sumout\) # (\Add17~9_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add23~1_combout\,
	datac => \ALT_INV_Add17~9_sumout\,
	datad => \ALT_INV_Add19~9_sumout\,
	cin => \Add20~6\,
	sharein => \Add20~7\,
	sumout => \Add20~9_sumout\,
	cout => \Add20~10\,
	shareout => \Add20~11\);

-- Location: LABCELL_X46_Y41_N6
\Add22~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add22~9_sumout\ = SUM(( \Add20~9_sumout\ ) + ( !y(13) $ (((!y(12)) # ((!y(11)) # (!\Add21~0_combout\)))) ) + ( \Add22~6\ ))
-- \Add22~10\ = CARRY(( \Add20~9_sumout\ ) + ( !y(13) $ (((!y(12)) # ((!y(11)) # (!\Add21~0_combout\)))) ) + ( \Add22~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_y(12),
	datab => ALT_INV_y(13),
	datac => ALT_INV_y(11),
	datad => \ALT_INV_Add20~9_sumout\,
	dataf => \ALT_INV_Add21~0_combout\,
	cin => \Add22~6\,
	sumout => \Add22~9_sumout\,
	cout => \Add22~10\);

-- Location: MLABCELL_X47_Y41_N6
\Add15~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~9_sumout\ = SUM(( \Add22~9_sumout\ ) + ( \Add15~69_sumout\ ) + ( \Add15~6\ ))
-- \Add15~10\ = CARRY(( \Add22~9_sumout\ ) + ( \Add15~69_sumout\ ) + ( \Add15~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add15~69_sumout\,
	datad => \ALT_INV_Add22~9_sumout\,
	cin => \Add15~6\,
	sumout => \Add15~9_sumout\,
	cout => \Add15~10\);

-- Location: FF_X47_Y41_N7
\y9[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add15~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y9(2));

-- Location: LABCELL_X40_Y41_N6
\Add25~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add25~9_sumout\ = SUM(( y9(2) ) + ( sx(2) ) + ( \Add25~6\ ))
-- \Add25~10\ = CARRY(( y9(2) ) + ( sx(2) ) + ( \Add25~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_sx(2),
	datad => ALT_INV_y9(2),
	cin => \Add25~6\,
	sumout => \Add25~9_sumout\,
	cout => \Add25~10\);

-- Location: FF_X39_Y41_N41
\y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add25~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(2));

-- Location: FF_X39_Y41_N50
\y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add25~1_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(0));

-- Location: MLABCELL_X39_Y41_N51
\WideOr8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr8~0_combout\ = ( !y(1) & ( !y(0) & ( (!y(3) & (!y(2) & !y(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_y(3),
	datac => ALT_INV_y(2),
	datad => ALT_INV_y(4),
	datae => ALT_INV_y(1),
	dataf => ALT_INV_y(0),
	combout => \WideOr8~0_combout\);

-- Location: FF_X40_Y41_N43
\y[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add25~57_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(14));

-- Location: LABCELL_X43_Y41_N0
\Add17~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~46_cout\ = CARRY(( y(14) ) + ( !\WideOr8~0_combout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_WideOr8~0_combout\,
	datad => ALT_INV_y(14),
	cin => GND,
	cout => \Add17~46_cout\);

-- Location: LABCELL_X43_Y41_N3
\Add17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~1_sumout\ = SUM(( \y[5]~DUPLICATE_q\ ) + ( GND ) + ( \Add17~46_cout\ ))
-- \Add17~2\ = CARRY(( \y[5]~DUPLICATE_q\ ) + ( GND ) + ( \Add17~46_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_y[5]~DUPLICATE_q\,
	cin => \Add17~46_cout\,
	sumout => \Add17~1_sumout\,
	cout => \Add17~2\);

-- Location: LABCELL_X45_Y41_N9
\Add20~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~13_sumout\ = SUM(( !\Add23~1_combout\ $ (!\Add19~13_sumout\ $ (\Add17~13_sumout\)) ) + ( \Add20~11\ ) + ( \Add20~10\ ))
-- \Add20~14\ = CARRY(( !\Add23~1_combout\ $ (!\Add19~13_sumout\ $ (\Add17~13_sumout\)) ) + ( \Add20~11\ ) + ( \Add20~10\ ))
-- \Add20~15\ = SHARE((!\Add23~1_combout\ & (\Add19~13_sumout\ & \Add17~13_sumout\)) # (\Add23~1_combout\ & ((\Add17~13_sumout\) # (\Add19~13_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add23~1_combout\,
	datac => \ALT_INV_Add19~13_sumout\,
	datad => \ALT_INV_Add17~13_sumout\,
	cin => \Add20~10\,
	sharein => \Add20~11\,
	sumout => \Add20~13_sumout\,
	cout => \Add20~14\,
	shareout => \Add20~15\);

-- Location: LABCELL_X46_Y41_N9
\Add22~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add22~13_sumout\ = SUM(( \Add20~13_sumout\ ) + ( !\y[14]~DUPLICATE_q\ $ (((!y(12)) # ((!y(13)) # (!\Add21~1_combout\)))) ) + ( \Add22~10\ ))
-- \Add22~14\ = CARRY(( \Add20~13_sumout\ ) + ( !\y[14]~DUPLICATE_q\ $ (((!y(12)) # ((!y(13)) # (!\Add21~1_combout\)))) ) + ( \Add22~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001110000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_y(12),
	datab => ALT_INV_y(13),
	datac => \ALT_INV_y[14]~DUPLICATE_q\,
	datad => \ALT_INV_Add20~13_sumout\,
	dataf => \ALT_INV_Add21~1_combout\,
	cin => \Add22~10\,
	sumout => \Add22~13_sumout\,
	cout => \Add22~14\);

-- Location: LABCELL_X45_Y42_N12
\Add14~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~13_sumout\ = SUM(( \y[5]~DUPLICATE_q\ ) + ( GND ) + ( \Add14~10\ ))
-- \Add14~14\ = CARRY(( \y[5]~DUPLICATE_q\ ) + ( GND ) + ( \Add14~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_y[5]~DUPLICATE_q\,
	cin => \Add14~10\,
	sumout => \Add14~13_sumout\,
	cout => \Add14~14\);

-- Location: LABCELL_X46_Y42_N12
\Add15~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~73_sumout\ = SUM(( !\Add14~13_sumout\ $ (!\y[7]~DUPLICATE_q\) ) + ( \Add15~71\ ) + ( \Add15~70\ ))
-- \Add15~74\ = CARRY(( !\Add14~13_sumout\ $ (!\y[7]~DUPLICATE_q\) ) + ( \Add15~71\ ) + ( \Add15~70\ ))
-- \Add15~75\ = SHARE((\Add14~13_sumout\ & \y[7]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add14~13_sumout\,
	datad => \ALT_INV_y[7]~DUPLICATE_q\,
	cin => \Add15~70\,
	sharein => \Add15~71\,
	sumout => \Add15~73_sumout\,
	cout => \Add15~74\,
	shareout => \Add15~75\);

-- Location: MLABCELL_X47_Y41_N9
\Add15~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~13_sumout\ = SUM(( \Add15~73_sumout\ ) + ( \Add22~13_sumout\ ) + ( \Add15~10\ ))
-- \Add15~14\ = CARRY(( \Add15~73_sumout\ ) + ( \Add22~13_sumout\ ) + ( \Add15~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add22~13_sumout\,
	datad => \ALT_INV_Add15~73_sumout\,
	cin => \Add15~10\,
	sumout => \Add15~13_sumout\,
	cout => \Add15~14\);

-- Location: FF_X47_Y41_N11
\y9[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add15~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y9(3));

-- Location: FF_X48_Y26_N11
\sx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sx(3));

-- Location: LABCELL_X40_Y41_N9
\Add25~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add25~13_sumout\ = SUM(( sx(3) ) + ( y9(3) ) + ( \Add25~10\ ))
-- \Add25~14\ = CARRY(( sx(3) ) + ( y9(3) ) + ( \Add25~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_y9(3),
	datad => ALT_INV_sx(3),
	cin => \Add25~10\,
	sumout => \Add25~13_sumout\,
	cout => \Add25~14\);

-- Location: FF_X39_Y41_N43
\y[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add25~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[3]~DUPLICATE_q\);

-- Location: LABCELL_X45_Y42_N15
\Add14~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~17_sumout\ = SUM(( \y[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add14~14\ ))
-- \Add14~18\ = CARRY(( \y[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add14~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y[6]~DUPLICATE_q\,
	cin => \Add14~14\,
	sumout => \Add14~17_sumout\,
	cout => \Add14~18\);

-- Location: LABCELL_X45_Y42_N18
\Add14~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~21_sumout\ = SUM(( y(7) ) + ( GND ) + ( \Add14~18\ ))
-- \Add14~22\ = CARRY(( y(7) ) + ( GND ) + ( \Add14~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_y(7),
	cin => \Add14~18\,
	sumout => \Add14~21_sumout\,
	cout => \Add14~22\);

-- Location: LABCELL_X46_Y42_N15
\Add15~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~77_sumout\ = SUM(( !\Add14~17_sumout\ $ (!\y[8]~DUPLICATE_q\) ) + ( \Add15~75\ ) + ( \Add15~74\ ))
-- \Add15~78\ = CARRY(( !\Add14~17_sumout\ $ (!\y[8]~DUPLICATE_q\) ) + ( \Add15~75\ ) + ( \Add15~74\ ))
-- \Add15~79\ = SHARE((\Add14~17_sumout\ & \y[8]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add14~17_sumout\,
	datad => \ALT_INV_y[8]~DUPLICATE_q\,
	cin => \Add15~74\,
	sharein => \Add15~75\,
	sumout => \Add15~77_sumout\,
	cout => \Add15~78\,
	shareout => \Add15~79\);

-- Location: LABCELL_X46_Y42_N18
\Add15~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~81_sumout\ = SUM(( !\Add14~21_sumout\ $ (!\y[9]~DUPLICATE_q\) ) + ( \Add15~79\ ) + ( \Add15~78\ ))
-- \Add15~82\ = CARRY(( !\Add14~21_sumout\ $ (!\y[9]~DUPLICATE_q\) ) + ( \Add15~79\ ) + ( \Add15~78\ ))
-- \Add15~83\ = SHARE((\Add14~21_sumout\ & \y[9]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add14~21_sumout\,
	datac => \ALT_INV_y[9]~DUPLICATE_q\,
	cin => \Add15~78\,
	sharein => \Add15~79\,
	sumout => \Add15~81_sumout\,
	cout => \Add15~82\,
	shareout => \Add15~83\);

-- Location: LABCELL_X43_Y41_N18
\Add17~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~21_sumout\ = SUM(( y(10) ) + ( GND ) + ( \Add17~18\ ))
-- \Add17~22\ = CARRY(( y(10) ) + ( GND ) + ( \Add17~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_y(10),
	cin => \Add17~18\,
	sumout => \Add17~21_sumout\,
	cout => \Add17~22\);

-- Location: FF_X40_Y41_N35
\y[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add25~45_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[11]~DUPLICATE_q\);

-- Location: FF_X40_Y41_N32
\y[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add25~41_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[10]~DUPLICATE_q\);

-- Location: MLABCELL_X39_Y41_N15
\Add19~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~17_sumout\ = SUM(( \y[10]~DUPLICATE_q\ ) + ( GND ) + ( \Add19~14\ ))
-- \Add19~18\ = CARRY(( \y[10]~DUPLICATE_q\ ) + ( GND ) + ( \Add19~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y[10]~DUPLICATE_q\,
	cin => \Add19~14\,
	sumout => \Add19~17_sumout\,
	cout => \Add19~18\);

-- Location: MLABCELL_X39_Y41_N18
\Add19~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~21_sumout\ = SUM(( \y[11]~DUPLICATE_q\ ) + ( GND ) + ( \Add19~18\ ))
-- \Add19~22\ = CARRY(( \y[11]~DUPLICATE_q\ ) + ( GND ) + ( \Add19~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_y[11]~DUPLICATE_q\,
	cin => \Add19~18\,
	sumout => \Add19~21_sumout\,
	cout => \Add19~22\);

-- Location: LABCELL_X43_Y41_N15
\Add17~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~17_sumout\ = SUM(( \y[9]~DUPLICATE_q\ ) + ( GND ) + ( \Add17~14\ ))
-- \Add17~18\ = CARRY(( \y[9]~DUPLICATE_q\ ) + ( GND ) + ( \Add17~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_y[9]~DUPLICATE_q\,
	cin => \Add17~14\,
	sumout => \Add17~17_sumout\,
	cout => \Add17~18\);

-- Location: LABCELL_X45_Y41_N12
\Add20~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~17_sumout\ = SUM(( !\Add23~1_combout\ $ (!\Add19~17_sumout\ $ (\Add17~17_sumout\)) ) + ( \Add20~15\ ) + ( \Add20~14\ ))
-- \Add20~18\ = CARRY(( !\Add23~1_combout\ $ (!\Add19~17_sumout\ $ (\Add17~17_sumout\)) ) + ( \Add20~15\ ) + ( \Add20~14\ ))
-- \Add20~19\ = SHARE((!\Add23~1_combout\ & (\Add19~17_sumout\ & \Add17~17_sumout\)) # (\Add23~1_combout\ & ((\Add17~17_sumout\) # (\Add19~17_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add23~1_combout\,
	datac => \ALT_INV_Add19~17_sumout\,
	datad => \ALT_INV_Add17~17_sumout\,
	cin => \Add20~14\,
	sharein => \Add20~15\,
	sumout => \Add20~17_sumout\,
	cout => \Add20~18\,
	shareout => \Add20~19\);

-- Location: LABCELL_X45_Y41_N15
\Add20~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~21_sumout\ = SUM(( !\Add23~1_combout\ $ (!\Add17~21_sumout\ $ (\Add19~21_sumout\)) ) + ( \Add20~19\ ) + ( \Add20~18\ ))
-- \Add20~22\ = CARRY(( !\Add23~1_combout\ $ (!\Add17~21_sumout\ $ (\Add19~21_sumout\)) ) + ( \Add20~19\ ) + ( \Add20~18\ ))
-- \Add20~23\ = SHARE((!\Add23~1_combout\ & (\Add17~21_sumout\ & \Add19~21_sumout\)) # (\Add23~1_combout\ & ((\Add19~21_sumout\) # (\Add17~21_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add23~1_combout\,
	datac => \ALT_INV_Add17~21_sumout\,
	datad => \ALT_INV_Add19~21_sumout\,
	cin => \Add20~18\,
	sharein => \Add20~19\,
	sumout => \Add20~21_sumout\,
	cout => \Add20~22\,
	shareout => \Add20~23\);

-- Location: LABCELL_X46_Y41_N12
\Add22~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add22~17_sumout\ = SUM(( \Add20~17_sumout\ ) + ( (\y[14]~DUPLICATE_q\ & ((!y(13)) # ((!y(12)) # (!\Add21~1_combout\)))) ) + ( \Add22~14\ ))
-- \Add22~18\ = CARRY(( \Add20~17_sumout\ ) + ( (\y[14]~DUPLICATE_q\ & ((!y(13)) # ((!y(12)) # (!\Add21~1_combout\)))) ) + ( \Add22~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y[14]~DUPLICATE_q\,
	datab => ALT_INV_y(13),
	datac => ALT_INV_y(12),
	datad => \ALT_INV_Add20~17_sumout\,
	dataf => \ALT_INV_Add21~1_combout\,
	cin => \Add22~14\,
	sumout => \Add22~17_sumout\,
	cout => \Add22~18\);

-- Location: LABCELL_X46_Y41_N15
\Add22~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add22~21_sumout\ = SUM(( \Add20~21_sumout\ ) + ( (\y[14]~DUPLICATE_q\ & ((!y(13)) # ((!y(12)) # (!\Add21~1_combout\)))) ) + ( \Add22~18\ ))
-- \Add22~22\ = CARRY(( \Add20~21_sumout\ ) + ( (\y[14]~DUPLICATE_q\ & ((!y(13)) # ((!y(12)) # (!\Add21~1_combout\)))) ) + ( \Add22~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y[14]~DUPLICATE_q\,
	datab => ALT_INV_y(13),
	datac => ALT_INV_y(12),
	datad => \ALT_INV_Add20~21_sumout\,
	dataf => \ALT_INV_Add21~1_combout\,
	cin => \Add22~18\,
	sumout => \Add22~21_sumout\,
	cout => \Add22~22\);

-- Location: MLABCELL_X47_Y41_N12
\Add15~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~17_sumout\ = SUM(( \Add22~17_sumout\ ) + ( \Add15~77_sumout\ ) + ( \Add15~14\ ))
-- \Add15~18\ = CARRY(( \Add22~17_sumout\ ) + ( \Add15~77_sumout\ ) + ( \Add15~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add15~77_sumout\,
	datad => \ALT_INV_Add22~17_sumout\,
	cin => \Add15~14\,
	sumout => \Add15~17_sumout\,
	cout => \Add15~18\);

-- Location: MLABCELL_X47_Y41_N15
\Add15~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~21_sumout\ = SUM(( \Add15~81_sumout\ ) + ( \Add22~21_sumout\ ) + ( \Add15~18\ ))
-- \Add15~22\ = CARRY(( \Add15~81_sumout\ ) + ( \Add22~21_sumout\ ) + ( \Add15~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add15~81_sumout\,
	datac => \ALT_INV_Add22~21_sumout\,
	cin => \Add15~18\,
	sumout => \Add15~21_sumout\,
	cout => \Add15~22\);

-- Location: FF_X47_Y41_N17
\y9[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add15~21_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y9(5));

-- Location: FF_X48_Y26_N16
\sx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~21_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sx(5));

-- Location: LABCELL_X40_Y41_N12
\Add25~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add25~17_sumout\ = SUM(( y9(4) ) + ( sx(4) ) + ( \Add25~14\ ))
-- \Add25~18\ = CARRY(( y9(4) ) + ( sx(4) ) + ( \Add25~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_sx(4),
	datad => ALT_INV_y9(4),
	cin => \Add25~14\,
	sumout => \Add25~17_sumout\,
	cout => \Add25~18\);

-- Location: LABCELL_X40_Y41_N15
\Add25~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add25~21_sumout\ = SUM(( sx(5) ) + ( y9(5) ) + ( \Add25~18\ ))
-- \Add25~22\ = CARRY(( sx(5) ) + ( y9(5) ) + ( \Add25~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_y9(5),
	datad => ALT_INV_sx(5),
	cin => \Add25~18\,
	sumout => \Add25~21_sumout\,
	cout => \Add25~22\);

-- Location: FF_X40_Y41_N16
\y[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add25~21_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[5]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y41_N21
\Add17~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~25_sumout\ = SUM(( y(11) ) + ( GND ) + ( \Add17~22\ ))
-- \Add17~26\ = CARRY(( y(11) ) + ( GND ) + ( \Add17~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_y(11),
	cin => \Add17~22\,
	sumout => \Add17~25_sumout\,
	cout => \Add17~26\);

-- Location: MLABCELL_X39_Y41_N21
\Add19~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~25_sumout\ = SUM(( \y[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add19~22\ ))
-- \Add19~26\ = CARRY(( \y[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add19~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_y[12]~DUPLICATE_q\,
	cin => \Add19~22\,
	sumout => \Add19~25_sumout\,
	cout => \Add19~26\);

-- Location: LABCELL_X45_Y41_N18
\Add20~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~25_sumout\ = SUM(( !\Add23~1_combout\ $ (!\Add17~25_sumout\ $ (\Add19~25_sumout\)) ) + ( \Add20~23\ ) + ( \Add20~22\ ))
-- \Add20~26\ = CARRY(( !\Add23~1_combout\ $ (!\Add17~25_sumout\ $ (\Add19~25_sumout\)) ) + ( \Add20~23\ ) + ( \Add20~22\ ))
-- \Add20~27\ = SHARE((!\Add23~1_combout\ & (\Add17~25_sumout\ & \Add19~25_sumout\)) # (\Add23~1_combout\ & ((\Add19~25_sumout\) # (\Add17~25_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add23~1_combout\,
	datac => \ALT_INV_Add17~25_sumout\,
	datad => \ALT_INV_Add19~25_sumout\,
	cin => \Add20~22\,
	sharein => \Add20~23\,
	sumout => \Add20~25_sumout\,
	cout => \Add20~26\,
	shareout => \Add20~27\);

-- Location: LABCELL_X46_Y41_N18
\Add22~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add22~25_sumout\ = SUM(( \Add20~25_sumout\ ) + ( (\y[14]~DUPLICATE_q\ & ((!y(12)) # ((!y(13)) # (!\Add21~1_combout\)))) ) + ( \Add22~22\ ))
-- \Add22~26\ = CARRY(( \Add20~25_sumout\ ) + ( (\y[14]~DUPLICATE_q\ & ((!y(12)) # ((!y(13)) # (!\Add21~1_combout\)))) ) + ( \Add22~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_y(12),
	datab => ALT_INV_y(13),
	datac => \ALT_INV_y[14]~DUPLICATE_q\,
	datad => \ALT_INV_Add20~25_sumout\,
	dataf => \ALT_INV_Add21~1_combout\,
	cin => \Add22~22\,
	sumout => \Add22~25_sumout\,
	cout => \Add22~26\);

-- Location: LABCELL_X45_Y42_N21
\Add14~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~25_sumout\ = SUM(( \y[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add14~22\ ))
-- \Add14~26\ = CARRY(( \y[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add14~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_y[8]~DUPLICATE_q\,
	cin => \Add14~22\,
	sumout => \Add14~25_sumout\,
	cout => \Add14~26\);

-- Location: LABCELL_X46_Y42_N21
\Add15~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~85_sumout\ = SUM(( !y(10) $ (!\Add14~25_sumout\) ) + ( \Add15~83\ ) + ( \Add15~82\ ))
-- \Add15~86\ = CARRY(( !y(10) $ (!\Add14~25_sumout\) ) + ( \Add15~83\ ) + ( \Add15~82\ ))
-- \Add15~87\ = SHARE((y(10) & \Add14~25_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_y(10),
	datad => \ALT_INV_Add14~25_sumout\,
	cin => \Add15~82\,
	sharein => \Add15~83\,
	sumout => \Add15~85_sumout\,
	cout => \Add15~86\,
	shareout => \Add15~87\);

-- Location: MLABCELL_X47_Y41_N18
\Add15~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~25_sumout\ = SUM(( \Add15~85_sumout\ ) + ( \Add22~25_sumout\ ) + ( \Add15~22\ ))
-- \Add15~26\ = CARRY(( \Add15~85_sumout\ ) + ( \Add22~25_sumout\ ) + ( \Add15~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add22~25_sumout\,
	datac => \ALT_INV_Add15~85_sumout\,
	cin => \Add15~22\,
	sumout => \Add15~25_sumout\,
	cout => \Add15~26\);

-- Location: FF_X47_Y41_N19
\y9[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add15~25_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y9(6));

-- Location: FF_X48_Y26_N20
\sx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~25_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sx(6));

-- Location: LABCELL_X40_Y41_N18
\Add25~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add25~25_sumout\ = SUM(( y9(6) ) + ( sx(6) ) + ( \Add25~22\ ))
-- \Add25~26\ = CARRY(( y9(6) ) + ( sx(6) ) + ( \Add25~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_y9(6),
	datac => ALT_INV_sx(6),
	cin => \Add25~22\,
	sumout => \Add25~25_sumout\,
	cout => \Add25~26\);

-- Location: FF_X40_Y41_N19
\y[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add25~25_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[6]~DUPLICATE_q\);

-- Location: FF_X47_Y41_N13
\y9[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add15~17_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y9(4));

-- Location: MLABCELL_X39_Y41_N36
\y[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \y[4]~feeder_combout\ = ( \Add25~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add25~17_sumout\,
	combout => \y[4]~feeder_combout\);

-- Location: FF_X39_Y41_N38
\y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \y[4]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(4));

-- Location: FF_X40_Y41_N17
\y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add25~21_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(5));

-- Location: MLABCELL_X39_Y41_N54
\WideOr9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr9~0_combout\ = ( !y(5) & ( !y(3) & ( (!y(4) & (!y(2) & (!y(0) & !y(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_y(4),
	datab => ALT_INV_y(2),
	datac => ALT_INV_y(0),
	datad => ALT_INV_y(1),
	datae => ALT_INV_y(5),
	dataf => ALT_INV_y(3),
	combout => \WideOr9~0_combout\);

-- Location: LABCELL_X45_Y41_N36
\Add23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~1_combout\ = ( \y[12]~DUPLICATE_q\ & ( \WideOr9~0_combout\ & ( (!y(13) & \y[14]~DUPLICATE_q\) ) ) ) # ( !\y[12]~DUPLICATE_q\ & ( \WideOr9~0_combout\ & ( (\y[14]~DUPLICATE_q\ & ((!y(13)) # ((\WideOr10~0_combout\ & !y(11))))) ) ) ) # ( 
-- \y[12]~DUPLICATE_q\ & ( !\WideOr9~0_combout\ & ( (!y(13) & \y[14]~DUPLICATE_q\) ) ) ) # ( !\y[12]~DUPLICATE_q\ & ( !\WideOr9~0_combout\ & ( (!y(13) & \y[14]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111101000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr10~0_combout\,
	datab => ALT_INV_y(11),
	datac => ALT_INV_y(13),
	datad => \ALT_INV_y[14]~DUPLICATE_q\,
	datae => \ALT_INV_y[12]~DUPLICATE_q\,
	dataf => \ALT_INV_WideOr9~0_combout\,
	combout => \Add23~1_combout\);

-- Location: MLABCELL_X39_Y41_N24
\Add19~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~29_sumout\ = SUM(( \y[13]~DUPLICATE_q\ ) + ( GND ) + ( \Add19~26\ ))
-- \Add19~30\ = CARRY(( \y[13]~DUPLICATE_q\ ) + ( GND ) + ( \Add19~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_y[13]~DUPLICATE_q\,
	cin => \Add19~26\,
	sumout => \Add19~29_sumout\,
	cout => \Add19~30\);

-- Location: MLABCELL_X39_Y41_N27
\Add19~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~33_sumout\ = SUM(( \y[14]~DUPLICATE_q\ ) + ( GND ) + ( \Add19~30\ ))
-- \Add19~34\ = CARRY(( \y[14]~DUPLICATE_q\ ) + ( GND ) + ( \Add19~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_y[14]~DUPLICATE_q\,
	cin => \Add19~30\,
	sumout => \Add19~33_sumout\,
	cout => \Add19~34\);

-- Location: LABCELL_X43_Y41_N24
\Add17~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~29_sumout\ = SUM(( y(12) ) + ( GND ) + ( \Add17~26\ ))
-- \Add17~30\ = CARRY(( y(12) ) + ( GND ) + ( \Add17~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_y(12),
	cin => \Add17~26\,
	sumout => \Add17~29_sumout\,
	cout => \Add17~30\);

-- Location: LABCELL_X43_Y41_N27
\Add17~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~33_sumout\ = SUM(( y(13) ) + ( GND ) + ( \Add17~30\ ))
-- \Add17~34\ = CARRY(( y(13) ) + ( GND ) + ( \Add17~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_y(13),
	cin => \Add17~30\,
	sumout => \Add17~33_sumout\,
	cout => \Add17~34\);

-- Location: LABCELL_X45_Y41_N21
\Add20~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~29_sumout\ = SUM(( !\Add23~1_combout\ $ (!\Add19~29_sumout\ $ (\Add17~29_sumout\)) ) + ( \Add20~27\ ) + ( \Add20~26\ ))
-- \Add20~30\ = CARRY(( !\Add23~1_combout\ $ (!\Add19~29_sumout\ $ (\Add17~29_sumout\)) ) + ( \Add20~27\ ) + ( \Add20~26\ ))
-- \Add20~31\ = SHARE((!\Add23~1_combout\ & (\Add19~29_sumout\ & \Add17~29_sumout\)) # (\Add23~1_combout\ & ((\Add17~29_sumout\) # (\Add19~29_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add23~1_combout\,
	datac => \ALT_INV_Add19~29_sumout\,
	datad => \ALT_INV_Add17~29_sumout\,
	cin => \Add20~26\,
	sharein => \Add20~27\,
	sumout => \Add20~29_sumout\,
	cout => \Add20~30\,
	shareout => \Add20~31\);

-- Location: LABCELL_X45_Y41_N24
\Add20~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~33_sumout\ = SUM(( !\Add23~1_combout\ $ (!\Add19~33_sumout\ $ (\Add17~33_sumout\)) ) + ( \Add20~31\ ) + ( \Add20~30\ ))
-- \Add20~34\ = CARRY(( !\Add23~1_combout\ $ (!\Add19~33_sumout\ $ (\Add17~33_sumout\)) ) + ( \Add20~31\ ) + ( \Add20~30\ ))
-- \Add20~35\ = SHARE((!\Add23~1_combout\ & (\Add19~33_sumout\ & \Add17~33_sumout\)) # (\Add23~1_combout\ & ((\Add17~33_sumout\) # (\Add19~33_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add23~1_combout\,
	datac => \ALT_INV_Add19~33_sumout\,
	datad => \ALT_INV_Add17~33_sumout\,
	cin => \Add20~30\,
	sharein => \Add20~31\,
	sumout => \Add20~33_sumout\,
	cout => \Add20~34\,
	shareout => \Add20~35\);

-- Location: LABCELL_X46_Y41_N21
\Add22~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add22~29_sumout\ = SUM(( \Add20~29_sumout\ ) + ( (\y[14]~DUPLICATE_q\ & ((!y(12)) # ((!y(13)) # (!\Add21~1_combout\)))) ) + ( \Add22~26\ ))
-- \Add22~30\ = CARRY(( \Add20~29_sumout\ ) + ( (\y[14]~DUPLICATE_q\ & ((!y(12)) # ((!y(13)) # (!\Add21~1_combout\)))) ) + ( \Add22~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_y(12),
	datab => ALT_INV_y(13),
	datac => \ALT_INV_y[14]~DUPLICATE_q\,
	datad => \ALT_INV_Add20~29_sumout\,
	dataf => \ALT_INV_Add21~1_combout\,
	cin => \Add22~26\,
	sumout => \Add22~29_sumout\,
	cout => \Add22~30\);

-- Location: LABCELL_X46_Y41_N24
\Add22~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add22~33_sumout\ = SUM(( \Add20~33_sumout\ ) + ( (\y[14]~DUPLICATE_q\ & ((!y(12)) # ((!y(13)) # (!\Add21~1_combout\)))) ) + ( \Add22~30\ ))
-- \Add22~34\ = CARRY(( \Add20~33_sumout\ ) + ( (\y[14]~DUPLICATE_q\ & ((!y(12)) # ((!y(13)) # (!\Add21~1_combout\)))) ) + ( \Add22~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_y(12),
	datab => ALT_INV_y(13),
	datac => \ALT_INV_y[14]~DUPLICATE_q\,
	datad => \ALT_INV_Add20~33_sumout\,
	dataf => \ALT_INV_Add21~1_combout\,
	cin => \Add22~30\,
	sumout => \Add22~33_sumout\,
	cout => \Add22~34\);

-- Location: LABCELL_X46_Y42_N24
\Add15~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~89_sumout\ = SUM(( !\Add14~29_sumout\ $ (!y(11)) ) + ( \Add15~87\ ) + ( \Add15~86\ ))
-- \Add15~90\ = CARRY(( !\Add14~29_sumout\ $ (!y(11)) ) + ( \Add15~87\ ) + ( \Add15~86\ ))
-- \Add15~91\ = SHARE((\Add14~29_sumout\ & y(11)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add14~29_sumout\,
	datac => ALT_INV_y(11),
	cin => \Add15~86\,
	sharein => \Add15~87\,
	sumout => \Add15~89_sumout\,
	cout => \Add15~90\,
	shareout => \Add15~91\);

-- Location: LABCELL_X46_Y42_N27
\Add15~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~93_sumout\ = SUM(( !\y[12]~DUPLICATE_q\ $ (!\Add14~33_sumout\) ) + ( \Add15~91\ ) + ( \Add15~90\ ))
-- \Add15~94\ = CARRY(( !\y[12]~DUPLICATE_q\ $ (!\Add14~33_sumout\) ) + ( \Add15~91\ ) + ( \Add15~90\ ))
-- \Add15~95\ = SHARE((\y[12]~DUPLICATE_q\ & \Add14~33_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_y[12]~DUPLICATE_q\,
	datad => \ALT_INV_Add14~33_sumout\,
	cin => \Add15~90\,
	sharein => \Add15~91\,
	sumout => \Add15~93_sumout\,
	cout => \Add15~94\,
	shareout => \Add15~95\);

-- Location: MLABCELL_X47_Y41_N21
\Add15~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~29_sumout\ = SUM(( \Add22~29_sumout\ ) + ( \Add15~89_sumout\ ) + ( \Add15~26\ ))
-- \Add15~30\ = CARRY(( \Add22~29_sumout\ ) + ( \Add15~89_sumout\ ) + ( \Add15~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add15~89_sumout\,
	datad => \ALT_INV_Add22~29_sumout\,
	cin => \Add15~26\,
	sumout => \Add15~29_sumout\,
	cout => \Add15~30\);

-- Location: MLABCELL_X47_Y41_N24
\Add15~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~33_sumout\ = SUM(( \Add15~93_sumout\ ) + ( \Add22~33_sumout\ ) + ( \Add15~30\ ))
-- \Add15~34\ = CARRY(( \Add15~93_sumout\ ) + ( \Add22~33_sumout\ ) + ( \Add15~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add22~33_sumout\,
	datad => \ALT_INV_Add15~93_sumout\,
	cin => \Add15~30\,
	sumout => \Add15~33_sumout\,
	cout => \Add15~34\);

-- Location: FF_X47_Y41_N26
\y9[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add15~33_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y9(8));

-- Location: FF_X48_Y26_N25
\sx[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~33_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sx(8));

-- Location: FF_X48_Y26_N23
\sx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~29_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sx(7));

-- Location: LABCELL_X40_Y41_N21
\Add25~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add25~29_sumout\ = SUM(( y9(7) ) + ( sx(7) ) + ( \Add25~26\ ))
-- \Add25~30\ = CARRY(( y9(7) ) + ( sx(7) ) + ( \Add25~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_y9(7),
	datac => ALT_INV_sx(7),
	cin => \Add25~26\,
	sumout => \Add25~29_sumout\,
	cout => \Add25~30\);

-- Location: LABCELL_X40_Y41_N24
\Add25~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add25~33_sumout\ = SUM(( y9(8) ) + ( sx(8) ) + ( \Add25~30\ ))
-- \Add25~34\ = CARRY(( y9(8) ) + ( sx(8) ) + ( \Add25~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_y9(8),
	datac => ALT_INV_sx(8),
	cin => \Add25~30\,
	sumout => \Add25~33_sumout\,
	cout => \Add25~34\);

-- Location: FF_X40_Y41_N25
\y[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add25~33_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[8]~DUPLICATE_q\);

-- Location: LABCELL_X45_Y42_N24
\Add14~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~29_sumout\ = SUM(( \y[9]~DUPLICATE_q\ ) + ( GND ) + ( \Add14~26\ ))
-- \Add14~30\ = CARRY(( \y[9]~DUPLICATE_q\ ) + ( GND ) + ( \Add14~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_y[9]~DUPLICATE_q\,
	cin => \Add14~26\,
	sumout => \Add14~29_sumout\,
	cout => \Add14~30\);

-- Location: LABCELL_X45_Y42_N27
\Add14~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~33_sumout\ = SUM(( y(10) ) + ( GND ) + ( \Add14~30\ ))
-- \Add14~34\ = CARRY(( y(10) ) + ( GND ) + ( \Add14~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_y(10),
	cin => \Add14~30\,
	sumout => \Add14~33_sumout\,
	cout => \Add14~34\);

-- Location: LABCELL_X46_Y42_N30
\Add15~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~97_sumout\ = SUM(( !y(13) $ (!\Add14~37_sumout\) ) + ( \Add15~95\ ) + ( \Add15~94\ ))
-- \Add15~98\ = CARRY(( !y(13) $ (!\Add14~37_sumout\) ) + ( \Add15~95\ ) + ( \Add15~94\ ))
-- \Add15~99\ = SHARE((y(13) & \Add14~37_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_y(13),
	datac => \ALT_INV_Add14~37_sumout\,
	cin => \Add15~94\,
	sharein => \Add15~95\,
	sumout => \Add15~97_sumout\,
	cout => \Add15~98\,
	shareout => \Add15~99\);

-- Location: MLABCELL_X39_Y41_N30
\Add19~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~37_sumout\ = SUM(( \y[14]~DUPLICATE_q\ ) + ( GND ) + ( \Add19~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_y[14]~DUPLICATE_q\,
	cin => \Add19~34\,
	sumout => \Add19~37_sumout\);

-- Location: LABCELL_X43_Y41_N30
\Add17~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~37_sumout\ = SUM(( y(14) ) + ( GND ) + ( \Add17~34\ ))
-- \Add17~38\ = CARRY(( y(14) ) + ( GND ) + ( \Add17~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_y(14),
	cin => \Add17~34\,
	sumout => \Add17~37_sumout\,
	cout => \Add17~38\);

-- Location: LABCELL_X45_Y41_N27
\Add20~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~37_sumout\ = SUM(( !\Add23~1_combout\ $ (!\Add19~37_sumout\ $ (\Add17~37_sumout\)) ) + ( \Add20~35\ ) + ( \Add20~34\ ))
-- \Add20~38\ = CARRY(( !\Add23~1_combout\ $ (!\Add19~37_sumout\ $ (\Add17~37_sumout\)) ) + ( \Add20~35\ ) + ( \Add20~34\ ))
-- \Add20~39\ = SHARE((!\Add23~1_combout\ & (\Add19~37_sumout\ & \Add17~37_sumout\)) # (\Add23~1_combout\ & ((\Add17~37_sumout\) # (\Add19~37_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add23~1_combout\,
	datac => \ALT_INV_Add19~37_sumout\,
	datad => \ALT_INV_Add17~37_sumout\,
	cin => \Add20~34\,
	sharein => \Add20~35\,
	sumout => \Add20~37_sumout\,
	cout => \Add20~38\,
	shareout => \Add20~39\);

-- Location: LABCELL_X46_Y41_N27
\Add22~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add22~37_sumout\ = SUM(( \Add20~37_sumout\ ) + ( (\y[14]~DUPLICATE_q\ & ((!y(12)) # ((!y(13)) # (!\Add21~1_combout\)))) ) + ( \Add22~34\ ))
-- \Add22~38\ = CARRY(( \Add20~37_sumout\ ) + ( (\y[14]~DUPLICATE_q\ & ((!y(12)) # ((!y(13)) # (!\Add21~1_combout\)))) ) + ( \Add22~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_y(12),
	datab => ALT_INV_y(13),
	datac => \ALT_INV_y[14]~DUPLICATE_q\,
	datad => \ALT_INV_Add20~37_sumout\,
	dataf => \ALT_INV_Add21~1_combout\,
	cin => \Add22~34\,
	sumout => \Add22~37_sumout\,
	cout => \Add22~38\);

-- Location: MLABCELL_X47_Y41_N27
\Add15~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~37_sumout\ = SUM(( \Add22~37_sumout\ ) + ( \Add15~97_sumout\ ) + ( \Add15~34\ ))
-- \Add15~38\ = CARRY(( \Add22~37_sumout\ ) + ( \Add15~97_sumout\ ) + ( \Add15~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add15~97_sumout\,
	datad => \ALT_INV_Add22~37_sumout\,
	cin => \Add15~34\,
	sumout => \Add15~37_sumout\,
	cout => \Add15~38\);

-- Location: FF_X47_Y41_N28
\y9[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add15~37_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y9(9));

-- Location: LABCELL_X40_Y41_N27
\Add25~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add25~37_sumout\ = SUM(( sx(9) ) + ( y9(9) ) + ( \Add25~34\ ))
-- \Add25~38\ = CARRY(( sx(9) ) + ( y9(9) ) + ( \Add25~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_sx(9),
	dataf => ALT_INV_y9(9),
	cin => \Add25~34\,
	sumout => \Add25~37_sumout\,
	cout => \Add25~38\);

-- Location: FF_X40_Y41_N28
\y[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add25~37_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[9]~DUPLICATE_q\);

-- Location: FF_X47_Y41_N23
\y9[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add15~29_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y9(7));

-- Location: FF_X40_Y41_N22
\y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add25~29_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(7));

-- Location: LABCELL_X45_Y41_N48
\WideOr10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr10~0_combout\ = ( !\y[6]~DUPLICATE_q\ & ( !y(10) & ( (!y(7) & (!\y[9]~DUPLICATE_q\ & !\y[8]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_y(7),
	datac => \ALT_INV_y[9]~DUPLICATE_q\,
	datad => \ALT_INV_y[8]~DUPLICATE_q\,
	datae => \ALT_INV_y[6]~DUPLICATE_q\,
	dataf => ALT_INV_y(10),
	combout => \WideOr10~0_combout\);

-- Location: LABCELL_X46_Y41_N36
\Add21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~1_combout\ = ( !\WideOr10~0_combout\ & ( \WideOr9~0_combout\ & ( (\y[14]~DUPLICATE_q\ & y(11)) ) ) ) # ( \WideOr10~0_combout\ & ( !\WideOr9~0_combout\ & ( (\y[14]~DUPLICATE_q\ & y(11)) ) ) ) # ( !\WideOr10~0_combout\ & ( !\WideOr9~0_combout\ & ( 
-- (\y[14]~DUPLICATE_q\ & y(11)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_y[14]~DUPLICATE_q\,
	datac => ALT_INV_y(11),
	datae => \ALT_INV_WideOr10~0_combout\,
	dataf => \ALT_INV_WideOr9~0_combout\,
	combout => \Add21~1_combout\);

-- Location: LABCELL_X43_Y41_N33
\Add17~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~41_sumout\ = SUM(( y(14) ) + ( GND ) + ( \Add17~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_y(14),
	cin => \Add17~38\,
	sumout => \Add17~41_sumout\);

-- Location: LABCELL_X45_Y41_N42
\Add23~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~2_combout\ = ( \WideOr10~0_combout\ & ( (!y(13)) # ((!y(11) & (!y(12) & \WideOr9~0_combout\))) ) ) # ( !\WideOr10~0_combout\ & ( !y(13) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010111010101010101011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_y(13),
	datab => ALT_INV_y(11),
	datac => ALT_INV_y(12),
	datad => \ALT_INV_WideOr9~0_combout\,
	dataf => \ALT_INV_WideOr10~0_combout\,
	combout => \Add23~2_combout\);

-- Location: LABCELL_X45_Y41_N30
\Add20~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~41_sumout\ = SUM(( !\Add17~41_sumout\ $ (!\Add19~37_sumout\ $ (((\Add23~2_combout\ & \y[14]~DUPLICATE_q\)))) ) + ( \Add20~39\ ) + ( \Add20~38\ ))
-- \Add20~42\ = CARRY(( !\Add17~41_sumout\ $ (!\Add19~37_sumout\ $ (((\Add23~2_combout\ & \y[14]~DUPLICATE_q\)))) ) + ( \Add20~39\ ) + ( \Add20~38\ ))
-- \Add20~43\ = SHARE((!\Add17~41_sumout\ & (\Add23~2_combout\ & (\y[14]~DUPLICATE_q\ & \Add19~37_sumout\))) # (\Add17~41_sumout\ & (((\Add23~2_combout\ & \y[14]~DUPLICATE_q\)) # (\Add19~37_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010101011100000000000000000101011010101001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add17~41_sumout\,
	datab => \ALT_INV_Add23~2_combout\,
	datac => \ALT_INV_y[14]~DUPLICATE_q\,
	datad => \ALT_INV_Add19~37_sumout\,
	cin => \Add20~38\,
	sharein => \Add20~39\,
	sumout => \Add20~41_sumout\,
	cout => \Add20~42\,
	shareout => \Add20~43\);

-- Location: LABCELL_X46_Y41_N30
\Add22~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add22~41_sumout\ = SUM(( (\y[14]~DUPLICATE_q\ & ((!y(12)) # ((!\y[13]~DUPLICATE_q\) # (!\Add21~1_combout\)))) ) + ( \Add20~41_sumout\ ) + ( \Add22~38\ ))
-- \Add22~42\ = CARRY(( (\y[14]~DUPLICATE_q\ & ((!y(12)) # ((!\y[13]~DUPLICATE_q\) # (!\Add21~1_combout\)))) ) + ( \Add20~41_sumout\ ) + ( \Add22~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y[14]~DUPLICATE_q\,
	datab => ALT_INV_y(12),
	datac => \ALT_INV_y[13]~DUPLICATE_q\,
	datad => \ALT_INV_Add21~1_combout\,
	dataf => \ALT_INV_Add20~41_sumout\,
	cin => \Add22~38\,
	sumout => \Add22~41_sumout\,
	cout => \Add22~42\);

-- Location: LABCELL_X46_Y42_N33
\Add15~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~101_sumout\ = SUM(( !\Add14~41_sumout\ $ (!\y[14]~DUPLICATE_q\) ) + ( \Add15~99\ ) + ( \Add15~98\ ))
-- \Add15~102\ = CARRY(( !\Add14~41_sumout\ $ (!\y[14]~DUPLICATE_q\) ) + ( \Add15~99\ ) + ( \Add15~98\ ))
-- \Add15~103\ = SHARE((\Add14~41_sumout\ & \y[14]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add14~41_sumout\,
	datad => \ALT_INV_y[14]~DUPLICATE_q\,
	cin => \Add15~98\,
	sharein => \Add15~99\,
	sumout => \Add15~101_sumout\,
	cout => \Add15~102\,
	shareout => \Add15~103\);

-- Location: MLABCELL_X47_Y41_N30
\Add15~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~41_sumout\ = SUM(( \Add15~101_sumout\ ) + ( \Add22~41_sumout\ ) + ( \Add15~38\ ))
-- \Add15~42\ = CARRY(( \Add15~101_sumout\ ) + ( \Add22~41_sumout\ ) + ( \Add15~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add22~41_sumout\,
	datad => \ALT_INV_Add15~101_sumout\,
	cin => \Add15~38\,
	sumout => \Add15~41_sumout\,
	cout => \Add15~42\);

-- Location: FF_X47_Y41_N31
\y9[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add15~41_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y9(10));

-- Location: LABCELL_X40_Y41_N30
\Add25~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add25~41_sumout\ = SUM(( y9(10) ) + ( sx(10) ) + ( \Add25~38\ ))
-- \Add25~42\ = CARRY(( y9(10) ) + ( sx(10) ) + ( \Add25~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_sx(10),
	datad => ALT_INV_y9(10),
	cin => \Add25~38\,
	sumout => \Add25~41_sumout\,
	cout => \Add25~42\);

-- Location: FF_X40_Y41_N31
\y[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add25~41_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(10));

-- Location: LABCELL_X45_Y42_N33
\Add14~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~41_sumout\ = SUM(( \y[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add14~38\ ))
-- \Add14~42\ = CARRY(( \y[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add14~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_y[12]~DUPLICATE_q\,
	cin => \Add14~38\,
	sumout => \Add14~41_sumout\,
	cout => \Add14~42\);

-- Location: LABCELL_X46_Y42_N36
\Add15~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~105_sumout\ = SUM(( !\y[14]~DUPLICATE_q\ $ (!\Add14~45_sumout\) ) + ( \Add15~103\ ) + ( \Add15~102\ ))
-- \Add15~106\ = CARRY(( !\y[14]~DUPLICATE_q\ $ (!\Add14~45_sumout\) ) + ( \Add15~103\ ) + ( \Add15~102\ ))
-- \Add15~107\ = SHARE((\y[14]~DUPLICATE_q\ & \Add14~45_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y[14]~DUPLICATE_q\,
	datac => \ALT_INV_Add14~45_sumout\,
	cin => \Add15~102\,
	sharein => \Add15~103\,
	sumout => \Add15~105_sumout\,
	cout => \Add15~106\,
	shareout => \Add15~107\);

-- Location: LABCELL_X46_Y42_N39
\Add15~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~109_sumout\ = SUM(( !\y[14]~DUPLICATE_q\ $ (!\Add14~49_sumout\) ) + ( \Add15~107\ ) + ( \Add15~106\ ))
-- \Add15~110\ = CARRY(( !\y[14]~DUPLICATE_q\ $ (!\Add14~49_sumout\) ) + ( \Add15~107\ ) + ( \Add15~106\ ))
-- \Add15~111\ = SHARE((\y[14]~DUPLICATE_q\ & \Add14~49_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y[14]~DUPLICATE_q\,
	datad => \ALT_INV_Add14~49_sumout\,
	cin => \Add15~106\,
	sharein => \Add15~107\,
	sumout => \Add15~109_sumout\,
	cout => \Add15~110\,
	shareout => \Add15~111\);

-- Location: LABCELL_X45_Y41_N33
\Add20~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~45_sumout\ = SUM(( !\Add17~41_sumout\ $ (!\Add19~37_sumout\ $ (((\Add23~2_combout\ & \y[14]~DUPLICATE_q\)))) ) + ( \Add20~43\ ) + ( \Add20~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101011010101001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add17~41_sumout\,
	datab => \ALT_INV_Add23~2_combout\,
	datac => \ALT_INV_y[14]~DUPLICATE_q\,
	datad => \ALT_INV_Add19~37_sumout\,
	cin => \Add20~42\,
	sharein => \Add20~43\,
	sumout => \Add20~45_sumout\);

-- Location: LABCELL_X46_Y41_N33
\Add22~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add22~45_sumout\ = SUM(( \Add20~45_sumout\ ) + ( (\y[14]~DUPLICATE_q\ & ((!y(12)) # ((!y(13)) # (!\Add21~1_combout\)))) ) + ( \Add22~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y[14]~DUPLICATE_q\,
	datab => ALT_INV_y(12),
	datac => ALT_INV_y(13),
	datad => \ALT_INV_Add20~45_sumout\,
	dataf => \ALT_INV_Add21~1_combout\,
	cin => \Add22~42\,
	sumout => \Add22~45_sumout\);

-- Location: MLABCELL_X47_Y41_N33
\Add15~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~45_sumout\ = SUM(( \Add22~45_sumout\ ) + ( \Add15~105_sumout\ ) + ( \Add15~42\ ))
-- \Add15~46\ = CARRY(( \Add22~45_sumout\ ) + ( \Add15~105_sumout\ ) + ( \Add15~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add15~105_sumout\,
	datad => \ALT_INV_Add22~45_sumout\,
	cin => \Add15~42\,
	sumout => \Add15~45_sumout\,
	cout => \Add15~46\);

-- Location: MLABCELL_X47_Y41_N36
\Add15~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~49_sumout\ = SUM(( \Add22~45_sumout\ ) + ( \Add15~109_sumout\ ) + ( \Add15~46\ ))
-- \Add15~50\ = CARRY(( \Add22~45_sumout\ ) + ( \Add15~109_sumout\ ) + ( \Add15~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add15~109_sumout\,
	datad => \ALT_INV_Add22~45_sumout\,
	cin => \Add15~46\,
	sumout => \Add15~49_sumout\,
	cout => \Add15~50\);

-- Location: FF_X47_Y41_N37
\y9[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add15~49_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y9(12));

-- Location: LABCELL_X50_Y25_N36
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( x(12) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( x(12) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_x(12),
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: LABCELL_X50_Y25_N39
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( x(13) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( x(13) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_x(13),
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: LABCELL_X50_Y26_N36
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( !x(14) $ (!\Add0~45_sumout\) ) + ( \Add1~43\ ) + ( \Add1~42\ ))
-- \Add1~46\ = CARRY(( !x(14) $ (!\Add0~45_sumout\) ) + ( \Add1~43\ ) + ( \Add1~42\ ))
-- \Add1~47\ = SHARE((x(14) & \Add0~45_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_x(14),
	datac => \ALT_INV_Add0~45_sumout\,
	cin => \Add1~42\,
	sharein => \Add1~43\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\,
	shareout => \Add1~47\);

-- Location: LABCELL_X50_Y26_N39
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( !x(14) $ (!\Add0~49_sumout\) ) + ( \Add1~47\ ) + ( \Add1~46\ ))
-- \Add1~50\ = CARRY(( !x(14) $ (!\Add0~49_sumout\) ) + ( \Add1~47\ ) + ( \Add1~46\ ))
-- \Add1~51\ = SHARE((x(14) & \Add0~49_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_x(14),
	datac => \ALT_INV_Add0~49_sumout\,
	cin => \Add1~46\,
	sharein => \Add1~47\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\,
	shareout => \Add1~51\);

-- Location: MLABCELL_X52_Y26_N36
\Add5~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~45_sumout\ = SUM(( !x(14) $ (!\Add3~41_sumout\) ) + ( \Add5~43\ ) + ( \Add5~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000110011001100110",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_x(14),
	datab => \ALT_INV_Add3~41_sumout\,
	cin => \Add5~42\,
	sharein => \Add5~43\,
	sumout => \Add5~45_sumout\);

-- Location: LABCELL_X51_Y26_N33
\Add12~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~45_sumout\ = SUM(( !\Add10~29_sumout\ $ (!\Add1~45_sumout\ $ (\Add5~45_sumout\)) ) + ( \Add12~43\ ) + ( \Add12~42\ ))
-- \Add12~46\ = CARRY(( !\Add10~29_sumout\ $ (!\Add1~45_sumout\ $ (\Add5~45_sumout\)) ) + ( \Add12~43\ ) + ( \Add12~42\ ))
-- \Add12~47\ = SHARE((!\Add10~29_sumout\ & (\Add1~45_sumout\ & \Add5~45_sumout\)) # (\Add10~29_sumout\ & ((\Add5~45_sumout\) # (\Add1~45_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add10~29_sumout\,
	datac => \ALT_INV_Add1~45_sumout\,
	datad => \ALT_INV_Add5~45_sumout\,
	cin => \Add12~42\,
	sharein => \Add12~43\,
	sumout => \Add12~45_sumout\,
	cout => \Add12~46\,
	shareout => \Add12~47\);

-- Location: LABCELL_X51_Y26_N36
\Add12~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~49_sumout\ = SUM(( !\Add10~29_sumout\ $ (!\Add1~49_sumout\ $ (\Add5~45_sumout\)) ) + ( \Add12~47\ ) + ( \Add12~46\ ))
-- \Add12~50\ = CARRY(( !\Add10~29_sumout\ $ (!\Add1~49_sumout\ $ (\Add5~45_sumout\)) ) + ( \Add12~47\ ) + ( \Add12~46\ ))
-- \Add12~51\ = SHARE((!\Add10~29_sumout\ & (\Add1~49_sumout\ & \Add5~45_sumout\)) # (\Add10~29_sumout\ & ((\Add5~45_sumout\) # (\Add1~49_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add10~29_sumout\,
	datac => \ALT_INV_Add1~49_sumout\,
	datad => \ALT_INV_Add5~45_sumout\,
	cin => \Add12~46\,
	sharein => \Add12~47\,
	sumout => \Add12~49_sumout\,
	cout => \Add12~50\,
	shareout => \Add12~51\);

-- Location: FF_X51_Y26_N38
\x3[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~49_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x3(12));

-- Location: FF_X51_Y26_N34
\x3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~45_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x3(11));

-- Location: LABCELL_X48_Y26_N33
\Add13~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~45_sumout\ = SUM(( x3(11) ) + ( x(11) ) + ( \Add13~42\ ))
-- \Add13~46\ = CARRY(( x3(11) ) + ( x(11) ) + ( \Add13~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_x(11),
	datad => ALT_INV_x3(11),
	cin => \Add13~42\,
	sumout => \Add13~45_sumout\,
	cout => \Add13~46\);

-- Location: LABCELL_X48_Y26_N36
\Add13~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~49_sumout\ = SUM(( x3(12) ) + ( x(12) ) + ( \Add13~46\ ))
-- \Add13~50\ = CARRY(( x3(12) ) + ( x(12) ) + ( \Add13~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_x3(12),
	datac => ALT_INV_x(12),
	cin => \Add13~46\,
	sumout => \Add13~49_sumout\,
	cout => \Add13~50\);

-- Location: FF_X48_Y26_N37
\sx[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~49_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sx(12));

-- Location: FF_X48_Y26_N34
\sx[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~45_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sx(11));

-- Location: LABCELL_X40_Y41_N33
\Add25~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add25~45_sumout\ = SUM(( y9(11) ) + ( sx(11) ) + ( \Add25~42\ ))
-- \Add25~46\ = CARRY(( y9(11) ) + ( sx(11) ) + ( \Add25~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_y9(11),
	datac => ALT_INV_sx(11),
	cin => \Add25~42\,
	sumout => \Add25~45_sumout\,
	cout => \Add25~46\);

-- Location: LABCELL_X40_Y41_N36
\Add25~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add25~49_sumout\ = SUM(( y9(12) ) + ( sx(12) ) + ( \Add25~46\ ))
-- \Add25~50\ = CARRY(( y9(12) ) + ( sx(12) ) + ( \Add25~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_y9(12),
	datac => ALT_INV_sx(12),
	cin => \Add25~46\,
	sumout => \Add25~49_sumout\,
	cout => \Add25~50\);

-- Location: FF_X40_Y41_N38
\y[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add25~49_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[12]~DUPLICATE_q\);

-- Location: LABCELL_X45_Y42_N36
\Add14~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~45_sumout\ = SUM(( y(13) ) + ( GND ) + ( \Add14~42\ ))
-- \Add14~46\ = CARRY(( y(13) ) + ( GND ) + ( \Add14~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_y(13),
	cin => \Add14~42\,
	sumout => \Add14~45_sumout\,
	cout => \Add14~46\);

-- Location: LABCELL_X46_Y42_N42
\Add15~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~113_sumout\ = SUM(( !\y[14]~DUPLICATE_q\ $ (!\Add14~53_sumout\) ) + ( \Add15~111\ ) + ( \Add15~110\ ))
-- \Add15~114\ = CARRY(( !\y[14]~DUPLICATE_q\ $ (!\Add14~53_sumout\) ) + ( \Add15~111\ ) + ( \Add15~110\ ))
-- \Add15~115\ = SHARE((\y[14]~DUPLICATE_q\ & \Add14~53_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y[14]~DUPLICATE_q\,
	datad => \ALT_INV_Add14~53_sumout\,
	cin => \Add15~110\,
	sharein => \Add15~111\,
	sumout => \Add15~113_sumout\,
	cout => \Add15~114\,
	shareout => \Add15~115\);

-- Location: MLABCELL_X47_Y41_N39
\Add15~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~53_sumout\ = SUM(( \Add22~45_sumout\ ) + ( \Add15~113_sumout\ ) + ( \Add15~50\ ))
-- \Add15~54\ = CARRY(( \Add22~45_sumout\ ) + ( \Add15~113_sumout\ ) + ( \Add15~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add15~113_sumout\,
	datad => \ALT_INV_Add22~45_sumout\,
	cin => \Add15~50\,
	sumout => \Add15~53_sumout\,
	cout => \Add15~54\);

-- Location: FF_X47_Y41_N41
\y9[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add15~53_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y9(13));

-- Location: LABCELL_X50_Y25_N42
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( x(14) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( x(14) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_x(14),
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: LABCELL_X50_Y26_N42
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( !x(14) $ (!\Add0~53_sumout\) ) + ( \Add1~51\ ) + ( \Add1~50\ ))
-- \Add1~54\ = CARRY(( !x(14) $ (!\Add0~53_sumout\) ) + ( \Add1~51\ ) + ( \Add1~50\ ))
-- \Add1~55\ = SHARE((x(14) & \Add0~53_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_x(14),
	datad => \ALT_INV_Add0~53_sumout\,
	cin => \Add1~50\,
	sharein => \Add1~51\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\,
	shareout => \Add1~55\);

-- Location: LABCELL_X51_Y26_N39
\Add12~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~53_sumout\ = SUM(( !\Add10~29_sumout\ $ (!\Add1~53_sumout\ $ (\Add5~45_sumout\)) ) + ( \Add12~51\ ) + ( \Add12~50\ ))
-- \Add12~54\ = CARRY(( !\Add10~29_sumout\ $ (!\Add1~53_sumout\ $ (\Add5~45_sumout\)) ) + ( \Add12~51\ ) + ( \Add12~50\ ))
-- \Add12~55\ = SHARE((!\Add10~29_sumout\ & (\Add1~53_sumout\ & \Add5~45_sumout\)) # (\Add10~29_sumout\ & ((\Add5~45_sumout\) # (\Add1~53_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add10~29_sumout\,
	datac => \ALT_INV_Add1~53_sumout\,
	datad => \ALT_INV_Add5~45_sumout\,
	cin => \Add12~50\,
	sharein => \Add12~51\,
	sumout => \Add12~53_sumout\,
	cout => \Add12~54\,
	shareout => \Add12~55\);

-- Location: FF_X51_Y26_N40
\x3[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~53_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x3(13));

-- Location: LABCELL_X48_Y26_N39
\Add13~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~53_sumout\ = SUM(( x3(13) ) + ( x(13) ) + ( \Add13~50\ ))
-- \Add13~54\ = CARRY(( x3(13) ) + ( x(13) ) + ( \Add13~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_x(13),
	datac => ALT_INV_x3(13),
	cin => \Add13~50\,
	sumout => \Add13~53_sumout\,
	cout => \Add13~54\);

-- Location: FF_X48_Y26_N41
\sx[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~53_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sx(13));

-- Location: LABCELL_X40_Y41_N39
\Add25~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add25~53_sumout\ = SUM(( sx(13) ) + ( y9(13) ) + ( \Add25~50\ ))
-- \Add25~54\ = CARRY(( sx(13) ) + ( y9(13) ) + ( \Add25~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_y9(13),
	datad => ALT_INV_sx(13),
	cin => \Add25~50\,
	sumout => \Add25~53_sumout\,
	cout => \Add25~54\);

-- Location: FF_X40_Y41_N40
\y[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add25~53_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(13));

-- Location: LABCELL_X45_Y42_N42
\Add14~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~53_sumout\ = SUM(( \y[14]~DUPLICATE_q\ ) + ( GND ) + ( \Add14~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_y[14]~DUPLICATE_q\,
	cin => \Add14~50\,
	sumout => \Add14~53_sumout\);

-- Location: LABCELL_X46_Y42_N45
\Add15~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~117_sumout\ = SUM(( !\y[14]~DUPLICATE_q\ $ (!\Add14~53_sumout\) ) + ( \Add15~115\ ) + ( \Add15~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y[14]~DUPLICATE_q\,
	datad => \ALT_INV_Add14~53_sumout\,
	cin => \Add15~114\,
	sharein => \Add15~115\,
	sumout => \Add15~117_sumout\);

-- Location: MLABCELL_X47_Y41_N42
\Add15~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~57_sumout\ = SUM(( \Add22~45_sumout\ ) + ( \Add15~117_sumout\ ) + ( \Add15~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add15~117_sumout\,
	datad => \ALT_INV_Add22~45_sumout\,
	cin => \Add15~54\,
	sumout => \Add15~57_sumout\);

-- Location: FF_X47_Y41_N44
\y9[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add15~57_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y9(14));

-- Location: LABCELL_X50_Y25_N45
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( x(14) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_x(14),
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\);

-- Location: LABCELL_X50_Y26_N45
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( !x(14) $ (!\Add0~57_sumout\) ) + ( \Add1~55\ ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_x(14),
	datac => \ALT_INV_Add0~57_sumout\,
	cin => \Add1~54\,
	sharein => \Add1~55\,
	sumout => \Add1~57_sumout\);

-- Location: LABCELL_X51_Y26_N42
\Add12~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~57_sumout\ = SUM(( !\Add1~57_sumout\ $ (!\Add10~29_sumout\ $ (\Add5~45_sumout\)) ) + ( \Add12~55\ ) + ( \Add12~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~57_sumout\,
	datac => \ALT_INV_Add10~29_sumout\,
	datad => \ALT_INV_Add5~45_sumout\,
	cin => \Add12~54\,
	sharein => \Add12~55\,
	sumout => \Add12~57_sumout\);

-- Location: FF_X51_Y26_N43
\x3[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~57_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x3(14));

-- Location: LABCELL_X48_Y26_N42
\Add13~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~57_sumout\ = SUM(( x3(14) ) + ( x(14) ) + ( \Add13~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_x3(14),
	datac => ALT_INV_x(14),
	cin => \Add13~54\,
	sumout => \Add13~57_sumout\);

-- Location: FF_X48_Y26_N43
\sx[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~57_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sx(14));

-- Location: LABCELL_X40_Y41_N42
\Add25~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add25~57_sumout\ = SUM(( sx(14) ) + ( y9(14) ) + ( \Add25~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_y9(14),
	datad => ALT_INV_sx(14),
	cin => \Add25~54\,
	sumout => \Add25~57_sumout\);

-- Location: FF_X40_Y41_N44
\y[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add25~57_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[14]~DUPLICATE_q\);

-- Location: FF_X47_Y41_N35
\y9[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add15~45_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y9(11));

-- Location: FF_X40_Y41_N34
\y[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add25~45_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(11));

-- Location: FF_X47_Y41_N2
\y9[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add15~1_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y9(0));

-- Location: FF_X39_Y41_N49
\y[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add25~1_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[0]~DUPLICATE_q\);

-- Location: LABCELL_X46_Y5_N0
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


