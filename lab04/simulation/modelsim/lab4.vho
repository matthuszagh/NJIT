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

-- DATE "04/15/2018 15:03:26"

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

ENTITY 	db4poly IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	x_in : IN std_logic_vector(7 DOWNTO 0);
	y_out : BUFFER std_logic_vector(8 DOWNTO 0)
	);
END db4poly;

-- Design Ports Information
-- y_out[0]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[1]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[2]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[3]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[4]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[5]	=>  Location: PIN_AK29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[6]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[7]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[8]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[6]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[1]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[0]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[2]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[3]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[4]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[5]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[7]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF db4poly IS
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
SIGNAL ww_x_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_y_out : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult0~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mult0~8_AY_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0~8_BY_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult1~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Mult1~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult1~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult1~8_AX_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult1~8_AY_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Mult1~8_BX_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult1~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
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
SIGNAL \Mult0~55\ : std_logic;
SIGNAL \Mult0~56\ : std_logic;
SIGNAL \Mult0~57\ : std_logic;
SIGNAL \Mult0~58\ : std_logic;
SIGNAL \Mult0~59\ : std_logic;
SIGNAL \Mult0~60\ : std_logic;
SIGNAL \Mult0~61\ : std_logic;
SIGNAL \Mult0~62\ : std_logic;
SIGNAL \Mult0~63\ : std_logic;
SIGNAL \Mult0~64\ : std_logic;
SIGNAL \Mult0~65\ : std_logic;
SIGNAL \Mult0~66\ : std_logic;
SIGNAL \Mult0~67\ : std_logic;
SIGNAL \Mult0~68\ : std_logic;
SIGNAL \Mult0~69\ : std_logic;
SIGNAL \Mult0~70\ : std_logic;
SIGNAL \Mult0~71\ : std_logic;
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
SIGNAL \Mult1~57\ : std_logic;
SIGNAL \Mult1~58\ : std_logic;
SIGNAL \Mult1~59\ : std_logic;
SIGNAL \Mult1~60\ : std_logic;
SIGNAL \Mult1~61\ : std_logic;
SIGNAL \Mult1~62\ : std_logic;
SIGNAL \Mult1~63\ : std_logic;
SIGNAL \Mult1~64\ : std_logic;
SIGNAL \Mult1~65\ : std_logic;
SIGNAL \Mult1~66\ : std_logic;
SIGNAL \Mult1~67\ : std_logic;
SIGNAL \Mult1~68\ : std_logic;
SIGNAL \Mult1~69\ : std_logic;
SIGNAL \Mult1~70\ : std_logic;
SIGNAL \Mult1~71\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \x_in[6]~input_o\ : std_logic;
SIGNAL \x_in[1]~input_o\ : std_logic;
SIGNAL \x_in[0]~input_o\ : std_logic;
SIGNAL \x_in[5]~input_o\ : std_logic;
SIGNAL \x_in[4]~input_o\ : std_logic;
SIGNAL \x_in[3]~input_o\ : std_logic;
SIGNAL \x_in[2]~input_o\ : std_logic;
SIGNAL \Add0~54_cout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \e_lve[0][8]~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \state~0_combout\ : std_logic;
SIGNAL \state~q\ : std_logic;
SIGNAL \e_del[1][11]~0_combout\ : std_logic;
SIGNAL \e_lve[0][8]~q\ : std_logic;
SIGNAL \x_in[7]~input_o\ : std_logic;
SIGNAL \e_del[0][8]\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \e_lve[0][7]~q\ : std_logic;
SIGNAL \e_del[0][7]\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \e_lve[0][6]~q\ : std_logic;
SIGNAL \e_del[0][6]\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \e_lve[0][5]~q\ : std_logic;
SIGNAL \e_del[0][5]\ : std_logic;
SIGNAL \e_del[0][4]\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \e_lve[0][4]~q\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \e_lve[0][3]~q\ : std_logic;
SIGNAL \e_del[0][3]\ : std_logic;
SIGNAL \e_lve[0][2]~q\ : std_logic;
SIGNAL \e_del[0][2]\ : std_logic;
SIGNAL \Add5~42\ : std_logic;
SIGNAL \Add5~46\ : std_logic;
SIGNAL \Add5~50\ : std_logic;
SIGNAL \Add5~54\ : std_logic;
SIGNAL \Add5~58\ : std_logic;
SIGNAL \Add5~38\ : std_logic;
SIGNAL \Add5~1_sumout\ : std_logic;
SIGNAL \filter_sep[7]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \filter_sep[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \e_reg[1][7]~feeder_combout\ : std_logic;
SIGNAL \e_reg[1][7]~q\ : std_logic;
SIGNAL \filter_sep[6]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \filter_sep[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \e_reg[1][6]~q\ : std_logic;
SIGNAL \filter_sep[5]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \filter_sep[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \e_reg[1][5]~q\ : std_logic;
SIGNAL \filter_sep[4]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \filter_sep[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \e_reg[1][4]~feeder_combout\ : std_logic;
SIGNAL \e_reg[1][4]~q\ : std_logic;
SIGNAL \filter_sep[3]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \filter_sep[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \e_reg[1][3]~q\ : std_logic;
SIGNAL \filter_sep[2]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \filter_sep[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \e_reg[1][2]~q\ : std_logic;
SIGNAL \filter_sep[1]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \filter_sep[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \e_reg[1][1]~q\ : std_logic;
SIGNAL \filter_sep[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \e_reg[1][0]~q\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \Add3~34\ : std_logic;
SIGNAL \Add3~38\ : std_logic;
SIGNAL \Add3~30\ : std_logic;
SIGNAL \Add3~1_sumout\ : std_logic;
SIGNAL \e_del[1][8]~q\ : std_logic;
SIGNAL \e_lve[1][8]\ : std_logic;
SIGNAL \Add3~29_sumout\ : std_logic;
SIGNAL \e_del[1][7]~q\ : std_logic;
SIGNAL \e_lve[1][7]\ : std_logic;
SIGNAL \Add5~37_sumout\ : std_logic;
SIGNAL \Add5~57_sumout\ : std_logic;
SIGNAL \Add3~37_sumout\ : std_logic;
SIGNAL \e_del[1][6]~q\ : std_logic;
SIGNAL \e_lve[1][6]\ : std_logic;
SIGNAL \Add3~33_sumout\ : std_logic;
SIGNAL \e_del[1][5]~q\ : std_logic;
SIGNAL \e_lve[1][5]\ : std_logic;
SIGNAL \Add5~53_sumout\ : std_logic;
SIGNAL \e_lve[1][4]\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \e_del[1][4]~q\ : std_logic;
SIGNAL \Add5~49_sumout\ : std_logic;
SIGNAL \e_del[1][3]~q\ : std_logic;
SIGNAL \e_lve[1][3]\ : std_logic;
SIGNAL \Add5~45_sumout\ : std_logic;
SIGNAL \e_del[1][2]~q\ : std_logic;
SIGNAL \e_lve[1][2]\ : std_logic;
SIGNAL \Add5~41_sumout\ : std_logic;
SIGNAL \e_del[1][1]~q\ : std_logic;
SIGNAL \e_del[0][1]\ : std_logic;
SIGNAL \e_lve[1][1]\ : std_logic;
SIGNAL \e_del[1][0]~q\ : std_logic;
SIGNAL \e_del[0][0]\ : std_logic;
SIGNAL \e_lve[1][0]\ : std_logic;
SIGNAL \Add6~66\ : std_logic;
SIGNAL \Add6~67\ : std_logic;
SIGNAL \Add6~62\ : std_logic;
SIGNAL \Add6~63\ : std_logic;
SIGNAL \Add6~42\ : std_logic;
SIGNAL \Add6~43\ : std_logic;
SIGNAL \Add6~46\ : std_logic;
SIGNAL \Add6~47\ : std_logic;
SIGNAL \Add6~50\ : std_logic;
SIGNAL \Add6~51\ : std_logic;
SIGNAL \Add6~54\ : std_logic;
SIGNAL \Add6~55\ : std_logic;
SIGNAL \Add6~58\ : std_logic;
SIGNAL \Add6~59\ : std_logic;
SIGNAL \Add6~38\ : std_logic;
SIGNAL \Add6~39\ : std_logic;
SIGNAL \Add6~1_sumout\ : std_logic;
SIGNAL \Add6~49_sumout\ : std_logic;
SIGNAL \Add6~57_sumout\ : std_logic;
SIGNAL \Add6~53_sumout\ : std_logic;
SIGNAL \Add6~37_sumout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \Add6~45_sumout\ : std_logic;
SIGNAL \Add6~61_sumout\ : std_logic;
SIGNAL \Add6~41_sumout\ : std_logic;
SIGNAL \Add6~65_sumout\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \e_del[1][15]~q\ : std_logic;
SIGNAL \e_lve[1][15]\ : std_logic;
SIGNAL \e_del[0][13]\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \e_lve[0][15]~q\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \e_lve[0][14]~q\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \e_lve[0][13]~q\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \e_lve[0][12]~q\ : std_logic;
SIGNAL \e_del[0][12]\ : std_logic;
SIGNAL \e_del[0][11]\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \e_lve[0][11]~q\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \e_lve[0][10]~feeder_combout\ : std_logic;
SIGNAL \e_lve[0][10]~q\ : std_logic;
SIGNAL \e_del[0][10]\ : std_logic;
SIGNAL \e_del[0][9]\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \e_lve[0][9]~q\ : std_logic;
SIGNAL \Add5~2\ : std_logic;
SIGNAL \Add5~6\ : std_logic;
SIGNAL \Add5~10\ : std_logic;
SIGNAL \Add5~14\ : std_logic;
SIGNAL \Add5~18\ : std_logic;
SIGNAL \Add5~22\ : std_logic;
SIGNAL \Add5~26\ : std_logic;
SIGNAL \Add5~30\ : std_logic;
SIGNAL \Add5~33_sumout\ : std_logic;
SIGNAL \Add5~29_sumout\ : std_logic;
SIGNAL \e_lve[1][14]\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~14\ : std_logic;
SIGNAL \Add3~18\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~25_sumout\ : std_logic;
SIGNAL \e_del[1][14]~q\ : std_logic;
SIGNAL \Add5~25_sumout\ : std_logic;
SIGNAL \Add3~21_sumout\ : std_logic;
SIGNAL \e_del[1][13]~q\ : std_logic;
SIGNAL \e_lve[1][13]\ : std_logic;
SIGNAL \Add5~21_sumout\ : std_logic;
SIGNAL \Add3~17_sumout\ : std_logic;
SIGNAL \e_del[1][12]~q\ : std_logic;
SIGNAL \Add5~17_sumout\ : std_logic;
SIGNAL \e_lve[1][12]\ : std_logic;
SIGNAL \e_lve[1][11]\ : std_logic;
SIGNAL \Add5~13_sumout\ : std_logic;
SIGNAL \Add3~13_sumout\ : std_logic;
SIGNAL \e_del[1][11]~q\ : std_logic;
SIGNAL \Add3~9_sumout\ : std_logic;
SIGNAL \e_del[1][10]~q\ : std_logic;
SIGNAL \e_lve[1][10]\ : std_logic;
SIGNAL \Add5~9_sumout\ : std_logic;
SIGNAL \Add3~5_sumout\ : std_logic;
SIGNAL \e_del[1][9]~q\ : std_logic;
SIGNAL \e_lve[1][9]\ : std_logic;
SIGNAL \Add5~5_sumout\ : std_logic;
SIGNAL \Add6~2\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~6\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~10\ : std_logic;
SIGNAL \Add6~11\ : std_logic;
SIGNAL \Add6~14\ : std_logic;
SIGNAL \Add6~15\ : std_logic;
SIGNAL \Add6~18\ : std_logic;
SIGNAL \Add6~19\ : std_logic;
SIGNAL \Add6~22\ : std_logic;
SIGNAL \Add6~23\ : std_logic;
SIGNAL \Add6~26\ : std_logic;
SIGNAL \Add6~27\ : std_logic;
SIGNAL \Add6~30\ : std_logic;
SIGNAL \Add6~31\ : std_logic;
SIGNAL \Add6~33_sumout\ : std_logic;
SIGNAL \Add7~38_cout\ : std_logic;
SIGNAL \Add7~1_sumout\ : std_logic;
SIGNAL \Add6~5_sumout\ : std_logic;
SIGNAL \Add7~2\ : std_logic;
SIGNAL \Add7~5_sumout\ : std_logic;
SIGNAL \Add6~9_sumout\ : std_logic;
SIGNAL \Add7~6\ : std_logic;
SIGNAL \Add7~9_sumout\ : std_logic;
SIGNAL \Add6~13_sumout\ : std_logic;
SIGNAL \Add7~10\ : std_logic;
SIGNAL \Add7~13_sumout\ : std_logic;
SIGNAL \Add6~17_sumout\ : std_logic;
SIGNAL \Add7~14\ : std_logic;
SIGNAL \Add7~17_sumout\ : std_logic;
SIGNAL \Add6~21_sumout\ : std_logic;
SIGNAL \Add7~18\ : std_logic;
SIGNAL \Add7~21_sumout\ : std_logic;
SIGNAL \Add6~25_sumout\ : std_logic;
SIGNAL \Add7~22\ : std_logic;
SIGNAL \Add7~25_sumout\ : std_logic;
SIGNAL \Add6~29_sumout\ : std_logic;
SIGNAL \Add7~26\ : std_logic;
SIGNAL \Add7~29_sumout\ : std_logic;
SIGNAL \Add7~30\ : std_logic;
SIGNAL \Add7~33_sumout\ : std_logic;
SIGNAL y : std_logic_vector(16 DOWNTO 0);
SIGNAL \ALT_INV_Add5~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_e_del[0][13]\ : std_logic;
SIGNAL \ALT_INV_e_del[0][12]\ : std_logic;
SIGNAL \ALT_INV_e_del[0][11]\ : std_logic;
SIGNAL \ALT_INV_e_del[0][10]\ : std_logic;
SIGNAL \ALT_INV_e_del[0][9]\ : std_logic;
SIGNAL \ALT_INV_e_del[0][8]\ : std_logic;
SIGNAL \ALT_INV_e_del[0][7]\ : std_logic;
SIGNAL \ALT_INV_e_del[0][6]\ : std_logic;
SIGNAL \ALT_INV_e_del[0][5]\ : std_logic;
SIGNAL \ALT_INV_e_del[0][4]\ : std_logic;
SIGNAL \ALT_INV_e_del[0][3]\ : std_logic;
SIGNAL \ALT_INV_e_del[0][2]\ : std_logic;
SIGNAL \ALT_INV_e_del[0][1]\ : std_logic;
SIGNAL \ALT_INV_e_del[0][0]\ : std_logic;
SIGNAL \ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~41_sumout\ : std_logic;
SIGNAL \ALT_INV_e_lve[1][15]\ : std_logic;
SIGNAL \ALT_INV_e_lve[1][14]\ : std_logic;
SIGNAL \ALT_INV_e_lve[1][13]\ : std_logic;
SIGNAL \ALT_INV_e_lve[1][12]\ : std_logic;
SIGNAL \ALT_INV_e_lve[1][11]\ : std_logic;
SIGNAL \ALT_INV_e_lve[1][10]\ : std_logic;
SIGNAL \ALT_INV_e_lve[1][9]\ : std_logic;
SIGNAL \ALT_INV_e_lve[1][8]\ : std_logic;
SIGNAL \ALT_INV_e_lve[1][7]\ : std_logic;
SIGNAL \ALT_INV_e_lve[1][6]\ : std_logic;
SIGNAL \ALT_INV_e_lve[1][5]\ : std_logic;
SIGNAL \ALT_INV_e_lve[1][4]\ : std_logic;
SIGNAL \ALT_INV_e_lve[1][3]\ : std_logic;
SIGNAL \ALT_INV_e_lve[1][2]\ : std_logic;
SIGNAL \ALT_INV_e_lve[1][1]\ : std_logic;
SIGNAL \ALT_INV_e_lve[1][0]\ : std_logic;
SIGNAL \ALT_INV_Add5~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~29_sumout\ : std_logic;
SIGNAL \ALT_INV_x_in[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_x_in[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_x_in[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_x_in[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_x_in[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_x_in[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_x_in[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_x_in[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_e_reg[1][6]~q\ : std_logic;
SIGNAL \ALT_INV_e_reg[1][5]~q\ : std_logic;
SIGNAL \ALT_INV_e_reg[1][0]~q\ : std_logic;
SIGNAL \ALT_INV_e_reg[1][1]~q\ : std_logic;
SIGNAL \ALT_INV_e_reg[1][4]~q\ : std_logic;
SIGNAL \ALT_INV_e_reg[1][2]~q\ : std_logic;
SIGNAL \ALT_INV_e_reg[1][3]~q\ : std_logic;
SIGNAL \ALT_INV_e_reg[1][7]~q\ : std_logic;
SIGNAL \ALT_INV_e_lve[0][6]~q\ : std_logic;
SIGNAL \ALT_INV_e_lve[0][5]~q\ : std_logic;
SIGNAL \ALT_INV_e_lve[0][4]~q\ : std_logic;
SIGNAL \ALT_INV_e_lve[0][3]~q\ : std_logic;
SIGNAL \ALT_INV_e_lve[0][2]~q\ : std_logic;
SIGNAL \ALT_INV_filter_sep[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_filter_sep[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_e_lve[0][7]~q\ : std_logic;
SIGNAL \ALT_INV_e_lve[0][15]~q\ : std_logic;
SIGNAL \ALT_INV_e_lve[0][14]~q\ : std_logic;
SIGNAL \ALT_INV_e_lve[0][13]~q\ : std_logic;
SIGNAL \ALT_INV_e_lve[0][12]~q\ : std_logic;
SIGNAL \ALT_INV_e_lve[0][11]~q\ : std_logic;
SIGNAL \ALT_INV_e_lve[0][10]~q\ : std_logic;
SIGNAL \ALT_INV_e_lve[0][9]~q\ : std_logic;
SIGNAL \ALT_INV_e_del[1][0]~q\ : std_logic;
SIGNAL \ALT_INV_e_del[1][1]~q\ : std_logic;
SIGNAL \ALT_INV_e_del[1][6]~q\ : std_logic;
SIGNAL \ALT_INV_e_del[1][5]~q\ : std_logic;
SIGNAL \ALT_INV_e_del[1][4]~q\ : std_logic;
SIGNAL \ALT_INV_e_del[1][3]~q\ : std_logic;
SIGNAL \ALT_INV_e_del[1][2]~q\ : std_logic;
SIGNAL \ALT_INV_e_del[1][7]~q\ : std_logic;
SIGNAL \ALT_INV_e_lve[0][8]~q\ : std_logic;
SIGNAL \ALT_INV_e_del[1][15]~q\ : std_logic;
SIGNAL \ALT_INV_e_del[1][14]~q\ : std_logic;
SIGNAL \ALT_INV_e_del[1][13]~q\ : std_logic;
SIGNAL \ALT_INV_e_del[1][12]~q\ : std_logic;
SIGNAL \ALT_INV_e_del[1][11]~q\ : std_logic;
SIGNAL \ALT_INV_e_del[1][10]~q\ : std_logic;
SIGNAL \ALT_INV_e_del[1][9]~q\ : std_logic;
SIGNAL \ALT_INV_e_del[1][8]~q\ : std_logic;
SIGNAL \ALT_INV_WideOr0~combout\ : std_logic;
SIGNAL ALT_INV_y : std_logic_vector(16 DOWNTO 0);
SIGNAL \ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \ALT_INV_state~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_x_in <= x_in;
y_out <= ww_y_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult0~8_ACLR_bus\ <= (gnd & gnd);

\Mult0~8_CLK_bus\ <= (gnd & \clk~inputCLKENA0_outclk\ & \clk~inputCLKENA0_outclk\);

\Mult0~8_ENA_bus\ <= (vcc & NOT \reset~input_o\ & \e_del[1][11]~0_combout\);

\Mult0~8_AX_bus\ <= (vcc & vcc & gnd & vcc & gnd & vcc & vcc & gnd);

\Mult0~8_AY_bus\ <= (\x_in[7]~input_o\ & \x_in[7]~input_o\ & \x_in[6]~input_o\ & \x_in[5]~input_o\ & \x_in[4]~input_o\ & \x_in[3]~input_o\ & \x_in[2]~input_o\ & \x_in[1]~input_o\ & \x_in[0]~input_o\);

\Mult0~8_BY_bus\ <= (\x_in[7]~input_o\ & \x_in[7]~input_o\ & \x_in[7]~input_o\ & \x_in[7]~input_o\ & \x_in[7]~input_o\ & \x_in[7]~input_o\ & \x_in[7]~input_o\ & \x_in[7]~input_o\ & \x_in[7]~input_o\);

\e_lve[1][0]\ <= \Mult0~8_RESULTA_bus\(0);
\e_lve[1][1]\ <= \Mult0~8_RESULTA_bus\(1);
\e_lve[1][2]\ <= \Mult0~8_RESULTA_bus\(2);
\e_lve[1][3]\ <= \Mult0~8_RESULTA_bus\(3);
\e_lve[1][4]\ <= \Mult0~8_RESULTA_bus\(4);
\e_lve[1][5]\ <= \Mult0~8_RESULTA_bus\(5);
\e_lve[1][6]\ <= \Mult0~8_RESULTA_bus\(6);
\e_lve[1][7]\ <= \Mult0~8_RESULTA_bus\(7);
\e_lve[1][8]\ <= \Mult0~8_RESULTA_bus\(8);
\e_lve[1][9]\ <= \Mult0~8_RESULTA_bus\(9);
\e_lve[1][10]\ <= \Mult0~8_RESULTA_bus\(10);
\e_lve[1][11]\ <= \Mult0~8_RESULTA_bus\(11);
\e_lve[1][12]\ <= \Mult0~8_RESULTA_bus\(12);
\e_lve[1][13]\ <= \Mult0~8_RESULTA_bus\(13);
\e_lve[1][14]\ <= \Mult0~8_RESULTA_bus\(14);
\e_lve[1][15]\ <= \Mult0~8_RESULTA_bus\(15);
\Mult0~24\ <= \Mult0~8_RESULTA_bus\(16);
\Mult0~25\ <= \Mult0~8_RESULTA_bus\(17);
\Mult0~26\ <= \Mult0~8_RESULTA_bus\(18);
\Mult0~27\ <= \Mult0~8_RESULTA_bus\(19);
\Mult0~28\ <= \Mult0~8_RESULTA_bus\(20);
\Mult0~29\ <= \Mult0~8_RESULTA_bus\(21);
\Mult0~30\ <= \Mult0~8_RESULTA_bus\(22);
\Mult0~31\ <= \Mult0~8_RESULTA_bus\(23);
\Mult0~32\ <= \Mult0~8_RESULTA_bus\(24);
\Mult0~33\ <= \Mult0~8_RESULTA_bus\(25);
\Mult0~34\ <= \Mult0~8_RESULTA_bus\(26);
\Mult0~35\ <= \Mult0~8_RESULTA_bus\(27);
\Mult0~36\ <= \Mult0~8_RESULTA_bus\(28);
\Mult0~37\ <= \Mult0~8_RESULTA_bus\(29);
\Mult0~38\ <= \Mult0~8_RESULTA_bus\(30);
\Mult0~39\ <= \Mult0~8_RESULTA_bus\(31);
\Mult0~40\ <= \Mult0~8_RESULTA_bus\(32);
\Mult0~41\ <= \Mult0~8_RESULTA_bus\(33);
\Mult0~42\ <= \Mult0~8_RESULTA_bus\(34);
\Mult0~43\ <= \Mult0~8_RESULTA_bus\(35);
\Mult0~44\ <= \Mult0~8_RESULTA_bus\(36);
\Mult0~45\ <= \Mult0~8_RESULTA_bus\(37);
\Mult0~46\ <= \Mult0~8_RESULTA_bus\(38);
\Mult0~47\ <= \Mult0~8_RESULTA_bus\(39);
\Mult0~48\ <= \Mult0~8_RESULTA_bus\(40);
\Mult0~49\ <= \Mult0~8_RESULTA_bus\(41);
\Mult0~50\ <= \Mult0~8_RESULTA_bus\(42);
\Mult0~51\ <= \Mult0~8_RESULTA_bus\(43);
\Mult0~52\ <= \Mult0~8_RESULTA_bus\(44);
\Mult0~53\ <= \Mult0~8_RESULTA_bus\(45);
\Mult0~54\ <= \Mult0~8_RESULTA_bus\(46);
\Mult0~55\ <= \Mult0~8_RESULTA_bus\(47);
\Mult0~56\ <= \Mult0~8_RESULTA_bus\(48);
\Mult0~57\ <= \Mult0~8_RESULTA_bus\(49);
\Mult0~58\ <= \Mult0~8_RESULTA_bus\(50);
\Mult0~59\ <= \Mult0~8_RESULTA_bus\(51);
\Mult0~60\ <= \Mult0~8_RESULTA_bus\(52);
\Mult0~61\ <= \Mult0~8_RESULTA_bus\(53);
\Mult0~62\ <= \Mult0~8_RESULTA_bus\(54);
\Mult0~63\ <= \Mult0~8_RESULTA_bus\(55);
\Mult0~64\ <= \Mult0~8_RESULTA_bus\(56);
\Mult0~65\ <= \Mult0~8_RESULTA_bus\(57);
\Mult0~66\ <= \Mult0~8_RESULTA_bus\(58);
\Mult0~67\ <= \Mult0~8_RESULTA_bus\(59);
\Mult0~68\ <= \Mult0~8_RESULTA_bus\(60);
\Mult0~69\ <= \Mult0~8_RESULTA_bus\(61);
\Mult0~70\ <= \Mult0~8_RESULTA_bus\(62);
\Mult0~71\ <= \Mult0~8_RESULTA_bus\(63);

\Mult1~8_ACLR_bus\ <= (gnd & \reset~input_o\);

\Mult1~8_CLK_bus\ <= (gnd & \clk~inputCLKENA0_outclk\ & \clk~inputCLKENA0_outclk\);

\Mult1~8_ENA_bus\ <= (vcc & \e_del[1][11]~0_combout\ & NOT \state~q\);

\Mult1~8_AX_bus\ <= (\x_in[7]~input_o\ & \x_in[7]~input_o\ & \x_in[6]~input_o\ & \x_in[5]~input_o\ & \x_in[4]~input_o\ & \x_in[3]~input_o\ & \x_in[2]~input_o\ & \x_in[1]~input_o\ & \x_in[0]~input_o\);

\Mult1~8_AY_bus\ <= (vcc & vcc & vcc & gnd & gnd & vcc);

\Mult1~8_BX_bus\ <= (\x_in[7]~input_o\ & \x_in[7]~input_o\ & \x_in[7]~input_o\ & \x_in[7]~input_o\ & \x_in[7]~input_o\ & \x_in[7]~input_o\ & \x_in[7]~input_o\ & \x_in[7]~input_o\ & \x_in[7]~input_o\);

\e_del[0][0]\ <= \Mult1~8_RESULTA_bus\(0);
\e_del[0][1]\ <= \Mult1~8_RESULTA_bus\(1);
\e_del[0][2]\ <= \Mult1~8_RESULTA_bus\(2);
\e_del[0][3]\ <= \Mult1~8_RESULTA_bus\(3);
\e_del[0][4]\ <= \Mult1~8_RESULTA_bus\(4);
\e_del[0][5]\ <= \Mult1~8_RESULTA_bus\(5);
\e_del[0][6]\ <= \Mult1~8_RESULTA_bus\(6);
\e_del[0][7]\ <= \Mult1~8_RESULTA_bus\(7);
\e_del[0][8]\ <= \Mult1~8_RESULTA_bus\(8);
\e_del[0][9]\ <= \Mult1~8_RESULTA_bus\(9);
\e_del[0][10]\ <= \Mult1~8_RESULTA_bus\(10);
\e_del[0][11]\ <= \Mult1~8_RESULTA_bus\(11);
\e_del[0][12]\ <= \Mult1~8_RESULTA_bus\(12);
\e_del[0][13]\ <= \Mult1~8_RESULTA_bus\(13);
\Mult1~22\ <= \Mult1~8_RESULTA_bus\(14);
\Mult1~23\ <= \Mult1~8_RESULTA_bus\(15);
\Mult1~24\ <= \Mult1~8_RESULTA_bus\(16);
\Mult1~25\ <= \Mult1~8_RESULTA_bus\(17);
\Mult1~26\ <= \Mult1~8_RESULTA_bus\(18);
\Mult1~27\ <= \Mult1~8_RESULTA_bus\(19);
\Mult1~28\ <= \Mult1~8_RESULTA_bus\(20);
\Mult1~29\ <= \Mult1~8_RESULTA_bus\(21);
\Mult1~30\ <= \Mult1~8_RESULTA_bus\(22);
\Mult1~31\ <= \Mult1~8_RESULTA_bus\(23);
\Mult1~32\ <= \Mult1~8_RESULTA_bus\(24);
\Mult1~33\ <= \Mult1~8_RESULTA_bus\(25);
\Mult1~34\ <= \Mult1~8_RESULTA_bus\(26);
\Mult1~35\ <= \Mult1~8_RESULTA_bus\(27);
\Mult1~36\ <= \Mult1~8_RESULTA_bus\(28);
\Mult1~37\ <= \Mult1~8_RESULTA_bus\(29);
\Mult1~38\ <= \Mult1~8_RESULTA_bus\(30);
\Mult1~39\ <= \Mult1~8_RESULTA_bus\(31);
\Mult1~40\ <= \Mult1~8_RESULTA_bus\(32);
\Mult1~41\ <= \Mult1~8_RESULTA_bus\(33);
\Mult1~42\ <= \Mult1~8_RESULTA_bus\(34);
\Mult1~43\ <= \Mult1~8_RESULTA_bus\(35);
\Mult1~44\ <= \Mult1~8_RESULTA_bus\(36);
\Mult1~45\ <= \Mult1~8_RESULTA_bus\(37);
\Mult1~46\ <= \Mult1~8_RESULTA_bus\(38);
\Mult1~47\ <= \Mult1~8_RESULTA_bus\(39);
\Mult1~48\ <= \Mult1~8_RESULTA_bus\(40);
\Mult1~49\ <= \Mult1~8_RESULTA_bus\(41);
\Mult1~50\ <= \Mult1~8_RESULTA_bus\(42);
\Mult1~51\ <= \Mult1~8_RESULTA_bus\(43);
\Mult1~52\ <= \Mult1~8_RESULTA_bus\(44);
\Mult1~53\ <= \Mult1~8_RESULTA_bus\(45);
\Mult1~54\ <= \Mult1~8_RESULTA_bus\(46);
\Mult1~55\ <= \Mult1~8_RESULTA_bus\(47);
\Mult1~56\ <= \Mult1~8_RESULTA_bus\(48);
\Mult1~57\ <= \Mult1~8_RESULTA_bus\(49);
\Mult1~58\ <= \Mult1~8_RESULTA_bus\(50);
\Mult1~59\ <= \Mult1~8_RESULTA_bus\(51);
\Mult1~60\ <= \Mult1~8_RESULTA_bus\(52);
\Mult1~61\ <= \Mult1~8_RESULTA_bus\(53);
\Mult1~62\ <= \Mult1~8_RESULTA_bus\(54);
\Mult1~63\ <= \Mult1~8_RESULTA_bus\(55);
\Mult1~64\ <= \Mult1~8_RESULTA_bus\(56);
\Mult1~65\ <= \Mult1~8_RESULTA_bus\(57);
\Mult1~66\ <= \Mult1~8_RESULTA_bus\(58);
\Mult1~67\ <= \Mult1~8_RESULTA_bus\(59);
\Mult1~68\ <= \Mult1~8_RESULTA_bus\(60);
\Mult1~69\ <= \Mult1~8_RESULTA_bus\(61);
\Mult1~70\ <= \Mult1~8_RESULTA_bus\(62);
\Mult1~71\ <= \Mult1~8_RESULTA_bus\(63);
\ALT_INV_Add5~25_sumout\ <= NOT \Add5~25_sumout\;
\ALT_INV_Add5~21_sumout\ <= NOT \Add5~21_sumout\;
\ALT_INV_Add5~17_sumout\ <= NOT \Add5~17_sumout\;
\ALT_INV_Add5~13_sumout\ <= NOT \Add5~13_sumout\;
\ALT_INV_Add5~9_sumout\ <= NOT \Add5~9_sumout\;
\ALT_INV_Add5~5_sumout\ <= NOT \Add5~5_sumout\;
\ALT_INV_Add5~1_sumout\ <= NOT \Add5~1_sumout\;
\ALT_INV_Add2~33_sumout\ <= NOT \Add2~33_sumout\;
\ALT_INV_Add2~29_sumout\ <= NOT \Add2~29_sumout\;
\ALT_INV_Add2~25_sumout\ <= NOT \Add2~25_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add2~21_sumout\ <= NOT \Add2~21_sumout\;
\ALT_INV_Add2~17_sumout\ <= NOT \Add2~17_sumout\;
\ALT_INV_Add2~13_sumout\ <= NOT \Add2~13_sumout\;
\ALT_INV_Add2~9_sumout\ <= NOT \Add2~9_sumout\;
\ALT_INV_Add2~5_sumout\ <= NOT \Add2~5_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
\ALT_INV_e_del[0][13]\ <= NOT \e_del[0][13]\;
\ALT_INV_e_del[0][12]\ <= NOT \e_del[0][12]\;
\ALT_INV_e_del[0][11]\ <= NOT \e_del[0][11]\;
\ALT_INV_e_del[0][10]\ <= NOT \e_del[0][10]\;
\ALT_INV_e_del[0][9]\ <= NOT \e_del[0][9]\;
\ALT_INV_e_del[0][8]\ <= NOT \e_del[0][8]\;
\ALT_INV_e_del[0][7]\ <= NOT \e_del[0][7]\;
\ALT_INV_e_del[0][6]\ <= NOT \e_del[0][6]\;
\ALT_INV_e_del[0][5]\ <= NOT \e_del[0][5]\;
\ALT_INV_e_del[0][4]\ <= NOT \e_del[0][4]\;
\ALT_INV_e_del[0][3]\ <= NOT \e_del[0][3]\;
\ALT_INV_e_del[0][2]\ <= NOT \e_del[0][2]\;
\ALT_INV_e_del[0][1]\ <= NOT \e_del[0][1]\;
\ALT_INV_e_del[0][0]\ <= NOT \e_del[0][0]\;
\ALT_INV_Add2~1_sumout\ <= NOT \Add2~1_sumout\;
\ALT_INV_Add5~57_sumout\ <= NOT \Add5~57_sumout\;
\ALT_INV_Add5~53_sumout\ <= NOT \Add5~53_sumout\;
\ALT_INV_Add5~49_sumout\ <= NOT \Add5~49_sumout\;
\ALT_INV_Add5~45_sumout\ <= NOT \Add5~45_sumout\;
\ALT_INV_Add5~41_sumout\ <= NOT \Add5~41_sumout\;
\ALT_INV_e_lve[1][15]\ <= NOT \e_lve[1][15]\;
\ALT_INV_e_lve[1][14]\ <= NOT \e_lve[1][14]\;
\ALT_INV_e_lve[1][13]\ <= NOT \e_lve[1][13]\;
\ALT_INV_e_lve[1][12]\ <= NOT \e_lve[1][12]\;
\ALT_INV_e_lve[1][11]\ <= NOT \e_lve[1][11]\;
\ALT_INV_e_lve[1][10]\ <= NOT \e_lve[1][10]\;
\ALT_INV_e_lve[1][9]\ <= NOT \e_lve[1][9]\;
\ALT_INV_e_lve[1][8]\ <= NOT \e_lve[1][8]\;
\ALT_INV_e_lve[1][7]\ <= NOT \e_lve[1][7]\;
\ALT_INV_e_lve[1][6]\ <= NOT \e_lve[1][6]\;
\ALT_INV_e_lve[1][5]\ <= NOT \e_lve[1][5]\;
\ALT_INV_e_lve[1][4]\ <= NOT \e_lve[1][4]\;
\ALT_INV_e_lve[1][3]\ <= NOT \e_lve[1][3]\;
\ALT_INV_e_lve[1][2]\ <= NOT \e_lve[1][2]\;
\ALT_INV_e_lve[1][1]\ <= NOT \e_lve[1][1]\;
\ALT_INV_e_lve[1][0]\ <= NOT \e_lve[1][0]\;
\ALT_INV_Add5~37_sumout\ <= NOT \Add5~37_sumout\;
\ALT_INV_Add5~33_sumout\ <= NOT \Add5~33_sumout\;
\ALT_INV_Add5~29_sumout\ <= NOT \Add5~29_sumout\;
\ALT_INV_x_in[7]~input_o\ <= NOT \x_in[7]~input_o\;
\ALT_INV_x_in[5]~input_o\ <= NOT \x_in[5]~input_o\;
\ALT_INV_x_in[4]~input_o\ <= NOT \x_in[4]~input_o\;
\ALT_INV_x_in[3]~input_o\ <= NOT \x_in[3]~input_o\;
\ALT_INV_x_in[2]~input_o\ <= NOT \x_in[2]~input_o\;
\ALT_INV_x_in[0]~input_o\ <= NOT \x_in[0]~input_o\;
\ALT_INV_x_in[1]~input_o\ <= NOT \x_in[1]~input_o\;
\ALT_INV_x_in[6]~input_o\ <= NOT \x_in[6]~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_e_reg[1][6]~q\ <= NOT \e_reg[1][6]~q\;
\ALT_INV_e_reg[1][5]~q\ <= NOT \e_reg[1][5]~q\;
\ALT_INV_e_reg[1][0]~q\ <= NOT \e_reg[1][0]~q\;
\ALT_INV_e_reg[1][1]~q\ <= NOT \e_reg[1][1]~q\;
\ALT_INV_e_reg[1][4]~q\ <= NOT \e_reg[1][4]~q\;
\ALT_INV_e_reg[1][2]~q\ <= NOT \e_reg[1][2]~q\;
\ALT_INV_e_reg[1][3]~q\ <= NOT \e_reg[1][3]~q\;
\ALT_INV_e_reg[1][7]~q\ <= NOT \e_reg[1][7]~q\;
\ALT_INV_e_lve[0][6]~q\ <= NOT \e_lve[0][6]~q\;
\ALT_INV_e_lve[0][5]~q\ <= NOT \e_lve[0][5]~q\;
\ALT_INV_e_lve[0][4]~q\ <= NOT \e_lve[0][4]~q\;
\ALT_INV_e_lve[0][3]~q\ <= NOT \e_lve[0][3]~q\;
\ALT_INV_e_lve[0][2]~q\ <= NOT \e_lve[0][2]~q\;
\ALT_INV_filter_sep[7]~_Duplicate_1_q\ <= NOT \filter_sep[7]~_Duplicate_1_q\;
\ALT_INV_filter_sep[4]~_Duplicate_1_q\ <= NOT \filter_sep[4]~_Duplicate_1_q\;
\ALT_INV_e_lve[0][7]~q\ <= NOT \e_lve[0][7]~q\;
\ALT_INV_e_lve[0][15]~q\ <= NOT \e_lve[0][15]~q\;
\ALT_INV_e_lve[0][14]~q\ <= NOT \e_lve[0][14]~q\;
\ALT_INV_e_lve[0][13]~q\ <= NOT \e_lve[0][13]~q\;
\ALT_INV_e_lve[0][12]~q\ <= NOT \e_lve[0][12]~q\;
\ALT_INV_e_lve[0][11]~q\ <= NOT \e_lve[0][11]~q\;
\ALT_INV_e_lve[0][10]~q\ <= NOT \e_lve[0][10]~q\;
\ALT_INV_e_lve[0][9]~q\ <= NOT \e_lve[0][9]~q\;
\ALT_INV_e_del[1][0]~q\ <= NOT \e_del[1][0]~q\;
\ALT_INV_e_del[1][1]~q\ <= NOT \e_del[1][1]~q\;
\ALT_INV_e_del[1][6]~q\ <= NOT \e_del[1][6]~q\;
\ALT_INV_e_del[1][5]~q\ <= NOT \e_del[1][5]~q\;
\ALT_INV_e_del[1][4]~q\ <= NOT \e_del[1][4]~q\;
\ALT_INV_e_del[1][3]~q\ <= NOT \e_del[1][3]~q\;
\ALT_INV_e_del[1][2]~q\ <= NOT \e_del[1][2]~q\;
\ALT_INV_e_del[1][7]~q\ <= NOT \e_del[1][7]~q\;
\ALT_INV_e_lve[0][8]~q\ <= NOT \e_lve[0][8]~q\;
\ALT_INV_e_del[1][15]~q\ <= NOT \e_del[1][15]~q\;
\ALT_INV_e_del[1][14]~q\ <= NOT \e_del[1][14]~q\;
\ALT_INV_e_del[1][13]~q\ <= NOT \e_del[1][13]~q\;
\ALT_INV_e_del[1][12]~q\ <= NOT \e_del[1][12]~q\;
\ALT_INV_e_del[1][11]~q\ <= NOT \e_del[1][11]~q\;
\ALT_INV_e_del[1][10]~q\ <= NOT \e_del[1][10]~q\;
\ALT_INV_e_del[1][9]~q\ <= NOT \e_del[1][9]~q\;
\ALT_INV_e_del[1][8]~q\ <= NOT \e_del[1][8]~q\;
\ALT_INV_WideOr0~combout\ <= NOT \WideOr0~combout\;
ALT_INV_y(0) <= NOT y(0);
ALT_INV_y(1) <= NOT y(1);
\ALT_INV_WideOr0~0_combout\ <= NOT \WideOr0~0_combout\;
ALT_INV_y(6) <= NOT y(6);
ALT_INV_y(7) <= NOT y(7);
ALT_INV_y(5) <= NOT y(5);
ALT_INV_y(4) <= NOT y(4);
ALT_INV_y(3) <= NOT y(3);
ALT_INV_y(2) <= NOT y(2);
\ALT_INV_state~q\ <= NOT \state~q\;
ALT_INV_y(16) <= NOT y(16);
ALT_INV_y(15) <= NOT y(15);
ALT_INV_y(14) <= NOT y(14);
ALT_INV_y(13) <= NOT y(13);
ALT_INV_y(12) <= NOT y(12);
ALT_INV_y(11) <= NOT y(11);
ALT_INV_y(10) <= NOT y(10);
ALT_INV_y(9) <= NOT y(9);
ALT_INV_y(8) <= NOT y(8);

-- Location: IOOBUF_X82_Y0_N76
\y_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~1_sumout\,
	devoe => ww_devoe,
	o => ww_y_out(0));

-- Location: IOOBUF_X84_Y0_N36
\y_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~5_sumout\,
	devoe => ww_devoe,
	o => ww_y_out(1));

-- Location: IOOBUF_X82_Y0_N59
\y_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~9_sumout\,
	devoe => ww_devoe,
	o => ww_y_out(2));

-- Location: IOOBUF_X82_Y0_N42
\y_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~13_sumout\,
	devoe => ww_devoe,
	o => ww_y_out(3));

-- Location: IOOBUF_X84_Y0_N53
\y_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~17_sumout\,
	devoe => ww_devoe,
	o => ww_y_out(4));

-- Location: IOOBUF_X82_Y0_N93
\y_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~21_sumout\,
	devoe => ww_devoe,
	o => ww_y_out(5));

-- Location: IOOBUF_X84_Y0_N19
\y_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~25_sumout\,
	devoe => ww_devoe,
	o => ww_y_out(6));

-- Location: IOOBUF_X84_Y0_N2
\y_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~29_sumout\,
	devoe => ww_devoe,
	o => ww_y_out(7));

-- Location: IOOBUF_X80_Y0_N53
\y_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~33_sumout\,
	devoe => ww_devoe,
	o => ww_y_out(8));

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

-- Location: IOIBUF_X86_Y0_N1
\x_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(6),
	o => \x_in[6]~input_o\);

-- Location: IOIBUF_X89_Y4_N78
\x_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(1),
	o => \x_in[1]~input_o\);

-- Location: IOIBUF_X89_Y4_N61
\x_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(0),
	o => \x_in[0]~input_o\);

-- Location: IOIBUF_X89_Y4_N44
\x_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(5),
	o => \x_in[5]~input_o\);

-- Location: IOIBUF_X89_Y4_N95
\x_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(4),
	o => \x_in[4]~input_o\);

-- Location: IOIBUF_X86_Y0_N18
\x_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(3),
	o => \x_in[3]~input_o\);

-- Location: IOIBUF_X86_Y0_N35
\x_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(2),
	o => \x_in[2]~input_o\);

-- Location: MLABCELL_X87_Y2_N0
\Add0~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~54_cout\ = CARRY(( \x_in[0]~input_o\ ) + ( !VCC ) + ( !VCC ))
-- \Add0~55\ = SHARE(!\x_in[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000011001100110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x_in[0]~input_o\,
	cin => GND,
	sharein => GND,
	cout => \Add0~54_cout\,
	shareout => \Add0~55\);

-- Location: MLABCELL_X87_Y2_N3
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( !\x_in[1]~input_o\ ) + ( \Add0~55\ ) + ( \Add0~54_cout\ ))
-- \Add0~38\ = CARRY(( !\x_in[1]~input_o\ ) + ( \Add0~55\ ) + ( \Add0~54_cout\ ))
-- \Add0~39\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x_in[1]~input_o\,
	cin => \Add0~54_cout\,
	sharein => \Add0~55\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\,
	shareout => \Add0~39\);

-- Location: MLABCELL_X87_Y2_N6
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( !\x_in[2]~input_o\ ) + ( \Add0~39\ ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( !\x_in[2]~input_o\ ) + ( \Add0~39\ ) + ( \Add0~38\ ))
-- \Add0~43\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x_in[2]~input_o\,
	cin => \Add0~38\,
	sharein => \Add0~39\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\,
	shareout => \Add0~43\);

-- Location: MLABCELL_X87_Y2_N9
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( !\x_in[3]~input_o\ ) + ( \Add0~43\ ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( !\x_in[3]~input_o\ ) + ( \Add0~43\ ) + ( \Add0~42\ ))
-- \Add0~47\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x_in[3]~input_o\,
	cin => \Add0~42\,
	sharein => \Add0~43\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\,
	shareout => \Add0~47\);

-- Location: MLABCELL_X87_Y2_N12
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( !\x_in[4]~input_o\ ) + ( \Add0~47\ ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( !\x_in[4]~input_o\ ) + ( \Add0~47\ ) + ( \Add0~46\ ))
-- \Add0~51\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x_in[4]~input_o\,
	cin => \Add0~46\,
	sharein => \Add0~47\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\,
	shareout => \Add0~51\);

-- Location: MLABCELL_X87_Y2_N15
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( !\x_in[0]~input_o\ $ (\x_in[5]~input_o\) ) + ( \Add0~51\ ) + ( \Add0~50\ ))
-- \Add0~34\ = CARRY(( !\x_in[0]~input_o\ $ (\x_in[5]~input_o\) ) + ( \Add0~51\ ) + ( \Add0~50\ ))
-- \Add0~35\ = SHARE((\x_in[0]~input_o\ & !\x_in[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x_in[0]~input_o\,
	datac => \ALT_INV_x_in[5]~input_o\,
	cin => \Add0~50\,
	sharein => \Add0~51\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\,
	shareout => \Add0~35\);

-- Location: MLABCELL_X87_Y2_N18
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( !\x_in[6]~input_o\ $ (\x_in[1]~input_o\) ) + ( \Add0~35\ ) + ( \Add0~34\ ))
-- \Add0~2\ = CARRY(( !\x_in[6]~input_o\ $ (\x_in[1]~input_o\) ) + ( \Add0~35\ ) + ( \Add0~34\ ))
-- \Add0~3\ = SHARE((!\x_in[6]~input_o\ & \x_in[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x_in[6]~input_o\,
	datac => \ALT_INV_x_in[1]~input_o\,
	cin => \Add0~34\,
	sharein => \Add0~35\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\,
	shareout => \Add0~3\);

-- Location: LABCELL_X85_Y2_N48
\e_lve[0][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \e_lve[0][8]~feeder_combout\ = ( \Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~1_sumout\,
	combout => \e_lve[0][8]~feeder_combout\);

-- Location: IOIBUF_X89_Y6_N21
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LABCELL_X85_Y3_N51
\state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~0_combout\ = ( !\state~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_state~q\,
	combout => \state~0_combout\);

-- Location: FF_X85_Y3_N53
state : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state~q\);

-- Location: LABCELL_X85_Y3_N30
\e_del[1][11]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \e_del[1][11]~0_combout\ = ( !\reset~input_o\ & ( !\state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_reset~input_o\,
	dataf => \ALT_INV_state~q\,
	combout => \e_del[1][11]~0_combout\);

-- Location: FF_X85_Y2_N50
\e_lve[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \e_lve[0][8]~feeder_combout\,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_lve[0][8]~q\);

-- Location: IOIBUF_X86_Y0_N52
\x_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(7),
	o => \x_in[7]~input_o\);

-- Location: DSP_X86_Y2_N0
\Mult1~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "0",
	ax_width => 9,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 6,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "0",
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
	output_clock => "1",
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
	aclr => \Mult1~8_ACLR_bus\,
	clk => \Mult1~8_CLK_bus\,
	ena => \Mult1~8_ENA_bus\,
	ax => \Mult1~8_AX_bus\,
	ay => \Mult1~8_AY_bus\,
	bx => \Mult1~8_BX_bus\,
	resulta => \Mult1~8_RESULTA_bus\);

-- Location: FF_X85_Y2_N59
\e_lve[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~33_sumout\,
	sload => VCC,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_lve[0][7]~q\);

-- Location: FF_X85_Y2_N23
\e_lve[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~49_sumout\,
	sload => VCC,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_lve[0][6]~q\);

-- Location: FF_X85_Y2_N11
\e_lve[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~45_sumout\,
	sload => VCC,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_lve[0][5]~q\);

-- Location: FF_X85_Y2_N2
\e_lve[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~41_sumout\,
	sload => VCC,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_lve[0][4]~q\);

-- Location: FF_X85_Y2_N5
\e_lve[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~37_sumout\,
	sload => VCC,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_lve[0][3]~q\);

-- Location: FF_X85_Y2_N17
\e_lve[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x_in[0]~input_o\,
	sload => VCC,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_lve[0][2]~q\);

-- Location: LABCELL_X85_Y2_N0
\Add5~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~41_sumout\ = SUM(( \e_del[0][2]\ ) + ( \e_lve[0][2]~q\ ) + ( !VCC ))
-- \Add5~42\ = CARRY(( \e_del[0][2]\ ) + ( \e_lve[0][2]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_e_lve[0][2]~q\,
	datac => \ALT_INV_e_del[0][2]\,
	cin => GND,
	sumout => \Add5~41_sumout\,
	cout => \Add5~42\);

-- Location: LABCELL_X85_Y2_N3
\Add5~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~45_sumout\ = SUM(( \e_del[0][3]\ ) + ( \e_lve[0][3]~q\ ) + ( \Add5~42\ ))
-- \Add5~46\ = CARRY(( \e_del[0][3]\ ) + ( \e_lve[0][3]~q\ ) + ( \Add5~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_e_lve[0][3]~q\,
	datad => \ALT_INV_e_del[0][3]\,
	cin => \Add5~42\,
	sumout => \Add5~45_sumout\,
	cout => \Add5~46\);

-- Location: LABCELL_X85_Y2_N6
\Add5~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~49_sumout\ = SUM(( \e_lve[0][4]~q\ ) + ( \e_del[0][4]\ ) + ( \Add5~46\ ))
-- \Add5~50\ = CARRY(( \e_lve[0][4]~q\ ) + ( \e_del[0][4]\ ) + ( \Add5~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_e_del[0][4]\,
	datad => \ALT_INV_e_lve[0][4]~q\,
	cin => \Add5~46\,
	sumout => \Add5~49_sumout\,
	cout => \Add5~50\);

-- Location: LABCELL_X85_Y2_N9
\Add5~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~53_sumout\ = SUM(( \e_del[0][5]\ ) + ( \e_lve[0][5]~q\ ) + ( \Add5~50\ ))
-- \Add5~54\ = CARRY(( \e_del[0][5]\ ) + ( \e_lve[0][5]~q\ ) + ( \Add5~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_e_lve[0][5]~q\,
	datac => \ALT_INV_e_del[0][5]\,
	cin => \Add5~50\,
	sumout => \Add5~53_sumout\,
	cout => \Add5~54\);

-- Location: LABCELL_X85_Y2_N12
\Add5~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~57_sumout\ = SUM(( \e_del[0][6]\ ) + ( \e_lve[0][6]~q\ ) + ( \Add5~54\ ))
-- \Add5~58\ = CARRY(( \e_del[0][6]\ ) + ( \e_lve[0][6]~q\ ) + ( \Add5~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_e_lve[0][6]~q\,
	datad => \ALT_INV_e_del[0][6]\,
	cin => \Add5~54\,
	sumout => \Add5~57_sumout\,
	cout => \Add5~58\);

-- Location: LABCELL_X85_Y2_N15
\Add5~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~37_sumout\ = SUM(( \e_del[0][7]\ ) + ( \e_lve[0][7]~q\ ) + ( \Add5~58\ ))
-- \Add5~38\ = CARRY(( \e_del[0][7]\ ) + ( \e_lve[0][7]~q\ ) + ( \Add5~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_e_lve[0][7]~q\,
	datad => \ALT_INV_e_del[0][7]\,
	cin => \Add5~58\,
	sumout => \Add5~37_sumout\,
	cout => \Add5~38\);

-- Location: LABCELL_X85_Y2_N18
\Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~1_sumout\ = SUM(( \e_del[0][8]\ ) + ( \e_lve[0][8]~q\ ) + ( \Add5~38\ ))
-- \Add5~2\ = CARRY(( \e_del[0][8]\ ) + ( \e_lve[0][8]~q\ ) + ( \Add5~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_e_lve[0][8]~q\,
	datad => \ALT_INV_e_del[0][8]\,
	cin => \Add5~38\,
	sumout => \Add5~1_sumout\,
	cout => \Add5~2\);

-- Location: LABCELL_X85_Y3_N39
\filter_sep[7]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \filter_sep[7]~_Duplicate_1feeder_combout\ = ( \x_in[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_x_in[7]~input_o\,
	combout => \filter_sep[7]~_Duplicate_1feeder_combout\);

-- Location: FF_X85_Y3_N41
\filter_sep[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \filter_sep[7]~_Duplicate_1feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter_sep[7]~_Duplicate_1_q\);

-- Location: LABCELL_X85_Y3_N6
\e_reg[1][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \e_reg[1][7]~feeder_combout\ = \filter_sep[7]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_filter_sep[7]~_Duplicate_1_q\,
	combout => \e_reg[1][7]~feeder_combout\);

-- Location: FF_X85_Y3_N8
\e_reg[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \e_reg[1][7]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_reg[1][7]~q\);

-- Location: LABCELL_X85_Y3_N24
\filter_sep[6]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \filter_sep[6]~_Duplicate_1feeder_combout\ = ( \x_in[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_x_in[6]~input_o\,
	combout => \filter_sep[6]~_Duplicate_1feeder_combout\);

-- Location: FF_X85_Y3_N26
\filter_sep[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \filter_sep[6]~_Duplicate_1feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter_sep[6]~_Duplicate_1_q\);

-- Location: FF_X85_Y3_N47
\e_reg[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \filter_sep[6]~_Duplicate_1_q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_reg[1][6]~q\);

-- Location: LABCELL_X85_Y3_N18
\filter_sep[5]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \filter_sep[5]~_Duplicate_1feeder_combout\ = ( \x_in[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_x_in[5]~input_o\,
	combout => \filter_sep[5]~_Duplicate_1feeder_combout\);

-- Location: FF_X85_Y3_N20
\filter_sep[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \filter_sep[5]~_Duplicate_1feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter_sep[5]~_Duplicate_1_q\);

-- Location: FF_X85_Y3_N44
\e_reg[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \filter_sep[5]~_Duplicate_1_q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_reg[1][5]~q\);

-- Location: LABCELL_X85_Y3_N21
\filter_sep[4]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \filter_sep[4]~_Duplicate_1feeder_combout\ = ( \x_in[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_x_in[4]~input_o\,
	combout => \filter_sep[4]~_Duplicate_1feeder_combout\);

-- Location: FF_X85_Y3_N22
\filter_sep[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \filter_sep[4]~_Duplicate_1feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter_sep[4]~_Duplicate_1_q\);

-- Location: LABCELL_X85_Y3_N15
\e_reg[1][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \e_reg[1][4]~feeder_combout\ = ( \filter_sep[4]~_Duplicate_1_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_filter_sep[4]~_Duplicate_1_q\,
	combout => \e_reg[1][4]~feeder_combout\);

-- Location: FF_X85_Y3_N17
\e_reg[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \e_reg[1][4]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_reg[1][4]~q\);

-- Location: LABCELL_X85_Y3_N0
\filter_sep[3]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \filter_sep[3]~_Duplicate_1feeder_combout\ = ( \x_in[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_x_in[3]~input_o\,
	combout => \filter_sep[3]~_Duplicate_1feeder_combout\);

-- Location: FF_X85_Y3_N2
\filter_sep[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \filter_sep[3]~_Duplicate_1feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter_sep[3]~_Duplicate_1_q\);

-- Location: FF_X85_Y3_N11
\e_reg[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \filter_sep[3]~_Duplicate_1_q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_reg[1][3]~q\);

-- Location: LABCELL_X85_Y3_N57
\filter_sep[2]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \filter_sep[2]~_Duplicate_1feeder_combout\ = ( \x_in[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_x_in[2]~input_o\,
	combout => \filter_sep[2]~_Duplicate_1feeder_combout\);

-- Location: FF_X85_Y3_N59
\filter_sep[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \filter_sep[2]~_Duplicate_1feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter_sep[2]~_Duplicate_1_q\);

-- Location: FF_X85_Y3_N35
\e_reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \filter_sep[2]~_Duplicate_1_q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_reg[1][2]~q\);

-- Location: LABCELL_X85_Y3_N54
\filter_sep[1]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \filter_sep[1]~_Duplicate_1feeder_combout\ = ( \x_in[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_x_in[1]~input_o\,
	combout => \filter_sep[1]~_Duplicate_1feeder_combout\);

-- Location: FF_X85_Y3_N55
\filter_sep[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \filter_sep[1]~_Duplicate_1feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter_sep[1]~_Duplicate_1_q\);

-- Location: FF_X84_Y3_N22
\e_reg[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \filter_sep[1]~_Duplicate_1_q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_reg[1][1]~q\);

-- Location: FF_X85_Y3_N29
\filter_sep[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x_in[0]~input_o\,
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter_sep[0]~_Duplicate_1_q\);

-- Location: FF_X84_Y3_N20
\e_reg[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \filter_sep[0]~_Duplicate_1_q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_reg[1][0]~q\);

-- Location: MLABCELL_X84_Y3_N0
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( !\e_reg[1][0]~q\ ) + ( VCC ) + ( !VCC ))
-- \Add2~22\ = CARRY(( !\e_reg[1][0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_e_reg[1][0]~q\,
	cin => GND,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: MLABCELL_X84_Y3_N3
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( !\e_reg[1][1]~q\ ) + ( GND ) + ( \Add2~22\ ))
-- \Add2~18\ = CARRY(( !\e_reg[1][1]~q\ ) + ( GND ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_e_reg[1][1]~q\,
	cin => \Add2~22\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: MLABCELL_X84_Y3_N6
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( !\e_reg[1][2]~q\ ) + ( GND ) + ( \Add2~18\ ))
-- \Add2~10\ = CARRY(( !\e_reg[1][2]~q\ ) + ( GND ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_e_reg[1][2]~q\,
	cin => \Add2~18\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: MLABCELL_X84_Y3_N9
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( !\e_reg[1][3]~q\ ) + ( GND ) + ( \Add2~10\ ))
-- \Add2~6\ = CARRY(( !\e_reg[1][3]~q\ ) + ( GND ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_e_reg[1][3]~q\,
	cin => \Add2~10\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: MLABCELL_X84_Y3_N12
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( !\e_reg[1][4]~q\ ) + ( GND ) + ( \Add2~6\ ))
-- \Add2~14\ = CARRY(( !\e_reg[1][4]~q\ ) + ( GND ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_e_reg[1][4]~q\,
	cin => \Add2~6\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: MLABCELL_X84_Y3_N15
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( !\e_reg[1][5]~q\ ) + ( GND ) + ( \Add2~14\ ))
-- \Add2~26\ = CARRY(( !\e_reg[1][5]~q\ ) + ( GND ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_e_reg[1][5]~q\,
	cin => \Add2~14\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: MLABCELL_X84_Y3_N18
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( !\e_reg[1][6]~q\ ) + ( GND ) + ( \Add2~26\ ))
-- \Add2~30\ = CARRY(( !\e_reg[1][6]~q\ ) + ( GND ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_e_reg[1][6]~q\,
	cin => \Add2~26\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: MLABCELL_X84_Y3_N21
\Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( !\e_reg[1][7]~q\ ) + ( GND ) + ( \Add2~30\ ))
-- \Add2~34\ = CARRY(( !\e_reg[1][7]~q\ ) + ( GND ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_e_reg[1][7]~q\,
	cin => \Add2~30\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\);

-- Location: MLABCELL_X84_Y3_N24
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( !\e_reg[1][7]~q\ ) + ( GND ) + ( \Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_e_reg[1][7]~q\,
	cin => \Add2~34\,
	sumout => \Add2~1_sumout\);

-- Location: MLABCELL_X84_Y3_N30
\Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~33_sumout\ = SUM(( \Add2~25_sumout\ ) + ( \Add2~21_sumout\ ) + ( !VCC ))
-- \Add3~34\ = CARRY(( \Add2~25_sumout\ ) + ( \Add2~21_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add2~25_sumout\,
	datac => \ALT_INV_Add2~21_sumout\,
	cin => GND,
	sumout => \Add3~33_sumout\,
	cout => \Add3~34\);

-- Location: MLABCELL_X84_Y3_N33
\Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~37_sumout\ = SUM(( \Add2~17_sumout\ ) + ( \Add2~29_sumout\ ) + ( \Add3~34\ ))
-- \Add3~38\ = CARRY(( \Add2~17_sumout\ ) + ( \Add2~29_sumout\ ) + ( \Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add2~29_sumout\,
	datad => \ALT_INV_Add2~17_sumout\,
	cin => \Add3~34\,
	sumout => \Add3~37_sumout\,
	cout => \Add3~38\);

-- Location: MLABCELL_X84_Y3_N36
\Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~29_sumout\ = SUM(( \Add2~33_sumout\ ) + ( \Add2~9_sumout\ ) + ( \Add3~38\ ))
-- \Add3~30\ = CARRY(( \Add2~33_sumout\ ) + ( \Add2~9_sumout\ ) + ( \Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add2~9_sumout\,
	datac => \ALT_INV_Add2~33_sumout\,
	cin => \Add3~38\,
	sumout => \Add3~29_sumout\,
	cout => \Add3~30\);

-- Location: MLABCELL_X84_Y3_N39
\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_sumout\ = SUM(( \Add2~1_sumout\ ) + ( \Add2~5_sumout\ ) + ( \Add3~30\ ))
-- \Add3~2\ = CARRY(( \Add2~1_sumout\ ) + ( \Add2~5_sumout\ ) + ( \Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~1_sumout\,
	datac => \ALT_INV_Add2~5_sumout\,
	cin => \Add3~30\,
	sumout => \Add3~1_sumout\,
	cout => \Add3~2\);

-- Location: FF_X84_Y3_N40
\e_del[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~1_sumout\,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_del[1][8]~q\);

-- Location: DSP_X86_Y4_N0
\Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 8,
	ay_scan_in_clock => "1",
	ay_scan_in_width => 9,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "1",
	by_use_scan_in => "false",
	by_width => 9,
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
	output_clock => "0",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \Mult0~8_ACLR_bus\,
	clk => \Mult0~8_CLK_bus\,
	ena => \Mult0~8_ENA_bus\,
	ax => \Mult0~8_AX_bus\,
	ay => \Mult0~8_AY_bus\,
	by => \Mult0~8_BY_bus\,
	resulta => \Mult0~8_RESULTA_bus\);

-- Location: FF_X84_Y3_N37
\e_del[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~29_sumout\,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_del[1][7]~q\);

-- Location: FF_X84_Y3_N34
\e_del[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~37_sumout\,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_del[1][6]~q\);

-- Location: FF_X84_Y3_N32
\e_del[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~33_sumout\,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_del[1][5]~q\);

-- Location: FF_X84_Y3_N13
\e_del[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~13_sumout\,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_del[1][4]~q\);

-- Location: FF_X84_Y3_N10
\e_del[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~5_sumout\,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_del[1][3]~q\);

-- Location: FF_X84_Y3_N7
\e_del[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~9_sumout\,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_del[1][2]~q\);

-- Location: FF_X84_Y3_N5
\e_del[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~17_sumout\,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_del[1][1]~q\);

-- Location: FF_X84_Y3_N1
\e_del[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~21_sumout\,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_del[1][0]~q\);

-- Location: MLABCELL_X84_Y2_N30
\Add6~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~65_sumout\ = SUM(( !\e_del[1][0]~q\ $ (!\e_del[0][0]\ $ (\e_lve[1][0]\)) ) + ( !VCC ) + ( !VCC ))
-- \Add6~66\ = CARRY(( !\e_del[1][0]~q\ $ (!\e_del[0][0]\ $ (\e_lve[1][0]\)) ) + ( !VCC ) + ( !VCC ))
-- \Add6~67\ = SHARE((!\e_del[1][0]~q\ & (\e_del[0][0]\ & \e_lve[1][0]\)) # (\e_del[1][0]~q\ & ((\e_lve[1][0]\) # (\e_del[0][0]\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_e_del[1][0]~q\,
	datac => \ALT_INV_e_del[0][0]\,
	datad => \ALT_INV_e_lve[1][0]\,
	cin => GND,
	sharein => GND,
	sumout => \Add6~65_sumout\,
	cout => \Add6~66\,
	shareout => \Add6~67\);

-- Location: MLABCELL_X84_Y2_N33
\Add6~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~61_sumout\ = SUM(( !\e_del[1][1]~q\ $ (!\e_del[0][1]\ $ (\e_lve[1][1]\)) ) + ( \Add6~67\ ) + ( \Add6~66\ ))
-- \Add6~62\ = CARRY(( !\e_del[1][1]~q\ $ (!\e_del[0][1]\ $ (\e_lve[1][1]\)) ) + ( \Add6~67\ ) + ( \Add6~66\ ))
-- \Add6~63\ = SHARE((!\e_del[1][1]~q\ & (\e_del[0][1]\ & \e_lve[1][1]\)) # (\e_del[1][1]~q\ & ((\e_lve[1][1]\) # (\e_del[0][1]\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_e_del[1][1]~q\,
	datac => \ALT_INV_e_del[0][1]\,
	datad => \ALT_INV_e_lve[1][1]\,
	cin => \Add6~66\,
	sharein => \Add6~67\,
	sumout => \Add6~61_sumout\,
	cout => \Add6~62\,
	shareout => \Add6~63\);

-- Location: MLABCELL_X84_Y2_N36
\Add6~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~41_sumout\ = SUM(( !\e_del[1][2]~q\ $ (!\e_lve[1][2]\ $ (\Add5~41_sumout\)) ) + ( \Add6~63\ ) + ( \Add6~62\ ))
-- \Add6~42\ = CARRY(( !\e_del[1][2]~q\ $ (!\e_lve[1][2]\ $ (\Add5~41_sumout\)) ) + ( \Add6~63\ ) + ( \Add6~62\ ))
-- \Add6~43\ = SHARE((!\e_del[1][2]~q\ & (\e_lve[1][2]\ & \Add5~41_sumout\)) # (\e_del[1][2]~q\ & ((\Add5~41_sumout\) # (\e_lve[1][2]\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_e_del[1][2]~q\,
	datac => \ALT_INV_e_lve[1][2]\,
	datad => \ALT_INV_Add5~41_sumout\,
	cin => \Add6~62\,
	sharein => \Add6~63\,
	sumout => \Add6~41_sumout\,
	cout => \Add6~42\,
	shareout => \Add6~43\);

-- Location: MLABCELL_X84_Y2_N39
\Add6~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~45_sumout\ = SUM(( !\e_del[1][3]~q\ $ (!\e_lve[1][3]\ $ (\Add5~45_sumout\)) ) + ( \Add6~43\ ) + ( \Add6~42\ ))
-- \Add6~46\ = CARRY(( !\e_del[1][3]~q\ $ (!\e_lve[1][3]\ $ (\Add5~45_sumout\)) ) + ( \Add6~43\ ) + ( \Add6~42\ ))
-- \Add6~47\ = SHARE((!\e_del[1][3]~q\ & (\e_lve[1][3]\ & \Add5~45_sumout\)) # (\e_del[1][3]~q\ & ((\Add5~45_sumout\) # (\e_lve[1][3]\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_e_del[1][3]~q\,
	datac => \ALT_INV_e_lve[1][3]\,
	datad => \ALT_INV_Add5~45_sumout\,
	cin => \Add6~42\,
	sharein => \Add6~43\,
	sumout => \Add6~45_sumout\,
	cout => \Add6~46\,
	shareout => \Add6~47\);

-- Location: MLABCELL_X84_Y2_N42
\Add6~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~49_sumout\ = SUM(( !\e_lve[1][4]\ $ (!\e_del[1][4]~q\ $ (\Add5~49_sumout\)) ) + ( \Add6~47\ ) + ( \Add6~46\ ))
-- \Add6~50\ = CARRY(( !\e_lve[1][4]\ $ (!\e_del[1][4]~q\ $ (\Add5~49_sumout\)) ) + ( \Add6~47\ ) + ( \Add6~46\ ))
-- \Add6~51\ = SHARE((!\e_lve[1][4]\ & (\e_del[1][4]~q\ & \Add5~49_sumout\)) # (\e_lve[1][4]\ & ((\Add5~49_sumout\) # (\e_del[1][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_e_lve[1][4]\,
	datac => \ALT_INV_e_del[1][4]~q\,
	datad => \ALT_INV_Add5~49_sumout\,
	cin => \Add6~46\,
	sharein => \Add6~47\,
	sumout => \Add6~49_sumout\,
	cout => \Add6~50\,
	shareout => \Add6~51\);

-- Location: MLABCELL_X84_Y2_N45
\Add6~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~53_sumout\ = SUM(( !\e_del[1][5]~q\ $ (!\e_lve[1][5]\ $ (\Add5~53_sumout\)) ) + ( \Add6~51\ ) + ( \Add6~50\ ))
-- \Add6~54\ = CARRY(( !\e_del[1][5]~q\ $ (!\e_lve[1][5]\ $ (\Add5~53_sumout\)) ) + ( \Add6~51\ ) + ( \Add6~50\ ))
-- \Add6~55\ = SHARE((!\e_del[1][5]~q\ & (\e_lve[1][5]\ & \Add5~53_sumout\)) # (\e_del[1][5]~q\ & ((\Add5~53_sumout\) # (\e_lve[1][5]\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_e_del[1][5]~q\,
	datac => \ALT_INV_e_lve[1][5]\,
	datad => \ALT_INV_Add5~53_sumout\,
	cin => \Add6~50\,
	sharein => \Add6~51\,
	sumout => \Add6~53_sumout\,
	cout => \Add6~54\,
	shareout => \Add6~55\);

-- Location: MLABCELL_X84_Y2_N48
\Add6~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~57_sumout\ = SUM(( !\Add5~57_sumout\ $ (!\e_del[1][6]~q\ $ (\e_lve[1][6]\)) ) + ( \Add6~55\ ) + ( \Add6~54\ ))
-- \Add6~58\ = CARRY(( !\Add5~57_sumout\ $ (!\e_del[1][6]~q\ $ (\e_lve[1][6]\)) ) + ( \Add6~55\ ) + ( \Add6~54\ ))
-- \Add6~59\ = SHARE((!\Add5~57_sumout\ & (\e_del[1][6]~q\ & \e_lve[1][6]\)) # (\Add5~57_sumout\ & ((\e_lve[1][6]\) # (\e_del[1][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add5~57_sumout\,
	datac => \ALT_INV_e_del[1][6]~q\,
	datad => \ALT_INV_e_lve[1][6]\,
	cin => \Add6~54\,
	sharein => \Add6~55\,
	sumout => \Add6~57_sumout\,
	cout => \Add6~58\,
	shareout => \Add6~59\);

-- Location: MLABCELL_X84_Y2_N51
\Add6~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~37_sumout\ = SUM(( !\e_del[1][7]~q\ $ (!\e_lve[1][7]\ $ (\Add5~37_sumout\)) ) + ( \Add6~59\ ) + ( \Add6~58\ ))
-- \Add6~38\ = CARRY(( !\e_del[1][7]~q\ $ (!\e_lve[1][7]\ $ (\Add5~37_sumout\)) ) + ( \Add6~59\ ) + ( \Add6~58\ ))
-- \Add6~39\ = SHARE((!\e_del[1][7]~q\ & (\e_lve[1][7]\ & \Add5~37_sumout\)) # (\e_del[1][7]~q\ & ((\Add5~37_sumout\) # (\e_lve[1][7]\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_e_del[1][7]~q\,
	datac => \ALT_INV_e_lve[1][7]\,
	datad => \ALT_INV_Add5~37_sumout\,
	cin => \Add6~58\,
	sharein => \Add6~59\,
	sumout => \Add6~37_sumout\,
	cout => \Add6~38\,
	shareout => \Add6~39\);

-- Location: MLABCELL_X84_Y2_N54
\Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~1_sumout\ = SUM(( !\Add5~1_sumout\ $ (!\e_del[1][8]~q\ $ (\e_lve[1][8]\)) ) + ( \Add6~39\ ) + ( \Add6~38\ ))
-- \Add6~2\ = CARRY(( !\Add5~1_sumout\ $ (!\e_del[1][8]~q\ $ (\e_lve[1][8]\)) ) + ( \Add6~39\ ) + ( \Add6~38\ ))
-- \Add6~3\ = SHARE((!\Add5~1_sumout\ & (\e_del[1][8]~q\ & \e_lve[1][8]\)) # (\Add5~1_sumout\ & ((\e_lve[1][8]\) # (\e_del[1][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add5~1_sumout\,
	datac => \ALT_INV_e_del[1][8]~q\,
	datad => \ALT_INV_e_lve[1][8]\,
	cin => \Add6~38\,
	sharein => \Add6~39\,
	sumout => \Add6~1_sumout\,
	cout => \Add6~2\,
	shareout => \Add6~3\);

-- Location: FF_X84_Y2_N56
\y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~1_sumout\,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(8));

-- Location: FF_X84_Y2_N44
\y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~49_sumout\,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(4));

-- Location: FF_X84_Y2_N50
\y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~57_sumout\,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(6));

-- Location: FF_X84_Y2_N47
\y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~53_sumout\,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(5));

-- Location: FF_X84_Y2_N53
\y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~37_sumout\,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(7));

-- Location: MLABCELL_X84_Y2_N24
\WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = ( !y(5) & ( !y(7) & ( (!y(4) & !y(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_y(4),
	datac => ALT_INV_y(6),
	datae => ALT_INV_y(5),
	dataf => ALT_INV_y(7),
	combout => \WideOr0~0_combout\);

-- Location: FF_X84_Y2_N41
\y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~45_sumout\,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(3));

-- Location: FF_X84_Y2_N35
\y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~61_sumout\,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(1));

-- Location: FF_X84_Y2_N38
\y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~41_sumout\,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(2));

-- Location: FF_X84_Y2_N32
\y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~65_sumout\,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(0));

-- Location: MLABCELL_X84_Y2_N18
WideOr0 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = ( y(2) & ( y(0) ) ) # ( !y(2) & ( y(0) ) ) # ( y(2) & ( !y(0) ) ) # ( !y(2) & ( !y(0) & ( (!\WideOr0~0_combout\) # ((y(1)) # (y(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111110111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr0~0_combout\,
	datab => ALT_INV_y(3),
	datac => ALT_INV_y(1),
	datae => ALT_INV_y(2),
	dataf => ALT_INV_y(0),
	combout => \WideOr0~combout\);

-- Location: FF_X84_Y3_N29
\e_del[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add2~1_sumout\,
	sload => VCC,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_del[1][15]~q\);

-- Location: MLABCELL_X87_Y2_N21
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( !\x_in[2]~input_o\ $ (\x_in[7]~input_o\) ) + ( \Add0~3\ ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( !\x_in[2]~input_o\ $ (\x_in[7]~input_o\) ) + ( \Add0~3\ ) + ( \Add0~2\ ))
-- \Add0~7\ = SHARE((\x_in[2]~input_o\ & !\x_in[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x_in[2]~input_o\,
	datac => \ALT_INV_x_in[7]~input_o\,
	cin => \Add0~2\,
	sharein => \Add0~3\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\,
	shareout => \Add0~7\);

-- Location: MLABCELL_X87_Y2_N24
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( !\x_in[7]~input_o\ $ (\x_in[3]~input_o\) ) + ( \Add0~7\ ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( !\x_in[7]~input_o\ $ (\x_in[3]~input_o\) ) + ( \Add0~7\ ) + ( \Add0~6\ ))
-- \Add0~11\ = SHARE((!\x_in[7]~input_o\ & \x_in[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x_in[7]~input_o\,
	datac => \ALT_INV_x_in[3]~input_o\,
	cin => \Add0~6\,
	sharein => \Add0~7\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\,
	shareout => \Add0~11\);

-- Location: MLABCELL_X87_Y2_N27
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( !\x_in[7]~input_o\ $ (\x_in[4]~input_o\) ) + ( \Add0~11\ ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( !\x_in[7]~input_o\ $ (\x_in[4]~input_o\) ) + ( \Add0~11\ ) + ( \Add0~10\ ))
-- \Add0~15\ = SHARE((!\x_in[7]~input_o\ & \x_in[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x_in[7]~input_o\,
	datad => \ALT_INV_x_in[4]~input_o\,
	cin => \Add0~10\,
	sharein => \Add0~11\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\,
	shareout => \Add0~15\);

-- Location: MLABCELL_X87_Y2_N30
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( !\x_in[7]~input_o\ $ (\x_in[5]~input_o\) ) + ( \Add0~15\ ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( !\x_in[7]~input_o\ $ (\x_in[5]~input_o\) ) + ( \Add0~15\ ) + ( \Add0~14\ ))
-- \Add0~19\ = SHARE((!\x_in[7]~input_o\ & \x_in[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x_in[7]~input_o\,
	datac => \ALT_INV_x_in[5]~input_o\,
	cin => \Add0~14\,
	sharein => \Add0~15\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\,
	shareout => \Add0~19\);

-- Location: MLABCELL_X87_Y2_N33
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( !\x_in[7]~input_o\ $ (\x_in[6]~input_o\) ) + ( \Add0~19\ ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( !\x_in[7]~input_o\ $ (\x_in[6]~input_o\) ) + ( \Add0~19\ ) + ( \Add0~18\ ))
-- \Add0~23\ = SHARE((!\x_in[7]~input_o\ & \x_in[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x_in[7]~input_o\,
	datac => \ALT_INV_x_in[6]~input_o\,
	cin => \Add0~18\,
	sharein => \Add0~19\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\,
	shareout => \Add0~23\);

-- Location: MLABCELL_X87_Y2_N36
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( VCC ) + ( \Add0~23\ ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( VCC ) + ( \Add0~23\ ) + ( \Add0~22\ ))
-- \Add0~27\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Add0~22\,
	sharein => \Add0~23\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\,
	shareout => \Add0~27\);

-- Location: MLABCELL_X87_Y2_N39
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( VCC ) + ( \Add0~27\ ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Add0~26\,
	sharein => \Add0~27\,
	sumout => \Add0~29_sumout\);

-- Location: FF_X85_Y2_N41
\e_lve[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~29_sumout\,
	sload => VCC,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_lve[0][15]~q\);

-- Location: FF_X85_Y2_N38
\e_lve[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~25_sumout\,
	sload => VCC,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_lve[0][14]~q\);

-- Location: FF_X85_Y2_N35
\e_lve[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~21_sumout\,
	sload => VCC,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_lve[0][13]~q\);

-- Location: FF_X85_Y2_N26
\e_lve[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~17_sumout\,
	sload => VCC,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_lve[0][12]~q\);

-- Location: FF_X85_Y2_N29
\e_lve[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~13_sumout\,
	sload => VCC,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_lve[0][11]~q\);

-- Location: LABCELL_X85_Y2_N51
\e_lve[0][10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \e_lve[0][10]~feeder_combout\ = ( \Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~9_sumout\,
	combout => \e_lve[0][10]~feeder_combout\);

-- Location: FF_X85_Y2_N53
\e_lve[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \e_lve[0][10]~feeder_combout\,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_lve[0][10]~q\);

-- Location: FF_X85_Y2_N56
\e_lve[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~5_sumout\,
	sload => VCC,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_lve[0][9]~q\);

-- Location: LABCELL_X85_Y2_N21
\Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~5_sumout\ = SUM(( \e_lve[0][9]~q\ ) + ( \e_del[0][9]\ ) + ( \Add5~2\ ))
-- \Add5~6\ = CARRY(( \e_lve[0][9]~q\ ) + ( \e_del[0][9]\ ) + ( \Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_e_del[0][9]\,
	datad => \ALT_INV_e_lve[0][9]~q\,
	cin => \Add5~2\,
	sumout => \Add5~5_sumout\,
	cout => \Add5~6\);

-- Location: LABCELL_X85_Y2_N24
\Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~9_sumout\ = SUM(( \e_del[0][10]\ ) + ( \e_lve[0][10]~q\ ) + ( \Add5~6\ ))
-- \Add5~10\ = CARRY(( \e_del[0][10]\ ) + ( \e_lve[0][10]~q\ ) + ( \Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_e_lve[0][10]~q\,
	datad => \ALT_INV_e_del[0][10]\,
	cin => \Add5~6\,
	sumout => \Add5~9_sumout\,
	cout => \Add5~10\);

-- Location: LABCELL_X85_Y2_N27
\Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~13_sumout\ = SUM(( \e_lve[0][11]~q\ ) + ( \e_del[0][11]\ ) + ( \Add5~10\ ))
-- \Add5~14\ = CARRY(( \e_lve[0][11]~q\ ) + ( \e_del[0][11]\ ) + ( \Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_e_del[0][11]\,
	datad => \ALT_INV_e_lve[0][11]~q\,
	cin => \Add5~10\,
	sumout => \Add5~13_sumout\,
	cout => \Add5~14\);

-- Location: LABCELL_X85_Y2_N30
\Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~17_sumout\ = SUM(( \e_del[0][12]\ ) + ( \e_lve[0][12]~q\ ) + ( \Add5~14\ ))
-- \Add5~18\ = CARRY(( \e_del[0][12]\ ) + ( \e_lve[0][12]~q\ ) + ( \Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_e_lve[0][12]~q\,
	datac => \ALT_INV_e_del[0][12]\,
	cin => \Add5~14\,
	sumout => \Add5~17_sumout\,
	cout => \Add5~18\);

-- Location: LABCELL_X85_Y2_N33
\Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~21_sumout\ = SUM(( \e_del[0][13]\ ) + ( \e_lve[0][13]~q\ ) + ( \Add5~18\ ))
-- \Add5~22\ = CARRY(( \e_del[0][13]\ ) + ( \e_lve[0][13]~q\ ) + ( \Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_e_del[0][13]\,
	dataf => \ALT_INV_e_lve[0][13]~q\,
	cin => \Add5~18\,
	sumout => \Add5~21_sumout\,
	cout => \Add5~22\);

-- Location: LABCELL_X85_Y2_N36
\Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~25_sumout\ = SUM(( \e_del[0][13]\ ) + ( \e_lve[0][14]~q\ ) + ( \Add5~22\ ))
-- \Add5~26\ = CARRY(( \e_del[0][13]\ ) + ( \e_lve[0][14]~q\ ) + ( \Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_e_del[0][13]\,
	datac => \ALT_INV_e_lve[0][14]~q\,
	cin => \Add5~22\,
	sumout => \Add5~25_sumout\,
	cout => \Add5~26\);

-- Location: LABCELL_X85_Y2_N39
\Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~29_sumout\ = SUM(( \e_del[0][13]\ ) + ( \e_lve[0][15]~q\ ) + ( \Add5~26\ ))
-- \Add5~30\ = CARRY(( \e_del[0][13]\ ) + ( \e_lve[0][15]~q\ ) + ( \Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_e_del[0][13]\,
	datac => \ALT_INV_e_lve[0][15]~q\,
	cin => \Add5~26\,
	sumout => \Add5~29_sumout\,
	cout => \Add5~30\);

-- Location: LABCELL_X85_Y2_N42
\Add5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~33_sumout\ = SUM(( \e_del[0][13]\ ) + ( \e_lve[0][15]~q\ ) + ( \Add5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_e_del[0][13]\,
	dataf => \ALT_INV_e_lve[0][15]~q\,
	cin => \Add5~30\,
	sumout => \Add5~33_sumout\);

-- Location: MLABCELL_X84_Y3_N42
\Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~5_sumout\ = SUM(( \Add2~1_sumout\ ) + ( \Add2~13_sumout\ ) + ( \Add3~2\ ))
-- \Add3~6\ = CARRY(( \Add2~1_sumout\ ) + ( \Add2~13_sumout\ ) + ( \Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add2~13_sumout\,
	datac => \ALT_INV_Add2~1_sumout\,
	cin => \Add3~2\,
	sumout => \Add3~5_sumout\,
	cout => \Add3~6\);

-- Location: MLABCELL_X84_Y3_N45
\Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~9_sumout\ = SUM(( \Add2~1_sumout\ ) + ( \Add2~25_sumout\ ) + ( \Add3~6\ ))
-- \Add3~10\ = CARRY(( \Add2~1_sumout\ ) + ( \Add2~25_sumout\ ) + ( \Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~1_sumout\,
	datac => \ALT_INV_Add2~25_sumout\,
	cin => \Add3~6\,
	sumout => \Add3~9_sumout\,
	cout => \Add3~10\);

-- Location: MLABCELL_X84_Y3_N48
\Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~13_sumout\ = SUM(( \Add2~29_sumout\ ) + ( \Add2~1_sumout\ ) + ( \Add3~10\ ))
-- \Add3~14\ = CARRY(( \Add2~29_sumout\ ) + ( \Add2~1_sumout\ ) + ( \Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~1_sumout\,
	datad => \ALT_INV_Add2~29_sumout\,
	cin => \Add3~10\,
	sumout => \Add3~13_sumout\,
	cout => \Add3~14\);

-- Location: MLABCELL_X84_Y3_N51
\Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~17_sumout\ = SUM(( \Add2~33_sumout\ ) + ( \Add2~1_sumout\ ) + ( \Add3~14\ ))
-- \Add3~18\ = CARRY(( \Add2~33_sumout\ ) + ( \Add2~1_sumout\ ) + ( \Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~1_sumout\,
	datad => \ALT_INV_Add2~33_sumout\,
	cin => \Add3~14\,
	sumout => \Add3~17_sumout\,
	cout => \Add3~18\);

-- Location: MLABCELL_X84_Y3_N54
\Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~21_sumout\ = SUM(( \Add2~1_sumout\ ) + ( \Add2~1_sumout\ ) + ( \Add3~18\ ))
-- \Add3~22\ = CARRY(( \Add2~1_sumout\ ) + ( \Add2~1_sumout\ ) + ( \Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add2~1_sumout\,
	cin => \Add3~18\,
	sumout => \Add3~21_sumout\,
	cout => \Add3~22\);

-- Location: MLABCELL_X84_Y3_N57
\Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~25_sumout\ = SUM(( GND ) + ( GND ) + ( \Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add3~22\,
	sumout => \Add3~25_sumout\);

-- Location: FF_X84_Y3_N58
\e_del[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~25_sumout\,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_del[1][14]~q\);

-- Location: FF_X84_Y3_N56
\e_del[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~21_sumout\,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_del[1][13]~q\);

-- Location: FF_X84_Y3_N52
\e_del[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~17_sumout\,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_del[1][12]~q\);

-- Location: FF_X84_Y3_N49
\e_del[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~13_sumout\,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_del[1][11]~q\);

-- Location: FF_X84_Y3_N47
\e_del[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~9_sumout\,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_del[1][10]~q\);

-- Location: FF_X84_Y3_N44
\e_del[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~5_sumout\,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_del[1][9]~q\);

-- Location: MLABCELL_X84_Y2_N57
\Add6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~5_sumout\ = SUM(( !\e_del[1][9]~q\ $ (!\e_lve[1][9]\ $ (\Add5~5_sumout\)) ) + ( \Add6~3\ ) + ( \Add6~2\ ))
-- \Add6~6\ = CARRY(( !\e_del[1][9]~q\ $ (!\e_lve[1][9]\ $ (\Add5~5_sumout\)) ) + ( \Add6~3\ ) + ( \Add6~2\ ))
-- \Add6~7\ = SHARE((!\e_del[1][9]~q\ & (\e_lve[1][9]\ & \Add5~5_sumout\)) # (\e_del[1][9]~q\ & ((\Add5~5_sumout\) # (\e_lve[1][9]\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_e_del[1][9]~q\,
	datac => \ALT_INV_e_lve[1][9]\,
	datad => \ALT_INV_Add5~5_sumout\,
	cin => \Add6~2\,
	sharein => \Add6~3\,
	sumout => \Add6~5_sumout\,
	cout => \Add6~6\,
	shareout => \Add6~7\);

-- Location: MLABCELL_X84_Y1_N0
\Add6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~9_sumout\ = SUM(( !\e_del[1][10]~q\ $ (!\e_lve[1][10]\ $ (\Add5~9_sumout\)) ) + ( \Add6~7\ ) + ( \Add6~6\ ))
-- \Add6~10\ = CARRY(( !\e_del[1][10]~q\ $ (!\e_lve[1][10]\ $ (\Add5~9_sumout\)) ) + ( \Add6~7\ ) + ( \Add6~6\ ))
-- \Add6~11\ = SHARE((!\e_del[1][10]~q\ & (\e_lve[1][10]\ & \Add5~9_sumout\)) # (\e_del[1][10]~q\ & ((\Add5~9_sumout\) # (\e_lve[1][10]\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_e_del[1][10]~q\,
	datac => \ALT_INV_e_lve[1][10]\,
	datad => \ALT_INV_Add5~9_sumout\,
	cin => \Add6~6\,
	sharein => \Add6~7\,
	sumout => \Add6~9_sumout\,
	cout => \Add6~10\,
	shareout => \Add6~11\);

-- Location: MLABCELL_X84_Y1_N3
\Add6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~13_sumout\ = SUM(( !\e_lve[1][11]\ $ (!\Add5~13_sumout\ $ (\e_del[1][11]~q\)) ) + ( \Add6~11\ ) + ( \Add6~10\ ))
-- \Add6~14\ = CARRY(( !\e_lve[1][11]\ $ (!\Add5~13_sumout\ $ (\e_del[1][11]~q\)) ) + ( \Add6~11\ ) + ( \Add6~10\ ))
-- \Add6~15\ = SHARE((!\e_lve[1][11]\ & (\Add5~13_sumout\ & \e_del[1][11]~q\)) # (\e_lve[1][11]\ & ((\e_del[1][11]~q\) # (\Add5~13_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_e_lve[1][11]\,
	datac => \ALT_INV_Add5~13_sumout\,
	datad => \ALT_INV_e_del[1][11]~q\,
	cin => \Add6~10\,
	sharein => \Add6~11\,
	sumout => \Add6~13_sumout\,
	cout => \Add6~14\,
	shareout => \Add6~15\);

-- Location: MLABCELL_X84_Y1_N6
\Add6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~17_sumout\ = SUM(( !\e_del[1][12]~q\ $ (!\Add5~17_sumout\ $ (\e_lve[1][12]\)) ) + ( \Add6~15\ ) + ( \Add6~14\ ))
-- \Add6~18\ = CARRY(( !\e_del[1][12]~q\ $ (!\Add5~17_sumout\ $ (\e_lve[1][12]\)) ) + ( \Add6~15\ ) + ( \Add6~14\ ))
-- \Add6~19\ = SHARE((!\e_del[1][12]~q\ & (\Add5~17_sumout\ & \e_lve[1][12]\)) # (\e_del[1][12]~q\ & ((\e_lve[1][12]\) # (\Add5~17_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_e_del[1][12]~q\,
	datac => \ALT_INV_Add5~17_sumout\,
	datad => \ALT_INV_e_lve[1][12]\,
	cin => \Add6~14\,
	sharein => \Add6~15\,
	sumout => \Add6~17_sumout\,
	cout => \Add6~18\,
	shareout => \Add6~19\);

-- Location: MLABCELL_X84_Y1_N9
\Add6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~21_sumout\ = SUM(( !\e_del[1][13]~q\ $ (!\e_lve[1][13]\ $ (\Add5~21_sumout\)) ) + ( \Add6~19\ ) + ( \Add6~18\ ))
-- \Add6~22\ = CARRY(( !\e_del[1][13]~q\ $ (!\e_lve[1][13]\ $ (\Add5~21_sumout\)) ) + ( \Add6~19\ ) + ( \Add6~18\ ))
-- \Add6~23\ = SHARE((!\e_del[1][13]~q\ & (\e_lve[1][13]\ & \Add5~21_sumout\)) # (\e_del[1][13]~q\ & ((\Add5~21_sumout\) # (\e_lve[1][13]\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_e_del[1][13]~q\,
	datac => \ALT_INV_e_lve[1][13]\,
	datad => \ALT_INV_Add5~21_sumout\,
	cin => \Add6~18\,
	sharein => \Add6~19\,
	sumout => \Add6~21_sumout\,
	cout => \Add6~22\,
	shareout => \Add6~23\);

-- Location: MLABCELL_X84_Y1_N12
\Add6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~25_sumout\ = SUM(( !\e_lve[1][14]\ $ (!\e_del[1][14]~q\ $ (\Add5~25_sumout\)) ) + ( \Add6~23\ ) + ( \Add6~22\ ))
-- \Add6~26\ = CARRY(( !\e_lve[1][14]\ $ (!\e_del[1][14]~q\ $ (\Add5~25_sumout\)) ) + ( \Add6~23\ ) + ( \Add6~22\ ))
-- \Add6~27\ = SHARE((!\e_lve[1][14]\ & (\e_del[1][14]~q\ & \Add5~25_sumout\)) # (\e_lve[1][14]\ & ((\Add5~25_sumout\) # (\e_del[1][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_e_lve[1][14]\,
	datac => \ALT_INV_e_del[1][14]~q\,
	datad => \ALT_INV_Add5~25_sumout\,
	cin => \Add6~22\,
	sharein => \Add6~23\,
	sumout => \Add6~25_sumout\,
	cout => \Add6~26\,
	shareout => \Add6~27\);

-- Location: MLABCELL_X84_Y1_N15
\Add6~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~29_sumout\ = SUM(( !\e_lve[1][15]\ $ (!\e_del[1][15]~q\ $ (\Add5~29_sumout\)) ) + ( \Add6~27\ ) + ( \Add6~26\ ))
-- \Add6~30\ = CARRY(( !\e_lve[1][15]\ $ (!\e_del[1][15]~q\ $ (\Add5~29_sumout\)) ) + ( \Add6~27\ ) + ( \Add6~26\ ))
-- \Add6~31\ = SHARE((!\e_lve[1][15]\ & (\e_del[1][15]~q\ & \Add5~29_sumout\)) # (\e_lve[1][15]\ & ((\Add5~29_sumout\) # (\e_del[1][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_e_lve[1][15]\,
	datac => \ALT_INV_e_del[1][15]~q\,
	datad => \ALT_INV_Add5~29_sumout\,
	cin => \Add6~26\,
	sharein => \Add6~27\,
	sumout => \Add6~29_sumout\,
	cout => \Add6~30\,
	shareout => \Add6~31\);

-- Location: MLABCELL_X84_Y1_N18
\Add6~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~33_sumout\ = SUM(( !\e_del[1][15]~q\ $ (!\e_lve[1][15]\ $ (\Add5~33_sumout\)) ) + ( \Add6~31\ ) + ( \Add6~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_e_del[1][15]~q\,
	datac => \ALT_INV_e_lve[1][15]\,
	datad => \ALT_INV_Add5~33_sumout\,
	cin => \Add6~30\,
	sharein => \Add6~31\,
	sumout => \Add6~33_sumout\);

-- Location: FF_X84_Y1_N20
\y[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~33_sumout\,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(16));

-- Location: MLABCELL_X84_Y1_N30
\Add7~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~38_cout\ = CARRY(( \WideOr0~combout\ ) + ( y(16) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr0~combout\,
	datac => ALT_INV_y(16),
	cin => GND,
	cout => \Add7~38_cout\);

-- Location: MLABCELL_X84_Y1_N33
\Add7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~1_sumout\ = SUM(( y(8) ) + ( GND ) + ( \Add7~38_cout\ ))
-- \Add7~2\ = CARRY(( y(8) ) + ( GND ) + ( \Add7~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_y(8),
	cin => \Add7~38_cout\,
	sumout => \Add7~1_sumout\,
	cout => \Add7~2\);

-- Location: FF_X84_Y2_N58
\y[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~5_sumout\,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(9));

-- Location: MLABCELL_X84_Y1_N36
\Add7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~5_sumout\ = SUM(( y(9) ) + ( GND ) + ( \Add7~2\ ))
-- \Add7~6\ = CARRY(( y(9) ) + ( GND ) + ( \Add7~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_y(9),
	cin => \Add7~2\,
	sumout => \Add7~5_sumout\,
	cout => \Add7~6\);

-- Location: FF_X84_Y1_N2
\y[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~9_sumout\,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(10));

-- Location: MLABCELL_X84_Y1_N39
\Add7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~9_sumout\ = SUM(( y(10) ) + ( GND ) + ( \Add7~6\ ))
-- \Add7~10\ = CARRY(( y(10) ) + ( GND ) + ( \Add7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_y(10),
	cin => \Add7~6\,
	sumout => \Add7~9_sumout\,
	cout => \Add7~10\);

-- Location: FF_X84_Y1_N5
\y[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~13_sumout\,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(11));

-- Location: MLABCELL_X84_Y1_N42
\Add7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~13_sumout\ = SUM(( y(11) ) + ( GND ) + ( \Add7~10\ ))
-- \Add7~14\ = CARRY(( y(11) ) + ( GND ) + ( \Add7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_y(11),
	cin => \Add7~10\,
	sumout => \Add7~13_sumout\,
	cout => \Add7~14\);

-- Location: FF_X84_Y1_N8
\y[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~17_sumout\,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(12));

-- Location: MLABCELL_X84_Y1_N45
\Add7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~17_sumout\ = SUM(( y(12) ) + ( GND ) + ( \Add7~14\ ))
-- \Add7~18\ = CARRY(( y(12) ) + ( GND ) + ( \Add7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_y(12),
	cin => \Add7~14\,
	sumout => \Add7~17_sumout\,
	cout => \Add7~18\);

-- Location: FF_X84_Y1_N11
\y[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~21_sumout\,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(13));

-- Location: MLABCELL_X84_Y1_N48
\Add7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~21_sumout\ = SUM(( y(13) ) + ( GND ) + ( \Add7~18\ ))
-- \Add7~22\ = CARRY(( y(13) ) + ( GND ) + ( \Add7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_y(13),
	cin => \Add7~18\,
	sumout => \Add7~21_sumout\,
	cout => \Add7~22\);

-- Location: FF_X84_Y1_N14
\y[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~25_sumout\,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(14));

-- Location: MLABCELL_X84_Y1_N51
\Add7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~25_sumout\ = SUM(( y(14) ) + ( GND ) + ( \Add7~22\ ))
-- \Add7~26\ = CARRY(( y(14) ) + ( GND ) + ( \Add7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_y(14),
	cin => \Add7~22\,
	sumout => \Add7~25_sumout\,
	cout => \Add7~26\);

-- Location: FF_X84_Y1_N17
\y[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~29_sumout\,
	ena => \e_del[1][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(15));

-- Location: MLABCELL_X84_Y1_N54
\Add7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~29_sumout\ = SUM(( y(15) ) + ( GND ) + ( \Add7~26\ ))
-- \Add7~30\ = CARRY(( y(15) ) + ( GND ) + ( \Add7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_y(15),
	cin => \Add7~26\,
	sumout => \Add7~29_sumout\,
	cout => \Add7~30\);

-- Location: MLABCELL_X84_Y1_N57
\Add7~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~33_sumout\ = SUM(( y(16) ) + ( GND ) + ( \Add7~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_y(16),
	cin => \Add7~30\,
	sumout => \Add7~33_sumout\);

-- Location: MLABCELL_X72_Y26_N3
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


