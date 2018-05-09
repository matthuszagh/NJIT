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

-- DATE "05/02/2018 14:55:17"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

PACKAGE ntt_data_type IS

TYPE y_out_7_0_type IS ARRAY (7 DOWNTO 0) OF std_logic;
TYPE y_out_7_0_0_3_type IS ARRAY (0 TO 3) OF y_out_7_0_type;
SUBTYPE y_out_type IS y_out_7_0_0_3_type;

END ntt_data_type;

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
LIBRARY WORK;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.NTT_DATA_TYPE.ALL;

ENTITY 	ntt IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	x_in : IN IEEE.NUMERIC_STD.signed(7 DOWNTO 0);
	h_in : IN IEEE.NUMERIC_STD.signed(7 DOWNTO 0);
	y_out : OUT y_out_type
	);
END ntt;

-- Design Ports Information
-- y_out[3][0]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[3][1]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[3][2]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[3][3]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[3][4]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[3][5]	=>  Location: PIN_AK2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[3][6]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[3][7]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[2][0]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[2][1]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[2][2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[2][3]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[2][4]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[2][5]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[2][6]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[2][7]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[1][0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[1][1]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[1][2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[1][3]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[1][4]	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[1][5]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[1][6]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[1][7]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[0][0]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[0][1]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[0][2]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[0][3]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[0][4]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[0][5]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[0][6]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[0][7]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[0]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[1]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[2]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[3]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[4]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[5]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[6]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[7]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_in[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_in[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_in[2]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_in[3]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_in[4]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_in[5]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_in[6]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_in[7]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ntt IS
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
SIGNAL ww_h_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_y_out : y_out_type;
SIGNAL \Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult0~8_AX_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0~8_AY_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0~8_BX_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0~8_BY_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult3~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Mult3~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult3~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult3~8_AX_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult3~8_AY_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult3~8_BX_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult3~8_BY_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult3~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult2~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Mult2~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult2~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult2~8_AX_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult2~8_AY_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult2~8_BX_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult2~8_BY_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult2~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult1~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Mult1~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult1~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult1~8_AX_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult1~8_AY_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult1~8_BX_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult1~8_BY_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult1~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult0~22\ : std_logic;
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
SIGNAL \Mult3~22\ : std_logic;
SIGNAL \Mult3~24\ : std_logic;
SIGNAL \Mult3~25\ : std_logic;
SIGNAL \Mult3~26\ : std_logic;
SIGNAL \Mult3~27\ : std_logic;
SIGNAL \Mult3~28\ : std_logic;
SIGNAL \Mult3~29\ : std_logic;
SIGNAL \Mult3~30\ : std_logic;
SIGNAL \Mult3~31\ : std_logic;
SIGNAL \Mult3~32\ : std_logic;
SIGNAL \Mult3~33\ : std_logic;
SIGNAL \Mult3~34\ : std_logic;
SIGNAL \Mult3~35\ : std_logic;
SIGNAL \Mult3~36\ : std_logic;
SIGNAL \Mult3~37\ : std_logic;
SIGNAL \Mult3~38\ : std_logic;
SIGNAL \Mult3~39\ : std_logic;
SIGNAL \Mult3~40\ : std_logic;
SIGNAL \Mult3~41\ : std_logic;
SIGNAL \Mult3~42\ : std_logic;
SIGNAL \Mult3~43\ : std_logic;
SIGNAL \Mult3~44\ : std_logic;
SIGNAL \Mult3~45\ : std_logic;
SIGNAL \Mult3~46\ : std_logic;
SIGNAL \Mult3~47\ : std_logic;
SIGNAL \Mult3~48\ : std_logic;
SIGNAL \Mult3~49\ : std_logic;
SIGNAL \Mult3~50\ : std_logic;
SIGNAL \Mult3~51\ : std_logic;
SIGNAL \Mult3~52\ : std_logic;
SIGNAL \Mult3~53\ : std_logic;
SIGNAL \Mult3~54\ : std_logic;
SIGNAL \Mult3~55\ : std_logic;
SIGNAL \Mult3~56\ : std_logic;
SIGNAL \Mult3~57\ : std_logic;
SIGNAL \Mult3~58\ : std_logic;
SIGNAL \Mult3~59\ : std_logic;
SIGNAL \Mult3~60\ : std_logic;
SIGNAL \Mult3~61\ : std_logic;
SIGNAL \Mult3~62\ : std_logic;
SIGNAL \Mult3~63\ : std_logic;
SIGNAL \Mult3~64\ : std_logic;
SIGNAL \Mult3~65\ : std_logic;
SIGNAL \Mult3~66\ : std_logic;
SIGNAL \Mult3~67\ : std_logic;
SIGNAL \Mult3~68\ : std_logic;
SIGNAL \Mult3~69\ : std_logic;
SIGNAL \Mult3~70\ : std_logic;
SIGNAL \Mult3~71\ : std_logic;
SIGNAL \Mult2~22\ : std_logic;
SIGNAL \Mult2~24\ : std_logic;
SIGNAL \Mult2~25\ : std_logic;
SIGNAL \Mult2~26\ : std_logic;
SIGNAL \Mult2~27\ : std_logic;
SIGNAL \Mult2~28\ : std_logic;
SIGNAL \Mult2~29\ : std_logic;
SIGNAL \Mult2~30\ : std_logic;
SIGNAL \Mult2~31\ : std_logic;
SIGNAL \Mult2~32\ : std_logic;
SIGNAL \Mult2~33\ : std_logic;
SIGNAL \Mult2~34\ : std_logic;
SIGNAL \Mult2~35\ : std_logic;
SIGNAL \Mult2~36\ : std_logic;
SIGNAL \Mult2~37\ : std_logic;
SIGNAL \Mult2~38\ : std_logic;
SIGNAL \Mult2~39\ : std_logic;
SIGNAL \Mult2~40\ : std_logic;
SIGNAL \Mult2~41\ : std_logic;
SIGNAL \Mult2~42\ : std_logic;
SIGNAL \Mult2~43\ : std_logic;
SIGNAL \Mult2~44\ : std_logic;
SIGNAL \Mult2~45\ : std_logic;
SIGNAL \Mult2~46\ : std_logic;
SIGNAL \Mult2~47\ : std_logic;
SIGNAL \Mult2~48\ : std_logic;
SIGNAL \Mult2~49\ : std_logic;
SIGNAL \Mult2~50\ : std_logic;
SIGNAL \Mult2~51\ : std_logic;
SIGNAL \Mult2~52\ : std_logic;
SIGNAL \Mult2~53\ : std_logic;
SIGNAL \Mult2~54\ : std_logic;
SIGNAL \Mult2~55\ : std_logic;
SIGNAL \Mult2~56\ : std_logic;
SIGNAL \Mult2~57\ : std_logic;
SIGNAL \Mult2~58\ : std_logic;
SIGNAL \Mult2~59\ : std_logic;
SIGNAL \Mult2~60\ : std_logic;
SIGNAL \Mult2~61\ : std_logic;
SIGNAL \Mult2~62\ : std_logic;
SIGNAL \Mult2~63\ : std_logic;
SIGNAL \Mult2~64\ : std_logic;
SIGNAL \Mult2~65\ : std_logic;
SIGNAL \Mult2~66\ : std_logic;
SIGNAL \Mult2~67\ : std_logic;
SIGNAL \Mult2~68\ : std_logic;
SIGNAL \Mult2~69\ : std_logic;
SIGNAL \Mult2~70\ : std_logic;
SIGNAL \Mult2~71\ : std_logic;
SIGNAL \Mult1~22\ : std_logic;
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
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputCLKENA0_outclk\ : std_logic;
SIGNAL \x_in[0]~input_o\ : std_logic;
SIGNAL \count[0]~1_combout\ : std_logic;
SIGNAL \count[1]~0_combout\ : std_logic;
SIGNAL \load~0_combout\ : std_logic;
SIGNAL \load~q\ : std_logic;
SIGNAL \x[3][0]~q\ : std_logic;
SIGNAL \x[2][0]~q\ : std_logic;
SIGNAL \x[1][0]~q\ : std_logic;
SIGNAL \Add27~1_sumout\ : std_logic;
SIGNAL \x[0][0]~q\ : std_logic;
SIGNAL \Add14~1_sumout\ : std_logic;
SIGNAL \Add28~33_sumout\ : std_logic;
SIGNAL \Add28~1_sumout\ : std_logic;
SIGNAL \x_in[1]~input_o\ : std_logic;
SIGNAL \x[3][1]~q\ : std_logic;
SIGNAL \x[2][1]~q\ : std_logic;
SIGNAL \x[1][1]~q\ : std_logic;
SIGNAL \Add27~2\ : std_logic;
SIGNAL \Add27~5_sumout\ : std_logic;
SIGNAL \x[0][1]~q\ : std_logic;
SIGNAL \Add14~2\ : std_logic;
SIGNAL \Add14~5_sumout\ : std_logic;
SIGNAL \Add28~34\ : std_logic;
SIGNAL \Add28~35\ : std_logic;
SIGNAL \Add28~37_sumout\ : std_logic;
SIGNAL \Add28~2\ : std_logic;
SIGNAL \Add28~5_sumout\ : std_logic;
SIGNAL \x_in[2]~input_o\ : std_logic;
SIGNAL \x[3][2]~q\ : std_logic;
SIGNAL \x[2][2]~q\ : std_logic;
SIGNAL \x[1][2]~q\ : std_logic;
SIGNAL \x[0][2]~q\ : std_logic;
SIGNAL \Add14~6\ : std_logic;
SIGNAL \Add14~9_sumout\ : std_logic;
SIGNAL \Add28~38\ : std_logic;
SIGNAL \Add28~39\ : std_logic;
SIGNAL \Add28~41_sumout\ : std_logic;
SIGNAL \Add27~6\ : std_logic;
SIGNAL \Add27~9_sumout\ : std_logic;
SIGNAL \Add28~6\ : std_logic;
SIGNAL \Add28~9_sumout\ : std_logic;
SIGNAL \x_in[3]~input_o\ : std_logic;
SIGNAL \x[3][3]~q\ : std_logic;
SIGNAL \x[2][3]~q\ : std_logic;
SIGNAL \x[1][3]~q\ : std_logic;
SIGNAL \Add27~10\ : std_logic;
SIGNAL \Add27~17_sumout\ : std_logic;
SIGNAL \x[0][3]~q\ : std_logic;
SIGNAL \Add14~10\ : std_logic;
SIGNAL \Add14~13_sumout\ : std_logic;
SIGNAL \Add28~42\ : std_logic;
SIGNAL \Add28~43\ : std_logic;
SIGNAL \Add28~45_sumout\ : std_logic;
SIGNAL \Add28~10\ : std_logic;
SIGNAL \Add28~13_sumout\ : std_logic;
SIGNAL \x_in[4]~input_o\ : std_logic;
SIGNAL \x[3][4]~q\ : std_logic;
SIGNAL \x[2][4]~q\ : std_logic;
SIGNAL \x[1][4]~q\ : std_logic;
SIGNAL \Add27~18\ : std_logic;
SIGNAL \Add27~21_sumout\ : std_logic;
SIGNAL \x[0][4]~feeder_combout\ : std_logic;
SIGNAL \x[0][4]~q\ : std_logic;
SIGNAL \Add14~14\ : std_logic;
SIGNAL \Add14~17_sumout\ : std_logic;
SIGNAL \Add28~46\ : std_logic;
SIGNAL \Add28~47\ : std_logic;
SIGNAL \Add28~49_sumout\ : std_logic;
SIGNAL \Add28~14\ : std_logic;
SIGNAL \Add28~17_sumout\ : std_logic;
SIGNAL \x_in[5]~input_o\ : std_logic;
SIGNAL \x[3][5]~q\ : std_logic;
SIGNAL \x[2][5]~q\ : std_logic;
SIGNAL \Add14~18\ : std_logic;
SIGNAL \Add14~21_sumout\ : std_logic;
SIGNAL \x[1][5]~q\ : std_logic;
SIGNAL \x[0][5]~q\ : std_logic;
SIGNAL \Add28~50\ : std_logic;
SIGNAL \Add28~51\ : std_logic;
SIGNAL \Add28~53_sumout\ : std_logic;
SIGNAL \Add27~22\ : std_logic;
SIGNAL \Add27~25_sumout\ : std_logic;
SIGNAL \Add28~18\ : std_logic;
SIGNAL \Add28~21_sumout\ : std_logic;
SIGNAL \x_in[6]~input_o\ : std_logic;
SIGNAL \x[3][6]~q\ : std_logic;
SIGNAL \x[2][6]~q\ : std_logic;
SIGNAL \x[1][6]~feeder_combout\ : std_logic;
SIGNAL \x[1][6]~DUPLICATE_q\ : std_logic;
SIGNAL \Add27~26\ : std_logic;
SIGNAL \Add27~29_sumout\ : std_logic;
SIGNAL \x[0][6]~DUPLICATE_q\ : std_logic;
SIGNAL \Add14~22\ : std_logic;
SIGNAL \Add14~25_sumout\ : std_logic;
SIGNAL \Add28~54\ : std_logic;
SIGNAL \Add28~55\ : std_logic;
SIGNAL \Add28~57_sumout\ : std_logic;
SIGNAL \Add28~22\ : std_logic;
SIGNAL \Add28~25_sumout\ : std_logic;
SIGNAL \x_in[7]~input_o\ : std_logic;
SIGNAL \x[3][7]~q\ : std_logic;
SIGNAL \x[2][7]~q\ : std_logic;
SIGNAL \x[1][7]~feeder_combout\ : std_logic;
SIGNAL \x[1][7]~DUPLICATE_q\ : std_logic;
SIGNAL \x[0][7]~q\ : std_logic;
SIGNAL \Add14~26\ : std_logic;
SIGNAL \Add14~34\ : std_logic;
SIGNAL \Add14~29_sumout\ : std_logic;
SIGNAL \Add14~33_sumout\ : std_logic;
SIGNAL \Add28~58\ : std_logic;
SIGNAL \Add28~59\ : std_logic;
SIGNAL \Add28~86\ : std_logic;
SIGNAL \Add28~87\ : std_logic;
SIGNAL \Add28~78\ : std_logic;
SIGNAL \Add28~79\ : std_logic;
SIGNAL \Add28~70\ : std_logic;
SIGNAL \Add28~71\ : std_logic;
SIGNAL \Add28~61_sumout\ : std_logic;
SIGNAL \Add27~30\ : std_logic;
SIGNAL \Add27~34\ : std_logic;
SIGNAL \Add27~13_sumout\ : std_logic;
SIGNAL \Add28~69_sumout\ : std_logic;
SIGNAL \Add28~77_sumout\ : std_logic;
SIGNAL \Add28~85_sumout\ : std_logic;
SIGNAL \Add27~33_sumout\ : std_logic;
SIGNAL \Add28~26\ : std_logic;
SIGNAL \Add28~90_cout\ : std_logic;
SIGNAL \Add28~82_cout\ : std_logic;
SIGNAL \Add28~74_cout\ : std_logic;
SIGNAL \Add28~66_cout\ : std_logic;
SIGNAL \Add28~29_sumout\ : std_logic;
SIGNAL \h_in[0]~input_o\ : std_logic;
SIGNAL \h[3][0]~q\ : std_logic;
SIGNAL \h[2][0]~q\ : std_logic;
SIGNAL \h[1][0]~DUPLICATE_q\ : std_logic;
SIGNAL \Add31~1_sumout\ : std_logic;
SIGNAL \h[1][0]~q\ : std_logic;
SIGNAL \h[0][0]~feeder_combout\ : std_logic;
SIGNAL \h[0][0]~q\ : std_logic;
SIGNAL \Add19~1_sumout\ : std_logic;
SIGNAL \Add32~33_sumout\ : std_logic;
SIGNAL \Add32~1_sumout\ : std_logic;
SIGNAL \h_in[1]~input_o\ : std_logic;
SIGNAL \h[3][1]~q\ : std_logic;
SIGNAL \h[2][1]~q\ : std_logic;
SIGNAL \h[1][1]~q\ : std_logic;
SIGNAL \Add31~2\ : std_logic;
SIGNAL \Add31~5_sumout\ : std_logic;
SIGNAL \h[0][1]~q\ : std_logic;
SIGNAL \Add19~2\ : std_logic;
SIGNAL \Add19~5_sumout\ : std_logic;
SIGNAL \Add32~34\ : std_logic;
SIGNAL \Add32~35\ : std_logic;
SIGNAL \Add32~37_sumout\ : std_logic;
SIGNAL \Add32~2\ : std_logic;
SIGNAL \Add32~5_sumout\ : std_logic;
SIGNAL \h_in[2]~input_o\ : std_logic;
SIGNAL \h[3][2]~q\ : std_logic;
SIGNAL \h[2][2]~q\ : std_logic;
SIGNAL \h[1][2]~DUPLICATE_q\ : std_logic;
SIGNAL \Add31~6\ : std_logic;
SIGNAL \Add31~9_sumout\ : std_logic;
SIGNAL \h[0][2]~q\ : std_logic;
SIGNAL \Add19~6\ : std_logic;
SIGNAL \Add19~9_sumout\ : std_logic;
SIGNAL \Add32~38\ : std_logic;
SIGNAL \Add32~39\ : std_logic;
SIGNAL \Add32~41_sumout\ : std_logic;
SIGNAL \Add32~6\ : std_logic;
SIGNAL \Add32~9_sumout\ : std_logic;
SIGNAL \h_in[3]~input_o\ : std_logic;
SIGNAL \h[3][3]~q\ : std_logic;
SIGNAL \h[2][3]~q\ : std_logic;
SIGNAL \h[1][3]~q\ : std_logic;
SIGNAL \h[0][3]~q\ : std_logic;
SIGNAL \Add19~10\ : std_logic;
SIGNAL \Add19~13_sumout\ : std_logic;
SIGNAL \Add32~42\ : std_logic;
SIGNAL \Add32~43\ : std_logic;
SIGNAL \Add32~45_sumout\ : std_logic;
SIGNAL \Add31~10\ : std_logic;
SIGNAL \Add31~17_sumout\ : std_logic;
SIGNAL \Add32~10\ : std_logic;
SIGNAL \Add32~13_sumout\ : std_logic;
SIGNAL \h_in[4]~input_o\ : std_logic;
SIGNAL \h[3][4]~q\ : std_logic;
SIGNAL \h[2][4]~q\ : std_logic;
SIGNAL \h[1][4]~feeder_combout\ : std_logic;
SIGNAL \h[1][4]~q\ : std_logic;
SIGNAL \Add31~18\ : std_logic;
SIGNAL \Add31~21_sumout\ : std_logic;
SIGNAL \h[0][4]~DUPLICATE_q\ : std_logic;
SIGNAL \Add19~14\ : std_logic;
SIGNAL \Add19~17_sumout\ : std_logic;
SIGNAL \Add32~46\ : std_logic;
SIGNAL \Add32~47\ : std_logic;
SIGNAL \Add32~49_sumout\ : std_logic;
SIGNAL \Add32~14\ : std_logic;
SIGNAL \Add32~17_sumout\ : std_logic;
SIGNAL \h_in[5]~input_o\ : std_logic;
SIGNAL \h[3][5]~q\ : std_logic;
SIGNAL \h[2][5]~q\ : std_logic;
SIGNAL \h[1][5]~feeder_combout\ : std_logic;
SIGNAL \h[1][5]~DUPLICATE_q\ : std_logic;
SIGNAL \Add31~22\ : std_logic;
SIGNAL \Add31~25_sumout\ : std_logic;
SIGNAL \h[1][5]~q\ : std_logic;
SIGNAL \h[0][5]~q\ : std_logic;
SIGNAL \Add19~18\ : std_logic;
SIGNAL \Add19~21_sumout\ : std_logic;
SIGNAL \Add32~50\ : std_logic;
SIGNAL \Add32~51\ : std_logic;
SIGNAL \Add32~53_sumout\ : std_logic;
SIGNAL \Add32~18\ : std_logic;
SIGNAL \Add32~21_sumout\ : std_logic;
SIGNAL \h_in[6]~input_o\ : std_logic;
SIGNAL \h[3][6]~q\ : std_logic;
SIGNAL \h[2][6]~q\ : std_logic;
SIGNAL \Add19~22\ : std_logic;
SIGNAL \Add19~25_sumout\ : std_logic;
SIGNAL \h[1][6]~q\ : std_logic;
SIGNAL \h[0][6]~feeder_combout\ : std_logic;
SIGNAL \h[0][6]~q\ : std_logic;
SIGNAL \Add32~54\ : std_logic;
SIGNAL \Add32~55\ : std_logic;
SIGNAL \Add32~57_sumout\ : std_logic;
SIGNAL \h[1][6]~DUPLICATE_q\ : std_logic;
SIGNAL \Add31~26\ : std_logic;
SIGNAL \Add31~29_sumout\ : std_logic;
SIGNAL \Add32~22\ : std_logic;
SIGNAL \Add32~25_sumout\ : std_logic;
SIGNAL \h_in[7]~input_o\ : std_logic;
SIGNAL \h[3][7]~q\ : std_logic;
SIGNAL \h[2][7]~q\ : std_logic;
SIGNAL \h[1][7]~DUPLICATE_q\ : std_logic;
SIGNAL \h[0][7]~q\ : std_logic;
SIGNAL \Add19~26\ : std_logic;
SIGNAL \Add19~34\ : std_logic;
SIGNAL \Add19~29_sumout\ : std_logic;
SIGNAL \Add19~33_sumout\ : std_logic;
SIGNAL \Add32~58\ : std_logic;
SIGNAL \Add32~59\ : std_logic;
SIGNAL \Add32~86\ : std_logic;
SIGNAL \Add32~87\ : std_logic;
SIGNAL \Add32~78\ : std_logic;
SIGNAL \Add32~79\ : std_logic;
SIGNAL \Add32~70\ : std_logic;
SIGNAL \Add32~71\ : std_logic;
SIGNAL \Add32~61_sumout\ : std_logic;
SIGNAL \h[1][7]~q\ : std_logic;
SIGNAL \Add31~30\ : std_logic;
SIGNAL \Add31~34\ : std_logic;
SIGNAL \Add31~13_sumout\ : std_logic;
SIGNAL \Add32~69_sumout\ : std_logic;
SIGNAL \Add32~77_sumout\ : std_logic;
SIGNAL \Add31~33_sumout\ : std_logic;
SIGNAL \Add32~85_sumout\ : std_logic;
SIGNAL \Add32~26\ : std_logic;
SIGNAL \Add32~90_cout\ : std_logic;
SIGNAL \Add32~82_cout\ : std_logic;
SIGNAL \Add32~74_cout\ : std_logic;
SIGNAL \Add32~66_cout\ : std_logic;
SIGNAL \Add32~29_sumout\ : std_logic;
SIGNAL \capy[2][14]\ : std_logic;
SIGNAL \capy[2][2]\ : std_logic;
SIGNAL \capy[2][1]\ : std_logic;
SIGNAL \capy[2][0]\ : std_logic;
SIGNAL \Add52~30\ : std_logic;
SIGNAL \Add52~26\ : std_logic;
SIGNAL \Add52~1_sumout\ : std_logic;
SIGNAL \capym~10_combout\ : std_logic;
SIGNAL \capym[2][2]~DUPLICATE_q\ : std_logic;
SIGNAL \Add52~25_sumout\ : std_logic;
SIGNAL \capym~30_combout\ : std_logic;
SIGNAL \capym[2][1]~q\ : std_logic;
SIGNAL \Add52~29_sumout\ : std_logic;
SIGNAL \capym~31_combout\ : std_logic;
SIGNAL \capym[2][0]~DUPLICATE_q\ : std_logic;
SIGNAL \Add23~34\ : std_logic;
SIGNAL \Add23~30\ : std_logic;
SIGNAL \Add23~1_sumout\ : std_logic;
SIGNAL \x[1][0]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Add3~1_sumout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~5_sumout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~9_sumout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~13_sumout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add3~14\ : std_logic;
SIGNAL \Add3~17_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add3~18\ : std_logic;
SIGNAL \Add3~21_sumout\ : std_logic;
SIGNAL \x[1][6]~q\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~25_sumout\ : std_logic;
SIGNAL \x[1][7]~q\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Add3~26\ : std_logic;
SIGNAL \Add3~42_cout\ : std_logic;
SIGNAL \Add3~38_cout\ : std_logic;
SIGNAL \Add3~34_cout\ : std_logic;
SIGNAL \Add3~29_sumout\ : std_logic;
SIGNAL \h[0][0]~DUPLICATE_q\ : std_logic;
SIGNAL \Add4~1_sumout\ : std_logic;
SIGNAL \Add6~1_sumout\ : std_logic;
SIGNAL \Add4~2\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~5_sumout\ : std_logic;
SIGNAL \Add6~2\ : std_logic;
SIGNAL \Add6~5_sumout\ : std_logic;
SIGNAL \h[1][2]~q\ : std_logic;
SIGNAL \Add4~6\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~9_sumout\ : std_logic;
SIGNAL \Add6~6\ : std_logic;
SIGNAL \Add6~9_sumout\ : std_logic;
SIGNAL \Add4~10\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~13_sumout\ : std_logic;
SIGNAL \Add6~10\ : std_logic;
SIGNAL \Add6~13_sumout\ : std_logic;
SIGNAL \Add4~14\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~17_sumout\ : std_logic;
SIGNAL \Add6~14\ : std_logic;
SIGNAL \Add6~17_sumout\ : std_logic;
SIGNAL \Add4~18\ : std_logic;
SIGNAL \Add4~19\ : std_logic;
SIGNAL \Add4~21_sumout\ : std_logic;
SIGNAL \Add6~18\ : std_logic;
SIGNAL \Add6~21_sumout\ : std_logic;
SIGNAL \Add4~22\ : std_logic;
SIGNAL \Add4~23\ : std_logic;
SIGNAL \Add4~25_sumout\ : std_logic;
SIGNAL \Add6~22\ : std_logic;
SIGNAL \Add6~25_sumout\ : std_logic;
SIGNAL \Add4~26\ : std_logic;
SIGNAL \Add4~27\ : std_logic;
SIGNAL \Add4~38\ : std_logic;
SIGNAL \Add4~39\ : std_logic;
SIGNAL \Add4~34\ : std_logic;
SIGNAL \Add4~35\ : std_logic;
SIGNAL \Add4~29_sumout\ : std_logic;
SIGNAL \Add4~33_sumout\ : std_logic;
SIGNAL \Add4~37_sumout\ : std_logic;
SIGNAL \Add6~26\ : std_logic;
SIGNAL \Add6~42_cout\ : std_logic;
SIGNAL \Add6~38_cout\ : std_logic;
SIGNAL \Add6~34_cout\ : std_logic;
SIGNAL \Add6~29_sumout\ : std_logic;
SIGNAL \capy[0][2]\ : std_logic;
SIGNAL \capy[0][1]\ : std_logic;
SIGNAL \capy[0][0]\ : std_logic;
SIGNAL \Add50~14\ : std_logic;
SIGNAL \Add50~10\ : std_logic;
SIGNAL \Add50~1_sumout\ : std_logic;
SIGNAL \capy[0][14]\ : std_logic;
SIGNAL \capym~0_combout\ : std_logic;
SIGNAL \capym[0][2]~q\ : std_logic;
SIGNAL \Add50~9_sumout\ : std_logic;
SIGNAL \capym~11_combout\ : std_logic;
SIGNAL \capym[0][1]~DUPLICATE_q\ : std_logic;
SIGNAL \Add23~29_sumout\ : std_logic;
SIGNAL \Add23~33_sumout\ : std_logic;
SIGNAL \Add50~13_sumout\ : std_logic;
SIGNAL \capym~12_combout\ : std_logic;
SIGNAL \capym[0][0]~DUPLICATE_q\ : std_logic;
SIGNAL \Add47~38\ : std_logic;
SIGNAL \Add47~34\ : std_logic;
SIGNAL \Add47~1_sumout\ : std_logic;
SIGNAL \Add47~37_sumout\ : std_logic;
SIGNAL \Add47~33_sumout\ : std_logic;
SIGNAL \Add12~1_sumout\ : std_logic;
SIGNAL \Add13~1_sumout\ : std_logic;
SIGNAL \Add12~2\ : std_logic;
SIGNAL \Add12~5_sumout\ : std_logic;
SIGNAL \Add13~2\ : std_logic;
SIGNAL \Add13~5_sumout\ : std_logic;
SIGNAL \Add12~6\ : std_logic;
SIGNAL \Add12~9_sumout\ : std_logic;
SIGNAL \Add13~6\ : std_logic;
SIGNAL \Add13~9_sumout\ : std_logic;
SIGNAL \Add12~10\ : std_logic;
SIGNAL \Add12~13_sumout\ : std_logic;
SIGNAL \Add13~10\ : std_logic;
SIGNAL \Add13~13_sumout\ : std_logic;
SIGNAL \Add12~14\ : std_logic;
SIGNAL \Add12~17_sumout\ : std_logic;
SIGNAL \Add11~1_sumout\ : std_logic;
SIGNAL \Add13~14\ : std_logic;
SIGNAL \Add13~17_sumout\ : std_logic;
SIGNAL \Add11~2\ : std_logic;
SIGNAL \Add11~3\ : std_logic;
SIGNAL \Add11~5_sumout\ : std_logic;
SIGNAL \Add12~18\ : std_logic;
SIGNAL \Add12~21_sumout\ : std_logic;
SIGNAL \Add13~18\ : std_logic;
SIGNAL \Add13~21_sumout\ : std_logic;
SIGNAL \Add12~22\ : std_logic;
SIGNAL \Add12~25_sumout\ : std_logic;
SIGNAL \Add11~6\ : std_logic;
SIGNAL \Add11~7\ : std_logic;
SIGNAL \Add11~9_sumout\ : std_logic;
SIGNAL \Add13~22\ : std_logic;
SIGNAL \Add13~25_sumout\ : std_logic;
SIGNAL \x[0][7]~DUPLICATE_q\ : std_logic;
SIGNAL \Add11~10\ : std_logic;
SIGNAL \Add11~11\ : std_logic;
SIGNAL \Add11~42\ : std_logic;
SIGNAL \Add11~43\ : std_logic;
SIGNAL \Add11~38\ : std_logic;
SIGNAL \Add11~39\ : std_logic;
SIGNAL \Add11~34\ : std_logic;
SIGNAL \Add11~35\ : std_logic;
SIGNAL \Add11~30\ : std_logic;
SIGNAL \Add11~31\ : std_logic;
SIGNAL \Add11~26\ : std_logic;
SIGNAL \Add11~27\ : std_logic;
SIGNAL \Add11~22\ : std_logic;
SIGNAL \Add11~23\ : std_logic;
SIGNAL \Add11~18\ : std_logic;
SIGNAL \Add11~19\ : std_logic;
SIGNAL \Add11~13_sumout\ : std_logic;
SIGNAL \Add12~26\ : std_logic;
SIGNAL \Add12~34\ : std_logic;
SIGNAL \Add12~29_sumout\ : std_logic;
SIGNAL \Add11~17_sumout\ : std_logic;
SIGNAL \Add11~21_sumout\ : std_logic;
SIGNAL \Add11~25_sumout\ : std_logic;
SIGNAL \Add11~29_sumout\ : std_logic;
SIGNAL \Add11~33_sumout\ : std_logic;
SIGNAL \Add11~37_sumout\ : std_logic;
SIGNAL \Add11~41_sumout\ : std_logic;
SIGNAL \Add12~33_sumout\ : std_logic;
SIGNAL \Add13~26\ : std_logic;
SIGNAL \Add13~58_cout\ : std_logic;
SIGNAL \Add13~54_cout\ : std_logic;
SIGNAL \Add13~50_cout\ : std_logic;
SIGNAL \Add13~46_cout\ : std_logic;
SIGNAL \Add13~42_cout\ : std_logic;
SIGNAL \Add13~38_cout\ : std_logic;
SIGNAL \Add13~34_cout\ : std_logic;
SIGNAL \Add13~29_sumout\ : std_logic;
SIGNAL \Add17~1_sumout\ : std_logic;
SIGNAL \Add18~1_sumout\ : std_logic;
SIGNAL \Add17~2\ : std_logic;
SIGNAL \Add17~5_sumout\ : std_logic;
SIGNAL \Add18~2\ : std_logic;
SIGNAL \Add18~5_sumout\ : std_logic;
SIGNAL \Add17~6\ : std_logic;
SIGNAL \Add17~9_sumout\ : std_logic;
SIGNAL \Add18~6\ : std_logic;
SIGNAL \Add18~9_sumout\ : std_logic;
SIGNAL \h[0][3]~DUPLICATE_q\ : std_logic;
SIGNAL \Add17~10\ : std_logic;
SIGNAL \Add17~13_sumout\ : std_logic;
SIGNAL \Add18~10\ : std_logic;
SIGNAL \Add18~13_sumout\ : std_logic;
SIGNAL \h[0][4]~q\ : std_logic;
SIGNAL \Add16~1_sumout\ : std_logic;
SIGNAL \Add17~14\ : std_logic;
SIGNAL \Add17~17_sumout\ : std_logic;
SIGNAL \Add18~14\ : std_logic;
SIGNAL \Add18~17_sumout\ : std_logic;
SIGNAL \Add16~2\ : std_logic;
SIGNAL \Add16~3\ : std_logic;
SIGNAL \Add16~5_sumout\ : std_logic;
SIGNAL \Add17~18\ : std_logic;
SIGNAL \Add17~21_sumout\ : std_logic;
SIGNAL \Add18~18\ : std_logic;
SIGNAL \Add18~21_sumout\ : std_logic;
SIGNAL \Add17~22\ : std_logic;
SIGNAL \Add17~25_sumout\ : std_logic;
SIGNAL \Add16~6\ : std_logic;
SIGNAL \Add16~7\ : std_logic;
SIGNAL \Add16~9_sumout\ : std_logic;
SIGNAL \Add18~22\ : std_logic;
SIGNAL \Add18~25_sumout\ : std_logic;
SIGNAL \Add16~10\ : std_logic;
SIGNAL \Add16~11\ : std_logic;
SIGNAL \Add16~42\ : std_logic;
SIGNAL \Add16~43\ : std_logic;
SIGNAL \Add16~38\ : std_logic;
SIGNAL \Add16~39\ : std_logic;
SIGNAL \Add16~34\ : std_logic;
SIGNAL \Add16~35\ : std_logic;
SIGNAL \Add16~30\ : std_logic;
SIGNAL \Add16~31\ : std_logic;
SIGNAL \Add16~26\ : std_logic;
SIGNAL \Add16~27\ : std_logic;
SIGNAL \Add16~22\ : std_logic;
SIGNAL \Add16~23\ : std_logic;
SIGNAL \Add16~18\ : std_logic;
SIGNAL \Add16~19\ : std_logic;
SIGNAL \Add16~13_sumout\ : std_logic;
SIGNAL \Add17~26\ : std_logic;
SIGNAL \Add17~34\ : std_logic;
SIGNAL \Add17~29_sumout\ : std_logic;
SIGNAL \Add16~17_sumout\ : std_logic;
SIGNAL \Add16~21_sumout\ : std_logic;
SIGNAL \Add16~25_sumout\ : std_logic;
SIGNAL \Add16~29_sumout\ : std_logic;
SIGNAL \Add16~33_sumout\ : std_logic;
SIGNAL \Add16~37_sumout\ : std_logic;
SIGNAL \Add16~41_sumout\ : std_logic;
SIGNAL \Add17~33_sumout\ : std_logic;
SIGNAL \Add18~26\ : std_logic;
SIGNAL \Add18~58_cout\ : std_logic;
SIGNAL \Add18~54_cout\ : std_logic;
SIGNAL \Add18~50_cout\ : std_logic;
SIGNAL \Add18~46_cout\ : std_logic;
SIGNAL \Add18~42_cout\ : std_logic;
SIGNAL \Add18~38_cout\ : std_logic;
SIGNAL \Add18~34_cout\ : std_logic;
SIGNAL \Add18~29_sumout\ : std_logic;
SIGNAL \capy[1][14]\ : std_logic;
SIGNAL \capy[1][13]\ : std_logic;
SIGNAL \capy[1][12]\ : std_logic;
SIGNAL \capy[1][11]\ : std_logic;
SIGNAL \capy[1][10]\ : std_logic;
SIGNAL \capy[1][9]\ : std_logic;
SIGNAL \capy[1][8]\ : std_logic;
SIGNAL \capy[1][7]\ : std_logic;
SIGNAL \capy[1][6]\ : std_logic;
SIGNAL \capy[1][5]\ : std_logic;
SIGNAL \capy[1][4]\ : std_logic;
SIGNAL \capy[1][3]\ : std_logic;
SIGNAL \capy[1][2]\ : std_logic;
SIGNAL \capy[1][1]\ : std_logic;
SIGNAL \capy[1][0]\ : std_logic;
SIGNAL \Add51~2\ : std_logic;
SIGNAL \Add51~6\ : std_logic;
SIGNAL \Add51~10\ : std_logic;
SIGNAL \Add51~14\ : std_logic;
SIGNAL \Add51~18\ : std_logic;
SIGNAL \Add51~26\ : std_logic;
SIGNAL \Add51~30\ : std_logic;
SIGNAL \Add51~58_cout\ : std_logic;
SIGNAL \Add51~54_cout\ : std_logic;
SIGNAL \Add51~50_cout\ : std_logic;
SIGNAL \Add51~46_cout\ : std_logic;
SIGNAL \Add51~42_cout\ : std_logic;
SIGNAL \Add51~38_cout\ : std_logic;
SIGNAL \Add51~34_cout\ : std_logic;
SIGNAL \Add51~21_sumout\ : std_logic;
SIGNAL \capym~27_combout\ : std_logic;
SIGNAL \capym[1][7]~q\ : std_logic;
SIGNAL \capy[0][13]\ : std_logic;
SIGNAL \capy[0][12]\ : std_logic;
SIGNAL \capy[0][11]\ : std_logic;
SIGNAL \capy[0][10]\ : std_logic;
SIGNAL \capy[0][9]\ : std_logic;
SIGNAL \capy[0][8]\ : std_logic;
SIGNAL \capy[0][7]\ : std_logic;
SIGNAL \capy[0][6]\ : std_logic;
SIGNAL \capy[0][5]\ : std_logic;
SIGNAL \capy[0][4]\ : std_logic;
SIGNAL \capy[0][3]\ : std_logic;
SIGNAL \Add50~2\ : std_logic;
SIGNAL \Add50~6\ : std_logic;
SIGNAL \Add50~18\ : std_logic;
SIGNAL \Add50~22\ : std_logic;
SIGNAL \Add50~26\ : std_logic;
SIGNAL \Add50~58_cout\ : std_logic;
SIGNAL \Add50~54_cout\ : std_logic;
SIGNAL \Add50~50_cout\ : std_logic;
SIGNAL \Add50~46_cout\ : std_logic;
SIGNAL \Add50~42_cout\ : std_logic;
SIGNAL \Add50~38_cout\ : std_logic;
SIGNAL \Add50~34_cout\ : std_logic;
SIGNAL \Add50~29_sumout\ : std_logic;
SIGNAL \capym~25_combout\ : std_logic;
SIGNAL \capym[0][7]~q\ : std_logic;
SIGNAL \Add40~1_sumout\ : std_logic;
SIGNAL \Add40~2\ : std_logic;
SIGNAL \Add40~5_sumout\ : std_logic;
SIGNAL \Add40~6\ : std_logic;
SIGNAL \Add40~9_sumout\ : std_logic;
SIGNAL \Add40~10\ : std_logic;
SIGNAL \Add40~13_sumout\ : std_logic;
SIGNAL \Add40~33_sumout\ : std_logic;
SIGNAL \Add40~14\ : std_logic;
SIGNAL \Add40~17_sumout\ : std_logic;
SIGNAL \Add40~34\ : std_logic;
SIGNAL \Add40~35\ : std_logic;
SIGNAL \Add40~37_sumout\ : std_logic;
SIGNAL \Add40~18\ : std_logic;
SIGNAL \Add40~21_sumout\ : std_logic;
SIGNAL \x[0][6]~q\ : std_logic;
SIGNAL \Add40~38\ : std_logic;
SIGNAL \Add40~39\ : std_logic;
SIGNAL \Add40~41_sumout\ : std_logic;
SIGNAL \Add40~22\ : std_logic;
SIGNAL \Add40~25_sumout\ : std_logic;
SIGNAL \Add40~42\ : std_logic;
SIGNAL \Add40~43\ : std_logic;
SIGNAL \Add40~94\ : std_logic;
SIGNAL \Add40~95\ : std_logic;
SIGNAL \Add40~86\ : std_logic;
SIGNAL \Add40~87\ : std_logic;
SIGNAL \Add40~78\ : std_logic;
SIGNAL \Add40~79\ : std_logic;
SIGNAL \Add40~70\ : std_logic;
SIGNAL \Add40~71\ : std_logic;
SIGNAL \Add40~62\ : std_logic;
SIGNAL \Add40~63\ : std_logic;
SIGNAL \Add40~54\ : std_logic;
SIGNAL \Add40~55\ : std_logic;
SIGNAL \Add40~45_sumout\ : std_logic;
SIGNAL \Add40~53_sumout\ : std_logic;
SIGNAL \Add40~61_sumout\ : std_logic;
SIGNAL \Add40~69_sumout\ : std_logic;
SIGNAL \Add40~77_sumout\ : std_logic;
SIGNAL \Add40~85_sumout\ : std_logic;
SIGNAL \Add40~93_sumout\ : std_logic;
SIGNAL \Add40~26\ : std_logic;
SIGNAL \Add40~98_cout\ : std_logic;
SIGNAL \Add40~90_cout\ : std_logic;
SIGNAL \Add40~82_cout\ : std_logic;
SIGNAL \Add40~74_cout\ : std_logic;
SIGNAL \Add40~66_cout\ : std_logic;
SIGNAL \Add40~58_cout\ : std_logic;
SIGNAL \Add40~50_cout\ : std_logic;
SIGNAL \Add40~29_sumout\ : std_logic;
SIGNAL \Add43~1_sumout\ : std_logic;
SIGNAL \Add43~2\ : std_logic;
SIGNAL \Add43~5_sumout\ : std_logic;
SIGNAL \Add43~6\ : std_logic;
SIGNAL \Add43~9_sumout\ : std_logic;
SIGNAL \Add43~10\ : std_logic;
SIGNAL \Add43~13_sumout\ : std_logic;
SIGNAL \Add43~33_sumout\ : std_logic;
SIGNAL \Add43~14\ : std_logic;
SIGNAL \Add43~17_sumout\ : std_logic;
SIGNAL \Add43~34\ : std_logic;
SIGNAL \Add43~35\ : std_logic;
SIGNAL \Add43~37_sumout\ : std_logic;
SIGNAL \Add43~18\ : std_logic;
SIGNAL \Add43~21_sumout\ : std_logic;
SIGNAL \Add43~38\ : std_logic;
SIGNAL \Add43~39\ : std_logic;
SIGNAL \Add43~41_sumout\ : std_logic;
SIGNAL \Add43~22\ : std_logic;
SIGNAL \Add43~25_sumout\ : std_logic;
SIGNAL \Add43~42\ : std_logic;
SIGNAL \Add43~43\ : std_logic;
SIGNAL \Add43~94\ : std_logic;
SIGNAL \Add43~95\ : std_logic;
SIGNAL \Add43~86\ : std_logic;
SIGNAL \Add43~87\ : std_logic;
SIGNAL \Add43~78\ : std_logic;
SIGNAL \Add43~79\ : std_logic;
SIGNAL \Add43~70\ : std_logic;
SIGNAL \Add43~71\ : std_logic;
SIGNAL \Add43~62\ : std_logic;
SIGNAL \Add43~63\ : std_logic;
SIGNAL \Add43~54\ : std_logic;
SIGNAL \Add43~55\ : std_logic;
SIGNAL \Add43~45_sumout\ : std_logic;
SIGNAL \Add43~53_sumout\ : std_logic;
SIGNAL \Add43~61_sumout\ : std_logic;
SIGNAL \Add43~69_sumout\ : std_logic;
SIGNAL \Add43~77_sumout\ : std_logic;
SIGNAL \Add43~85_sumout\ : std_logic;
SIGNAL \Add43~93_sumout\ : std_logic;
SIGNAL \Add43~26\ : std_logic;
SIGNAL \Add43~98_cout\ : std_logic;
SIGNAL \Add43~90_cout\ : std_logic;
SIGNAL \Add43~82_cout\ : std_logic;
SIGNAL \Add43~74_cout\ : std_logic;
SIGNAL \Add43~66_cout\ : std_logic;
SIGNAL \Add43~58_cout\ : std_logic;
SIGNAL \Add43~50_cout\ : std_logic;
SIGNAL \Add43~29_sumout\ : std_logic;
SIGNAL \capy[3][14]\ : std_logic;
SIGNAL \capy[3][13]\ : std_logic;
SIGNAL \capy[3][12]\ : std_logic;
SIGNAL \capy[3][11]\ : std_logic;
SIGNAL \capy[3][10]\ : std_logic;
SIGNAL \capy[3][9]\ : std_logic;
SIGNAL \capy[3][8]\ : std_logic;
SIGNAL \capy[3][7]\ : std_logic;
SIGNAL \capy[3][6]\ : std_logic;
SIGNAL \capy[3][5]\ : std_logic;
SIGNAL \capy[3][4]\ : std_logic;
SIGNAL \capy[3][3]\ : std_logic;
SIGNAL \capy[3][2]\ : std_logic;
SIGNAL \capy[3][1]\ : std_logic;
SIGNAL \capy[3][0]\ : std_logic;
SIGNAL \Add53~2\ : std_logic;
SIGNAL \Add53~6\ : std_logic;
SIGNAL \Add53~10\ : std_logic;
SIGNAL \Add53~14\ : std_logic;
SIGNAL \Add53~18\ : std_logic;
SIGNAL \Add53~26\ : std_logic;
SIGNAL \Add53~30\ : std_logic;
SIGNAL \Add53~58_cout\ : std_logic;
SIGNAL \Add53~54_cout\ : std_logic;
SIGNAL \Add53~50_cout\ : std_logic;
SIGNAL \Add53~46_cout\ : std_logic;
SIGNAL \Add53~42_cout\ : std_logic;
SIGNAL \Add53~38_cout\ : std_logic;
SIGNAL \Add53~34_cout\ : std_logic;
SIGNAL \Add53~21_sumout\ : std_logic;
SIGNAL \capym~7_combout\ : std_logic;
SIGNAL \capym[3][7]~DUPLICATE_q\ : std_logic;
SIGNAL \capym[3][7]~q\ : std_logic;
SIGNAL \Add53~29_sumout\ : std_logic;
SIGNAL \capym~9_combout\ : std_logic;
SIGNAL \capym[3][6]~DUPLICATE_q\ : std_logic;
SIGNAL \Add53~25_sumout\ : std_logic;
SIGNAL \capym~8_combout\ : std_logic;
SIGNAL \capym[3][5]~feeder_combout\ : std_logic;
SIGNAL \capym[3][5]~q\ : std_logic;
SIGNAL \Add53~17_sumout\ : std_logic;
SIGNAL \capym~6_combout\ : std_logic;
SIGNAL \capym[3][4]~q\ : std_logic;
SIGNAL \Add53~13_sumout\ : std_logic;
SIGNAL \capym~5_combout\ : std_logic;
SIGNAL \capym[3][3]~q\ : std_logic;
SIGNAL \Add53~9_sumout\ : std_logic;
SIGNAL \capym~4_combout\ : std_logic;
SIGNAL \capym[3][2]~DUPLICATE_q\ : std_logic;
SIGNAL \Add53~5_sumout\ : std_logic;
SIGNAL \capym~3_combout\ : std_logic;
SIGNAL \capym[3][1]~DUPLICATE_q\ : std_logic;
SIGNAL \Add53~1_sumout\ : std_logic;
SIGNAL \capym~2_combout\ : std_logic;
SIGNAL \capym[3][0]~DUPLICATE_q\ : std_logic;
SIGNAL \Add37~2\ : std_logic;
SIGNAL \Add37~6\ : std_logic;
SIGNAL \Add37~10\ : std_logic;
SIGNAL \Add37~14\ : std_logic;
SIGNAL \Add37~18\ : std_logic;
SIGNAL \Add37~26\ : std_logic;
SIGNAL \Add37~30\ : std_logic;
SIGNAL \Add37~34\ : std_logic;
SIGNAL \Add37~21_sumout\ : std_logic;
SIGNAL \Add37~33_sumout\ : std_logic;
SIGNAL \Add37~29_sumout\ : std_logic;
SIGNAL \Add51~29_sumout\ : std_logic;
SIGNAL \capym~29_combout\ : std_logic;
SIGNAL \capym[1][6]~q\ : std_logic;
SIGNAL \Add51~25_sumout\ : std_logic;
SIGNAL \capym~28_combout\ : std_logic;
SIGNAL \capym[1][5]~q\ : std_logic;
SIGNAL \Add37~25_sumout\ : std_logic;
SIGNAL \Add37~17_sumout\ : std_logic;
SIGNAL \Add51~17_sumout\ : std_logic;
SIGNAL \capym~26_combout\ : std_logic;
SIGNAL \capym[1][4]~q\ : std_logic;
SIGNAL \Add37~13_sumout\ : std_logic;
SIGNAL \Add51~13_sumout\ : std_logic;
SIGNAL \capym~24_combout\ : std_logic;
SIGNAL \capym[1][3]~q\ : std_logic;
SIGNAL \Add51~9_sumout\ : std_logic;
SIGNAL \capym~21_combout\ : std_logic;
SIGNAL \capym[1][2]~DUPLICATE_q\ : std_logic;
SIGNAL \Add37~9_sumout\ : std_logic;
SIGNAL \Add50~25_sumout\ : std_logic;
SIGNAL \capym~22_combout\ : std_logic;
SIGNAL \capym[0][6]~q\ : std_logic;
SIGNAL \Add50~21_sumout\ : std_logic;
SIGNAL \capym~19_combout\ : std_logic;
SIGNAL \capym[0][5]~q\ : std_logic;
SIGNAL \Add51~5_sumout\ : std_logic;
SIGNAL \capym~18_combout\ : std_logic;
SIGNAL \capym[1][1]~q\ : std_logic;
SIGNAL \Add37~5_sumout\ : std_logic;
SIGNAL \Add51~1_sumout\ : std_logic;
SIGNAL \capym~15_combout\ : std_logic;
SIGNAL \capym[1][0]~DUPLICATE_q\ : std_logic;
SIGNAL \Add50~17_sumout\ : std_logic;
SIGNAL \capym~16_combout\ : std_logic;
SIGNAL \capym[0][4]~q\ : std_logic;
SIGNAL \Add37~1_sumout\ : std_logic;
SIGNAL \Add46~2\ : std_logic;
SIGNAL \Add46~3\ : std_logic;
SIGNAL \Add46~6\ : std_logic;
SIGNAL \Add46~7\ : std_logic;
SIGNAL \Add46~10\ : std_logic;
SIGNAL \Add46~11\ : std_logic;
SIGNAL \Add46~14\ : std_logic;
SIGNAL \Add46~15\ : std_logic;
SIGNAL \Add46~18\ : std_logic;
SIGNAL \Add46~19\ : std_logic;
SIGNAL \Add46~42\ : std_logic;
SIGNAL \Add46~43\ : std_logic;
SIGNAL \Add46~38\ : std_logic;
SIGNAL \Add46~39\ : std_logic;
SIGNAL \Add46~34\ : std_logic;
SIGNAL \Add46~35\ : std_logic;
SIGNAL \Add46~30\ : std_logic;
SIGNAL \Add46~31\ : std_logic;
SIGNAL \Add46~26\ : std_logic;
SIGNAL \Add46~27\ : std_logic;
SIGNAL \Add46~21_sumout\ : std_logic;
SIGNAL \capy[2][13]\ : std_logic;
SIGNAL \capy[2][12]\ : std_logic;
SIGNAL \capy[2][11]\ : std_logic;
SIGNAL \capy[2][10]\ : std_logic;
SIGNAL \capy[2][9]\ : std_logic;
SIGNAL \capy[2][8]\ : std_logic;
SIGNAL \capy[2][7]\ : std_logic;
SIGNAL \capy[2][6]\ : std_logic;
SIGNAL \capy[2][5]\ : std_logic;
SIGNAL \capy[2][4]\ : std_logic;
SIGNAL \capy[2][3]\ : std_logic;
SIGNAL \Add52~2\ : std_logic;
SIGNAL \Add52~6\ : std_logic;
SIGNAL \Add52~10\ : std_logic;
SIGNAL \Add52~14\ : std_logic;
SIGNAL \Add52~18\ : std_logic;
SIGNAL \Add52~58_cout\ : std_logic;
SIGNAL \Add52~54_cout\ : std_logic;
SIGNAL \Add52~50_cout\ : std_logic;
SIGNAL \Add52~46_cout\ : std_logic;
SIGNAL \Add52~42_cout\ : std_logic;
SIGNAL \Add52~38_cout\ : std_logic;
SIGNAL \Add52~34_cout\ : std_logic;
SIGNAL \Add52~21_sumout\ : std_logic;
SIGNAL \capym~23_combout\ : std_logic;
SIGNAL \capym[2][7]~DUPLICATE_q\ : std_logic;
SIGNAL \Add52~17_sumout\ : std_logic;
SIGNAL \capym~20_combout\ : std_logic;
SIGNAL \capym[2][6]~DUPLICATE_q\ : std_logic;
SIGNAL \Add52~13_sumout\ : std_logic;
SIGNAL \capym~17_combout\ : std_logic;
SIGNAL \capym[2][5]~q\ : std_logic;
SIGNAL \Add52~9_sumout\ : std_logic;
SIGNAL \capym~14_combout\ : std_logic;
SIGNAL \capym[2][4]~q\ : std_logic;
SIGNAL \Add52~5_sumout\ : std_logic;
SIGNAL \capym~13_combout\ : std_logic;
SIGNAL \capym[2][3]~DUPLICATE_q\ : std_logic;
SIGNAL \Add23~2\ : std_logic;
SIGNAL \Add23~6\ : std_logic;
SIGNAL \Add23~10\ : std_logic;
SIGNAL \Add23~14\ : std_logic;
SIGNAL \Add23~18\ : std_logic;
SIGNAL \Add23~22\ : std_logic;
SIGNAL \Add23~25_sumout\ : std_logic;
SIGNAL \Add46~25_sumout\ : std_logic;
SIGNAL \Add46~29_sumout\ : std_logic;
SIGNAL \Add46~33_sumout\ : std_logic;
SIGNAL \Add46~37_sumout\ : std_logic;
SIGNAL \Add46~41_sumout\ : std_logic;
SIGNAL \Add46~17_sumout\ : std_logic;
SIGNAL \Add23~21_sumout\ : std_logic;
SIGNAL \Add46~13_sumout\ : std_logic;
SIGNAL \Add23~17_sumout\ : std_logic;
SIGNAL \Add46~9_sumout\ : std_logic;
SIGNAL \Add23~13_sumout\ : std_logic;
SIGNAL \Add46~5_sumout\ : std_logic;
SIGNAL \Add23~9_sumout\ : std_logic;
SIGNAL \Add46~1_sumout\ : std_logic;
SIGNAL \Add50~5_sumout\ : std_logic;
SIGNAL \capym~1_combout\ : std_logic;
SIGNAL \capym[0][3]~q\ : std_logic;
SIGNAL \Add23~5_sumout\ : std_logic;
SIGNAL \Add47~2\ : std_logic;
SIGNAL \Add47~6\ : std_logic;
SIGNAL \Add47~10\ : std_logic;
SIGNAL \Add47~14\ : std_logic;
SIGNAL \Add47~18\ : std_logic;
SIGNAL \Add47~22\ : std_logic;
SIGNAL \Add47~26\ : std_logic;
SIGNAL \Add47~58\ : std_logic;
SIGNAL \Add47~54\ : std_logic;
SIGNAL \Add47~50\ : std_logic;
SIGNAL \Add47~46\ : std_logic;
SIGNAL \Add47~42\ : std_logic;
SIGNAL \Add47~29_sumout\ : std_logic;
SIGNAL \Add49~34_cout\ : std_logic;
SIGNAL \Add49~1_sumout\ : std_logic;
SIGNAL \y[3][0]~q\ : std_logic;
SIGNAL \Add47~5_sumout\ : std_logic;
SIGNAL \Add49~2\ : std_logic;
SIGNAL \Add49~5_sumout\ : std_logic;
SIGNAL \y[3][1]~q\ : std_logic;
SIGNAL \Add47~9_sumout\ : std_logic;
SIGNAL \Add49~6\ : std_logic;
SIGNAL \Add49~9_sumout\ : std_logic;
SIGNAL \y[3][2]~q\ : std_logic;
SIGNAL \Add47~13_sumout\ : std_logic;
SIGNAL \Add49~10\ : std_logic;
SIGNAL \Add49~13_sumout\ : std_logic;
SIGNAL \y[3][3]~q\ : std_logic;
SIGNAL \Add47~17_sumout\ : std_logic;
SIGNAL \Add49~14\ : std_logic;
SIGNAL \Add49~17_sumout\ : std_logic;
SIGNAL \y[3][4]~q\ : std_logic;
SIGNAL \Add47~21_sumout\ : std_logic;
SIGNAL \Add49~18\ : std_logic;
SIGNAL \Add49~21_sumout\ : std_logic;
SIGNAL \y[3][5]~q\ : std_logic;
SIGNAL \Add47~25_sumout\ : std_logic;
SIGNAL \Add49~22\ : std_logic;
SIGNAL \Add49~25_sumout\ : std_logic;
SIGNAL \y[3][6]~q\ : std_logic;
SIGNAL \Add47~41_sumout\ : std_logic;
SIGNAL \Add47~45_sumout\ : std_logic;
SIGNAL \Add47~49_sumout\ : std_logic;
SIGNAL \Add47~53_sumout\ : std_logic;
SIGNAL \Add47~57_sumout\ : std_logic;
SIGNAL \Add49~26\ : std_logic;
SIGNAL \Add49~58_cout\ : std_logic;
SIGNAL \Add49~54_cout\ : std_logic;
SIGNAL \Add49~50_cout\ : std_logic;
SIGNAL \Add49~46_cout\ : std_logic;
SIGNAL \Add49~42_cout\ : std_logic;
SIGNAL \Add49~38_cout\ : std_logic;
SIGNAL \Add49~29_sumout\ : std_logic;
SIGNAL \y[3][7]~q\ : std_logic;
SIGNAL \capym[2][2]~q\ : std_logic;
SIGNAL \capym[2][0]~q\ : std_logic;
SIGNAL \Add35~82\ : std_logic;
SIGNAL \Add35~83\ : std_logic;
SIGNAL \Add35~78\ : std_logic;
SIGNAL \Add35~79\ : std_logic;
SIGNAL \Add35~33_sumout\ : std_logic;
SIGNAL \capym[1][2]~q\ : std_logic;
SIGNAL \capym[1][0]~q\ : std_logic;
SIGNAL \Add21~34\ : std_logic;
SIGNAL \Add21~30\ : std_logic;
SIGNAL \Add21~1_sumout\ : std_logic;
SIGNAL \Add21~29_sumout\ : std_logic;
SIGNAL \Add35~77_sumout\ : std_logic;
SIGNAL \Add35~81_sumout\ : std_logic;
SIGNAL \Add21~33_sumout\ : std_logic;
SIGNAL \Add35~42\ : std_logic;
SIGNAL \Add35~38\ : std_logic;
SIGNAL \Add35~1_sumout\ : std_logic;
SIGNAL \Add35~41_sumout\ : std_logic;
SIGNAL \capym[2][7]~q\ : std_logic;
SIGNAL \capym[2][6]~q\ : std_logic;
SIGNAL \capym[0][4]~DUPLICATE_q\ : std_logic;
SIGNAL \capym[2][3]~q\ : std_logic;
SIGNAL \Add35~34\ : std_logic;
SIGNAL \Add35~35\ : std_logic;
SIGNAL \Add35~46\ : std_logic;
SIGNAL \Add35~47\ : std_logic;
SIGNAL \Add35~50\ : std_logic;
SIGNAL \Add35~51\ : std_logic;
SIGNAL \Add35~54\ : std_logic;
SIGNAL \Add35~55\ : std_logic;
SIGNAL \Add35~58\ : std_logic;
SIGNAL \Add35~59\ : std_logic;
SIGNAL \Add35~62\ : std_logic;
SIGNAL \Add35~63\ : std_logic;
SIGNAL \Add35~66\ : std_logic;
SIGNAL \Add35~67\ : std_logic;
SIGNAL \Add35~86\ : std_logic;
SIGNAL \Add35~87\ : std_logic;
SIGNAL \Add35~69_sumout\ : std_logic;
SIGNAL \Add21~2\ : std_logic;
SIGNAL \Add21~6\ : std_logic;
SIGNAL \Add21~10\ : std_logic;
SIGNAL \Add21~14\ : std_logic;
SIGNAL \Add21~18\ : std_logic;
SIGNAL \Add21~22\ : std_logic;
SIGNAL \Add21~25_sumout\ : std_logic;
SIGNAL \Add35~85_sumout\ : std_logic;
SIGNAL \Add35~65_sumout\ : std_logic;
SIGNAL \Add21~21_sumout\ : std_logic;
SIGNAL \Add35~61_sumout\ : std_logic;
SIGNAL \Add35~57_sumout\ : std_logic;
SIGNAL \Add21~17_sumout\ : std_logic;
SIGNAL \Add21~13_sumout\ : std_logic;
SIGNAL \Add35~53_sumout\ : std_logic;
SIGNAL \Add35~49_sumout\ : std_logic;
SIGNAL \Add21~9_sumout\ : std_logic;
SIGNAL \Add21~5_sumout\ : std_logic;
SIGNAL \Add35~45_sumout\ : std_logic;
SIGNAL \Add35~2\ : std_logic;
SIGNAL \Add35~6\ : std_logic;
SIGNAL \Add35~10\ : std_logic;
SIGNAL \Add35~14\ : std_logic;
SIGNAL \Add35~18\ : std_logic;
SIGNAL \Add35~22\ : std_logic;
SIGNAL \Add35~26\ : std_logic;
SIGNAL \Add35~90\ : std_logic;
SIGNAL \Add35~74\ : std_logic;
SIGNAL \Add35~29_sumout\ : std_logic;
SIGNAL \Add35~37_sumout\ : std_logic;
SIGNAL \Add39~34_cout\ : std_logic;
SIGNAL \Add39~1_sumout\ : std_logic;
SIGNAL \y[2][0]~q\ : std_logic;
SIGNAL \Add35~5_sumout\ : std_logic;
SIGNAL \Add39~2\ : std_logic;
SIGNAL \Add39~5_sumout\ : std_logic;
SIGNAL \y[2][1]~q\ : std_logic;
SIGNAL \Add35~9_sumout\ : std_logic;
SIGNAL \Add39~6\ : std_logic;
SIGNAL \Add39~9_sumout\ : std_logic;
SIGNAL \y[2][2]~q\ : std_logic;
SIGNAL \Add35~13_sumout\ : std_logic;
SIGNAL \Add39~10\ : std_logic;
SIGNAL \Add39~13_sumout\ : std_logic;
SIGNAL \y[2][3]~q\ : std_logic;
SIGNAL \Add35~17_sumout\ : std_logic;
SIGNAL \Add39~14\ : std_logic;
SIGNAL \Add39~17_sumout\ : std_logic;
SIGNAL \y[2][4]~q\ : std_logic;
SIGNAL \Add35~21_sumout\ : std_logic;
SIGNAL \Add39~18\ : std_logic;
SIGNAL \Add39~21_sumout\ : std_logic;
SIGNAL \y[2][5]~q\ : std_logic;
SIGNAL \Add35~25_sumout\ : std_logic;
SIGNAL \Add39~22\ : std_logic;
SIGNAL \Add39~25_sumout\ : std_logic;
SIGNAL \y[2][6]~q\ : std_logic;
SIGNAL \Add35~73_sumout\ : std_logic;
SIGNAL \Add35~89_sumout\ : std_logic;
SIGNAL \Add39~26\ : std_logic;
SIGNAL \Add39~46_cout\ : std_logic;
SIGNAL \Add39~42_cout\ : std_logic;
SIGNAL \Add39~38_cout\ : std_logic;
SIGNAL \Add39~29_sumout\ : std_logic;
SIGNAL \y[2][7]~q\ : std_logic;
SIGNAL \capym[0][1]~q\ : std_logic;
SIGNAL \capym[0][0]~q\ : std_logic;
SIGNAL \Add25~38\ : std_logic;
SIGNAL \Add25~39\ : std_logic;
SIGNAL \Add25~34\ : std_logic;
SIGNAL \Add25~35\ : std_logic;
SIGNAL \Add25~1_sumout\ : std_logic;
SIGNAL \Add25~33_sumout\ : std_logic;
SIGNAL \capym[0][6]~DUPLICATE_q\ : std_logic;
SIGNAL \Add22~2\ : std_logic;
SIGNAL \Add22~6\ : std_logic;
SIGNAL \Add22~10\ : std_logic;
SIGNAL \Add22~14\ : std_logic;
SIGNAL \Add22~18\ : std_logic;
SIGNAL \Add22~38\ : std_logic;
SIGNAL \Add22~34\ : std_logic;
SIGNAL \Add22~30\ : std_logic;
SIGNAL \Add22~26\ : std_logic;
SIGNAL \Add22~21_sumout\ : std_logic;
SIGNAL \Add22~25_sumout\ : std_logic;
SIGNAL \Add22~29_sumout\ : std_logic;
SIGNAL \Add22~33_sumout\ : std_logic;
SIGNAL \capym[3][6]~q\ : std_logic;
SIGNAL \Add22~37_sumout\ : std_logic;
SIGNAL \Add22~17_sumout\ : std_logic;
SIGNAL \Add22~13_sumout\ : std_logic;
SIGNAL \capym[3][2]~q\ : std_logic;
SIGNAL \Add22~9_sumout\ : std_logic;
SIGNAL \capym[3][1]~q\ : std_logic;
SIGNAL \Add22~5_sumout\ : std_logic;
SIGNAL \Add22~1_sumout\ : std_logic;
SIGNAL \capym[3][0]~q\ : std_logic;
SIGNAL \Add25~2\ : std_logic;
SIGNAL \Add25~3\ : std_logic;
SIGNAL \Add25~6\ : std_logic;
SIGNAL \Add25~7\ : std_logic;
SIGNAL \Add25~10\ : std_logic;
SIGNAL \Add25~11\ : std_logic;
SIGNAL \Add25~14\ : std_logic;
SIGNAL \Add25~15\ : std_logic;
SIGNAL \Add25~18\ : std_logic;
SIGNAL \Add25~19\ : std_logic;
SIGNAL \Add25~22\ : std_logic;
SIGNAL \Add25~23\ : std_logic;
SIGNAL \Add25~26\ : std_logic;
SIGNAL \Add25~27\ : std_logic;
SIGNAL \Add25~62\ : std_logic;
SIGNAL \Add25~63\ : std_logic;
SIGNAL \Add25~58\ : std_logic;
SIGNAL \Add25~59\ : std_logic;
SIGNAL \Add25~54\ : std_logic;
SIGNAL \Add25~55\ : std_logic;
SIGNAL \Add25~50\ : std_logic;
SIGNAL \Add25~51\ : std_logic;
SIGNAL \Add25~46\ : std_logic;
SIGNAL \Add25~47\ : std_logic;
SIGNAL \Add25~42\ : std_logic;
SIGNAL \Add25~43\ : std_logic;
SIGNAL \Add25~29_sumout\ : std_logic;
SIGNAL \Add25~37_sumout\ : std_logic;
SIGNAL \Add26~34_cout\ : std_logic;
SIGNAL \Add26~1_sumout\ : std_logic;
SIGNAL \y[1][0]~q\ : std_logic;
SIGNAL \Add25~5_sumout\ : std_logic;
SIGNAL \Add26~2\ : std_logic;
SIGNAL \Add26~5_sumout\ : std_logic;
SIGNAL \y[1][1]~q\ : std_logic;
SIGNAL \Add25~9_sumout\ : std_logic;
SIGNAL \Add26~6\ : std_logic;
SIGNAL \Add26~9_sumout\ : std_logic;
SIGNAL \y[1][2]~q\ : std_logic;
SIGNAL \Add25~13_sumout\ : std_logic;
SIGNAL \Add26~10\ : std_logic;
SIGNAL \Add26~13_sumout\ : std_logic;
SIGNAL \y[1][3]~q\ : std_logic;
SIGNAL \Add25~17_sumout\ : std_logic;
SIGNAL \Add26~14\ : std_logic;
SIGNAL \Add26~17_sumout\ : std_logic;
SIGNAL \y[1][4]~q\ : std_logic;
SIGNAL \Add25~21_sumout\ : std_logic;
SIGNAL \Add26~18\ : std_logic;
SIGNAL \Add26~21_sumout\ : std_logic;
SIGNAL \y[1][5]~q\ : std_logic;
SIGNAL \Add25~25_sumout\ : std_logic;
SIGNAL \Add26~22\ : std_logic;
SIGNAL \Add26~25_sumout\ : std_logic;
SIGNAL \y[1][6]~q\ : std_logic;
SIGNAL \Add25~41_sumout\ : std_logic;
SIGNAL \Add25~45_sumout\ : std_logic;
SIGNAL \Add25~49_sumout\ : std_logic;
SIGNAL \Add25~53_sumout\ : std_logic;
SIGNAL \Add25~57_sumout\ : std_logic;
SIGNAL \Add25~61_sumout\ : std_logic;
SIGNAL \Add26~26\ : std_logic;
SIGNAL \Add26~62_cout\ : std_logic;
SIGNAL \Add26~58_cout\ : std_logic;
SIGNAL \Add26~54_cout\ : std_logic;
SIGNAL \Add26~50_cout\ : std_logic;
SIGNAL \Add26~46_cout\ : std_logic;
SIGNAL \Add26~42_cout\ : std_logic;
SIGNAL \Add26~38_cout\ : std_logic;
SIGNAL \Add26~29_sumout\ : std_logic;
SIGNAL \y[1][7]~q\ : std_logic;
SIGNAL \Add7~38\ : std_logic;
SIGNAL \Add7~39\ : std_logic;
SIGNAL \Add7~34\ : std_logic;
SIGNAL \Add7~35\ : std_logic;
SIGNAL \Add7~1_sumout\ : std_logic;
SIGNAL \Add7~33_sumout\ : std_logic;
SIGNAL \Add7~37_sumout\ : std_logic;
SIGNAL \Add9~38\ : std_logic;
SIGNAL \Add9~34\ : std_logic;
SIGNAL \Add9~1_sumout\ : std_logic;
SIGNAL \Add9~37_sumout\ : std_logic;
SIGNAL \Add7~2\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~6\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~10\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Add7~14\ : std_logic;
SIGNAL \Add7~15\ : std_logic;
SIGNAL \Add7~18\ : std_logic;
SIGNAL \Add7~19\ : std_logic;
SIGNAL \Add7~22\ : std_logic;
SIGNAL \Add7~23\ : std_logic;
SIGNAL \Add7~26\ : std_logic;
SIGNAL \Add7~27\ : std_logic;
SIGNAL \Add7~29_sumout\ : std_logic;
SIGNAL \Add7~25_sumout\ : std_logic;
SIGNAL \Add7~21_sumout\ : std_logic;
SIGNAL \Add7~17_sumout\ : std_logic;
SIGNAL \Add7~13_sumout\ : std_logic;
SIGNAL \Add7~9_sumout\ : std_logic;
SIGNAL \Add7~5_sumout\ : std_logic;
SIGNAL \Add9~2\ : std_logic;
SIGNAL \Add9~6\ : std_logic;
SIGNAL \Add9~10\ : std_logic;
SIGNAL \Add9~14\ : std_logic;
SIGNAL \Add9~18\ : std_logic;
SIGNAL \Add9~22\ : std_logic;
SIGNAL \Add9~26\ : std_logic;
SIGNAL \Add9~42\ : std_logic;
SIGNAL \Add9~29_sumout\ : std_logic;
SIGNAL \Add9~33_sumout\ : std_logic;
SIGNAL \Add10~34_cout\ : std_logic;
SIGNAL \Add10~1_sumout\ : std_logic;
SIGNAL \y[0][0]~q\ : std_logic;
SIGNAL \Add9~5_sumout\ : std_logic;
SIGNAL \Add10~2\ : std_logic;
SIGNAL \Add10~5_sumout\ : std_logic;
SIGNAL \y[0][1]~q\ : std_logic;
SIGNAL \Add9~9_sumout\ : std_logic;
SIGNAL \Add10~6\ : std_logic;
SIGNAL \Add10~9_sumout\ : std_logic;
SIGNAL \y[0][2]~q\ : std_logic;
SIGNAL \Add9~13_sumout\ : std_logic;
SIGNAL \Add10~10\ : std_logic;
SIGNAL \Add10~13_sumout\ : std_logic;
SIGNAL \y[0][3]~q\ : std_logic;
SIGNAL \Add9~17_sumout\ : std_logic;
SIGNAL \Add10~14\ : std_logic;
SIGNAL \Add10~17_sumout\ : std_logic;
SIGNAL \y[0][4]~q\ : std_logic;
SIGNAL \Add9~21_sumout\ : std_logic;
SIGNAL \Add10~18\ : std_logic;
SIGNAL \Add10~21_sumout\ : std_logic;
SIGNAL \y[0][5]~q\ : std_logic;
SIGNAL \Add9~25_sumout\ : std_logic;
SIGNAL \Add10~22\ : std_logic;
SIGNAL \Add10~25_sumout\ : std_logic;
SIGNAL \y[0][6]~q\ : std_logic;
SIGNAL \Add9~41_sumout\ : std_logic;
SIGNAL \Add10~26\ : std_logic;
SIGNAL \Add10~42_cout\ : std_logic;
SIGNAL \Add10~38_cout\ : std_logic;
SIGNAL \Add10~29_sumout\ : std_logic;
SIGNAL \y[0][7]~q\ : std_logic;
SIGNAL count : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_h[1][6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_h[1][5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_h[0][4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_h[1][2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_h[1][0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_x[0][7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_x[1][7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_x[0][6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_x[1][6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_x[1][0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_h[0][3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_h[0][0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_capym[2][0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_capym[2][7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_capym[0][6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_capym[1][2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_capym[2][6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_capym[0][4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_capym[1][0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_capym[2][3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_capym[0][0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_capym[0][1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_capym[2][2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_capym[3][6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_capym[3][7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_capym[3][2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_capym[3][1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_capym[3][0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_reset~inputCLKENA0_outclk\ : std_logic;
SIGNAL ALT_INV_count : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_h[0][7]~q\ : std_logic;
SIGNAL \ALT_INV_h[1][7]~q\ : std_logic;
SIGNAL \ALT_INV_h[2][7]~q\ : std_logic;
SIGNAL \ALT_INV_h[0][6]~q\ : std_logic;
SIGNAL \ALT_INV_h[1][6]~q\ : std_logic;
SIGNAL \ALT_INV_h[2][6]~q\ : std_logic;
SIGNAL \ALT_INV_h[0][5]~q\ : std_logic;
SIGNAL \ALT_INV_h[1][5]~q\ : std_logic;
SIGNAL \ALT_INV_h[2][5]~q\ : std_logic;
SIGNAL \ALT_INV_h[0][4]~q\ : std_logic;
SIGNAL \ALT_INV_h[1][4]~q\ : std_logic;
SIGNAL \ALT_INV_h[2][4]~q\ : std_logic;
SIGNAL \ALT_INV_h[1][3]~q\ : std_logic;
SIGNAL \ALT_INV_h[2][3]~q\ : std_logic;
SIGNAL \ALT_INV_h[1][2]~q\ : std_logic;
SIGNAL \ALT_INV_h[2][2]~q\ : std_logic;
SIGNAL \ALT_INV_h[1][1]~q\ : std_logic;
SIGNAL \ALT_INV_h[2][1]~q\ : std_logic;
SIGNAL \ALT_INV_h[1][0]~q\ : std_logic;
SIGNAL \ALT_INV_h[2][0]~q\ : std_logic;
SIGNAL \ALT_INV_x[0][7]~q\ : std_logic;
SIGNAL \ALT_INV_x[1][7]~q\ : std_logic;
SIGNAL \ALT_INV_x[2][7]~q\ : std_logic;
SIGNAL \ALT_INV_x[0][6]~q\ : std_logic;
SIGNAL \ALT_INV_x[1][6]~q\ : std_logic;
SIGNAL \ALT_INV_x[2][6]~q\ : std_logic;
SIGNAL \ALT_INV_x[0][5]~q\ : std_logic;
SIGNAL \ALT_INV_x[1][5]~q\ : std_logic;
SIGNAL \ALT_INV_x[2][5]~q\ : std_logic;
SIGNAL \ALT_INV_x[0][4]~q\ : std_logic;
SIGNAL \ALT_INV_x[1][4]~q\ : std_logic;
SIGNAL \ALT_INV_x[2][4]~q\ : std_logic;
SIGNAL \ALT_INV_x[1][3]~q\ : std_logic;
SIGNAL \ALT_INV_x[2][3]~q\ : std_logic;
SIGNAL \ALT_INV_x[1][2]~q\ : std_logic;
SIGNAL \ALT_INV_x[2][2]~q\ : std_logic;
SIGNAL \ALT_INV_x[1][1]~q\ : std_logic;
SIGNAL \ALT_INV_x[2][1]~q\ : std_logic;
SIGNAL \ALT_INV_load~q\ : std_logic;
SIGNAL \ALT_INV_x[1][0]~q\ : std_logic;
SIGNAL \ALT_INV_x[2][0]~q\ : std_logic;
SIGNAL \ALT_INV_h[0][3]~q\ : std_logic;
SIGNAL \ALT_INV_h[0][2]~q\ : std_logic;
SIGNAL \ALT_INV_h[0][1]~q\ : std_logic;
SIGNAL \ALT_INV_h[0][0]~q\ : std_logic;
SIGNAL \ALT_INV_x[0][3]~q\ : std_logic;
SIGNAL \ALT_INV_x[0][2]~q\ : std_logic;
SIGNAL \ALT_INV_x[0][1]~q\ : std_logic;
SIGNAL \ALT_INV_x[0][0]~q\ : std_logic;
SIGNAL \ALT_INV_h[3][7]~q\ : std_logic;
SIGNAL \ALT_INV_h[3][6]~q\ : std_logic;
SIGNAL \ALT_INV_h[3][5]~q\ : std_logic;
SIGNAL \ALT_INV_h[3][4]~q\ : std_logic;
SIGNAL \ALT_INV_h[3][3]~q\ : std_logic;
SIGNAL \ALT_INV_h[3][2]~q\ : std_logic;
SIGNAL \ALT_INV_h[3][1]~q\ : std_logic;
SIGNAL \ALT_INV_h[3][0]~q\ : std_logic;
SIGNAL \ALT_INV_x[3][7]~q\ : std_logic;
SIGNAL \ALT_INV_x[3][6]~q\ : std_logic;
SIGNAL \ALT_INV_x[3][5]~q\ : std_logic;
SIGNAL \ALT_INV_x[3][4]~q\ : std_logic;
SIGNAL \ALT_INV_x[3][3]~q\ : std_logic;
SIGNAL \ALT_INV_x[3][2]~q\ : std_logic;
SIGNAL \ALT_INV_x[3][1]~q\ : std_logic;
SIGNAL \ALT_INV_x[3][0]~q\ : std_logic;
SIGNAL \ALT_INV_capym[2][0]~q\ : std_logic;
SIGNAL \ALT_INV_capym[2][1]~q\ : std_logic;
SIGNAL \ALT_INV_capym~8_combout\ : std_logic;
SIGNAL \ALT_INV_capym[1][6]~q\ : std_logic;
SIGNAL \ALT_INV_capym[1][5]~q\ : std_logic;
SIGNAL \ALT_INV_capym[1][7]~q\ : std_logic;
SIGNAL \ALT_INV_capym[1][4]~q\ : std_logic;
SIGNAL \ALT_INV_capym[0][7]~q\ : std_logic;
SIGNAL \ALT_INV_capym[1][3]~q\ : std_logic;
SIGNAL \ALT_INV_capym[2][7]~q\ : std_logic;
SIGNAL \ALT_INV_capym[0][6]~q\ : std_logic;
SIGNAL \ALT_INV_capym[1][2]~q\ : std_logic;
SIGNAL \ALT_INV_capym[2][6]~q\ : std_logic;
SIGNAL \ALT_INV_capym[0][5]~q\ : std_logic;
SIGNAL \ALT_INV_capym[1][1]~q\ : std_logic;
SIGNAL \ALT_INV_capym[2][5]~q\ : std_logic;
SIGNAL \ALT_INV_capym[0][4]~q\ : std_logic;
SIGNAL \ALT_INV_capym[1][0]~q\ : std_logic;
SIGNAL \ALT_INV_capym[2][4]~q\ : std_logic;
SIGNAL \ALT_INV_capym[2][3]~q\ : std_logic;
SIGNAL \ALT_INV_capym[0][0]~q\ : std_logic;
SIGNAL \ALT_INV_capym[0][1]~q\ : std_logic;
SIGNAL \ALT_INV_capym[2][2]~q\ : std_logic;
SIGNAL \ALT_INV_capym[3][6]~q\ : std_logic;
SIGNAL \ALT_INV_capym[3][5]~q\ : std_logic;
SIGNAL \ALT_INV_capym[3][7]~q\ : std_logic;
SIGNAL \ALT_INV_capym[3][4]~q\ : std_logic;
SIGNAL \ALT_INV_capym[3][3]~q\ : std_logic;
SIGNAL \ALT_INV_capym[3][2]~q\ : std_logic;
SIGNAL \ALT_INV_capym[3][1]~q\ : std_logic;
SIGNAL \ALT_INV_capym[3][0]~q\ : std_logic;
SIGNAL \ALT_INV_capym[0][3]~q\ : std_logic;
SIGNAL \ALT_INV_capym[0][2]~q\ : std_logic;
SIGNAL \ALT_INV_Add16~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add16~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add43~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add40~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add16~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add43~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add40~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add16~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add43~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add40~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add16~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add32~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add28~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add43~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add40~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add16~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add32~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add19~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add28~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add43~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add40~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add16~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add17~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add12~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add32~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add19~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add19~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add19~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add19~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add19~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add19~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add19~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add19~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add28~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add43~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add31~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add40~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add27~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add16~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add17~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add16~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add17~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add16~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add17~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add16~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add17~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add12~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add12~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add12~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add12~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add32~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add32~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add31~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add32~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add31~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add32~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add31~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add32~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add31~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add32~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add32~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add32~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add28~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add28~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add27~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add28~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add27~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add28~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add27~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add28~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add27~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add28~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add28~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add28~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add25~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add43~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add31~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add43~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add31~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add43~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add31~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add43~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add31~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add17~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add17~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add17~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add17~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add40~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add27~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add40~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add27~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add40~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add27~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add40~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add27~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add12~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add12~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add12~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add12~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add46~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add25~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add22~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add47~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add46~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add25~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add22~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add47~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add46~33_sumout\ : std_logic;
SIGNAL \ALT_INV_capy[1][14]\ : std_logic;
SIGNAL \ALT_INV_capy[1][13]\ : std_logic;
SIGNAL \ALT_INV_capy[1][12]\ : std_logic;
SIGNAL \ALT_INV_capy[1][11]\ : std_logic;
SIGNAL \ALT_INV_capy[1][10]\ : std_logic;
SIGNAL \ALT_INV_capy[1][9]\ : std_logic;
SIGNAL \ALT_INV_capy[1][8]\ : std_logic;
SIGNAL \ALT_INV_capy[1][7]\ : std_logic;
SIGNAL \ALT_INV_capy[1][6]\ : std_logic;
SIGNAL \ALT_INV_capy[1][5]\ : std_logic;
SIGNAL \ALT_INV_capy[1][4]\ : std_logic;
SIGNAL \ALT_INV_capy[1][3]\ : std_logic;
SIGNAL \ALT_INV_capy[1][2]\ : std_logic;
SIGNAL \ALT_INV_capy[1][1]\ : std_logic;
SIGNAL \ALT_INV_capy[1][0]\ : std_logic;
SIGNAL \ALT_INV_Add52~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add52~25_sumout\ : std_logic;
SIGNAL \ALT_INV_capy[2][14]\ : std_logic;
SIGNAL \ALT_INV_capy[2][13]\ : std_logic;
SIGNAL \ALT_INV_capy[2][12]\ : std_logic;
SIGNAL \ALT_INV_capy[2][11]\ : std_logic;
SIGNAL \ALT_INV_capy[2][10]\ : std_logic;
SIGNAL \ALT_INV_capy[2][9]\ : std_logic;
SIGNAL \ALT_INV_capy[2][8]\ : std_logic;
SIGNAL \ALT_INV_capy[2][7]\ : std_logic;
SIGNAL \ALT_INV_capy[2][6]\ : std_logic;
SIGNAL \ALT_INV_capy[2][5]\ : std_logic;
SIGNAL \ALT_INV_capy[2][4]\ : std_logic;
SIGNAL \ALT_INV_capy[2][3]\ : std_logic;
SIGNAL \ALT_INV_capy[2][2]\ : std_logic;
SIGNAL \ALT_INV_capy[2][1]\ : std_logic;
SIGNAL \ALT_INV_capy[2][0]\ : std_logic;
SIGNAL \ALT_INV_Add25~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add22~29_sumout\ : std_logic;
SIGNAL \ALT_INV_capy[3][14]\ : std_logic;
SIGNAL \ALT_INV_capy[3][13]\ : std_logic;
SIGNAL \ALT_INV_capy[3][12]\ : std_logic;
SIGNAL \ALT_INV_capy[3][11]\ : std_logic;
SIGNAL \ALT_INV_capy[3][10]\ : std_logic;
SIGNAL \ALT_INV_capy[3][9]\ : std_logic;
SIGNAL \ALT_INV_capy[3][8]\ : std_logic;
SIGNAL \ALT_INV_capy[3][7]\ : std_logic;
SIGNAL \ALT_INV_capy[3][6]\ : std_logic;
SIGNAL \ALT_INV_capy[3][5]\ : std_logic;
SIGNAL \ALT_INV_capy[3][4]\ : std_logic;
SIGNAL \ALT_INV_capy[3][3]\ : std_logic;
SIGNAL \ALT_INV_capy[3][2]\ : std_logic;
SIGNAL \ALT_INV_capy[3][1]\ : std_logic;
SIGNAL \ALT_INV_capy[3][0]\ : std_logic;
SIGNAL \ALT_INV_Add51~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add51~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add47~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add46~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add51~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add51~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add50~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add51~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add52~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add50~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add51~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add52~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add50~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add51~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add52~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add50~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add51~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add52~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add52~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add50~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add50~9_sumout\ : std_logic;
SIGNAL \ALT_INV_capy[0][14]\ : std_logic;
SIGNAL \ALT_INV_capy[0][13]\ : std_logic;
SIGNAL \ALT_INV_capy[0][12]\ : std_logic;
SIGNAL \ALT_INV_capy[0][11]\ : std_logic;
SIGNAL \ALT_INV_capy[0][10]\ : std_logic;
SIGNAL \ALT_INV_capy[0][9]\ : std_logic;
SIGNAL \ALT_INV_capy[0][8]\ : std_logic;
SIGNAL \ALT_INV_capy[0][7]\ : std_logic;
SIGNAL \ALT_INV_capy[0][6]\ : std_logic;
SIGNAL \ALT_INV_capy[0][5]\ : std_logic;
SIGNAL \ALT_INV_capy[0][4]\ : std_logic;
SIGNAL \ALT_INV_capy[0][3]\ : std_logic;
SIGNAL \ALT_INV_capy[0][2]\ : std_logic;
SIGNAL \ALT_INV_capy[0][1]\ : std_logic;
SIGNAL \ALT_INV_capy[0][0]\ : std_logic;
SIGNAL \ALT_INV_Add52~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add53~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add53~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add25~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add53~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add22~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add53~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add53~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add53~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add53~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add53~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add35~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add35~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add37~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add37~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add37~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add35~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add21~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add35~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add21~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add47~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add46~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add37~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add37~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add37~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add37~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add37~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add37~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add50~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add23~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add50~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add23~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add25~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add22~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add22~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add22~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add22~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add22~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add22~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add25~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add25~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add35~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add35~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add35~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add21~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add35~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add21~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add35~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add21~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add35~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add21~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add35~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add21~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add35~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add21~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add35~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add35~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add35~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add21~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add47~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add46~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add46~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add23~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add46~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add23~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add46~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add23~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add46~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add23~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add46~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add23~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add23~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add47~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add47~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add23~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add25~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add25~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add25~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add25~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add25~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add25~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add25~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add25~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add35~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add35~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add35~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add35~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add35~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add35~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add35~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add35~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add47~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add47~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add47~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add47~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add47~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add47~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add47~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add47~1_sumout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_x_in <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(x_in);
ww_h_in <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(h_in);
y_out <= ww_y_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult0~8_ACLR_bus\ <= (\reset~inputCLKENA0_outclk\ & \reset~inputCLKENA0_outclk\);

\Mult0~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\Mult0~8_ENA_bus\ <= (vcc & vcc & vcc);

\Mult0~8_AX_bus\ <= (\Add3~29_sumout\ & \Add3~29_sumout\ & \Add3~25_sumout\ & \Add3~21_sumout\ & \Add3~17_sumout\ & \Add3~13_sumout\ & \Add3~9_sumout\ & \Add3~5_sumout\ & \Add3~1_sumout\);

\Mult0~8_AY_bus\ <= (\Add6~29_sumout\ & \Add6~29_sumout\ & \Add6~25_sumout\ & \Add6~21_sumout\ & \Add6~17_sumout\ & \Add6~13_sumout\ & \Add6~9_sumout\ & \Add6~5_sumout\ & \Add6~1_sumout\);

\Mult0~8_BX_bus\ <= (\Add3~29_sumout\ & \Add3~29_sumout\ & \Add3~29_sumout\ & \Add3~29_sumout\ & \Add3~29_sumout\ & \Add3~29_sumout\ & \Add3~29_sumout\ & \Add3~29_sumout\ & \Add3~29_sumout\);

\Mult0~8_BY_bus\ <= (\Add6~29_sumout\ & \Add6~29_sumout\ & \Add6~29_sumout\ & \Add6~29_sumout\ & \Add6~29_sumout\ & \Add6~29_sumout\ & \Add6~29_sumout\ & \Add6~29_sumout\ & \Add6~29_sumout\);

\capy[0][0]\ <= \Mult0~8_RESULTA_bus\(0);
\capy[0][1]\ <= \Mult0~8_RESULTA_bus\(1);
\capy[0][2]\ <= \Mult0~8_RESULTA_bus\(2);
\capy[0][3]\ <= \Mult0~8_RESULTA_bus\(3);
\capy[0][4]\ <= \Mult0~8_RESULTA_bus\(4);
\capy[0][5]\ <= \Mult0~8_RESULTA_bus\(5);
\capy[0][6]\ <= \Mult0~8_RESULTA_bus\(6);
\capy[0][7]\ <= \Mult0~8_RESULTA_bus\(7);
\capy[0][8]\ <= \Mult0~8_RESULTA_bus\(8);
\capy[0][9]\ <= \Mult0~8_RESULTA_bus\(9);
\capy[0][10]\ <= \Mult0~8_RESULTA_bus\(10);
\capy[0][11]\ <= \Mult0~8_RESULTA_bus\(11);
\capy[0][12]\ <= \Mult0~8_RESULTA_bus\(12);
\capy[0][13]\ <= \Mult0~8_RESULTA_bus\(13);
\Mult0~22\ <= \Mult0~8_RESULTA_bus\(14);
\capy[0][14]\ <= \Mult0~8_RESULTA_bus\(15);
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

\Mult3~8_ACLR_bus\ <= (\reset~inputCLKENA0_outclk\ & \reset~inputCLKENA0_outclk\);

\Mult3~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\Mult3~8_ENA_bus\ <= (vcc & vcc & vcc);

\Mult3~8_AX_bus\ <= (\Add40~29_sumout\ & \Add40~29_sumout\ & \Add40~25_sumout\ & \Add40~21_sumout\ & \Add40~17_sumout\ & \Add40~13_sumout\ & \Add40~9_sumout\ & \Add40~5_sumout\ & \Add40~1_sumout\);

\Mult3~8_AY_bus\ <= (\Add43~29_sumout\ & \Add43~29_sumout\ & \Add43~25_sumout\ & \Add43~21_sumout\ & \Add43~17_sumout\ & \Add43~13_sumout\ & \Add43~9_sumout\ & \Add43~5_sumout\ & \Add43~1_sumout\);

\Mult3~8_BX_bus\ <= (\Add40~29_sumout\ & \Add40~29_sumout\ & \Add40~29_sumout\ & \Add40~29_sumout\ & \Add40~29_sumout\ & \Add40~29_sumout\ & \Add40~29_sumout\ & \Add40~29_sumout\ & \Add40~29_sumout\);

\Mult3~8_BY_bus\ <= (\Add43~29_sumout\ & \Add43~29_sumout\ & \Add43~29_sumout\ & \Add43~29_sumout\ & \Add43~29_sumout\ & \Add43~29_sumout\ & \Add43~29_sumout\ & \Add43~29_sumout\ & \Add43~29_sumout\);

\capy[3][0]\ <= \Mult3~8_RESULTA_bus\(0);
\capy[3][1]\ <= \Mult3~8_RESULTA_bus\(1);
\capy[3][2]\ <= \Mult3~8_RESULTA_bus\(2);
\capy[3][3]\ <= \Mult3~8_RESULTA_bus\(3);
\capy[3][4]\ <= \Mult3~8_RESULTA_bus\(4);
\capy[3][5]\ <= \Mult3~8_RESULTA_bus\(5);
\capy[3][6]\ <= \Mult3~8_RESULTA_bus\(6);
\capy[3][7]\ <= \Mult3~8_RESULTA_bus\(7);
\capy[3][8]\ <= \Mult3~8_RESULTA_bus\(8);
\capy[3][9]\ <= \Mult3~8_RESULTA_bus\(9);
\capy[3][10]\ <= \Mult3~8_RESULTA_bus\(10);
\capy[3][11]\ <= \Mult3~8_RESULTA_bus\(11);
\capy[3][12]\ <= \Mult3~8_RESULTA_bus\(12);
\capy[3][13]\ <= \Mult3~8_RESULTA_bus\(13);
\Mult3~22\ <= \Mult3~8_RESULTA_bus\(14);
\capy[3][14]\ <= \Mult3~8_RESULTA_bus\(15);
\Mult3~24\ <= \Mult3~8_RESULTA_bus\(16);
\Mult3~25\ <= \Mult3~8_RESULTA_bus\(17);
\Mult3~26\ <= \Mult3~8_RESULTA_bus\(18);
\Mult3~27\ <= \Mult3~8_RESULTA_bus\(19);
\Mult3~28\ <= \Mult3~8_RESULTA_bus\(20);
\Mult3~29\ <= \Mult3~8_RESULTA_bus\(21);
\Mult3~30\ <= \Mult3~8_RESULTA_bus\(22);
\Mult3~31\ <= \Mult3~8_RESULTA_bus\(23);
\Mult3~32\ <= \Mult3~8_RESULTA_bus\(24);
\Mult3~33\ <= \Mult3~8_RESULTA_bus\(25);
\Mult3~34\ <= \Mult3~8_RESULTA_bus\(26);
\Mult3~35\ <= \Mult3~8_RESULTA_bus\(27);
\Mult3~36\ <= \Mult3~8_RESULTA_bus\(28);
\Mult3~37\ <= \Mult3~8_RESULTA_bus\(29);
\Mult3~38\ <= \Mult3~8_RESULTA_bus\(30);
\Mult3~39\ <= \Mult3~8_RESULTA_bus\(31);
\Mult3~40\ <= \Mult3~8_RESULTA_bus\(32);
\Mult3~41\ <= \Mult3~8_RESULTA_bus\(33);
\Mult3~42\ <= \Mult3~8_RESULTA_bus\(34);
\Mult3~43\ <= \Mult3~8_RESULTA_bus\(35);
\Mult3~44\ <= \Mult3~8_RESULTA_bus\(36);
\Mult3~45\ <= \Mult3~8_RESULTA_bus\(37);
\Mult3~46\ <= \Mult3~8_RESULTA_bus\(38);
\Mult3~47\ <= \Mult3~8_RESULTA_bus\(39);
\Mult3~48\ <= \Mult3~8_RESULTA_bus\(40);
\Mult3~49\ <= \Mult3~8_RESULTA_bus\(41);
\Mult3~50\ <= \Mult3~8_RESULTA_bus\(42);
\Mult3~51\ <= \Mult3~8_RESULTA_bus\(43);
\Mult3~52\ <= \Mult3~8_RESULTA_bus\(44);
\Mult3~53\ <= \Mult3~8_RESULTA_bus\(45);
\Mult3~54\ <= \Mult3~8_RESULTA_bus\(46);
\Mult3~55\ <= \Mult3~8_RESULTA_bus\(47);
\Mult3~56\ <= \Mult3~8_RESULTA_bus\(48);
\Mult3~57\ <= \Mult3~8_RESULTA_bus\(49);
\Mult3~58\ <= \Mult3~8_RESULTA_bus\(50);
\Mult3~59\ <= \Mult3~8_RESULTA_bus\(51);
\Mult3~60\ <= \Mult3~8_RESULTA_bus\(52);
\Mult3~61\ <= \Mult3~8_RESULTA_bus\(53);
\Mult3~62\ <= \Mult3~8_RESULTA_bus\(54);
\Mult3~63\ <= \Mult3~8_RESULTA_bus\(55);
\Mult3~64\ <= \Mult3~8_RESULTA_bus\(56);
\Mult3~65\ <= \Mult3~8_RESULTA_bus\(57);
\Mult3~66\ <= \Mult3~8_RESULTA_bus\(58);
\Mult3~67\ <= \Mult3~8_RESULTA_bus\(59);
\Mult3~68\ <= \Mult3~8_RESULTA_bus\(60);
\Mult3~69\ <= \Mult3~8_RESULTA_bus\(61);
\Mult3~70\ <= \Mult3~8_RESULTA_bus\(62);
\Mult3~71\ <= \Mult3~8_RESULTA_bus\(63);

\Mult2~8_ACLR_bus\ <= (\reset~inputCLKENA0_outclk\ & \reset~inputCLKENA0_outclk\);

\Mult2~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\Mult2~8_ENA_bus\ <= (vcc & vcc & vcc);

\Mult2~8_AX_bus\ <= (\Add28~29_sumout\ & \Add28~29_sumout\ & \Add28~25_sumout\ & \Add28~21_sumout\ & \Add28~17_sumout\ & \Add28~13_sumout\ & \Add28~9_sumout\ & \Add28~5_sumout\ & \Add28~1_sumout\);

\Mult2~8_AY_bus\ <= (\Add32~29_sumout\ & \Add32~29_sumout\ & \Add32~25_sumout\ & \Add32~21_sumout\ & \Add32~17_sumout\ & \Add32~13_sumout\ & \Add32~9_sumout\ & \Add32~5_sumout\ & \Add32~1_sumout\);

\Mult2~8_BX_bus\ <= (\Add28~29_sumout\ & \Add28~29_sumout\ & \Add28~29_sumout\ & \Add28~29_sumout\ & \Add28~29_sumout\ & \Add28~29_sumout\ & \Add28~29_sumout\ & \Add28~29_sumout\ & \Add28~29_sumout\);

\Mult2~8_BY_bus\ <= (\Add32~29_sumout\ & \Add32~29_sumout\ & \Add32~29_sumout\ & \Add32~29_sumout\ & \Add32~29_sumout\ & \Add32~29_sumout\ & \Add32~29_sumout\ & \Add32~29_sumout\ & \Add32~29_sumout\);

\capy[2][0]\ <= \Mult2~8_RESULTA_bus\(0);
\capy[2][1]\ <= \Mult2~8_RESULTA_bus\(1);
\capy[2][2]\ <= \Mult2~8_RESULTA_bus\(2);
\capy[2][3]\ <= \Mult2~8_RESULTA_bus\(3);
\capy[2][4]\ <= \Mult2~8_RESULTA_bus\(4);
\capy[2][5]\ <= \Mult2~8_RESULTA_bus\(5);
\capy[2][6]\ <= \Mult2~8_RESULTA_bus\(6);
\capy[2][7]\ <= \Mult2~8_RESULTA_bus\(7);
\capy[2][8]\ <= \Mult2~8_RESULTA_bus\(8);
\capy[2][9]\ <= \Mult2~8_RESULTA_bus\(9);
\capy[2][10]\ <= \Mult2~8_RESULTA_bus\(10);
\capy[2][11]\ <= \Mult2~8_RESULTA_bus\(11);
\capy[2][12]\ <= \Mult2~8_RESULTA_bus\(12);
\capy[2][13]\ <= \Mult2~8_RESULTA_bus\(13);
\Mult2~22\ <= \Mult2~8_RESULTA_bus\(14);
\capy[2][14]\ <= \Mult2~8_RESULTA_bus\(15);
\Mult2~24\ <= \Mult2~8_RESULTA_bus\(16);
\Mult2~25\ <= \Mult2~8_RESULTA_bus\(17);
\Mult2~26\ <= \Mult2~8_RESULTA_bus\(18);
\Mult2~27\ <= \Mult2~8_RESULTA_bus\(19);
\Mult2~28\ <= \Mult2~8_RESULTA_bus\(20);
\Mult2~29\ <= \Mult2~8_RESULTA_bus\(21);
\Mult2~30\ <= \Mult2~8_RESULTA_bus\(22);
\Mult2~31\ <= \Mult2~8_RESULTA_bus\(23);
\Mult2~32\ <= \Mult2~8_RESULTA_bus\(24);
\Mult2~33\ <= \Mult2~8_RESULTA_bus\(25);
\Mult2~34\ <= \Mult2~8_RESULTA_bus\(26);
\Mult2~35\ <= \Mult2~8_RESULTA_bus\(27);
\Mult2~36\ <= \Mult2~8_RESULTA_bus\(28);
\Mult2~37\ <= \Mult2~8_RESULTA_bus\(29);
\Mult2~38\ <= \Mult2~8_RESULTA_bus\(30);
\Mult2~39\ <= \Mult2~8_RESULTA_bus\(31);
\Mult2~40\ <= \Mult2~8_RESULTA_bus\(32);
\Mult2~41\ <= \Mult2~8_RESULTA_bus\(33);
\Mult2~42\ <= \Mult2~8_RESULTA_bus\(34);
\Mult2~43\ <= \Mult2~8_RESULTA_bus\(35);
\Mult2~44\ <= \Mult2~8_RESULTA_bus\(36);
\Mult2~45\ <= \Mult2~8_RESULTA_bus\(37);
\Mult2~46\ <= \Mult2~8_RESULTA_bus\(38);
\Mult2~47\ <= \Mult2~8_RESULTA_bus\(39);
\Mult2~48\ <= \Mult2~8_RESULTA_bus\(40);
\Mult2~49\ <= \Mult2~8_RESULTA_bus\(41);
\Mult2~50\ <= \Mult2~8_RESULTA_bus\(42);
\Mult2~51\ <= \Mult2~8_RESULTA_bus\(43);
\Mult2~52\ <= \Mult2~8_RESULTA_bus\(44);
\Mult2~53\ <= \Mult2~8_RESULTA_bus\(45);
\Mult2~54\ <= \Mult2~8_RESULTA_bus\(46);
\Mult2~55\ <= \Mult2~8_RESULTA_bus\(47);
\Mult2~56\ <= \Mult2~8_RESULTA_bus\(48);
\Mult2~57\ <= \Mult2~8_RESULTA_bus\(49);
\Mult2~58\ <= \Mult2~8_RESULTA_bus\(50);
\Mult2~59\ <= \Mult2~8_RESULTA_bus\(51);
\Mult2~60\ <= \Mult2~8_RESULTA_bus\(52);
\Mult2~61\ <= \Mult2~8_RESULTA_bus\(53);
\Mult2~62\ <= \Mult2~8_RESULTA_bus\(54);
\Mult2~63\ <= \Mult2~8_RESULTA_bus\(55);
\Mult2~64\ <= \Mult2~8_RESULTA_bus\(56);
\Mult2~65\ <= \Mult2~8_RESULTA_bus\(57);
\Mult2~66\ <= \Mult2~8_RESULTA_bus\(58);
\Mult2~67\ <= \Mult2~8_RESULTA_bus\(59);
\Mult2~68\ <= \Mult2~8_RESULTA_bus\(60);
\Mult2~69\ <= \Mult2~8_RESULTA_bus\(61);
\Mult2~70\ <= \Mult2~8_RESULTA_bus\(62);
\Mult2~71\ <= \Mult2~8_RESULTA_bus\(63);

\Mult1~8_ACLR_bus\ <= (\reset~inputCLKENA0_outclk\ & \reset~inputCLKENA0_outclk\);

\Mult1~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\Mult1~8_ENA_bus\ <= (vcc & vcc & vcc);

\Mult1~8_AX_bus\ <= (\Add13~29_sumout\ & \Add13~29_sumout\ & \Add13~25_sumout\ & \Add13~21_sumout\ & \Add13~17_sumout\ & \Add13~13_sumout\ & \Add13~9_sumout\ & \Add13~5_sumout\ & \Add13~1_sumout\);

\Mult1~8_AY_bus\ <= (\Add18~29_sumout\ & \Add18~29_sumout\ & \Add18~25_sumout\ & \Add18~21_sumout\ & \Add18~17_sumout\ & \Add18~13_sumout\ & \Add18~9_sumout\ & \Add18~5_sumout\ & \Add18~1_sumout\);

\Mult1~8_BX_bus\ <= (\Add13~29_sumout\ & \Add13~29_sumout\ & \Add13~29_sumout\ & \Add13~29_sumout\ & \Add13~29_sumout\ & \Add13~29_sumout\ & \Add13~29_sumout\ & \Add13~29_sumout\ & \Add13~29_sumout\);

\Mult1~8_BY_bus\ <= (\Add18~29_sumout\ & \Add18~29_sumout\ & \Add18~29_sumout\ & \Add18~29_sumout\ & \Add18~29_sumout\ & \Add18~29_sumout\ & \Add18~29_sumout\ & \Add18~29_sumout\ & \Add18~29_sumout\);

\capy[1][0]\ <= \Mult1~8_RESULTA_bus\(0);
\capy[1][1]\ <= \Mult1~8_RESULTA_bus\(1);
\capy[1][2]\ <= \Mult1~8_RESULTA_bus\(2);
\capy[1][3]\ <= \Mult1~8_RESULTA_bus\(3);
\capy[1][4]\ <= \Mult1~8_RESULTA_bus\(4);
\capy[1][5]\ <= \Mult1~8_RESULTA_bus\(5);
\capy[1][6]\ <= \Mult1~8_RESULTA_bus\(6);
\capy[1][7]\ <= \Mult1~8_RESULTA_bus\(7);
\capy[1][8]\ <= \Mult1~8_RESULTA_bus\(8);
\capy[1][9]\ <= \Mult1~8_RESULTA_bus\(9);
\capy[1][10]\ <= \Mult1~8_RESULTA_bus\(10);
\capy[1][11]\ <= \Mult1~8_RESULTA_bus\(11);
\capy[1][12]\ <= \Mult1~8_RESULTA_bus\(12);
\capy[1][13]\ <= \Mult1~8_RESULTA_bus\(13);
\Mult1~22\ <= \Mult1~8_RESULTA_bus\(14);
\capy[1][14]\ <= \Mult1~8_RESULTA_bus\(15);
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
\ALT_INV_h[1][6]~DUPLICATE_q\ <= NOT \h[1][6]~DUPLICATE_q\;
\ALT_INV_h[1][5]~DUPLICATE_q\ <= NOT \h[1][5]~DUPLICATE_q\;
\ALT_INV_h[0][4]~DUPLICATE_q\ <= NOT \h[0][4]~DUPLICATE_q\;
\ALT_INV_h[1][2]~DUPLICATE_q\ <= NOT \h[1][2]~DUPLICATE_q\;
\ALT_INV_h[1][0]~DUPLICATE_q\ <= NOT \h[1][0]~DUPLICATE_q\;
\ALT_INV_x[0][7]~DUPLICATE_q\ <= NOT \x[0][7]~DUPLICATE_q\;
\ALT_INV_x[1][7]~DUPLICATE_q\ <= NOT \x[1][7]~DUPLICATE_q\;
\ALT_INV_x[0][6]~DUPLICATE_q\ <= NOT \x[0][6]~DUPLICATE_q\;
\ALT_INV_x[1][6]~DUPLICATE_q\ <= NOT \x[1][6]~DUPLICATE_q\;
\ALT_INV_x[1][0]~DUPLICATE_q\ <= NOT \x[1][0]~DUPLICATE_q\;
\ALT_INV_h[0][3]~DUPLICATE_q\ <= NOT \h[0][3]~DUPLICATE_q\;
\ALT_INV_h[0][0]~DUPLICATE_q\ <= NOT \h[0][0]~DUPLICATE_q\;
\ALT_INV_capym[2][0]~DUPLICATE_q\ <= NOT \capym[2][0]~DUPLICATE_q\;
\ALT_INV_capym[2][7]~DUPLICATE_q\ <= NOT \capym[2][7]~DUPLICATE_q\;
\ALT_INV_capym[0][6]~DUPLICATE_q\ <= NOT \capym[0][6]~DUPLICATE_q\;
\ALT_INV_capym[1][2]~DUPLICATE_q\ <= NOT \capym[1][2]~DUPLICATE_q\;
\ALT_INV_capym[2][6]~DUPLICATE_q\ <= NOT \capym[2][6]~DUPLICATE_q\;
\ALT_INV_capym[0][4]~DUPLICATE_q\ <= NOT \capym[0][4]~DUPLICATE_q\;
\ALT_INV_capym[1][0]~DUPLICATE_q\ <= NOT \capym[1][0]~DUPLICATE_q\;
\ALT_INV_capym[2][3]~DUPLICATE_q\ <= NOT \capym[2][3]~DUPLICATE_q\;
\ALT_INV_capym[0][0]~DUPLICATE_q\ <= NOT \capym[0][0]~DUPLICATE_q\;
\ALT_INV_capym[0][1]~DUPLICATE_q\ <= NOT \capym[0][1]~DUPLICATE_q\;
\ALT_INV_capym[2][2]~DUPLICATE_q\ <= NOT \capym[2][2]~DUPLICATE_q\;
\ALT_INV_capym[3][6]~DUPLICATE_q\ <= NOT \capym[3][6]~DUPLICATE_q\;
\ALT_INV_capym[3][7]~DUPLICATE_q\ <= NOT \capym[3][7]~DUPLICATE_q\;
\ALT_INV_capym[3][2]~DUPLICATE_q\ <= NOT \capym[3][2]~DUPLICATE_q\;
\ALT_INV_capym[3][1]~DUPLICATE_q\ <= NOT \capym[3][1]~DUPLICATE_q\;
\ALT_INV_capym[3][0]~DUPLICATE_q\ <= NOT \capym[3][0]~DUPLICATE_q\;
\ALT_INV_reset~inputCLKENA0_outclk\ <= NOT \reset~inputCLKENA0_outclk\;
ALT_INV_count(0) <= NOT count(0);
ALT_INV_count(1) <= NOT count(1);
\ALT_INV_h[0][7]~q\ <= NOT \h[0][7]~q\;
\ALT_INV_h[1][7]~q\ <= NOT \h[1][7]~q\;
\ALT_INV_h[2][7]~q\ <= NOT \h[2][7]~q\;
\ALT_INV_h[0][6]~q\ <= NOT \h[0][6]~q\;
\ALT_INV_h[1][6]~q\ <= NOT \h[1][6]~q\;
\ALT_INV_h[2][6]~q\ <= NOT \h[2][6]~q\;
\ALT_INV_h[0][5]~q\ <= NOT \h[0][5]~q\;
\ALT_INV_h[1][5]~q\ <= NOT \h[1][5]~q\;
\ALT_INV_h[2][5]~q\ <= NOT \h[2][5]~q\;
\ALT_INV_h[0][4]~q\ <= NOT \h[0][4]~q\;
\ALT_INV_h[1][4]~q\ <= NOT \h[1][4]~q\;
\ALT_INV_h[2][4]~q\ <= NOT \h[2][4]~q\;
\ALT_INV_h[1][3]~q\ <= NOT \h[1][3]~q\;
\ALT_INV_h[2][3]~q\ <= NOT \h[2][3]~q\;
\ALT_INV_h[1][2]~q\ <= NOT \h[1][2]~q\;
\ALT_INV_h[2][2]~q\ <= NOT \h[2][2]~q\;
\ALT_INV_h[1][1]~q\ <= NOT \h[1][1]~q\;
\ALT_INV_h[2][1]~q\ <= NOT \h[2][1]~q\;
\ALT_INV_h[1][0]~q\ <= NOT \h[1][0]~q\;
\ALT_INV_h[2][0]~q\ <= NOT \h[2][0]~q\;
\ALT_INV_x[0][7]~q\ <= NOT \x[0][7]~q\;
\ALT_INV_x[1][7]~q\ <= NOT \x[1][7]~q\;
\ALT_INV_x[2][7]~q\ <= NOT \x[2][7]~q\;
\ALT_INV_x[0][6]~q\ <= NOT \x[0][6]~q\;
\ALT_INV_x[1][6]~q\ <= NOT \x[1][6]~q\;
\ALT_INV_x[2][6]~q\ <= NOT \x[2][6]~q\;
\ALT_INV_x[0][5]~q\ <= NOT \x[0][5]~q\;
\ALT_INV_x[1][5]~q\ <= NOT \x[1][5]~q\;
\ALT_INV_x[2][5]~q\ <= NOT \x[2][5]~q\;
\ALT_INV_x[0][4]~q\ <= NOT \x[0][4]~q\;
\ALT_INV_x[1][4]~q\ <= NOT \x[1][4]~q\;
\ALT_INV_x[2][4]~q\ <= NOT \x[2][4]~q\;
\ALT_INV_x[1][3]~q\ <= NOT \x[1][3]~q\;
\ALT_INV_x[2][3]~q\ <= NOT \x[2][3]~q\;
\ALT_INV_x[1][2]~q\ <= NOT \x[1][2]~q\;
\ALT_INV_x[2][2]~q\ <= NOT \x[2][2]~q\;
\ALT_INV_x[1][1]~q\ <= NOT \x[1][1]~q\;
\ALT_INV_x[2][1]~q\ <= NOT \x[2][1]~q\;
\ALT_INV_load~q\ <= NOT \load~q\;
\ALT_INV_x[1][0]~q\ <= NOT \x[1][0]~q\;
\ALT_INV_x[2][0]~q\ <= NOT \x[2][0]~q\;
\ALT_INV_h[0][3]~q\ <= NOT \h[0][3]~q\;
\ALT_INV_h[0][2]~q\ <= NOT \h[0][2]~q\;
\ALT_INV_h[0][1]~q\ <= NOT \h[0][1]~q\;
\ALT_INV_h[0][0]~q\ <= NOT \h[0][0]~q\;
\ALT_INV_x[0][3]~q\ <= NOT \x[0][3]~q\;
\ALT_INV_x[0][2]~q\ <= NOT \x[0][2]~q\;
\ALT_INV_x[0][1]~q\ <= NOT \x[0][1]~q\;
\ALT_INV_x[0][0]~q\ <= NOT \x[0][0]~q\;
\ALT_INV_h[3][7]~q\ <= NOT \h[3][7]~q\;
\ALT_INV_h[3][6]~q\ <= NOT \h[3][6]~q\;
\ALT_INV_h[3][5]~q\ <= NOT \h[3][5]~q\;
\ALT_INV_h[3][4]~q\ <= NOT \h[3][4]~q\;
\ALT_INV_h[3][3]~q\ <= NOT \h[3][3]~q\;
\ALT_INV_h[3][2]~q\ <= NOT \h[3][2]~q\;
\ALT_INV_h[3][1]~q\ <= NOT \h[3][1]~q\;
\ALT_INV_h[3][0]~q\ <= NOT \h[3][0]~q\;
\ALT_INV_x[3][7]~q\ <= NOT \x[3][7]~q\;
\ALT_INV_x[3][6]~q\ <= NOT \x[3][6]~q\;
\ALT_INV_x[3][5]~q\ <= NOT \x[3][5]~q\;
\ALT_INV_x[3][4]~q\ <= NOT \x[3][4]~q\;
\ALT_INV_x[3][3]~q\ <= NOT \x[3][3]~q\;
\ALT_INV_x[3][2]~q\ <= NOT \x[3][2]~q\;
\ALT_INV_x[3][1]~q\ <= NOT \x[3][1]~q\;
\ALT_INV_x[3][0]~q\ <= NOT \x[3][0]~q\;
\ALT_INV_capym[2][0]~q\ <= NOT \capym[2][0]~q\;
\ALT_INV_capym[2][1]~q\ <= NOT \capym[2][1]~q\;
\ALT_INV_capym~8_combout\ <= NOT \capym~8_combout\;
\ALT_INV_capym[1][6]~q\ <= NOT \capym[1][6]~q\;
\ALT_INV_capym[1][5]~q\ <= NOT \capym[1][5]~q\;
\ALT_INV_capym[1][7]~q\ <= NOT \capym[1][7]~q\;
\ALT_INV_capym[1][4]~q\ <= NOT \capym[1][4]~q\;
\ALT_INV_capym[0][7]~q\ <= NOT \capym[0][7]~q\;
\ALT_INV_capym[1][3]~q\ <= NOT \capym[1][3]~q\;
\ALT_INV_capym[2][7]~q\ <= NOT \capym[2][7]~q\;
\ALT_INV_capym[0][6]~q\ <= NOT \capym[0][6]~q\;
\ALT_INV_capym[1][2]~q\ <= NOT \capym[1][2]~q\;
\ALT_INV_capym[2][6]~q\ <= NOT \capym[2][6]~q\;
\ALT_INV_capym[0][5]~q\ <= NOT \capym[0][5]~q\;
\ALT_INV_capym[1][1]~q\ <= NOT \capym[1][1]~q\;
\ALT_INV_capym[2][5]~q\ <= NOT \capym[2][5]~q\;
\ALT_INV_capym[0][4]~q\ <= NOT \capym[0][4]~q\;
\ALT_INV_capym[1][0]~q\ <= NOT \capym[1][0]~q\;
\ALT_INV_capym[2][4]~q\ <= NOT \capym[2][4]~q\;
\ALT_INV_capym[2][3]~q\ <= NOT \capym[2][3]~q\;
\ALT_INV_capym[0][0]~q\ <= NOT \capym[0][0]~q\;
\ALT_INV_capym[0][1]~q\ <= NOT \capym[0][1]~q\;
\ALT_INV_capym[2][2]~q\ <= NOT \capym[2][2]~q\;
\ALT_INV_capym[3][6]~q\ <= NOT \capym[3][6]~q\;
\ALT_INV_capym[3][5]~q\ <= NOT \capym[3][5]~q\;
\ALT_INV_capym[3][7]~q\ <= NOT \capym[3][7]~q\;
\ALT_INV_capym[3][4]~q\ <= NOT \capym[3][4]~q\;
\ALT_INV_capym[3][3]~q\ <= NOT \capym[3][3]~q\;
\ALT_INV_capym[3][2]~q\ <= NOT \capym[3][2]~q\;
\ALT_INV_capym[3][1]~q\ <= NOT \capym[3][1]~q\;
\ALT_INV_capym[3][0]~q\ <= NOT \capym[3][0]~q\;
\ALT_INV_capym[0][3]~q\ <= NOT \capym[0][3]~q\;
\ALT_INV_capym[0][2]~q\ <= NOT \capym[0][2]~q\;
\ALT_INV_Add16~41_sumout\ <= NOT \Add16~41_sumout\;
\ALT_INV_Add11~41_sumout\ <= NOT \Add11~41_sumout\;
\ALT_INV_Add16~37_sumout\ <= NOT \Add16~37_sumout\;
\ALT_INV_Add11~37_sumout\ <= NOT \Add11~37_sumout\;
\ALT_INV_Add43~93_sumout\ <= NOT \Add43~93_sumout\;
\ALT_INV_Add40~93_sumout\ <= NOT \Add40~93_sumout\;
\ALT_INV_Add16~33_sumout\ <= NOT \Add16~33_sumout\;
\ALT_INV_Add11~33_sumout\ <= NOT \Add11~33_sumout\;
\ALT_INV_Add43~85_sumout\ <= NOT \Add43~85_sumout\;
\ALT_INV_Add40~85_sumout\ <= NOT \Add40~85_sumout\;
\ALT_INV_Add16~29_sumout\ <= NOT \Add16~29_sumout\;
\ALT_INV_Add11~29_sumout\ <= NOT \Add11~29_sumout\;
\ALT_INV_Add43~77_sumout\ <= NOT \Add43~77_sumout\;
\ALT_INV_Add40~77_sumout\ <= NOT \Add40~77_sumout\;
\ALT_INV_Add16~25_sumout\ <= NOT \Add16~25_sumout\;
\ALT_INV_Add11~25_sumout\ <= NOT \Add11~25_sumout\;
\ALT_INV_Add32~85_sumout\ <= NOT \Add32~85_sumout\;
\ALT_INV_Add28~85_sumout\ <= NOT \Add28~85_sumout\;
\ALT_INV_Add43~69_sumout\ <= NOT \Add43~69_sumout\;
\ALT_INV_Add40~69_sumout\ <= NOT \Add40~69_sumout\;
\ALT_INV_Add16~21_sumout\ <= NOT \Add16~21_sumout\;
\ALT_INV_Add11~21_sumout\ <= NOT \Add11~21_sumout\;
\ALT_INV_Add32~77_sumout\ <= NOT \Add32~77_sumout\;
\ALT_INV_Add19~33_sumout\ <= NOT \Add19~33_sumout\;
\ALT_INV_Add28~77_sumout\ <= NOT \Add28~77_sumout\;
\ALT_INV_Add14~33_sumout\ <= NOT \Add14~33_sumout\;
\ALT_INV_Add43~61_sumout\ <= NOT \Add43~61_sumout\;
\ALT_INV_Add40~61_sumout\ <= NOT \Add40~61_sumout\;
\ALT_INV_Add16~17_sumout\ <= NOT \Add16~17_sumout\;
\ALT_INV_Add17~33_sumout\ <= NOT \Add17~33_sumout\;
\ALT_INV_Add11~17_sumout\ <= NOT \Add11~17_sumout\;
\ALT_INV_Add12~33_sumout\ <= NOT \Add12~33_sumout\;
\ALT_INV_Add4~37_sumout\ <= NOT \Add4~37_sumout\;
\ALT_INV_Add1~37_sumout\ <= NOT \Add1~37_sumout\;
\ALT_INV_Add32~69_sumout\ <= NOT \Add32~69_sumout\;
\ALT_INV_Add19~29_sumout\ <= NOT \Add19~29_sumout\;
\ALT_INV_Add19~25_sumout\ <= NOT \Add19~25_sumout\;
\ALT_INV_Add19~21_sumout\ <= NOT \Add19~21_sumout\;
\ALT_INV_Add19~17_sumout\ <= NOT \Add19~17_sumout\;
\ALT_INV_Add19~13_sumout\ <= NOT \Add19~13_sumout\;
\ALT_INV_Add19~9_sumout\ <= NOT \Add19~9_sumout\;
\ALT_INV_Add19~5_sumout\ <= NOT \Add19~5_sumout\;
\ALT_INV_Add19~1_sumout\ <= NOT \Add19~1_sumout\;
\ALT_INV_Add28~69_sumout\ <= NOT \Add28~69_sumout\;
\ALT_INV_Add14~29_sumout\ <= NOT \Add14~29_sumout\;
\ALT_INV_Add14~25_sumout\ <= NOT \Add14~25_sumout\;
\ALT_INV_Add14~21_sumout\ <= NOT \Add14~21_sumout\;
\ALT_INV_Add14~17_sumout\ <= NOT \Add14~17_sumout\;
\ALT_INV_Add14~13_sumout\ <= NOT \Add14~13_sumout\;
\ALT_INV_Add14~9_sumout\ <= NOT \Add14~9_sumout\;
\ALT_INV_Add14~5_sumout\ <= NOT \Add14~5_sumout\;
\ALT_INV_Add14~1_sumout\ <= NOT \Add14~1_sumout\;
\ALT_INV_Add43~53_sumout\ <= NOT \Add43~53_sumout\;
\ALT_INV_Add31~33_sumout\ <= NOT \Add31~33_sumout\;
\ALT_INV_Add40~53_sumout\ <= NOT \Add40~53_sumout\;
\ALT_INV_Add27~33_sumout\ <= NOT \Add27~33_sumout\;
\ALT_INV_Add16~13_sumout\ <= NOT \Add16~13_sumout\;
\ALT_INV_Add17~29_sumout\ <= NOT \Add17~29_sumout\;
\ALT_INV_Add16~9_sumout\ <= NOT \Add16~9_sumout\;
\ALT_INV_Add17~25_sumout\ <= NOT \Add17~25_sumout\;
\ALT_INV_Add16~5_sumout\ <= NOT \Add16~5_sumout\;
\ALT_INV_Add17~21_sumout\ <= NOT \Add17~21_sumout\;
\ALT_INV_Add16~1_sumout\ <= NOT \Add16~1_sumout\;
\ALT_INV_Add17~17_sumout\ <= NOT \Add17~17_sumout\;
\ALT_INV_Add11~13_sumout\ <= NOT \Add11~13_sumout\;
\ALT_INV_Add12~29_sumout\ <= NOT \Add12~29_sumout\;
\ALT_INV_Add11~9_sumout\ <= NOT \Add11~9_sumout\;
\ALT_INV_Add12~25_sumout\ <= NOT \Add12~25_sumout\;
\ALT_INV_Add11~5_sumout\ <= NOT \Add11~5_sumout\;
\ALT_INV_Add12~21_sumout\ <= NOT \Add12~21_sumout\;
\ALT_INV_Add11~1_sumout\ <= NOT \Add11~1_sumout\;
\ALT_INV_Add12~17_sumout\ <= NOT \Add12~17_sumout\;
\ALT_INV_Add4~33_sumout\ <= NOT \Add4~33_sumout\;
\ALT_INV_Add1~33_sumout\ <= NOT \Add1~33_sumout\;
\ALT_INV_Add32~61_sumout\ <= NOT \Add32~61_sumout\;
\ALT_INV_Add32~57_sumout\ <= NOT \Add32~57_sumout\;
\ALT_INV_Add31~29_sumout\ <= NOT \Add31~29_sumout\;
\ALT_INV_Add32~53_sumout\ <= NOT \Add32~53_sumout\;
\ALT_INV_Add31~25_sumout\ <= NOT \Add31~25_sumout\;
\ALT_INV_Add32~49_sumout\ <= NOT \Add32~49_sumout\;
\ALT_INV_Add31~21_sumout\ <= NOT \Add31~21_sumout\;
\ALT_INV_Add32~45_sumout\ <= NOT \Add32~45_sumout\;
\ALT_INV_Add31~17_sumout\ <= NOT \Add31~17_sumout\;
\ALT_INV_Add32~41_sumout\ <= NOT \Add32~41_sumout\;
\ALT_INV_Add32~37_sumout\ <= NOT \Add32~37_sumout\;
\ALT_INV_Add32~33_sumout\ <= NOT \Add32~33_sumout\;
\ALT_INV_Add28~61_sumout\ <= NOT \Add28~61_sumout\;
\ALT_INV_Add28~57_sumout\ <= NOT \Add28~57_sumout\;
\ALT_INV_Add27~29_sumout\ <= NOT \Add27~29_sumout\;
\ALT_INV_Add28~53_sumout\ <= NOT \Add28~53_sumout\;
\ALT_INV_Add27~25_sumout\ <= NOT \Add27~25_sumout\;
\ALT_INV_Add28~49_sumout\ <= NOT \Add28~49_sumout\;
\ALT_INV_Add27~21_sumout\ <= NOT \Add27~21_sumout\;
\ALT_INV_Add28~45_sumout\ <= NOT \Add28~45_sumout\;
\ALT_INV_Add27~17_sumout\ <= NOT \Add27~17_sumout\;
\ALT_INV_Add28~41_sumout\ <= NOT \Add28~41_sumout\;
\ALT_INV_Add28~37_sumout\ <= NOT \Add28~37_sumout\;
\ALT_INV_Add28~33_sumout\ <= NOT \Add28~33_sumout\;
\ALT_INV_Add25~61_sumout\ <= NOT \Add25~61_sumout\;
\ALT_INV_Add43~45_sumout\ <= NOT \Add43~45_sumout\;
\ALT_INV_Add31~13_sumout\ <= NOT \Add31~13_sumout\;
\ALT_INV_Add43~41_sumout\ <= NOT \Add43~41_sumout\;
\ALT_INV_Add31~9_sumout\ <= NOT \Add31~9_sumout\;
\ALT_INV_Add43~37_sumout\ <= NOT \Add43~37_sumout\;
\ALT_INV_Add31~5_sumout\ <= NOT \Add31~5_sumout\;
\ALT_INV_Add43~33_sumout\ <= NOT \Add43~33_sumout\;
\ALT_INV_Add31~1_sumout\ <= NOT \Add31~1_sumout\;
\ALT_INV_Add17~13_sumout\ <= NOT \Add17~13_sumout\;
\ALT_INV_Add17~9_sumout\ <= NOT \Add17~9_sumout\;
\ALT_INV_Add17~5_sumout\ <= NOT \Add17~5_sumout\;
\ALT_INV_Add17~1_sumout\ <= NOT \Add17~1_sumout\;
\ALT_INV_Add40~45_sumout\ <= NOT \Add40~45_sumout\;
\ALT_INV_Add27~13_sumout\ <= NOT \Add27~13_sumout\;
\ALT_INV_Add40~41_sumout\ <= NOT \Add40~41_sumout\;
\ALT_INV_Add27~9_sumout\ <= NOT \Add27~9_sumout\;
\ALT_INV_Add40~37_sumout\ <= NOT \Add40~37_sumout\;
\ALT_INV_Add27~5_sumout\ <= NOT \Add27~5_sumout\;
\ALT_INV_Add40~33_sumout\ <= NOT \Add40~33_sumout\;
\ALT_INV_Add27~1_sumout\ <= NOT \Add27~1_sumout\;
\ALT_INV_Add12~13_sumout\ <= NOT \Add12~13_sumout\;
\ALT_INV_Add12~9_sumout\ <= NOT \Add12~9_sumout\;
\ALT_INV_Add12~5_sumout\ <= NOT \Add12~5_sumout\;
\ALT_INV_Add12~1_sumout\ <= NOT \Add12~1_sumout\;
\ALT_INV_Add46~41_sumout\ <= NOT \Add46~41_sumout\;
\ALT_INV_Add4~29_sumout\ <= NOT \Add4~29_sumout\;
\ALT_INV_Add4~25_sumout\ <= NOT \Add4~25_sumout\;
\ALT_INV_Add4~21_sumout\ <= NOT \Add4~21_sumout\;
\ALT_INV_Add4~17_sumout\ <= NOT \Add4~17_sumout\;
\ALT_INV_Add4~13_sumout\ <= NOT \Add4~13_sumout\;
\ALT_INV_Add4~9_sumout\ <= NOT \Add4~9_sumout\;
\ALT_INV_Add4~5_sumout\ <= NOT \Add4~5_sumout\;
\ALT_INV_Add4~1_sumout\ <= NOT \Add4~1_sumout\;
\ALT_INV_Add1~29_sumout\ <= NOT \Add1~29_sumout\;
\ALT_INV_Add1~25_sumout\ <= NOT \Add1~25_sumout\;
\ALT_INV_Add1~21_sumout\ <= NOT \Add1~21_sumout\;
\ALT_INV_Add1~17_sumout\ <= NOT \Add1~17_sumout\;
\ALT_INV_Add1~13_sumout\ <= NOT \Add1~13_sumout\;
\ALT_INV_Add1~9_sumout\ <= NOT \Add1~9_sumout\;
\ALT_INV_Add1~5_sumout\ <= NOT \Add1~5_sumout\;
\ALT_INV_Add1~1_sumout\ <= NOT \Add1~1_sumout\;
\ALT_INV_Add25~57_sumout\ <= NOT \Add25~57_sumout\;
\ALT_INV_Add22~37_sumout\ <= NOT \Add22~37_sumout\;
\ALT_INV_Add47~57_sumout\ <= NOT \Add47~57_sumout\;
\ALT_INV_Add46~37_sumout\ <= NOT \Add46~37_sumout\;
\ALT_INV_Add25~53_sumout\ <= NOT \Add25~53_sumout\;
\ALT_INV_Add22~33_sumout\ <= NOT \Add22~33_sumout\;
\ALT_INV_Add47~53_sumout\ <= NOT \Add47~53_sumout\;
\ALT_INV_Add46~33_sumout\ <= NOT \Add46~33_sumout\;
\ALT_INV_capy[1][14]\ <= NOT \capy[1][14]\;
\ALT_INV_capy[1][13]\ <= NOT \capy[1][13]\;
\ALT_INV_capy[1][12]\ <= NOT \capy[1][12]\;
\ALT_INV_capy[1][11]\ <= NOT \capy[1][11]\;
\ALT_INV_capy[1][10]\ <= NOT \capy[1][10]\;
\ALT_INV_capy[1][9]\ <= NOT \capy[1][9]\;
\ALT_INV_capy[1][8]\ <= NOT \capy[1][8]\;
\ALT_INV_capy[1][7]\ <= NOT \capy[1][7]\;
\ALT_INV_capy[1][6]\ <= NOT \capy[1][6]\;
\ALT_INV_capy[1][5]\ <= NOT \capy[1][5]\;
\ALT_INV_capy[1][4]\ <= NOT \capy[1][4]\;
\ALT_INV_capy[1][3]\ <= NOT \capy[1][3]\;
\ALT_INV_capy[1][2]\ <= NOT \capy[1][2]\;
\ALT_INV_capy[1][1]\ <= NOT \capy[1][1]\;
\ALT_INV_capy[1][0]\ <= NOT \capy[1][0]\;
\ALT_INV_Add52~29_sumout\ <= NOT \Add52~29_sumout\;
\ALT_INV_Add52~25_sumout\ <= NOT \Add52~25_sumout\;
\ALT_INV_capy[2][14]\ <= NOT \capy[2][14]\;
\ALT_INV_capy[2][13]\ <= NOT \capy[2][13]\;
\ALT_INV_capy[2][12]\ <= NOT \capy[2][12]\;
\ALT_INV_capy[2][11]\ <= NOT \capy[2][11]\;
\ALT_INV_capy[2][10]\ <= NOT \capy[2][10]\;
\ALT_INV_capy[2][9]\ <= NOT \capy[2][9]\;
\ALT_INV_capy[2][8]\ <= NOT \capy[2][8]\;
\ALT_INV_capy[2][7]\ <= NOT \capy[2][7]\;
\ALT_INV_capy[2][6]\ <= NOT \capy[2][6]\;
\ALT_INV_capy[2][5]\ <= NOT \capy[2][5]\;
\ALT_INV_capy[2][4]\ <= NOT \capy[2][4]\;
\ALT_INV_capy[2][3]\ <= NOT \capy[2][3]\;
\ALT_INV_capy[2][2]\ <= NOT \capy[2][2]\;
\ALT_INV_capy[2][1]\ <= NOT \capy[2][1]\;
\ALT_INV_capy[2][0]\ <= NOT \capy[2][0]\;
\ALT_INV_Add25~49_sumout\ <= NOT \Add25~49_sumout\;
\ALT_INV_Add22~29_sumout\ <= NOT \Add22~29_sumout\;
\ALT_INV_capy[3][14]\ <= NOT \capy[3][14]\;
\ALT_INV_capy[3][13]\ <= NOT \capy[3][13]\;
\ALT_INV_capy[3][12]\ <= NOT \capy[3][12]\;
\ALT_INV_capy[3][11]\ <= NOT \capy[3][11]\;
\ALT_INV_capy[3][10]\ <= NOT \capy[3][10]\;
\ALT_INV_capy[3][9]\ <= NOT \capy[3][9]\;
\ALT_INV_capy[3][8]\ <= NOT \capy[3][8]\;
\ALT_INV_capy[3][7]\ <= NOT \capy[3][7]\;
\ALT_INV_capy[3][6]\ <= NOT \capy[3][6]\;
\ALT_INV_capy[3][5]\ <= NOT \capy[3][5]\;
\ALT_INV_capy[3][4]\ <= NOT \capy[3][4]\;
\ALT_INV_capy[3][3]\ <= NOT \capy[3][3]\;
\ALT_INV_capy[3][2]\ <= NOT \capy[3][2]\;
\ALT_INV_capy[3][1]\ <= NOT \capy[3][1]\;
\ALT_INV_capy[3][0]\ <= NOT \capy[3][0]\;
\ALT_INV_Add51~29_sumout\ <= NOT \Add51~29_sumout\;
\ALT_INV_Add51~25_sumout\ <= NOT \Add51~25_sumout\;
\ALT_INV_Add47~49_sumout\ <= NOT \Add47~49_sumout\;
\ALT_INV_Add46~29_sumout\ <= NOT \Add46~29_sumout\;
\ALT_INV_Add51~21_sumout\ <= NOT \Add51~21_sumout\;
\ALT_INV_Add51~17_sumout\ <= NOT \Add51~17_sumout\;
\ALT_INV_Add50~29_sumout\ <= NOT \Add50~29_sumout\;
\ALT_INV_Add51~13_sumout\ <= NOT \Add51~13_sumout\;
\ALT_INV_Add52~21_sumout\ <= NOT \Add52~21_sumout\;
\ALT_INV_Add50~25_sumout\ <= NOT \Add50~25_sumout\;
\ALT_INV_Add51~9_sumout\ <= NOT \Add51~9_sumout\;
\ALT_INV_Add52~17_sumout\ <= NOT \Add52~17_sumout\;
\ALT_INV_Add50~21_sumout\ <= NOT \Add50~21_sumout\;
\ALT_INV_Add51~5_sumout\ <= NOT \Add51~5_sumout\;
\ALT_INV_Add52~13_sumout\ <= NOT \Add52~13_sumout\;
\ALT_INV_Add50~17_sumout\ <= NOT \Add50~17_sumout\;
\ALT_INV_Add51~1_sumout\ <= NOT \Add51~1_sumout\;
\ALT_INV_Add52~9_sumout\ <= NOT \Add52~9_sumout\;
\ALT_INV_Add52~5_sumout\ <= NOT \Add52~5_sumout\;
\ALT_INV_Add50~13_sumout\ <= NOT \Add50~13_sumout\;
\ALT_INV_Add50~9_sumout\ <= NOT \Add50~9_sumout\;
\ALT_INV_capy[0][14]\ <= NOT \capy[0][14]\;
\ALT_INV_capy[0][13]\ <= NOT \capy[0][13]\;
\ALT_INV_capy[0][12]\ <= NOT \capy[0][12]\;
\ALT_INV_capy[0][11]\ <= NOT \capy[0][11]\;
\ALT_INV_capy[0][10]\ <= NOT \capy[0][10]\;
\ALT_INV_capy[0][9]\ <= NOT \capy[0][9]\;
\ALT_INV_capy[0][8]\ <= NOT \capy[0][8]\;
\ALT_INV_capy[0][7]\ <= NOT \capy[0][7]\;
\ALT_INV_capy[0][6]\ <= NOT \capy[0][6]\;
\ALT_INV_capy[0][5]\ <= NOT \capy[0][5]\;
\ALT_INV_capy[0][4]\ <= NOT \capy[0][4]\;
\ALT_INV_capy[0][3]\ <= NOT \capy[0][3]\;
\ALT_INV_capy[0][2]\ <= NOT \capy[0][2]\;
\ALT_INV_capy[0][1]\ <= NOT \capy[0][1]\;
\ALT_INV_capy[0][0]\ <= NOT \capy[0][0]\;
\ALT_INV_Add52~1_sumout\ <= NOT \Add52~1_sumout\;
\ALT_INV_Add53~29_sumout\ <= NOT \Add53~29_sumout\;
\ALT_INV_Add53~25_sumout\ <= NOT \Add53~25_sumout\;
\ALT_INV_Add7~37_sumout\ <= NOT \Add7~37_sumout\;
\ALT_INV_Add7~33_sumout\ <= NOT \Add7~33_sumout\;
\ALT_INV_Add25~45_sumout\ <= NOT \Add25~45_sumout\;
\ALT_INV_Add53~21_sumout\ <= NOT \Add53~21_sumout\;
\ALT_INV_Add22~25_sumout\ <= NOT \Add22~25_sumout\;
\ALT_INV_Add53~17_sumout\ <= NOT \Add53~17_sumout\;
\ALT_INV_Add53~13_sumout\ <= NOT \Add53~13_sumout\;
\ALT_INV_Add53~9_sumout\ <= NOT \Add53~9_sumout\;
\ALT_INV_Add53~5_sumout\ <= NOT \Add53~5_sumout\;
\ALT_INV_Add53~1_sumout\ <= NOT \Add53~1_sumout\;
\ALT_INV_Add35~89_sumout\ <= NOT \Add35~89_sumout\;
\ALT_INV_Add35~85_sumout\ <= NOT \Add35~85_sumout\;
\ALT_INV_Add37~33_sumout\ <= NOT \Add37~33_sumout\;
\ALT_INV_Add37~29_sumout\ <= NOT \Add37~29_sumout\;
\ALT_INV_Add37~25_sumout\ <= NOT \Add37~25_sumout\;
\ALT_INV_Add35~81_sumout\ <= NOT \Add35~81_sumout\;
\ALT_INV_Add21~33_sumout\ <= NOT \Add21~33_sumout\;
\ALT_INV_Add35~77_sumout\ <= NOT \Add35~77_sumout\;
\ALT_INV_Add21~29_sumout\ <= NOT \Add21~29_sumout\;
\ALT_INV_Add47~45_sumout\ <= NOT \Add47~45_sumout\;
\ALT_INV_Add46~25_sumout\ <= NOT \Add46~25_sumout\;
\ALT_INV_Add37~21_sumout\ <= NOT \Add37~21_sumout\;
\ALT_INV_Add37~17_sumout\ <= NOT \Add37~17_sumout\;
\ALT_INV_Add37~13_sumout\ <= NOT \Add37~13_sumout\;
\ALT_INV_Add37~9_sumout\ <= NOT \Add37~9_sumout\;
\ALT_INV_Add37~5_sumout\ <= NOT \Add37~5_sumout\;
\ALT_INV_Add37~1_sumout\ <= NOT \Add37~1_sumout\;
\ALT_INV_Add50~5_sumout\ <= NOT \Add50~5_sumout\;
\ALT_INV_Add23~33_sumout\ <= NOT \Add23~33_sumout\;
\ALT_INV_Add50~1_sumout\ <= NOT \Add50~1_sumout\;
\ALT_INV_Add23~29_sumout\ <= NOT \Add23~29_sumout\;
\ALT_INV_Add9~41_sumout\ <= NOT \Add9~41_sumout\;
\ALT_INV_Add7~29_sumout\ <= NOT \Add7~29_sumout\;
\ALT_INV_Add7~25_sumout\ <= NOT \Add7~25_sumout\;
\ALT_INV_Add7~21_sumout\ <= NOT \Add7~21_sumout\;
\ALT_INV_Add7~17_sumout\ <= NOT \Add7~17_sumout\;
\ALT_INV_Add7~13_sumout\ <= NOT \Add7~13_sumout\;
\ALT_INV_Add7~9_sumout\ <= NOT \Add7~9_sumout\;
\ALT_INV_Add7~5_sumout\ <= NOT \Add7~5_sumout\;
\ALT_INV_Add9~37_sumout\ <= NOT \Add9~37_sumout\;
\ALT_INV_Add9~33_sumout\ <= NOT \Add9~33_sumout\;
\ALT_INV_Add7~1_sumout\ <= NOT \Add7~1_sumout\;
\ALT_INV_Add25~41_sumout\ <= NOT \Add25~41_sumout\;
\ALT_INV_Add22~21_sumout\ <= NOT \Add22~21_sumout\;
\ALT_INV_Add22~17_sumout\ <= NOT \Add22~17_sumout\;
\ALT_INV_Add22~13_sumout\ <= NOT \Add22~13_sumout\;
\ALT_INV_Add22~9_sumout\ <= NOT \Add22~9_sumout\;
\ALT_INV_Add22~5_sumout\ <= NOT \Add22~5_sumout\;
\ALT_INV_Add22~1_sumout\ <= NOT \Add22~1_sumout\;
\ALT_INV_Add25~37_sumout\ <= NOT \Add25~37_sumout\;
\ALT_INV_Add25~33_sumout\ <= NOT \Add25~33_sumout\;
\ALT_INV_Add35~73_sumout\ <= NOT \Add35~73_sumout\;
\ALT_INV_Add35~69_sumout\ <= NOT \Add35~69_sumout\;
\ALT_INV_Add35~65_sumout\ <= NOT \Add35~65_sumout\;
\ALT_INV_Add21~25_sumout\ <= NOT \Add21~25_sumout\;
\ALT_INV_Add35~61_sumout\ <= NOT \Add35~61_sumout\;
\ALT_INV_Add21~21_sumout\ <= NOT \Add21~21_sumout\;
\ALT_INV_Add35~57_sumout\ <= NOT \Add35~57_sumout\;
\ALT_INV_Add21~17_sumout\ <= NOT \Add21~17_sumout\;
\ALT_INV_Add35~53_sumout\ <= NOT \Add35~53_sumout\;
\ALT_INV_Add21~13_sumout\ <= NOT \Add21~13_sumout\;
\ALT_INV_Add35~49_sumout\ <= NOT \Add35~49_sumout\;
\ALT_INV_Add21~9_sumout\ <= NOT \Add21~9_sumout\;
\ALT_INV_Add35~45_sumout\ <= NOT \Add35~45_sumout\;
\ALT_INV_Add21~5_sumout\ <= NOT \Add21~5_sumout\;
\ALT_INV_Add35~41_sumout\ <= NOT \Add35~41_sumout\;
\ALT_INV_Add35~37_sumout\ <= NOT \Add35~37_sumout\;
\ALT_INV_Add35~33_sumout\ <= NOT \Add35~33_sumout\;
\ALT_INV_Add21~1_sumout\ <= NOT \Add21~1_sumout\;
\ALT_INV_Add47~41_sumout\ <= NOT \Add47~41_sumout\;
\ALT_INV_Add46~21_sumout\ <= NOT \Add46~21_sumout\;
\ALT_INV_Add46~17_sumout\ <= NOT \Add46~17_sumout\;
\ALT_INV_Add23~25_sumout\ <= NOT \Add23~25_sumout\;
\ALT_INV_Add46~13_sumout\ <= NOT \Add46~13_sumout\;
\ALT_INV_Add23~21_sumout\ <= NOT \Add23~21_sumout\;
\ALT_INV_Add46~9_sumout\ <= NOT \Add46~9_sumout\;
\ALT_INV_Add23~17_sumout\ <= NOT \Add23~17_sumout\;
\ALT_INV_Add46~5_sumout\ <= NOT \Add46~5_sumout\;
\ALT_INV_Add23~13_sumout\ <= NOT \Add23~13_sumout\;
\ALT_INV_Add46~1_sumout\ <= NOT \Add46~1_sumout\;
\ALT_INV_Add23~9_sumout\ <= NOT \Add23~9_sumout\;
\ALT_INV_Add23~5_sumout\ <= NOT \Add23~5_sumout\;
\ALT_INV_Add47~37_sumout\ <= NOT \Add47~37_sumout\;
\ALT_INV_Add47~33_sumout\ <= NOT \Add47~33_sumout\;
\ALT_INV_Add23~1_sumout\ <= NOT \Add23~1_sumout\;
\ALT_INV_Add9~29_sumout\ <= NOT \Add9~29_sumout\;
\ALT_INV_Add9~25_sumout\ <= NOT \Add9~25_sumout\;
\ALT_INV_Add9~21_sumout\ <= NOT \Add9~21_sumout\;
\ALT_INV_Add9~17_sumout\ <= NOT \Add9~17_sumout\;
\ALT_INV_Add9~13_sumout\ <= NOT \Add9~13_sumout\;
\ALT_INV_Add9~9_sumout\ <= NOT \Add9~9_sumout\;
\ALT_INV_Add9~5_sumout\ <= NOT \Add9~5_sumout\;
\ALT_INV_Add9~1_sumout\ <= NOT \Add9~1_sumout\;
\ALT_INV_Add25~29_sumout\ <= NOT \Add25~29_sumout\;
\ALT_INV_Add25~25_sumout\ <= NOT \Add25~25_sumout\;
\ALT_INV_Add25~21_sumout\ <= NOT \Add25~21_sumout\;
\ALT_INV_Add25~17_sumout\ <= NOT \Add25~17_sumout\;
\ALT_INV_Add25~13_sumout\ <= NOT \Add25~13_sumout\;
\ALT_INV_Add25~9_sumout\ <= NOT \Add25~9_sumout\;
\ALT_INV_Add25~5_sumout\ <= NOT \Add25~5_sumout\;
\ALT_INV_Add25~1_sumout\ <= NOT \Add25~1_sumout\;
\ALT_INV_Add35~29_sumout\ <= NOT \Add35~29_sumout\;
\ALT_INV_Add35~25_sumout\ <= NOT \Add35~25_sumout\;
\ALT_INV_Add35~21_sumout\ <= NOT \Add35~21_sumout\;
\ALT_INV_Add35~17_sumout\ <= NOT \Add35~17_sumout\;
\ALT_INV_Add35~13_sumout\ <= NOT \Add35~13_sumout\;
\ALT_INV_Add35~9_sumout\ <= NOT \Add35~9_sumout\;
\ALT_INV_Add35~5_sumout\ <= NOT \Add35~5_sumout\;
\ALT_INV_Add35~1_sumout\ <= NOT \Add35~1_sumout\;
\ALT_INV_Add47~29_sumout\ <= NOT \Add47~29_sumout\;
\ALT_INV_Add47~25_sumout\ <= NOT \Add47~25_sumout\;
\ALT_INV_Add47~21_sumout\ <= NOT \Add47~21_sumout\;
\ALT_INV_Add47~17_sumout\ <= NOT \Add47~17_sumout\;
\ALT_INV_Add47~13_sumout\ <= NOT \Add47~13_sumout\;
\ALT_INV_Add47~9_sumout\ <= NOT \Add47~9_sumout\;
\ALT_INV_Add47~5_sumout\ <= NOT \Add47~5_sumout\;
\ALT_INV_Add47~1_sumout\ <= NOT \Add47~1_sumout\;

-- Location: IOOBUF_X89_Y15_N22
\y_out[3][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y[3][0]~q\,
	devoe => ww_devoe,
	o => ww_y_out(3)(0));

-- Location: IOOBUF_X89_Y25_N39
\y_out[3][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y[3][1]~q\,
	devoe => ww_devoe,
	o => ww_y_out(3)(1));

-- Location: IOOBUF_X76_Y0_N2
\y_out[3][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y[3][2]~q\,
	devoe => ww_devoe,
	o => ww_y_out(3)(2));

-- Location: IOOBUF_X89_Y25_N22
\y_out[3][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y[3][3]~q\,
	devoe => ww_devoe,
	o => ww_y_out(3)(3));

-- Location: IOOBUF_X89_Y13_N5
\y_out[3][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y[3][4]~q\,
	devoe => ww_devoe,
	o => ww_y_out(3)(4));

-- Location: IOOBUF_X20_Y0_N36
\y_out[3][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y[3][5]~q\,
	devoe => ww_devoe,
	o => ww_y_out(3)(5));

-- Location: IOOBUF_X76_Y0_N53
\y_out[3][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y[3][6]~q\,
	devoe => ww_devoe,
	o => ww_y_out(3)(6));

-- Location: IOOBUF_X38_Y81_N36
\y_out[3][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y[3][7]~q\,
	devoe => ww_devoe,
	o => ww_y_out(3)(7));

-- Location: IOOBUF_X89_Y20_N96
\y_out[2][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y[2][0]~q\,
	devoe => ww_devoe,
	o => ww_y_out(2)(0));

-- Location: IOOBUF_X78_Y0_N2
\y_out[2][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y[2][1]~q\,
	devoe => ww_devoe,
	o => ww_y_out(2)(1));

-- Location: IOOBUF_X40_Y81_N36
\y_out[2][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y[2][2]~q\,
	devoe => ww_devoe,
	o => ww_y_out(2)(2));

-- Location: IOOBUF_X82_Y0_N42
\y_out[2][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y[2][3]~q\,
	devoe => ww_devoe,
	o => ww_y_out(2)(3));

-- Location: IOOBUF_X89_Y13_N22
\y_out[2][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y[2][4]~q\,
	devoe => ww_devoe,
	o => ww_y_out(2)(4));

-- Location: IOOBUF_X89_Y11_N62
\y_out[2][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y[2][5]~q\,
	devoe => ww_devoe,
	o => ww_y_out(2)(5));

-- Location: IOOBUF_X89_Y16_N56
\y_out[2][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y[2][6]~q\,
	devoe => ww_devoe,
	o => ww_y_out(2)(6));

-- Location: IOOBUF_X89_Y15_N39
\y_out[2][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y[2][7]~q\,
	devoe => ww_devoe,
	o => ww_y_out(2)(7));

-- Location: IOOBUF_X89_Y16_N5
\y_out[1][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y[1][0]~q\,
	devoe => ww_devoe,
	o => ww_y_out(1)(0));

-- Location: IOOBUF_X89_Y6_N5
\y_out[1][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y[1][1]~q\,
	devoe => ww_devoe,
	o => ww_y_out(1)(1));

-- Location: IOOBUF_X38_Y81_N2
\y_out[1][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y[1][2]~q\,
	devoe => ww_devoe,
	o => ww_y_out(1)(2));

-- Location: IOOBUF_X34_Y81_N93
\y_out[1][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y[1][3]~q\,
	devoe => ww_devoe,
	o => ww_y_out(1)(3));

-- Location: IOOBUF_X68_Y0_N36
\y_out[1][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y[1][4]~q\,
	devoe => ww_devoe,
	o => ww_y_out(1)(4));

-- Location: IOOBUF_X89_Y16_N39
\y_out[1][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y[1][5]~q\,
	devoe => ww_devoe,
	o => ww_y_out(1)(5));

-- Location: IOOBUF_X89_Y16_N22
\y_out[1][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y[1][6]~q\,
	devoe => ww_devoe,
	o => ww_y_out(1)(6));

-- Location: IOOBUF_X40_Y81_N2
\y_out[1][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y[1][7]~q\,
	devoe => ww_devoe,
	o => ww_y_out(1)(7));

-- Location: IOOBUF_X36_Y81_N2
\y_out[0][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y[0][0]~q\,
	devoe => ww_devoe,
	o => ww_y_out(0)(0));

-- Location: IOOBUF_X89_Y13_N39
\y_out[0][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y[0][1]~q\,
	devoe => ww_devoe,
	o => ww_y_out(0)(1));

-- Location: IOOBUF_X89_Y20_N62
\y_out[0][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y[0][2]~q\,
	devoe => ww_devoe,
	o => ww_y_out(0)(2));

-- Location: IOOBUF_X32_Y81_N2
\y_out[0][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y[0][3]~q\,
	devoe => ww_devoe,
	o => ww_y_out(0)(3));

-- Location: IOOBUF_X78_Y0_N19
\y_out[0][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y[0][4]~q\,
	devoe => ww_devoe,
	o => ww_y_out(0)(4));

-- Location: IOOBUF_X89_Y15_N5
\y_out[0][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y[0][5]~q\,
	devoe => ww_devoe,
	o => ww_y_out(0)(5));

-- Location: IOOBUF_X89_Y15_N56
\y_out[0][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y[0][6]~q\,
	devoe => ww_devoe,
	o => ww_y_out(0)(6));

-- Location: IOOBUF_X89_Y23_N56
\y_out[0][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y[0][7]~q\,
	devoe => ww_devoe,
	o => ww_y_out(0)(7));

-- Location: IOIBUF_X89_Y25_N4
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
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

-- Location: IOIBUF_X89_Y23_N21
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G11
\reset~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \reset~input_o\,
	outclk => \reset~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y23_N4
\x_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(0),
	o => \x_in[0]~input_o\);

-- Location: MLABCELL_X82_Y25_N54
\count[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \count[0]~1_combout\ = ( count(0) & ( count(1) ) ) # ( !count(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_count(1),
	datae => ALT_INV_count(0),
	combout => \count[0]~1_combout\);

-- Location: FF_X82_Y25_N55
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \count[0]~1_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: MLABCELL_X82_Y25_N45
\count[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \count[1]~0_combout\ = (count(1)) # (count(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(0),
	datad => ALT_INV_count(1),
	combout => \count[1]~0_combout\);

-- Location: FF_X82_Y25_N5
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \count[1]~0_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: MLABCELL_X82_Y25_N48
\load~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \load~0_combout\ = ( \load~q\ & ( count(0) ) ) # ( !\load~q\ & ( count(0) & ( count(1) ) ) ) # ( \load~q\ & ( !count(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_count(1),
	datae => \ALT_INV_load~q\,
	dataf => ALT_INV_count(0),
	combout => \load~0_combout\);

-- Location: FF_X82_Y25_N50
load : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \load~0_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load~q\);

-- Location: FF_X88_Y26_N2
\x[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x_in[0]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[3][0]~q\);

-- Location: FF_X84_Y22_N32
\x[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[3][0]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[2][0]~q\);

-- Location: FF_X88_Y26_N28
\x[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[2][0]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[1][0]~q\);

-- Location: LABCELL_X85_Y24_N30
\Add27~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add27~1_sumout\ = SUM(( !\x[1][0]~q\ ) + ( VCC ) + ( !VCC ))
-- \Add27~2\ = CARRY(( !\x[1][0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_x[1][0]~q\,
	cin => GND,
	sumout => \Add27~1_sumout\,
	cout => \Add27~2\);

-- Location: FF_X87_Y26_N2
\x[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[1][0]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[0][0]~q\);

-- Location: LABCELL_X88_Y26_N0
\Add14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~1_sumout\ = SUM(( !\x[3][0]~q\ ) + ( VCC ) + ( !VCC ))
-- \Add14~2\ = CARRY(( !\x[3][0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_x[3][0]~q\,
	cin => GND,
	sumout => \Add14~1_sumout\,
	cout => \Add14~2\);

-- Location: MLABCELL_X87_Y26_N0
\Add28~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add28~33_sumout\ = SUM(( !\x[2][0]~q\ $ (!\x[0][0]~q\ $ (\Add14~1_sumout\)) ) + ( !VCC ) + ( !VCC ))
-- \Add28~34\ = CARRY(( !\x[2][0]~q\ $ (!\x[0][0]~q\ $ (\Add14~1_sumout\)) ) + ( !VCC ) + ( !VCC ))
-- \Add28~35\ = SHARE((!\x[2][0]~q\ & (\x[0][0]~q\ & \Add14~1_sumout\)) # (\x[2][0]~q\ & ((\Add14~1_sumout\) # (\x[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x[2][0]~q\,
	datac => \ALT_INV_x[0][0]~q\,
	datad => \ALT_INV_Add14~1_sumout\,
	cin => GND,
	sharein => GND,
	sumout => \Add28~33_sumout\,
	cout => \Add28~34\,
	shareout => \Add28~35\);

-- Location: MLABCELL_X87_Y24_N0
\Add28~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add28~1_sumout\ = SUM(( \Add28~33_sumout\ ) + ( \Add27~1_sumout\ ) + ( !VCC ))
-- \Add28~2\ = CARRY(( \Add28~33_sumout\ ) + ( \Add27~1_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add27~1_sumout\,
	datad => \ALT_INV_Add28~33_sumout\,
	cin => GND,
	sumout => \Add28~1_sumout\,
	cout => \Add28~2\);

-- Location: IOIBUF_X89_Y13_N55
\x_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(1),
	o => \x_in[1]~input_o\);

-- Location: FF_X88_Y26_N5
\x[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x_in[1]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[3][1]~q\);

-- Location: FF_X84_Y22_N35
\x[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[3][1]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[2][1]~q\);

-- Location: FF_X88_Y25_N5
\x[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[2][1]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[1][1]~q\);

-- Location: LABCELL_X85_Y24_N33
\Add27~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add27~5_sumout\ = SUM(( !\x[1][1]~q\ ) + ( GND ) + ( \Add27~2\ ))
-- \Add27~6\ = CARRY(( !\x[1][1]~q\ ) + ( GND ) + ( \Add27~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x[1][1]~q\,
	cin => \Add27~2\,
	sumout => \Add27~5_sumout\,
	cout => \Add27~6\);

-- Location: FF_X87_Y26_N5
\x[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[1][1]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[0][1]~q\);

-- Location: LABCELL_X88_Y26_N3
\Add14~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~5_sumout\ = SUM(( !\x[3][1]~q\ ) + ( GND ) + ( \Add14~2\ ))
-- \Add14~6\ = CARRY(( !\x[3][1]~q\ ) + ( GND ) + ( \Add14~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_x[3][1]~q\,
	cin => \Add14~2\,
	sumout => \Add14~5_sumout\,
	cout => \Add14~6\);

-- Location: MLABCELL_X87_Y26_N3
\Add28~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add28~37_sumout\ = SUM(( !\x[0][1]~q\ $ (!\Add14~5_sumout\ $ (\x[2][1]~q\)) ) + ( \Add28~35\ ) + ( \Add28~34\ ))
-- \Add28~38\ = CARRY(( !\x[0][1]~q\ $ (!\Add14~5_sumout\ $ (\x[2][1]~q\)) ) + ( \Add28~35\ ) + ( \Add28~34\ ))
-- \Add28~39\ = SHARE((!\x[0][1]~q\ & (\Add14~5_sumout\ & \x[2][1]~q\)) # (\x[0][1]~q\ & ((\x[2][1]~q\) # (\Add14~5_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[0][1]~q\,
	datac => \ALT_INV_Add14~5_sumout\,
	datad => \ALT_INV_x[2][1]~q\,
	cin => \Add28~34\,
	sharein => \Add28~35\,
	sumout => \Add28~37_sumout\,
	cout => \Add28~38\,
	shareout => \Add28~39\);

-- Location: MLABCELL_X87_Y24_N3
\Add28~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add28~5_sumout\ = SUM(( \Add28~37_sumout\ ) + ( \Add27~5_sumout\ ) + ( \Add28~2\ ))
-- \Add28~6\ = CARRY(( \Add28~37_sumout\ ) + ( \Add27~5_sumout\ ) + ( \Add28~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add27~5_sumout\,
	datad => \ALT_INV_Add28~37_sumout\,
	cin => \Add28~2\,
	sumout => \Add28~5_sumout\,
	cout => \Add28~6\);

-- Location: IOIBUF_X89_Y20_N78
\x_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(2),
	o => \x_in[2]~input_o\);

-- Location: FF_X88_Y26_N8
\x[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x_in[2]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[3][2]~q\);

-- Location: FF_X84_Y22_N38
\x[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[3][2]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[2][2]~q\);

-- Location: FF_X88_Y25_N8
\x[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[2][2]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[1][2]~q\);

-- Location: FF_X87_Y26_N8
\x[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[1][2]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[0][2]~q\);

-- Location: LABCELL_X88_Y26_N6
\Add14~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~9_sumout\ = SUM(( !\x[3][2]~q\ ) + ( GND ) + ( \Add14~6\ ))
-- \Add14~10\ = CARRY(( !\x[3][2]~q\ ) + ( GND ) + ( \Add14~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_x[3][2]~q\,
	cin => \Add14~6\,
	sumout => \Add14~9_sumout\,
	cout => \Add14~10\);

-- Location: MLABCELL_X87_Y26_N6
\Add28~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add28~41_sumout\ = SUM(( !\x[0][2]~q\ $ (!\x[2][2]~q\ $ (\Add14~9_sumout\)) ) + ( \Add28~39\ ) + ( \Add28~38\ ))
-- \Add28~42\ = CARRY(( !\x[0][2]~q\ $ (!\x[2][2]~q\ $ (\Add14~9_sumout\)) ) + ( \Add28~39\ ) + ( \Add28~38\ ))
-- \Add28~43\ = SHARE((!\x[0][2]~q\ & (\x[2][2]~q\ & \Add14~9_sumout\)) # (\x[0][2]~q\ & ((\Add14~9_sumout\) # (\x[2][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x[0][2]~q\,
	datac => \ALT_INV_x[2][2]~q\,
	datad => \ALT_INV_Add14~9_sumout\,
	cin => \Add28~38\,
	sharein => \Add28~39\,
	sumout => \Add28~41_sumout\,
	cout => \Add28~42\,
	shareout => \Add28~43\);

-- Location: LABCELL_X85_Y24_N36
\Add27~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add27~9_sumout\ = SUM(( !\x[1][2]~q\ ) + ( GND ) + ( \Add27~6\ ))
-- \Add27~10\ = CARRY(( !\x[1][2]~q\ ) + ( GND ) + ( \Add27~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_x[1][2]~q\,
	cin => \Add27~6\,
	sumout => \Add27~9_sumout\,
	cout => \Add27~10\);

-- Location: MLABCELL_X87_Y24_N6
\Add28~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add28~9_sumout\ = SUM(( \Add27~9_sumout\ ) + ( \Add28~41_sumout\ ) + ( \Add28~6\ ))
-- \Add28~10\ = CARRY(( \Add27~9_sumout\ ) + ( \Add28~41_sumout\ ) + ( \Add28~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add28~41_sumout\,
	datac => \ALT_INV_Add27~9_sumout\,
	cin => \Add28~6\,
	sumout => \Add28~9_sumout\,
	cout => \Add28~10\);

-- Location: IOIBUF_X89_Y23_N38
\x_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(3),
	o => \x_in[3]~input_o\);

-- Location: FF_X88_Y26_N11
\x[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x_in[3]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[3][3]~q\);

-- Location: FF_X84_Y22_N41
\x[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[3][3]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[2][3]~q\);

-- Location: FF_X88_Y25_N11
\x[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[2][3]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[1][3]~q\);

-- Location: LABCELL_X85_Y24_N39
\Add27~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add27~17_sumout\ = SUM(( !\x[1][3]~q\ ) + ( GND ) + ( \Add27~10\ ))
-- \Add27~18\ = CARRY(( !\x[1][3]~q\ ) + ( GND ) + ( \Add27~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x[1][3]~q\,
	cin => \Add27~10\,
	sumout => \Add27~17_sumout\,
	cout => \Add27~18\);

-- Location: FF_X87_Y26_N11
\x[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[1][3]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[0][3]~q\);

-- Location: LABCELL_X88_Y26_N9
\Add14~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~13_sumout\ = SUM(( !\x[3][3]~q\ ) + ( GND ) + ( \Add14~10\ ))
-- \Add14~14\ = CARRY(( !\x[3][3]~q\ ) + ( GND ) + ( \Add14~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_x[3][3]~q\,
	cin => \Add14~10\,
	sumout => \Add14~13_sumout\,
	cout => \Add14~14\);

-- Location: MLABCELL_X87_Y26_N9
\Add28~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add28~45_sumout\ = SUM(( !\x[2][3]~q\ $ (!\x[0][3]~q\ $ (\Add14~13_sumout\)) ) + ( \Add28~43\ ) + ( \Add28~42\ ))
-- \Add28~46\ = CARRY(( !\x[2][3]~q\ $ (!\x[0][3]~q\ $ (\Add14~13_sumout\)) ) + ( \Add28~43\ ) + ( \Add28~42\ ))
-- \Add28~47\ = SHARE((!\x[2][3]~q\ & (\x[0][3]~q\ & \Add14~13_sumout\)) # (\x[2][3]~q\ & ((\Add14~13_sumout\) # (\x[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[2][3]~q\,
	datac => \ALT_INV_x[0][3]~q\,
	datad => \ALT_INV_Add14~13_sumout\,
	cin => \Add28~42\,
	sharein => \Add28~43\,
	sumout => \Add28~45_sumout\,
	cout => \Add28~46\,
	shareout => \Add28~47\);

-- Location: MLABCELL_X87_Y24_N9
\Add28~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add28~13_sumout\ = SUM(( \Add28~45_sumout\ ) + ( \Add27~17_sumout\ ) + ( \Add28~10\ ))
-- \Add28~14\ = CARRY(( \Add28~45_sumout\ ) + ( \Add27~17_sumout\ ) + ( \Add28~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add27~17_sumout\,
	datad => \ALT_INV_Add28~45_sumout\,
	cin => \Add28~10\,
	sumout => \Add28~13_sumout\,
	cout => \Add28~14\);

-- Location: IOIBUF_X40_Y81_N52
\x_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(4),
	o => \x_in[4]~input_o\);

-- Location: FF_X88_Y26_N14
\x[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x_in[4]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[3][4]~q\);

-- Location: FF_X84_Y22_N44
\x[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[3][4]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[2][4]~q\);

-- Location: FF_X88_Y25_N14
\x[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[2][4]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[1][4]~q\);

-- Location: LABCELL_X85_Y24_N42
\Add27~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add27~21_sumout\ = SUM(( !\x[1][4]~q\ ) + ( GND ) + ( \Add27~18\ ))
-- \Add27~22\ = CARRY(( !\x[1][4]~q\ ) + ( GND ) + ( \Add27~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x[1][4]~q\,
	cin => \Add27~18\,
	sumout => \Add27~21_sumout\,
	cout => \Add27~22\);

-- Location: LABCELL_X88_Y25_N48
\x[0][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[0][4]~feeder_combout\ = \x[1][4]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x[1][4]~q\,
	combout => \x[0][4]~feeder_combout\);

-- Location: FF_X88_Y25_N49
\x[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x[0][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[0][4]~q\);

-- Location: LABCELL_X88_Y26_N12
\Add14~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~17_sumout\ = SUM(( !\x[3][4]~q\ ) + ( GND ) + ( \Add14~14\ ))
-- \Add14~18\ = CARRY(( !\x[3][4]~q\ ) + ( GND ) + ( \Add14~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_x[3][4]~q\,
	cin => \Add14~14\,
	sumout => \Add14~17_sumout\,
	cout => \Add14~18\);

-- Location: MLABCELL_X87_Y26_N12
\Add28~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add28~49_sumout\ = SUM(( !\x[0][4]~q\ $ (!\x[2][4]~q\ $ (\Add14~17_sumout\)) ) + ( \Add28~47\ ) + ( \Add28~46\ ))
-- \Add28~50\ = CARRY(( !\x[0][4]~q\ $ (!\x[2][4]~q\ $ (\Add14~17_sumout\)) ) + ( \Add28~47\ ) + ( \Add28~46\ ))
-- \Add28~51\ = SHARE((!\x[0][4]~q\ & (\x[2][4]~q\ & \Add14~17_sumout\)) # (\x[0][4]~q\ & ((\Add14~17_sumout\) # (\x[2][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x[0][4]~q\,
	datac => \ALT_INV_x[2][4]~q\,
	datad => \ALT_INV_Add14~17_sumout\,
	cin => \Add28~46\,
	sharein => \Add28~47\,
	sumout => \Add28~49_sumout\,
	cout => \Add28~50\,
	shareout => \Add28~51\);

-- Location: MLABCELL_X87_Y24_N12
\Add28~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add28~17_sumout\ = SUM(( \Add28~49_sumout\ ) + ( \Add27~21_sumout\ ) + ( \Add28~14\ ))
-- \Add28~18\ = CARRY(( \Add28~49_sumout\ ) + ( \Add27~21_sumout\ ) + ( \Add28~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add27~21_sumout\,
	datad => \ALT_INV_Add28~49_sumout\,
	cin => \Add28~14\,
	sumout => \Add28~17_sumout\,
	cout => \Add28~18\);

-- Location: IOIBUF_X89_Y20_N44
\x_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(5),
	o => \x_in[5]~input_o\);

-- Location: FF_X88_Y26_N17
\x[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x_in[5]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[3][5]~q\);

-- Location: FF_X84_Y22_N47
\x[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[3][5]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[2][5]~q\);

-- Location: LABCELL_X88_Y26_N15
\Add14~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~21_sumout\ = SUM(( !\x[3][5]~q\ ) + ( GND ) + ( \Add14~18\ ))
-- \Add14~22\ = CARRY(( !\x[3][5]~q\ ) + ( GND ) + ( \Add14~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_x[3][5]~q\,
	cin => \Add14~18\,
	sumout => \Add14~21_sumout\,
	cout => \Add14~22\);

-- Location: FF_X88_Y25_N17
\x[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[2][5]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[1][5]~q\);

-- Location: FF_X84_Y22_N8
\x[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[1][5]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[0][5]~q\);

-- Location: MLABCELL_X87_Y26_N15
\Add28~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add28~53_sumout\ = SUM(( !\x[2][5]~q\ $ (!\Add14~21_sumout\ $ (\x[0][5]~q\)) ) + ( \Add28~51\ ) + ( \Add28~50\ ))
-- \Add28~54\ = CARRY(( !\x[2][5]~q\ $ (!\Add14~21_sumout\ $ (\x[0][5]~q\)) ) + ( \Add28~51\ ) + ( \Add28~50\ ))
-- \Add28~55\ = SHARE((!\x[2][5]~q\ & (\Add14~21_sumout\ & \x[0][5]~q\)) # (\x[2][5]~q\ & ((\x[0][5]~q\) # (\Add14~21_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[2][5]~q\,
	datac => \ALT_INV_Add14~21_sumout\,
	datad => \ALT_INV_x[0][5]~q\,
	cin => \Add28~50\,
	sharein => \Add28~51\,
	sumout => \Add28~53_sumout\,
	cout => \Add28~54\,
	shareout => \Add28~55\);

-- Location: LABCELL_X85_Y24_N45
\Add27~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add27~25_sumout\ = SUM(( !\x[1][5]~q\ ) + ( GND ) + ( \Add27~22\ ))
-- \Add27~26\ = CARRY(( !\x[1][5]~q\ ) + ( GND ) + ( \Add27~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x[1][5]~q\,
	cin => \Add27~22\,
	sumout => \Add27~25_sumout\,
	cout => \Add27~26\);

-- Location: MLABCELL_X87_Y24_N15
\Add28~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add28~21_sumout\ = SUM(( \Add27~25_sumout\ ) + ( \Add28~53_sumout\ ) + ( \Add28~18\ ))
-- \Add28~22\ = CARRY(( \Add27~25_sumout\ ) + ( \Add28~53_sumout\ ) + ( \Add28~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add28~53_sumout\,
	datad => \ALT_INV_Add27~25_sumout\,
	cin => \Add28~18\,
	sumout => \Add28~21_sumout\,
	cout => \Add28~22\);

-- Location: IOIBUF_X36_Y81_N52
\x_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(6),
	o => \x_in[6]~input_o\);

-- Location: FF_X88_Y26_N20
\x[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x_in[6]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[3][6]~q\);

-- Location: FF_X84_Y22_N50
\x[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[3][6]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[2][6]~q\);

-- Location: LABCELL_X88_Y25_N42
\x[1][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[1][6]~feeder_combout\ = ( \x[2][6]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_x[2][6]~q\,
	combout => \x[1][6]~feeder_combout\);

-- Location: FF_X88_Y25_N43
\x[1][6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x[1][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[1][6]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y24_N48
\Add27~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add27~29_sumout\ = SUM(( !\x[1][6]~DUPLICATE_q\ ) + ( GND ) + ( \Add27~26\ ))
-- \Add27~30\ = CARRY(( !\x[1][6]~DUPLICATE_q\ ) + ( GND ) + ( \Add27~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_x[1][6]~DUPLICATE_q\,
	cin => \Add27~26\,
	sumout => \Add27~29_sumout\,
	cout => \Add27~30\);

-- Location: FF_X84_Y22_N58
\x[0][6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[1][6]~DUPLICATE_q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[0][6]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y26_N18
\Add14~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~25_sumout\ = SUM(( !\x[3][6]~q\ ) + ( GND ) + ( \Add14~22\ ))
-- \Add14~26\ = CARRY(( !\x[3][6]~q\ ) + ( GND ) + ( \Add14~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_x[3][6]~q\,
	cin => \Add14~22\,
	sumout => \Add14~25_sumout\,
	cout => \Add14~26\);

-- Location: MLABCELL_X87_Y26_N18
\Add28~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add28~57_sumout\ = SUM(( !\x[2][6]~q\ $ (!\x[0][6]~DUPLICATE_q\ $ (\Add14~25_sumout\)) ) + ( \Add28~55\ ) + ( \Add28~54\ ))
-- \Add28~58\ = CARRY(( !\x[2][6]~q\ $ (!\x[0][6]~DUPLICATE_q\ $ (\Add14~25_sumout\)) ) + ( \Add28~55\ ) + ( \Add28~54\ ))
-- \Add28~59\ = SHARE((!\x[2][6]~q\ & (\x[0][6]~DUPLICATE_q\ & \Add14~25_sumout\)) # (\x[2][6]~q\ & ((\Add14~25_sumout\) # (\x[0][6]~DUPLICATE_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[2][6]~q\,
	datac => \ALT_INV_x[0][6]~DUPLICATE_q\,
	datad => \ALT_INV_Add14~25_sumout\,
	cin => \Add28~54\,
	sharein => \Add28~55\,
	sumout => \Add28~57_sumout\,
	cout => \Add28~58\,
	shareout => \Add28~59\);

-- Location: MLABCELL_X87_Y24_N18
\Add28~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add28~25_sumout\ = SUM(( \Add28~57_sumout\ ) + ( \Add27~29_sumout\ ) + ( \Add28~22\ ))
-- \Add28~26\ = CARRY(( \Add28~57_sumout\ ) + ( \Add27~29_sumout\ ) + ( \Add28~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add27~29_sumout\,
	datad => \ALT_INV_Add28~57_sumout\,
	cin => \Add28~22\,
	sumout => \Add28~25_sumout\,
	cout => \Add28~26\);

-- Location: IOIBUF_X89_Y21_N55
\x_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(7),
	o => \x_in[7]~input_o\);

-- Location: FF_X88_Y26_N23
\x[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x_in[7]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[3][7]~q\);

-- Location: FF_X84_Y22_N53
\x[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[3][7]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[2][7]~q\);

-- Location: LABCELL_X88_Y25_N51
\x[1][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[1][7]~feeder_combout\ = ( \x[2][7]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_x[2][7]~q\,
	combout => \x[1][7]~feeder_combout\);

-- Location: FF_X88_Y25_N52
\x[1][7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x[1][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[1][7]~DUPLICATE_q\);

-- Location: FF_X85_Y24_N5
\x[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[1][7]~DUPLICATE_q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[0][7]~q\);

-- Location: LABCELL_X88_Y26_N21
\Add14~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~33_sumout\ = SUM(( !\x[3][7]~q\ ) + ( GND ) + ( \Add14~26\ ))
-- \Add14~34\ = CARRY(( !\x[3][7]~q\ ) + ( GND ) + ( \Add14~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_x[3][7]~q\,
	cin => \Add14~26\,
	sumout => \Add14~33_sumout\,
	cout => \Add14~34\);

-- Location: LABCELL_X88_Y26_N24
\Add14~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~29_sumout\ = SUM(( !\x[3][7]~q\ ) + ( GND ) + ( \Add14~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_x[3][7]~q\,
	cin => \Add14~34\,
	sumout => \Add14~29_sumout\);

-- Location: MLABCELL_X87_Y26_N21
\Add28~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add28~85_sumout\ = SUM(( !\x[2][7]~q\ $ (!\Add14~33_sumout\ $ (\x[0][7]~q\)) ) + ( \Add28~59\ ) + ( \Add28~58\ ))
-- \Add28~86\ = CARRY(( !\x[2][7]~q\ $ (!\Add14~33_sumout\ $ (\x[0][7]~q\)) ) + ( \Add28~59\ ) + ( \Add28~58\ ))
-- \Add28~87\ = SHARE((!\x[2][7]~q\ & (\Add14~33_sumout\ & \x[0][7]~q\)) # (\x[2][7]~q\ & ((\x[0][7]~q\) # (\Add14~33_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x[2][7]~q\,
	datac => \ALT_INV_Add14~33_sumout\,
	datad => \ALT_INV_x[0][7]~q\,
	cin => \Add28~58\,
	sharein => \Add28~59\,
	sumout => \Add28~85_sumout\,
	cout => \Add28~86\,
	shareout => \Add28~87\);

-- Location: MLABCELL_X87_Y26_N24
\Add28~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add28~77_sumout\ = SUM(( !\x[2][7]~q\ $ (!\x[0][7]~q\ $ (\Add14~29_sumout\)) ) + ( \Add28~87\ ) + ( \Add28~86\ ))
-- \Add28~78\ = CARRY(( !\x[2][7]~q\ $ (!\x[0][7]~q\ $ (\Add14~29_sumout\)) ) + ( \Add28~87\ ) + ( \Add28~86\ ))
-- \Add28~79\ = SHARE((!\x[2][7]~q\ & (\x[0][7]~q\ & \Add14~29_sumout\)) # (\x[2][7]~q\ & ((\Add14~29_sumout\) # (\x[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x[2][7]~q\,
	datac => \ALT_INV_x[0][7]~q\,
	datad => \ALT_INV_Add14~29_sumout\,
	cin => \Add28~86\,
	sharein => \Add28~87\,
	sumout => \Add28~77_sumout\,
	cout => \Add28~78\,
	shareout => \Add28~79\);

-- Location: MLABCELL_X87_Y26_N27
\Add28~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add28~69_sumout\ = SUM(( !\x[2][7]~q\ $ (!\x[0][7]~q\ $ (\Add14~29_sumout\)) ) + ( \Add28~79\ ) + ( \Add28~78\ ))
-- \Add28~70\ = CARRY(( !\x[2][7]~q\ $ (!\x[0][7]~q\ $ (\Add14~29_sumout\)) ) + ( \Add28~79\ ) + ( \Add28~78\ ))
-- \Add28~71\ = SHARE((!\x[2][7]~q\ & (\x[0][7]~q\ & \Add14~29_sumout\)) # (\x[2][7]~q\ & ((\Add14~29_sumout\) # (\x[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x[2][7]~q\,
	datac => \ALT_INV_x[0][7]~q\,
	datad => \ALT_INV_Add14~29_sumout\,
	cin => \Add28~78\,
	sharein => \Add28~79\,
	sumout => \Add28~69_sumout\,
	cout => \Add28~70\,
	shareout => \Add28~71\);

-- Location: MLABCELL_X87_Y26_N30
\Add28~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add28~61_sumout\ = SUM(( !\x[2][7]~q\ $ (!\x[0][7]~q\ $ (\Add14~29_sumout\)) ) + ( \Add28~71\ ) + ( \Add28~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x[2][7]~q\,
	datac => \ALT_INV_x[0][7]~q\,
	datad => \ALT_INV_Add14~29_sumout\,
	cin => \Add28~70\,
	sharein => \Add28~71\,
	sumout => \Add28~61_sumout\);

-- Location: LABCELL_X85_Y24_N51
\Add27~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add27~33_sumout\ = SUM(( !\x[1][7]~DUPLICATE_q\ ) + ( GND ) + ( \Add27~30\ ))
-- \Add27~34\ = CARRY(( !\x[1][7]~DUPLICATE_q\ ) + ( GND ) + ( \Add27~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_x[1][7]~DUPLICATE_q\,
	cin => \Add27~30\,
	sumout => \Add27~33_sumout\,
	cout => \Add27~34\);

-- Location: LABCELL_X85_Y24_N54
\Add27~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add27~13_sumout\ = SUM(( !\x[1][7]~DUPLICATE_q\ ) + ( GND ) + ( \Add27~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_x[1][7]~DUPLICATE_q\,
	cin => \Add27~34\,
	sumout => \Add27~13_sumout\);

-- Location: MLABCELL_X87_Y24_N21
\Add28~90\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add28~90_cout\ = CARRY(( \Add27~33_sumout\ ) + ( \Add28~85_sumout\ ) + ( \Add28~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add28~85_sumout\,
	datad => \ALT_INV_Add27~33_sumout\,
	cin => \Add28~26\,
	cout => \Add28~90_cout\);

-- Location: MLABCELL_X87_Y24_N24
\Add28~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add28~82_cout\ = CARRY(( \Add28~77_sumout\ ) + ( \Add27~13_sumout\ ) + ( \Add28~90_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add27~13_sumout\,
	datad => \ALT_INV_Add28~77_sumout\,
	cin => \Add28~90_cout\,
	cout => \Add28~82_cout\);

-- Location: MLABCELL_X87_Y24_N27
\Add28~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add28~74_cout\ = CARRY(( \Add28~69_sumout\ ) + ( \Add27~13_sumout\ ) + ( \Add28~82_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add27~13_sumout\,
	datad => \ALT_INV_Add28~69_sumout\,
	cin => \Add28~82_cout\,
	cout => \Add28~74_cout\);

-- Location: MLABCELL_X87_Y24_N30
\Add28~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add28~66_cout\ = CARRY(( \Add27~13_sumout\ ) + ( \Add28~61_sumout\ ) + ( \Add28~74_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add28~61_sumout\,
	datad => \ALT_INV_Add27~13_sumout\,
	cin => \Add28~74_cout\,
	cout => \Add28~66_cout\);

-- Location: MLABCELL_X87_Y24_N33
\Add28~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add28~29_sumout\ = SUM(( \Add27~13_sumout\ ) + ( \Add28~61_sumout\ ) + ( \Add28~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add28~61_sumout\,
	datad => \ALT_INV_Add27~13_sumout\,
	cin => \Add28~66_cout\,
	sumout => \Add28~29_sumout\);

-- Location: IOIBUF_X40_Y81_N18
\h_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_h_in(0),
	o => \h_in[0]~input_o\);

-- Location: FF_X83_Y25_N2
\h[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \h_in[0]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h[3][0]~q\);

-- Location: FF_X88_Y22_N32
\h[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \h[3][0]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h[2][0]~q\);

-- Location: FF_X83_Y25_N28
\h[1][0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \h[2][0]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h[1][0]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y25_N30
\Add31~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add31~1_sumout\ = SUM(( !\h[1][0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \Add31~2\ = CARRY(( !\h[1][0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_h[1][0]~DUPLICATE_q\,
	cin => GND,
	sumout => \Add31~1_sumout\,
	cout => \Add31~2\);

-- Location: FF_X83_Y25_N29
\h[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \h[2][0]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h[1][0]~q\);

-- Location: MLABCELL_X82_Y25_N36
\h[0][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \h[0][0]~feeder_combout\ = ( \h[1][0]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_h[1][0]~q\,
	combout => \h[0][0]~feeder_combout\);

-- Location: FF_X82_Y25_N38
\h[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \h[0][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h[0][0]~q\);

-- Location: LABCELL_X83_Y25_N0
\Add19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~1_sumout\ = SUM(( !\h[3][0]~q\ ) + ( VCC ) + ( !VCC ))
-- \Add19~2\ = CARRY(( !\h[3][0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_h[3][0]~q\,
	cin => GND,
	sumout => \Add19~1_sumout\,
	cout => \Add19~2\);

-- Location: MLABCELL_X82_Y25_N0
\Add32~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~33_sumout\ = SUM(( !\h[0][0]~q\ $ (!\h[2][0]~q\ $ (\Add19~1_sumout\)) ) + ( !VCC ) + ( !VCC ))
-- \Add32~34\ = CARRY(( !\h[0][0]~q\ $ (!\h[2][0]~q\ $ (\Add19~1_sumout\)) ) + ( !VCC ) + ( !VCC ))
-- \Add32~35\ = SHARE((!\h[0][0]~q\ & (\h[2][0]~q\ & \Add19~1_sumout\)) # (\h[0][0]~q\ & ((\Add19~1_sumout\) # (\h[2][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_h[0][0]~q\,
	datac => \ALT_INV_h[2][0]~q\,
	datad => \ALT_INV_Add19~1_sumout\,
	cin => GND,
	sharein => GND,
	sumout => \Add32~33_sumout\,
	cout => \Add32~34\,
	shareout => \Add32~35\);

-- Location: LABCELL_X83_Y24_N0
\Add32~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~1_sumout\ = SUM(( \Add32~33_sumout\ ) + ( \Add31~1_sumout\ ) + ( !VCC ))
-- \Add32~2\ = CARRY(( \Add32~33_sumout\ ) + ( \Add31~1_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add31~1_sumout\,
	datad => \ALT_INV_Add32~33_sumout\,
	cin => GND,
	sumout => \Add32~1_sumout\,
	cout => \Add32~2\);

-- Location: IOIBUF_X89_Y11_N78
\h_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_h_in(1),
	o => \h_in[1]~input_o\);

-- Location: FF_X83_Y25_N5
\h[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \h_in[1]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h[3][1]~q\);

-- Location: FF_X88_Y22_N35
\h[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \h[3][1]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h[2][1]~q\);

-- Location: FF_X84_Y25_N5
\h[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \h[2][1]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h[1][1]~q\);

-- Location: LABCELL_X81_Y25_N33
\Add31~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add31~5_sumout\ = SUM(( !\h[1][1]~q\ ) + ( GND ) + ( \Add31~2\ ))
-- \Add31~6\ = CARRY(( !\h[1][1]~q\ ) + ( GND ) + ( \Add31~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_h[1][1]~q\,
	cin => \Add31~2\,
	sumout => \Add31~5_sumout\,
	cout => \Add31~6\);

-- Location: FF_X82_Y25_N47
\h[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \h[1][1]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h[0][1]~q\);

-- Location: LABCELL_X83_Y25_N3
\Add19~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~5_sumout\ = SUM(( !\h[3][1]~q\ ) + ( GND ) + ( \Add19~2\ ))
-- \Add19~6\ = CARRY(( !\h[3][1]~q\ ) + ( GND ) + ( \Add19~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_h[3][1]~q\,
	cin => \Add19~2\,
	sumout => \Add19~5_sumout\,
	cout => \Add19~6\);

-- Location: MLABCELL_X82_Y25_N3
\Add32~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~37_sumout\ = SUM(( !\h[0][1]~q\ $ (!\Add19~5_sumout\ $ (\h[2][1]~q\)) ) + ( \Add32~35\ ) + ( \Add32~34\ ))
-- \Add32~38\ = CARRY(( !\h[0][1]~q\ $ (!\Add19~5_sumout\ $ (\h[2][1]~q\)) ) + ( \Add32~35\ ) + ( \Add32~34\ ))
-- \Add32~39\ = SHARE((!\h[0][1]~q\ & (\Add19~5_sumout\ & \h[2][1]~q\)) # (\h[0][1]~q\ & ((\h[2][1]~q\) # (\Add19~5_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_h[0][1]~q\,
	datac => \ALT_INV_Add19~5_sumout\,
	datad => \ALT_INV_h[2][1]~q\,
	cin => \Add32~34\,
	sharein => \Add32~35\,
	sumout => \Add32~37_sumout\,
	cout => \Add32~38\,
	shareout => \Add32~39\);

-- Location: LABCELL_X83_Y24_N3
\Add32~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~5_sumout\ = SUM(( \Add32~37_sumout\ ) + ( \Add31~5_sumout\ ) + ( \Add32~2\ ))
-- \Add32~6\ = CARRY(( \Add32~37_sumout\ ) + ( \Add31~5_sumout\ ) + ( \Add32~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add31~5_sumout\,
	datad => \ALT_INV_Add32~37_sumout\,
	cin => \Add32~2\,
	sumout => \Add32~5_sumout\,
	cout => \Add32~6\);

-- Location: IOIBUF_X84_Y0_N35
\h_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_h_in(2),
	o => \h_in[2]~input_o\);

-- Location: FF_X83_Y25_N8
\h[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \h_in[2]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h[3][2]~q\);

-- Location: FF_X88_Y22_N38
\h[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \h[3][2]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h[2][2]~q\);

-- Location: FF_X84_Y25_N37
\h[1][2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \h[2][2]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h[1][2]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y25_N36
\Add31~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add31~9_sumout\ = SUM(( !\h[1][2]~DUPLICATE_q\ ) + ( GND ) + ( \Add31~6\ ))
-- \Add31~10\ = CARRY(( !\h[1][2]~DUPLICATE_q\ ) + ( GND ) + ( \Add31~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_h[1][2]~DUPLICATE_q\,
	cin => \Add31~6\,
	sumout => \Add31~9_sumout\,
	cout => \Add31~10\);

-- Location: FF_X82_Y25_N40
\h[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \h[1][2]~DUPLICATE_q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h[0][2]~q\);

-- Location: LABCELL_X83_Y25_N6
\Add19~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~9_sumout\ = SUM(( !\h[3][2]~q\ ) + ( GND ) + ( \Add19~6\ ))
-- \Add19~10\ = CARRY(( !\h[3][2]~q\ ) + ( GND ) + ( \Add19~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_h[3][2]~q\,
	cin => \Add19~6\,
	sumout => \Add19~9_sumout\,
	cout => \Add19~10\);

-- Location: MLABCELL_X82_Y25_N6
\Add32~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~41_sumout\ = SUM(( !\h[0][2]~q\ $ (!\Add19~9_sumout\ $ (\h[2][2]~q\)) ) + ( \Add32~39\ ) + ( \Add32~38\ ))
-- \Add32~42\ = CARRY(( !\h[0][2]~q\ $ (!\Add19~9_sumout\ $ (\h[2][2]~q\)) ) + ( \Add32~39\ ) + ( \Add32~38\ ))
-- \Add32~43\ = SHARE((!\h[0][2]~q\ & (\Add19~9_sumout\ & \h[2][2]~q\)) # (\h[0][2]~q\ & ((\h[2][2]~q\) # (\Add19~9_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_h[0][2]~q\,
	datac => \ALT_INV_Add19~9_sumout\,
	datad => \ALT_INV_h[2][2]~q\,
	cin => \Add32~38\,
	sharein => \Add32~39\,
	sumout => \Add32~41_sumout\,
	cout => \Add32~42\,
	shareout => \Add32~43\);

-- Location: LABCELL_X83_Y24_N6
\Add32~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~9_sumout\ = SUM(( \Add32~41_sumout\ ) + ( \Add31~9_sumout\ ) + ( \Add32~6\ ))
-- \Add32~10\ = CARRY(( \Add32~41_sumout\ ) + ( \Add31~9_sumout\ ) + ( \Add32~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add31~9_sumout\,
	datad => \ALT_INV_Add32~41_sumout\,
	cin => \Add32~6\,
	sumout => \Add32~9_sumout\,
	cout => \Add32~10\);

-- Location: IOIBUF_X89_Y21_N21
\h_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_h_in(3),
	o => \h_in[3]~input_o\);

-- Location: FF_X83_Y25_N11
\h[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \h_in[3]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h[3][3]~q\);

-- Location: FF_X88_Y22_N41
\h[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \h[3][3]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h[2][3]~q\);

-- Location: FF_X84_Y25_N59
\h[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \h[2][3]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h[1][3]~q\);

-- Location: FF_X82_Y25_N44
\h[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \h[1][3]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h[0][3]~q\);

-- Location: LABCELL_X83_Y25_N9
\Add19~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~13_sumout\ = SUM(( !\h[3][3]~q\ ) + ( GND ) + ( \Add19~10\ ))
-- \Add19~14\ = CARRY(( !\h[3][3]~q\ ) + ( GND ) + ( \Add19~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_h[3][3]~q\,
	cin => \Add19~10\,
	sumout => \Add19~13_sumout\,
	cout => \Add19~14\);

-- Location: MLABCELL_X82_Y25_N9
\Add32~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~45_sumout\ = SUM(( !\h[0][3]~q\ $ (!\h[2][3]~q\ $ (\Add19~13_sumout\)) ) + ( \Add32~43\ ) + ( \Add32~42\ ))
-- \Add32~46\ = CARRY(( !\h[0][3]~q\ $ (!\h[2][3]~q\ $ (\Add19~13_sumout\)) ) + ( \Add32~43\ ) + ( \Add32~42\ ))
-- \Add32~47\ = SHARE((!\h[0][3]~q\ & (\h[2][3]~q\ & \Add19~13_sumout\)) # (\h[0][3]~q\ & ((\Add19~13_sumout\) # (\h[2][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_h[0][3]~q\,
	datac => \ALT_INV_h[2][3]~q\,
	datad => \ALT_INV_Add19~13_sumout\,
	cin => \Add32~42\,
	sharein => \Add32~43\,
	sumout => \Add32~45_sumout\,
	cout => \Add32~46\,
	shareout => \Add32~47\);

-- Location: LABCELL_X81_Y25_N39
\Add31~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add31~17_sumout\ = SUM(( !\h[1][3]~q\ ) + ( GND ) + ( \Add31~10\ ))
-- \Add31~18\ = CARRY(( !\h[1][3]~q\ ) + ( GND ) + ( \Add31~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_h[1][3]~q\,
	cin => \Add31~10\,
	sumout => \Add31~17_sumout\,
	cout => \Add31~18\);

-- Location: LABCELL_X83_Y24_N9
\Add32~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~13_sumout\ = SUM(( \Add31~17_sumout\ ) + ( \Add32~45_sumout\ ) + ( \Add32~10\ ))
-- \Add32~14\ = CARRY(( \Add31~17_sumout\ ) + ( \Add32~45_sumout\ ) + ( \Add32~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add32~45_sumout\,
	datad => \ALT_INV_Add31~17_sumout\,
	cin => \Add32~10\,
	sumout => \Add32~13_sumout\,
	cout => \Add32~14\);

-- Location: IOIBUF_X78_Y0_N35
\h_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_h_in(4),
	o => \h_in[4]~input_o\);

-- Location: FF_X83_Y25_N14
\h[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \h_in[4]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h[3][4]~q\);

-- Location: FF_X88_Y22_N44
\h[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \h[3][4]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h[2][4]~q\);

-- Location: MLABCELL_X84_Y25_N54
\h[1][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \h[1][4]~feeder_combout\ = ( \h[2][4]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_h[2][4]~q\,
	combout => \h[1][4]~feeder_combout\);

-- Location: FF_X84_Y25_N56
\h[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \h[1][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h[1][4]~q\);

-- Location: LABCELL_X81_Y25_N42
\Add31~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add31~21_sumout\ = SUM(( !\h[1][4]~q\ ) + ( GND ) + ( \Add31~18\ ))
-- \Add31~22\ = CARRY(( !\h[1][4]~q\ ) + ( GND ) + ( \Add31~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_h[1][4]~q\,
	cin => \Add31~18\,
	sumout => \Add31~21_sumout\,
	cout => \Add31~22\);

-- Location: FF_X84_Y25_N49
\h[0][4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \h[1][4]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h[0][4]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y25_N12
\Add19~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~17_sumout\ = SUM(( !\h[3][4]~q\ ) + ( GND ) + ( \Add19~14\ ))
-- \Add19~18\ = CARRY(( !\h[3][4]~q\ ) + ( GND ) + ( \Add19~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_h[3][4]~q\,
	cin => \Add19~14\,
	sumout => \Add19~17_sumout\,
	cout => \Add19~18\);

-- Location: MLABCELL_X82_Y25_N12
\Add32~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~49_sumout\ = SUM(( !\h[2][4]~q\ $ (!\h[0][4]~DUPLICATE_q\ $ (\Add19~17_sumout\)) ) + ( \Add32~47\ ) + ( \Add32~46\ ))
-- \Add32~50\ = CARRY(( !\h[2][4]~q\ $ (!\h[0][4]~DUPLICATE_q\ $ (\Add19~17_sumout\)) ) + ( \Add32~47\ ) + ( \Add32~46\ ))
-- \Add32~51\ = SHARE((!\h[2][4]~q\ & (\h[0][4]~DUPLICATE_q\ & \Add19~17_sumout\)) # (\h[2][4]~q\ & ((\Add19~17_sumout\) # (\h[0][4]~DUPLICATE_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_h[2][4]~q\,
	datac => \ALT_INV_h[0][4]~DUPLICATE_q\,
	datad => \ALT_INV_Add19~17_sumout\,
	cin => \Add32~46\,
	sharein => \Add32~47\,
	sumout => \Add32~49_sumout\,
	cout => \Add32~50\,
	shareout => \Add32~51\);

-- Location: LABCELL_X83_Y24_N12
\Add32~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~17_sumout\ = SUM(( \Add32~49_sumout\ ) + ( \Add31~21_sumout\ ) + ( \Add32~14\ ))
-- \Add32~18\ = CARRY(( \Add32~49_sumout\ ) + ( \Add31~21_sumout\ ) + ( \Add32~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add31~21_sumout\,
	datad => \ALT_INV_Add32~49_sumout\,
	cin => \Add32~14\,
	sumout => \Add32~17_sumout\,
	cout => \Add32~18\);

-- Location: IOIBUF_X89_Y21_N4
\h_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_h_in(5),
	o => \h_in[5]~input_o\);

-- Location: FF_X83_Y25_N17
\h[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \h_in[5]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h[3][5]~q\);

-- Location: FF_X88_Y22_N47
\h[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \h[3][5]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h[2][5]~q\);

-- Location: MLABCELL_X84_Y25_N42
\h[1][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \h[1][5]~feeder_combout\ = ( \h[2][5]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_h[2][5]~q\,
	combout => \h[1][5]~feeder_combout\);

-- Location: FF_X84_Y25_N43
\h[1][5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \h[1][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h[1][5]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y25_N45
\Add31~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add31~25_sumout\ = SUM(( !\h[1][5]~DUPLICATE_q\ ) + ( GND ) + ( \Add31~22\ ))
-- \Add31~26\ = CARRY(( !\h[1][5]~DUPLICATE_q\ ) + ( GND ) + ( \Add31~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_h[1][5]~DUPLICATE_q\,
	cin => \Add31~22\,
	sumout => \Add31~25_sumout\,
	cout => \Add31~26\);

-- Location: FF_X84_Y25_N44
\h[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \h[1][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h[1][5]~q\);

-- Location: FF_X88_Y22_N5
\h[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \h[1][5]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h[0][5]~q\);

-- Location: LABCELL_X83_Y25_N15
\Add19~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~21_sumout\ = SUM(( !\h[3][5]~q\ ) + ( GND ) + ( \Add19~18\ ))
-- \Add19~22\ = CARRY(( !\h[3][5]~q\ ) + ( GND ) + ( \Add19~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_h[3][5]~q\,
	cin => \Add19~18\,
	sumout => \Add19~21_sumout\,
	cout => \Add19~22\);

-- Location: MLABCELL_X82_Y25_N15
\Add32~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~53_sumout\ = SUM(( !\h[0][5]~q\ $ (!\h[2][5]~q\ $ (\Add19~21_sumout\)) ) + ( \Add32~51\ ) + ( \Add32~50\ ))
-- \Add32~54\ = CARRY(( !\h[0][5]~q\ $ (!\h[2][5]~q\ $ (\Add19~21_sumout\)) ) + ( \Add32~51\ ) + ( \Add32~50\ ))
-- \Add32~55\ = SHARE((!\h[0][5]~q\ & (\h[2][5]~q\ & \Add19~21_sumout\)) # (\h[0][5]~q\ & ((\Add19~21_sumout\) # (\h[2][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_h[0][5]~q\,
	datac => \ALT_INV_h[2][5]~q\,
	datad => \ALT_INV_Add19~21_sumout\,
	cin => \Add32~50\,
	sharein => \Add32~51\,
	sumout => \Add32~53_sumout\,
	cout => \Add32~54\,
	shareout => \Add32~55\);

-- Location: LABCELL_X83_Y24_N15
\Add32~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~21_sumout\ = SUM(( \Add32~53_sumout\ ) + ( \Add31~25_sumout\ ) + ( \Add32~18\ ))
-- \Add32~22\ = CARRY(( \Add32~53_sumout\ ) + ( \Add31~25_sumout\ ) + ( \Add32~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add31~25_sumout\,
	datad => \ALT_INV_Add32~53_sumout\,
	cin => \Add32~18\,
	sumout => \Add32~21_sumout\,
	cout => \Add32~22\);

-- Location: IOIBUF_X89_Y21_N38
\h_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_h_in(6),
	o => \h_in[6]~input_o\);

-- Location: FF_X83_Y25_N20
\h[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \h_in[6]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h[3][6]~q\);

-- Location: FF_X88_Y22_N50
\h[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \h[3][6]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h[2][6]~q\);

-- Location: LABCELL_X83_Y25_N18
\Add19~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~25_sumout\ = SUM(( !\h[3][6]~q\ ) + ( GND ) + ( \Add19~22\ ))
-- \Add19~26\ = CARRY(( !\h[3][6]~q\ ) + ( GND ) + ( \Add19~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_h[3][6]~q\,
	cin => \Add19~22\,
	sumout => \Add19~25_sumout\,
	cout => \Add19~26\);

-- Location: FF_X84_Y25_N53
\h[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \h[2][6]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h[1][6]~q\);

-- Location: MLABCELL_X84_Y25_N39
\h[0][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \h[0][6]~feeder_combout\ = \h[1][6]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_h[1][6]~q\,
	combout => \h[0][6]~feeder_combout\);

-- Location: FF_X84_Y25_N40
\h[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \h[0][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h[0][6]~q\);

-- Location: MLABCELL_X82_Y25_N18
\Add32~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~57_sumout\ = SUM(( !\h[2][6]~q\ $ (!\Add19~25_sumout\ $ (\h[0][6]~q\)) ) + ( \Add32~55\ ) + ( \Add32~54\ ))
-- \Add32~58\ = CARRY(( !\h[2][6]~q\ $ (!\Add19~25_sumout\ $ (\h[0][6]~q\)) ) + ( \Add32~55\ ) + ( \Add32~54\ ))
-- \Add32~59\ = SHARE((!\h[2][6]~q\ & (\Add19~25_sumout\ & \h[0][6]~q\)) # (\h[2][6]~q\ & ((\h[0][6]~q\) # (\Add19~25_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_h[2][6]~q\,
	datac => \ALT_INV_Add19~25_sumout\,
	datad => \ALT_INV_h[0][6]~q\,
	cin => \Add32~54\,
	sharein => \Add32~55\,
	sumout => \Add32~57_sumout\,
	cout => \Add32~58\,
	shareout => \Add32~59\);

-- Location: FF_X84_Y25_N52
\h[1][6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \h[2][6]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h[1][6]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y25_N48
\Add31~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add31~29_sumout\ = SUM(( !\h[1][6]~DUPLICATE_q\ ) + ( GND ) + ( \Add31~26\ ))
-- \Add31~30\ = CARRY(( !\h[1][6]~DUPLICATE_q\ ) + ( GND ) + ( \Add31~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_h[1][6]~DUPLICATE_q\,
	cin => \Add31~26\,
	sumout => \Add31~29_sumout\,
	cout => \Add31~30\);

-- Location: LABCELL_X83_Y24_N18
\Add32~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~25_sumout\ = SUM(( \Add31~29_sumout\ ) + ( \Add32~57_sumout\ ) + ( \Add32~22\ ))
-- \Add32~26\ = CARRY(( \Add31~29_sumout\ ) + ( \Add32~57_sumout\ ) + ( \Add32~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add32~57_sumout\,
	datad => \ALT_INV_Add31~29_sumout\,
	cin => \Add32~22\,
	sumout => \Add32~25_sumout\,
	cout => \Add32~26\);

-- Location: IOIBUF_X89_Y25_N55
\h_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_h_in(7),
	o => \h_in[7]~input_o\);

-- Location: FF_X83_Y25_N23
\h[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \h_in[7]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h[3][7]~q\);

-- Location: FF_X88_Y22_N53
\h[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \h[3][7]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h[2][7]~q\);

-- Location: FF_X84_Y25_N46
\h[1][7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \h[2][7]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h[1][7]~DUPLICATE_q\);

-- Location: FF_X88_Y22_N11
\h[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \h[1][7]~DUPLICATE_q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h[0][7]~q\);

-- Location: LABCELL_X83_Y25_N21
\Add19~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~33_sumout\ = SUM(( !\h[3][7]~q\ ) + ( GND ) + ( \Add19~26\ ))
-- \Add19~34\ = CARRY(( !\h[3][7]~q\ ) + ( GND ) + ( \Add19~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_h[3][7]~q\,
	cin => \Add19~26\,
	sumout => \Add19~33_sumout\,
	cout => \Add19~34\);

-- Location: LABCELL_X83_Y25_N24
\Add19~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~29_sumout\ = SUM(( !\h[3][7]~q\ ) + ( GND ) + ( \Add19~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_h[3][7]~q\,
	cin => \Add19~34\,
	sumout => \Add19~29_sumout\);

-- Location: MLABCELL_X82_Y25_N21
\Add32~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~85_sumout\ = SUM(( !\h[0][7]~q\ $ (!\h[2][7]~q\ $ (\Add19~33_sumout\)) ) + ( \Add32~59\ ) + ( \Add32~58\ ))
-- \Add32~86\ = CARRY(( !\h[0][7]~q\ $ (!\h[2][7]~q\ $ (\Add19~33_sumout\)) ) + ( \Add32~59\ ) + ( \Add32~58\ ))
-- \Add32~87\ = SHARE((!\h[0][7]~q\ & (\h[2][7]~q\ & \Add19~33_sumout\)) # (\h[0][7]~q\ & ((\Add19~33_sumout\) # (\h[2][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_h[0][7]~q\,
	datac => \ALT_INV_h[2][7]~q\,
	datad => \ALT_INV_Add19~33_sumout\,
	cin => \Add32~58\,
	sharein => \Add32~59\,
	sumout => \Add32~85_sumout\,
	cout => \Add32~86\,
	shareout => \Add32~87\);

-- Location: MLABCELL_X82_Y25_N24
\Add32~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~77_sumout\ = SUM(( !\h[2][7]~q\ $ (!\h[0][7]~q\ $ (\Add19~29_sumout\)) ) + ( \Add32~87\ ) + ( \Add32~86\ ))
-- \Add32~78\ = CARRY(( !\h[2][7]~q\ $ (!\h[0][7]~q\ $ (\Add19~29_sumout\)) ) + ( \Add32~87\ ) + ( \Add32~86\ ))
-- \Add32~79\ = SHARE((!\h[2][7]~q\ & (\h[0][7]~q\ & \Add19~29_sumout\)) # (\h[2][7]~q\ & ((\Add19~29_sumout\) # (\h[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_h[2][7]~q\,
	datac => \ALT_INV_h[0][7]~q\,
	datad => \ALT_INV_Add19~29_sumout\,
	cin => \Add32~86\,
	sharein => \Add32~87\,
	sumout => \Add32~77_sumout\,
	cout => \Add32~78\,
	shareout => \Add32~79\);

-- Location: MLABCELL_X82_Y25_N27
\Add32~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~69_sumout\ = SUM(( !\h[0][7]~q\ $ (!\h[2][7]~q\ $ (\Add19~29_sumout\)) ) + ( \Add32~79\ ) + ( \Add32~78\ ))
-- \Add32~70\ = CARRY(( !\h[0][7]~q\ $ (!\h[2][7]~q\ $ (\Add19~29_sumout\)) ) + ( \Add32~79\ ) + ( \Add32~78\ ))
-- \Add32~71\ = SHARE((!\h[0][7]~q\ & (\h[2][7]~q\ & \Add19~29_sumout\)) # (\h[0][7]~q\ & ((\Add19~29_sumout\) # (\h[2][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_h[0][7]~q\,
	datac => \ALT_INV_h[2][7]~q\,
	datad => \ALT_INV_Add19~29_sumout\,
	cin => \Add32~78\,
	sharein => \Add32~79\,
	sumout => \Add32~69_sumout\,
	cout => \Add32~70\,
	shareout => \Add32~71\);

-- Location: MLABCELL_X82_Y25_N30
\Add32~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~61_sumout\ = SUM(( !\h[2][7]~q\ $ (!\h[0][7]~q\ $ (\Add19~29_sumout\)) ) + ( \Add32~71\ ) + ( \Add32~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_h[2][7]~q\,
	datac => \ALT_INV_h[0][7]~q\,
	datad => \ALT_INV_Add19~29_sumout\,
	cin => \Add32~70\,
	sharein => \Add32~71\,
	sumout => \Add32~61_sumout\);

-- Location: FF_X84_Y25_N47
\h[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \h[2][7]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h[1][7]~q\);

-- Location: LABCELL_X81_Y25_N51
\Add31~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add31~33_sumout\ = SUM(( !\h[1][7]~q\ ) + ( GND ) + ( \Add31~30\ ))
-- \Add31~34\ = CARRY(( !\h[1][7]~q\ ) + ( GND ) + ( \Add31~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_h[1][7]~q\,
	cin => \Add31~30\,
	sumout => \Add31~33_sumout\,
	cout => \Add31~34\);

-- Location: LABCELL_X81_Y25_N54
\Add31~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add31~13_sumout\ = SUM(( !\h[1][7]~q\ ) + ( GND ) + ( \Add31~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_h[1][7]~q\,
	cin => \Add31~34\,
	sumout => \Add31~13_sumout\);

-- Location: LABCELL_X83_Y24_N21
\Add32~90\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~90_cout\ = CARRY(( \Add32~85_sumout\ ) + ( \Add31~33_sumout\ ) + ( \Add32~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add31~33_sumout\,
	datad => \ALT_INV_Add32~85_sumout\,
	cin => \Add32~26\,
	cout => \Add32~90_cout\);

-- Location: LABCELL_X83_Y24_N24
\Add32~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~82_cout\ = CARRY(( \Add32~77_sumout\ ) + ( \Add31~13_sumout\ ) + ( \Add32~90_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add31~13_sumout\,
	datad => \ALT_INV_Add32~77_sumout\,
	cin => \Add32~90_cout\,
	cout => \Add32~82_cout\);

-- Location: LABCELL_X83_Y24_N27
\Add32~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~74_cout\ = CARRY(( \Add32~69_sumout\ ) + ( \Add31~13_sumout\ ) + ( \Add32~82_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add31~13_sumout\,
	datad => \ALT_INV_Add32~69_sumout\,
	cin => \Add32~82_cout\,
	cout => \Add32~74_cout\);

-- Location: LABCELL_X83_Y24_N30
\Add32~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~66_cout\ = CARRY(( \Add31~13_sumout\ ) + ( \Add32~61_sumout\ ) + ( \Add32~74_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add31~13_sumout\,
	datac => \ALT_INV_Add32~61_sumout\,
	cin => \Add32~74_cout\,
	cout => \Add32~66_cout\);

-- Location: LABCELL_X83_Y24_N33
\Add32~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~29_sumout\ = SUM(( \Add31~13_sumout\ ) + ( \Add32~61_sumout\ ) + ( \Add32~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add32~61_sumout\,
	datac => \ALT_INV_Add31~13_sumout\,
	cin => \Add32~66_cout\,
	sumout => \Add32~29_sumout\);

-- Location: DSP_X86_Y24_N0
\Mult2~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "0",
	ax_width => 9,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 9,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "0",
	bx_width => 9,
	by_clock => "0",
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
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \Mult2~8_ACLR_bus\,
	clk => \Mult2~8_CLK_bus\,
	ena => \Mult2~8_ENA_bus\,
	ax => \Mult2~8_AX_bus\,
	ay => \Mult2~8_AY_bus\,
	bx => \Mult2~8_BX_bus\,
	by => \Mult2~8_BY_bus\,
	resulta => \Mult2~8_RESULTA_bus\);

-- Location: MLABCELL_X84_Y26_N0
\Add52~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add52~29_sumout\ = SUM(( \capy[2][0]\ ) + ( VCC ) + ( !VCC ))
-- \Add52~30\ = CARRY(( \capy[2][0]\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[2][0]\,
	cin => GND,
	sumout => \Add52~29_sumout\,
	cout => \Add52~30\);

-- Location: MLABCELL_X84_Y26_N3
\Add52~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add52~25_sumout\ = SUM(( \capy[2][1]\ ) + ( GND ) + ( \Add52~30\ ))
-- \Add52~26\ = CARRY(( \capy[2][1]\ ) + ( GND ) + ( \Add52~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[2][1]\,
	cin => \Add52~30\,
	sumout => \Add52~25_sumout\,
	cout => \Add52~26\);

-- Location: MLABCELL_X84_Y26_N6
\Add52~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add52~1_sumout\ = SUM(( \capy[2][2]\ ) + ( GND ) + ( \Add52~26\ ))
-- \Add52~2\ = CARRY(( \capy[2][2]\ ) + ( GND ) + ( \Add52~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[2][2]\,
	cin => \Add52~26\,
	sumout => \Add52~1_sumout\,
	cout => \Add52~2\);

-- Location: LABCELL_X83_Y26_N39
\capym~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \capym~10_combout\ = ( \Add52~1_sumout\ & ( (\capy[2][2]\) # (\capy[2][14]\) ) ) # ( !\Add52~1_sumout\ & ( (!\capy[2][14]\ & \capy[2][2]\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capy[2][14]\,
	datad => \ALT_INV_capy[2][2]\,
	dataf => \ALT_INV_Add52~1_sumout\,
	combout => \capym~10_combout\);

-- Location: FF_X83_Y26_N40
\capym[2][2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \capym~10_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[2][2]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y26_N45
\capym~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \capym~30_combout\ = ( \capy[2][1]\ & ( (!\capy[2][14]\) # (\Add52~25_sumout\) ) ) # ( !\capy[2][1]\ & ( (\capy[2][14]\ & \Add52~25_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capy[2][14]\,
	datad => \ALT_INV_Add52~25_sumout\,
	dataf => \ALT_INV_capy[2][1]\,
	combout => \capym~30_combout\);

-- Location: FF_X83_Y26_N47
\capym[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \capym~30_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[2][1]~q\);

-- Location: LABCELL_X83_Y26_N54
\capym~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \capym~31_combout\ = ( \capy[2][0]\ & ( (!\capy[2][14]\) # (\Add52~29_sumout\) ) ) # ( !\capy[2][0]\ & ( (\capy[2][14]\ & \Add52~29_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capy[2][14]\,
	datac => \ALT_INV_Add52~29_sumout\,
	dataf => \ALT_INV_capy[2][0]\,
	combout => \capym~31_combout\);

-- Location: FF_X83_Y26_N55
\capym[2][0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \capym~31_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[2][0]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y28_N0
\Add23~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~33_sumout\ = SUM(( !\capym[2][0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \Add23~34\ = CARRY(( !\capym[2][0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_capym[2][0]~DUPLICATE_q\,
	cin => GND,
	sumout => \Add23~33_sumout\,
	cout => \Add23~34\);

-- Location: LABCELL_X83_Y28_N3
\Add23~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~29_sumout\ = SUM(( !\capym[2][1]~q\ ) + ( GND ) + ( \Add23~34\ ))
-- \Add23~30\ = CARRY(( !\capym[2][1]~q\ ) + ( GND ) + ( \Add23~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_capym[2][1]~q\,
	cin => \Add23~34\,
	sumout => \Add23~29_sumout\,
	cout => \Add23~30\);

-- Location: LABCELL_X83_Y28_N6
\Add23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~1_sumout\ = SUM(( !\capym[2][2]~DUPLICATE_q\ ) + ( GND ) + ( \Add23~30\ ))
-- \Add23~2\ = CARRY(( !\capym[2][2]~DUPLICATE_q\ ) + ( GND ) + ( \Add23~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capym[2][2]~DUPLICATE_q\,
	cin => \Add23~30\,
	sumout => \Add23~1_sumout\,
	cout => \Add23~2\);

-- Location: FF_X88_Y26_N29
\x[1][0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[2][0]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[1][0]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y26_N30
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( !\x[1][0]~DUPLICATE_q\ $ (!\x[0][0]~q\ $ (\x[2][0]~q\)) ) + ( !VCC ) + ( !VCC ))
-- \Add1~2\ = CARRY(( !\x[1][0]~DUPLICATE_q\ $ (!\x[0][0]~q\ $ (\x[2][0]~q\)) ) + ( !VCC ) + ( !VCC ))
-- \Add1~3\ = SHARE((!\x[1][0]~DUPLICATE_q\ & (\x[0][0]~q\ & \x[2][0]~q\)) # (\x[1][0]~DUPLICATE_q\ & ((\x[2][0]~q\) # (\x[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[1][0]~DUPLICATE_q\,
	datac => \ALT_INV_x[0][0]~q\,
	datad => \ALT_INV_x[2][0]~q\,
	cin => GND,
	sharein => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\,
	shareout => \Add1~3\);

-- Location: MLABCELL_X87_Y28_N0
\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_sumout\ = SUM(( \x[3][0]~q\ ) + ( \Add1~1_sumout\ ) + ( !VCC ))
-- \Add3~2\ = CARRY(( \x[3][0]~q\ ) + ( \Add1~1_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~1_sumout\,
	datad => \ALT_INV_x[3][0]~q\,
	cin => GND,
	sumout => \Add3~1_sumout\,
	cout => \Add3~2\);

-- Location: LABCELL_X88_Y26_N33
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( !\x[1][1]~q\ $ (!\x[2][1]~q\ $ (\x[0][1]~q\)) ) + ( \Add1~3\ ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( !\x[1][1]~q\ $ (!\x[2][1]~q\ $ (\x[0][1]~q\)) ) + ( \Add1~3\ ) + ( \Add1~2\ ))
-- \Add1~7\ = SHARE((!\x[1][1]~q\ & (\x[2][1]~q\ & \x[0][1]~q\)) # (\x[1][1]~q\ & ((\x[0][1]~q\) # (\x[2][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x[1][1]~q\,
	datac => \ALT_INV_x[2][1]~q\,
	datad => \ALT_INV_x[0][1]~q\,
	cin => \Add1~2\,
	sharein => \Add1~3\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\,
	shareout => \Add1~7\);

-- Location: MLABCELL_X87_Y28_N3
\Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~5_sumout\ = SUM(( \Add1~5_sumout\ ) + ( \x[3][1]~q\ ) + ( \Add3~2\ ))
-- \Add3~6\ = CARRY(( \Add1~5_sumout\ ) + ( \x[3][1]~q\ ) + ( \Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~5_sumout\,
	datac => \ALT_INV_x[3][1]~q\,
	cin => \Add3~2\,
	sumout => \Add3~5_sumout\,
	cout => \Add3~6\);

-- Location: LABCELL_X88_Y26_N36
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( !\x[0][2]~q\ $ (!\x[1][2]~q\ $ (\x[2][2]~q\)) ) + ( \Add1~7\ ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( !\x[0][2]~q\ $ (!\x[1][2]~q\ $ (\x[2][2]~q\)) ) + ( \Add1~7\ ) + ( \Add1~6\ ))
-- \Add1~11\ = SHARE((!\x[0][2]~q\ & (\x[1][2]~q\ & \x[2][2]~q\)) # (\x[0][2]~q\ & ((\x[2][2]~q\) # (\x[1][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x[0][2]~q\,
	datac => \ALT_INV_x[1][2]~q\,
	datad => \ALT_INV_x[2][2]~q\,
	cin => \Add1~6\,
	sharein => \Add1~7\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\,
	shareout => \Add1~11\);

-- Location: MLABCELL_X87_Y28_N6
\Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~9_sumout\ = SUM(( \Add1~9_sumout\ ) + ( \x[3][2]~q\ ) + ( \Add3~6\ ))
-- \Add3~10\ = CARRY(( \Add1~9_sumout\ ) + ( \x[3][2]~q\ ) + ( \Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x[3][2]~q\,
	datad => \ALT_INV_Add1~9_sumout\,
	cin => \Add3~6\,
	sumout => \Add3~9_sumout\,
	cout => \Add3~10\);

-- Location: LABCELL_X88_Y26_N39
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( !\x[2][3]~q\ $ (!\x[0][3]~q\ $ (\x[1][3]~q\)) ) + ( \Add1~11\ ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( !\x[2][3]~q\ $ (!\x[0][3]~q\ $ (\x[1][3]~q\)) ) + ( \Add1~11\ ) + ( \Add1~10\ ))
-- \Add1~15\ = SHARE((!\x[2][3]~q\ & (\x[0][3]~q\ & \x[1][3]~q\)) # (\x[2][3]~q\ & ((\x[1][3]~q\) # (\x[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[2][3]~q\,
	datac => \ALT_INV_x[0][3]~q\,
	datad => \ALT_INV_x[1][3]~q\,
	cin => \Add1~10\,
	sharein => \Add1~11\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\,
	shareout => \Add1~15\);

-- Location: MLABCELL_X87_Y28_N9
\Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~13_sumout\ = SUM(( \Add1~13_sumout\ ) + ( \x[3][3]~q\ ) + ( \Add3~10\ ))
-- \Add3~14\ = CARRY(( \Add1~13_sumout\ ) + ( \x[3][3]~q\ ) + ( \Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x[3][3]~q\,
	datad => \ALT_INV_Add1~13_sumout\,
	cin => \Add3~10\,
	sumout => \Add3~13_sumout\,
	cout => \Add3~14\);

-- Location: LABCELL_X88_Y26_N42
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( !\x[0][4]~q\ $ (!\x[2][4]~q\ $ (\x[1][4]~q\)) ) + ( \Add1~15\ ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( !\x[0][4]~q\ $ (!\x[2][4]~q\ $ (\x[1][4]~q\)) ) + ( \Add1~15\ ) + ( \Add1~14\ ))
-- \Add1~19\ = SHARE((!\x[0][4]~q\ & (\x[2][4]~q\ & \x[1][4]~q\)) # (\x[0][4]~q\ & ((\x[1][4]~q\) # (\x[2][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x[0][4]~q\,
	datac => \ALT_INV_x[2][4]~q\,
	datad => \ALT_INV_x[1][4]~q\,
	cin => \Add1~14\,
	sharein => \Add1~15\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\,
	shareout => \Add1~19\);

-- Location: MLABCELL_X87_Y28_N12
\Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~17_sumout\ = SUM(( \x[3][4]~q\ ) + ( \Add1~17_sumout\ ) + ( \Add3~14\ ))
-- \Add3~18\ = CARRY(( \x[3][4]~q\ ) + ( \Add1~17_sumout\ ) + ( \Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~17_sumout\,
	datad => \ALT_INV_x[3][4]~q\,
	cin => \Add3~14\,
	sumout => \Add3~17_sumout\,
	cout => \Add3~18\);

-- Location: LABCELL_X88_Y26_N45
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( !\x[1][5]~q\ $ (!\x[0][5]~q\ $ (\x[2][5]~q\)) ) + ( \Add1~19\ ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( !\x[1][5]~q\ $ (!\x[0][5]~q\ $ (\x[2][5]~q\)) ) + ( \Add1~19\ ) + ( \Add1~18\ ))
-- \Add1~23\ = SHARE((!\x[1][5]~q\ & (\x[0][5]~q\ & \x[2][5]~q\)) # (\x[1][5]~q\ & ((\x[2][5]~q\) # (\x[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[1][5]~q\,
	datac => \ALT_INV_x[0][5]~q\,
	datad => \ALT_INV_x[2][5]~q\,
	cin => \Add1~18\,
	sharein => \Add1~19\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\,
	shareout => \Add1~23\);

-- Location: MLABCELL_X87_Y28_N15
\Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~21_sumout\ = SUM(( \Add1~21_sumout\ ) + ( \x[3][5]~q\ ) + ( \Add3~18\ ))
-- \Add3~22\ = CARRY(( \Add1~21_sumout\ ) + ( \x[3][5]~q\ ) + ( \Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x[3][5]~q\,
	datad => \ALT_INV_Add1~21_sumout\,
	cin => \Add3~18\,
	sumout => \Add3~21_sumout\,
	cout => \Add3~22\);

-- Location: FF_X88_Y25_N44
\x[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x[1][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[1][6]~q\);

-- Location: LABCELL_X88_Y26_N48
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( !\x[0][6]~DUPLICATE_q\ $ (!\x[2][6]~q\ $ (\x[1][6]~q\)) ) + ( \Add1~23\ ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( !\x[0][6]~DUPLICATE_q\ $ (!\x[2][6]~q\ $ (\x[1][6]~q\)) ) + ( \Add1~23\ ) + ( \Add1~22\ ))
-- \Add1~27\ = SHARE((!\x[0][6]~DUPLICATE_q\ & (\x[2][6]~q\ & \x[1][6]~q\)) # (\x[0][6]~DUPLICATE_q\ & ((\x[1][6]~q\) # (\x[2][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x[0][6]~DUPLICATE_q\,
	datac => \ALT_INV_x[2][6]~q\,
	datad => \ALT_INV_x[1][6]~q\,
	cin => \Add1~22\,
	sharein => \Add1~23\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\,
	shareout => \Add1~27\);

-- Location: MLABCELL_X87_Y28_N18
\Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~25_sumout\ = SUM(( \Add1~25_sumout\ ) + ( \x[3][6]~q\ ) + ( \Add3~22\ ))
-- \Add3~26\ = CARRY(( \Add1~25_sumout\ ) + ( \x[3][6]~q\ ) + ( \Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x[3][6]~q\,
	datad => \ALT_INV_Add1~25_sumout\,
	cin => \Add3~22\,
	sumout => \Add3~25_sumout\,
	cout => \Add3~26\);

-- Location: FF_X88_Y25_N53
\x[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x[1][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[1][7]~q\);

-- Location: LABCELL_X88_Y26_N51
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( !\x[1][7]~q\ $ (!\x[2][7]~q\ $ (\x[0][7]~q\)) ) + ( \Add1~27\ ) + ( \Add1~26\ ))
-- \Add1~38\ = CARRY(( !\x[1][7]~q\ $ (!\x[2][7]~q\ $ (\x[0][7]~q\)) ) + ( \Add1~27\ ) + ( \Add1~26\ ))
-- \Add1~39\ = SHARE((!\x[1][7]~q\ & (\x[2][7]~q\ & \x[0][7]~q\)) # (\x[1][7]~q\ & ((\x[0][7]~q\) # (\x[2][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[1][7]~q\,
	datac => \ALT_INV_x[2][7]~q\,
	datad => \ALT_INV_x[0][7]~q\,
	cin => \Add1~26\,
	sharein => \Add1~27\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\,
	shareout => \Add1~39\);

-- Location: LABCELL_X88_Y26_N54
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( !\x[2][7]~q\ $ (!\x[1][7]~q\ $ (\x[0][7]~q\)) ) + ( \Add1~39\ ) + ( \Add1~38\ ))
-- \Add1~34\ = CARRY(( !\x[2][7]~q\ $ (!\x[1][7]~q\ $ (\x[0][7]~q\)) ) + ( \Add1~39\ ) + ( \Add1~38\ ))
-- \Add1~35\ = SHARE((!\x[2][7]~q\ & (\x[1][7]~q\ & \x[0][7]~q\)) # (\x[2][7]~q\ & ((\x[0][7]~q\) # (\x[1][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x[2][7]~q\,
	datac => \ALT_INV_x[1][7]~q\,
	datad => \ALT_INV_x[0][7]~q\,
	cin => \Add1~38\,
	sharein => \Add1~39\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\,
	shareout => \Add1~35\);

-- Location: LABCELL_X88_Y26_N57
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( !\x[1][7]~q\ $ (!\x[2][7]~q\ $ (\x[0][7]~q\)) ) + ( \Add1~35\ ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000110011010011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[1][7]~q\,
	datab => \ALT_INV_x[2][7]~q\,
	datad => \ALT_INV_x[0][7]~q\,
	cin => \Add1~34\,
	sharein => \Add1~35\,
	sumout => \Add1~29_sumout\);

-- Location: MLABCELL_X87_Y28_N21
\Add3~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~42_cout\ = CARRY(( \x[3][7]~q\ ) + ( \Add1~37_sumout\ ) + ( \Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~37_sumout\,
	datad => \ALT_INV_x[3][7]~q\,
	cin => \Add3~26\,
	cout => \Add3~42_cout\);

-- Location: MLABCELL_X87_Y28_N24
\Add3~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~38_cout\ = CARRY(( \x[3][7]~q\ ) + ( \Add1~33_sumout\ ) + ( \Add3~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~33_sumout\,
	datad => \ALT_INV_x[3][7]~q\,
	cin => \Add3~42_cout\,
	cout => \Add3~38_cout\);

-- Location: MLABCELL_X87_Y28_N27
\Add3~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~34_cout\ = CARRY(( \x[3][7]~q\ ) + ( \Add1~29_sumout\ ) + ( \Add3~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~29_sumout\,
	datad => \ALT_INV_x[3][7]~q\,
	cin => \Add3~38_cout\,
	cout => \Add3~34_cout\);

-- Location: MLABCELL_X87_Y28_N30
\Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~29_sumout\ = SUM(( \Add1~29_sumout\ ) + ( \x[3][7]~q\ ) + ( \Add3~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add1~29_sumout\,
	datac => \ALT_INV_x[3][7]~q\,
	cin => \Add3~34_cout\,
	sumout => \Add3~29_sumout\);

-- Location: FF_X82_Y25_N37
\h[0][0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \h[0][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h[0][0]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y25_N30
\Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~1_sumout\ = SUM(( !\h[1][0]~q\ $ (!\h[0][0]~DUPLICATE_q\ $ (\h[2][0]~q\)) ) + ( !VCC ) + ( !VCC ))
-- \Add4~2\ = CARRY(( !\h[1][0]~q\ $ (!\h[0][0]~DUPLICATE_q\ $ (\h[2][0]~q\)) ) + ( !VCC ) + ( !VCC ))
-- \Add4~3\ = SHARE((!\h[1][0]~q\ & (\h[0][0]~DUPLICATE_q\ & \h[2][0]~q\)) # (\h[1][0]~q\ & ((\h[2][0]~q\) # (\h[0][0]~DUPLICATE_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_h[1][0]~q\,
	datac => \ALT_INV_h[0][0]~DUPLICATE_q\,
	datad => \ALT_INV_h[2][0]~q\,
	cin => GND,
	sharein => GND,
	sumout => \Add4~1_sumout\,
	cout => \Add4~2\,
	shareout => \Add4~3\);

-- Location: LABCELL_X85_Y26_N0
\Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~1_sumout\ = SUM(( \h[3][0]~q\ ) + ( \Add4~1_sumout\ ) + ( !VCC ))
-- \Add6~2\ = CARRY(( \h[3][0]~q\ ) + ( \Add4~1_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add4~1_sumout\,
	datad => \ALT_INV_h[3][0]~q\,
	cin => GND,
	sumout => \Add6~1_sumout\,
	cout => \Add6~2\);

-- Location: LABCELL_X83_Y25_N33
\Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~5_sumout\ = SUM(( !\h[0][1]~q\ $ (!\h[2][1]~q\ $ (\h[1][1]~q\)) ) + ( \Add4~3\ ) + ( \Add4~2\ ))
-- \Add4~6\ = CARRY(( !\h[0][1]~q\ $ (!\h[2][1]~q\ $ (\h[1][1]~q\)) ) + ( \Add4~3\ ) + ( \Add4~2\ ))
-- \Add4~7\ = SHARE((!\h[0][1]~q\ & (\h[2][1]~q\ & \h[1][1]~q\)) # (\h[0][1]~q\ & ((\h[1][1]~q\) # (\h[2][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_h[0][1]~q\,
	datac => \ALT_INV_h[2][1]~q\,
	datad => \ALT_INV_h[1][1]~q\,
	cin => \Add4~2\,
	sharein => \Add4~3\,
	sumout => \Add4~5_sumout\,
	cout => \Add4~6\,
	shareout => \Add4~7\);

-- Location: LABCELL_X85_Y26_N3
\Add6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~5_sumout\ = SUM(( \Add4~5_sumout\ ) + ( \h[3][1]~q\ ) + ( \Add6~2\ ))
-- \Add6~6\ = CARRY(( \Add4~5_sumout\ ) + ( \h[3][1]~q\ ) + ( \Add6~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_h[3][1]~q\,
	datad => \ALT_INV_Add4~5_sumout\,
	cin => \Add6~2\,
	sumout => \Add6~5_sumout\,
	cout => \Add6~6\);

-- Location: FF_X84_Y25_N38
\h[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \h[2][2]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h[1][2]~q\);

-- Location: LABCELL_X83_Y25_N36
\Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~9_sumout\ = SUM(( !\h[0][2]~q\ $ (!\h[2][2]~q\ $ (\h[1][2]~q\)) ) + ( \Add4~7\ ) + ( \Add4~6\ ))
-- \Add4~10\ = CARRY(( !\h[0][2]~q\ $ (!\h[2][2]~q\ $ (\h[1][2]~q\)) ) + ( \Add4~7\ ) + ( \Add4~6\ ))
-- \Add4~11\ = SHARE((!\h[0][2]~q\ & (\h[2][2]~q\ & \h[1][2]~q\)) # (\h[0][2]~q\ & ((\h[1][2]~q\) # (\h[2][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_h[0][2]~q\,
	datac => \ALT_INV_h[2][2]~q\,
	datad => \ALT_INV_h[1][2]~q\,
	cin => \Add4~6\,
	sharein => \Add4~7\,
	sumout => \Add4~9_sumout\,
	cout => \Add4~10\,
	shareout => \Add4~11\);

-- Location: LABCELL_X85_Y26_N6
\Add6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~9_sumout\ = SUM(( \h[3][2]~q\ ) + ( \Add4~9_sumout\ ) + ( \Add6~6\ ))
-- \Add6~10\ = CARRY(( \h[3][2]~q\ ) + ( \Add4~9_sumout\ ) + ( \Add6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add4~9_sumout\,
	datad => \ALT_INV_h[3][2]~q\,
	cin => \Add6~6\,
	sumout => \Add6~9_sumout\,
	cout => \Add6~10\);

-- Location: LABCELL_X83_Y25_N39
\Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~13_sumout\ = SUM(( !\h[1][3]~q\ $ (!\h[0][3]~q\ $ (\h[2][3]~q\)) ) + ( \Add4~11\ ) + ( \Add4~10\ ))
-- \Add4~14\ = CARRY(( !\h[1][3]~q\ $ (!\h[0][3]~q\ $ (\h[2][3]~q\)) ) + ( \Add4~11\ ) + ( \Add4~10\ ))
-- \Add4~15\ = SHARE((!\h[1][3]~q\ & (\h[0][3]~q\ & \h[2][3]~q\)) # (\h[1][3]~q\ & ((\h[2][3]~q\) # (\h[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_h[1][3]~q\,
	datac => \ALT_INV_h[0][3]~q\,
	datad => \ALT_INV_h[2][3]~q\,
	cin => \Add4~10\,
	sharein => \Add4~11\,
	sumout => \Add4~13_sumout\,
	cout => \Add4~14\,
	shareout => \Add4~15\);

-- Location: LABCELL_X85_Y26_N9
\Add6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~13_sumout\ = SUM(( \h[3][3]~q\ ) + ( \Add4~13_sumout\ ) + ( \Add6~10\ ))
-- \Add6~14\ = CARRY(( \h[3][3]~q\ ) + ( \Add4~13_sumout\ ) + ( \Add6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add4~13_sumout\,
	datad => \ALT_INV_h[3][3]~q\,
	cin => \Add6~10\,
	sumout => \Add6~13_sumout\,
	cout => \Add6~14\);

-- Location: LABCELL_X83_Y25_N42
\Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~17_sumout\ = SUM(( !\h[0][4]~DUPLICATE_q\ $ (!\h[2][4]~q\ $ (\h[1][4]~q\)) ) + ( \Add4~15\ ) + ( \Add4~14\ ))
-- \Add4~18\ = CARRY(( !\h[0][4]~DUPLICATE_q\ $ (!\h[2][4]~q\ $ (\h[1][4]~q\)) ) + ( \Add4~15\ ) + ( \Add4~14\ ))
-- \Add4~19\ = SHARE((!\h[0][4]~DUPLICATE_q\ & (\h[2][4]~q\ & \h[1][4]~q\)) # (\h[0][4]~DUPLICATE_q\ & ((\h[1][4]~q\) # (\h[2][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_h[0][4]~DUPLICATE_q\,
	datac => \ALT_INV_h[2][4]~q\,
	datad => \ALT_INV_h[1][4]~q\,
	cin => \Add4~14\,
	sharein => \Add4~15\,
	sumout => \Add4~17_sumout\,
	cout => \Add4~18\,
	shareout => \Add4~19\);

-- Location: LABCELL_X85_Y26_N12
\Add6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~17_sumout\ = SUM(( \h[3][4]~q\ ) + ( \Add4~17_sumout\ ) + ( \Add6~14\ ))
-- \Add6~18\ = CARRY(( \h[3][4]~q\ ) + ( \Add4~17_sumout\ ) + ( \Add6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add4~17_sumout\,
	datad => \ALT_INV_h[3][4]~q\,
	cin => \Add6~14\,
	sumout => \Add6~17_sumout\,
	cout => \Add6~18\);

-- Location: LABCELL_X83_Y25_N45
\Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~21_sumout\ = SUM(( !\h[1][5]~q\ $ (!\h[2][5]~q\ $ (\h[0][5]~q\)) ) + ( \Add4~19\ ) + ( \Add4~18\ ))
-- \Add4~22\ = CARRY(( !\h[1][5]~q\ $ (!\h[2][5]~q\ $ (\h[0][5]~q\)) ) + ( \Add4~19\ ) + ( \Add4~18\ ))
-- \Add4~23\ = SHARE((!\h[1][5]~q\ & (\h[2][5]~q\ & \h[0][5]~q\)) # (\h[1][5]~q\ & ((\h[0][5]~q\) # (\h[2][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_h[1][5]~q\,
	datac => \ALT_INV_h[2][5]~q\,
	datad => \ALT_INV_h[0][5]~q\,
	cin => \Add4~18\,
	sharein => \Add4~19\,
	sumout => \Add4~21_sumout\,
	cout => \Add4~22\,
	shareout => \Add4~23\);

-- Location: LABCELL_X85_Y26_N15
\Add6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~21_sumout\ = SUM(( \Add4~21_sumout\ ) + ( \h[3][5]~q\ ) + ( \Add6~18\ ))
-- \Add6~22\ = CARRY(( \Add4~21_sumout\ ) + ( \h[3][5]~q\ ) + ( \Add6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~21_sumout\,
	datac => \ALT_INV_h[3][5]~q\,
	cin => \Add6~18\,
	sumout => \Add6~21_sumout\,
	cout => \Add6~22\);

-- Location: LABCELL_X83_Y25_N48
\Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~25_sumout\ = SUM(( !\h[1][6]~DUPLICATE_q\ $ (!\h[2][6]~q\ $ (\h[0][6]~q\)) ) + ( \Add4~23\ ) + ( \Add4~22\ ))
-- \Add4~26\ = CARRY(( !\h[1][6]~DUPLICATE_q\ $ (!\h[2][6]~q\ $ (\h[0][6]~q\)) ) + ( \Add4~23\ ) + ( \Add4~22\ ))
-- \Add4~27\ = SHARE((!\h[1][6]~DUPLICATE_q\ & (\h[2][6]~q\ & \h[0][6]~q\)) # (\h[1][6]~DUPLICATE_q\ & ((\h[0][6]~q\) # (\h[2][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_h[1][6]~DUPLICATE_q\,
	datac => \ALT_INV_h[2][6]~q\,
	datad => \ALT_INV_h[0][6]~q\,
	cin => \Add4~22\,
	sharein => \Add4~23\,
	sumout => \Add4~25_sumout\,
	cout => \Add4~26\,
	shareout => \Add4~27\);

-- Location: LABCELL_X85_Y26_N18
\Add6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~25_sumout\ = SUM(( \Add4~25_sumout\ ) + ( \h[3][6]~q\ ) + ( \Add6~22\ ))
-- \Add6~26\ = CARRY(( \Add4~25_sumout\ ) + ( \h[3][6]~q\ ) + ( \Add6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_h[3][6]~q\,
	datad => \ALT_INV_Add4~25_sumout\,
	cin => \Add6~22\,
	sumout => \Add6~25_sumout\,
	cout => \Add6~26\);

-- Location: LABCELL_X83_Y25_N51
\Add4~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~37_sumout\ = SUM(( !\h[1][7]~q\ $ (!\h[2][7]~q\ $ (\h[0][7]~q\)) ) + ( \Add4~27\ ) + ( \Add4~26\ ))
-- \Add4~38\ = CARRY(( !\h[1][7]~q\ $ (!\h[2][7]~q\ $ (\h[0][7]~q\)) ) + ( \Add4~27\ ) + ( \Add4~26\ ))
-- \Add4~39\ = SHARE((!\h[1][7]~q\ & (\h[2][7]~q\ & \h[0][7]~q\)) # (\h[1][7]~q\ & ((\h[0][7]~q\) # (\h[2][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_h[1][7]~q\,
	datac => \ALT_INV_h[2][7]~q\,
	datad => \ALT_INV_h[0][7]~q\,
	cin => \Add4~26\,
	sharein => \Add4~27\,
	sumout => \Add4~37_sumout\,
	cout => \Add4~38\,
	shareout => \Add4~39\);

-- Location: LABCELL_X83_Y25_N54
\Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~33_sumout\ = SUM(( !\h[1][7]~q\ $ (!\h[2][7]~q\ $ (\h[0][7]~q\)) ) + ( \Add4~39\ ) + ( \Add4~38\ ))
-- \Add4~34\ = CARRY(( !\h[1][7]~q\ $ (!\h[2][7]~q\ $ (\h[0][7]~q\)) ) + ( \Add4~39\ ) + ( \Add4~38\ ))
-- \Add4~35\ = SHARE((!\h[1][7]~q\ & (\h[2][7]~q\ & \h[0][7]~q\)) # (\h[1][7]~q\ & ((\h[0][7]~q\) # (\h[2][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010111011100000000000000000110011010011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_h[1][7]~q\,
	datab => \ALT_INV_h[2][7]~q\,
	datad => \ALT_INV_h[0][7]~q\,
	cin => \Add4~38\,
	sharein => \Add4~39\,
	sumout => \Add4~33_sumout\,
	cout => \Add4~34\,
	shareout => \Add4~35\);

-- Location: LABCELL_X83_Y25_N57
\Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~29_sumout\ = SUM(( !\h[1][7]~q\ $ (!\h[2][7]~q\ $ (\h[0][7]~q\)) ) + ( \Add4~35\ ) + ( \Add4~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_h[1][7]~q\,
	datac => \ALT_INV_h[2][7]~q\,
	datad => \ALT_INV_h[0][7]~q\,
	cin => \Add4~34\,
	sharein => \Add4~35\,
	sumout => \Add4~29_sumout\);

-- Location: LABCELL_X85_Y26_N21
\Add6~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~42_cout\ = CARRY(( \Add4~37_sumout\ ) + ( \h[3][7]~q\ ) + ( \Add6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_h[3][7]~q\,
	datad => \ALT_INV_Add4~37_sumout\,
	cin => \Add6~26\,
	cout => \Add6~42_cout\);

-- Location: LABCELL_X85_Y26_N24
\Add6~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~38_cout\ = CARRY(( \Add4~33_sumout\ ) + ( \h[3][7]~q\ ) + ( \Add6~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_h[3][7]~q\,
	datad => \ALT_INV_Add4~33_sumout\,
	cin => \Add6~42_cout\,
	cout => \Add6~38_cout\);

-- Location: LABCELL_X85_Y26_N27
\Add6~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~34_cout\ = CARRY(( \Add4~29_sumout\ ) + ( \h[3][7]~q\ ) + ( \Add6~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_h[3][7]~q\,
	datad => \ALT_INV_Add4~29_sumout\,
	cin => \Add6~38_cout\,
	cout => \Add6~34_cout\);

-- Location: LABCELL_X85_Y26_N30
\Add6~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~29_sumout\ = SUM(( \Add4~29_sumout\ ) + ( \h[3][7]~q\ ) + ( \Add6~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_h[3][7]~q\,
	datad => \ALT_INV_Add4~29_sumout\,
	cin => \Add6~34_cout\,
	sumout => \Add6~29_sumout\);

-- Location: DSP_X86_Y28_N0
\Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "0",
	ax_width => 9,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 9,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "0",
	bx_width => 9,
	by_clock => "0",
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
	signed_max => "true",
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
	bx => \Mult0~8_BX_bus\,
	by => \Mult0~8_BY_bus\,
	resulta => \Mult0~8_RESULTA_bus\);

-- Location: LABCELL_X85_Y28_N0
\Add50~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add50~13_sumout\ = SUM(( \capy[0][0]\ ) + ( VCC ) + ( !VCC ))
-- \Add50~14\ = CARRY(( \capy[0][0]\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[0][0]\,
	cin => GND,
	sumout => \Add50~13_sumout\,
	cout => \Add50~14\);

-- Location: LABCELL_X85_Y28_N3
\Add50~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add50~9_sumout\ = SUM(( \capy[0][1]\ ) + ( GND ) + ( \Add50~14\ ))
-- \Add50~10\ = CARRY(( \capy[0][1]\ ) + ( GND ) + ( \Add50~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[0][1]\,
	cin => \Add50~14\,
	sumout => \Add50~9_sumout\,
	cout => \Add50~10\);

-- Location: LABCELL_X85_Y28_N6
\Add50~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add50~1_sumout\ = SUM(( \capy[0][2]\ ) + ( GND ) + ( \Add50~10\ ))
-- \Add50~2\ = CARRY(( \capy[0][2]\ ) + ( GND ) + ( \Add50~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[0][2]\,
	cin => \Add50~10\,
	sumout => \Add50~1_sumout\,
	cout => \Add50~2\);

-- Location: MLABCELL_X84_Y28_N39
\capym~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \capym~0_combout\ = ( \Add50~1_sumout\ & ( \capy[0][14]\ ) ) # ( \Add50~1_sumout\ & ( !\capy[0][14]\ & ( \capy[0][2]\ ) ) ) # ( !\Add50~1_sumout\ & ( !\capy[0][14]\ & ( \capy[0][2]\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capy[0][2]\,
	datae => \ALT_INV_Add50~1_sumout\,
	dataf => \ALT_INV_capy[0][14]\,
	combout => \capym~0_combout\);

-- Location: FF_X83_Y28_N56
\capym[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \capym~0_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[0][2]~q\);

-- Location: LABCELL_X83_Y26_N36
\capym~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \capym~11_combout\ = ( \Add50~9_sumout\ & ( (\capy[0][1]\) # (\capy[0][14]\) ) ) # ( !\Add50~9_sumout\ & ( (!\capy[0][14]\ & \capy[0][1]\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_capy[0][14]\,
	datac => \ALT_INV_capy[0][1]\,
	dataf => \ALT_INV_Add50~9_sumout\,
	combout => \capym~11_combout\);

-- Location: FF_X83_Y26_N37
\capym[0][1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \capym~11_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[0][1]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y28_N51
\capym~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \capym~12_combout\ = ( \Add50~13_sumout\ & ( (\capy[0][0]\) # (\capy[0][14]\) ) ) # ( !\Add50~13_sumout\ & ( (!\capy[0][14]\ & \capy[0][0]\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capy[0][14]\,
	datac => \ALT_INV_capy[0][0]\,
	dataf => \ALT_INV_Add50~13_sumout\,
	combout => \capym~12_combout\);

-- Location: FF_X82_Y28_N52
\capym[0][0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \capym~12_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[0][0]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y29_N0
\Add47~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add47~37_sumout\ = SUM(( \Add23~33_sumout\ ) + ( \capym[0][0]~DUPLICATE_q\ ) + ( !VCC ))
-- \Add47~38\ = CARRY(( \Add23~33_sumout\ ) + ( \capym[0][0]~DUPLICATE_q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add23~33_sumout\,
	datac => \ALT_INV_capym[0][0]~DUPLICATE_q\,
	cin => GND,
	sumout => \Add47~37_sumout\,
	cout => \Add47~38\);

-- Location: LABCELL_X81_Y29_N3
\Add47~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add47~33_sumout\ = SUM(( \Add23~29_sumout\ ) + ( \capym[0][1]~DUPLICATE_q\ ) + ( \Add47~38\ ))
-- \Add47~34\ = CARRY(( \Add23~29_sumout\ ) + ( \capym[0][1]~DUPLICATE_q\ ) + ( \Add47~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capym[0][1]~DUPLICATE_q\,
	datad => \ALT_INV_Add23~29_sumout\,
	cin => \Add47~38\,
	sumout => \Add47~33_sumout\,
	cout => \Add47~34\);

-- Location: LABCELL_X81_Y29_N6
\Add47~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add47~1_sumout\ = SUM(( \capym[0][2]~q\ ) + ( \Add23~1_sumout\ ) + ( \Add47~34\ ))
-- \Add47~2\ = CARRY(( \capym[0][2]~q\ ) + ( \Add23~1_sumout\ ) + ( \Add47~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add23~1_sumout\,
	datad => \ALT_INV_capym[0][2]~q\,
	cin => \Add47~34\,
	sumout => \Add47~1_sumout\,
	cout => \Add47~2\);

-- Location: MLABCELL_X84_Y22_N30
\Add12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~1_sumout\ = SUM(( !\x[2][0]~q\ ) + ( VCC ) + ( !VCC ))
-- \Add12~2\ = CARRY(( !\x[2][0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_x[2][0]~q\,
	cin => GND,
	sumout => \Add12~1_sumout\,
	cout => \Add12~2\);

-- Location: MLABCELL_X87_Y25_N0
\Add13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~1_sumout\ = SUM(( \Add12~1_sumout\ ) + ( \x[0][0]~q\ ) + ( !VCC ))
-- \Add13~2\ = CARRY(( \Add12~1_sumout\ ) + ( \x[0][0]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x[0][0]~q\,
	datad => \ALT_INV_Add12~1_sumout\,
	cin => GND,
	sumout => \Add13~1_sumout\,
	cout => \Add13~2\);

-- Location: MLABCELL_X84_Y22_N33
\Add12~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~5_sumout\ = SUM(( !\x[2][1]~q\ ) + ( GND ) + ( \Add12~2\ ))
-- \Add12~6\ = CARRY(( !\x[2][1]~q\ ) + ( GND ) + ( \Add12~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_x[2][1]~q\,
	cin => \Add12~2\,
	sumout => \Add12~5_sumout\,
	cout => \Add12~6\);

-- Location: MLABCELL_X87_Y25_N3
\Add13~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~5_sumout\ = SUM(( \x[0][1]~q\ ) + ( \Add12~5_sumout\ ) + ( \Add13~2\ ))
-- \Add13~6\ = CARRY(( \x[0][1]~q\ ) + ( \Add12~5_sumout\ ) + ( \Add13~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add12~5_sumout\,
	datad => \ALT_INV_x[0][1]~q\,
	cin => \Add13~2\,
	sumout => \Add13~5_sumout\,
	cout => \Add13~6\);

-- Location: MLABCELL_X84_Y22_N36
\Add12~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~9_sumout\ = SUM(( !\x[2][2]~q\ ) + ( GND ) + ( \Add12~6\ ))
-- \Add12~10\ = CARRY(( !\x[2][2]~q\ ) + ( GND ) + ( \Add12~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_x[2][2]~q\,
	cin => \Add12~6\,
	sumout => \Add12~9_sumout\,
	cout => \Add12~10\);

-- Location: MLABCELL_X87_Y25_N6
\Add13~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~9_sumout\ = SUM(( \Add12~9_sumout\ ) + ( \x[0][2]~q\ ) + ( \Add13~6\ ))
-- \Add13~10\ = CARRY(( \Add12~9_sumout\ ) + ( \x[0][2]~q\ ) + ( \Add13~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[0][2]~q\,
	datac => \ALT_INV_Add12~9_sumout\,
	cin => \Add13~6\,
	sumout => \Add13~9_sumout\,
	cout => \Add13~10\);

-- Location: MLABCELL_X84_Y22_N39
\Add12~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~13_sumout\ = SUM(( !\x[2][3]~q\ ) + ( GND ) + ( \Add12~10\ ))
-- \Add12~14\ = CARRY(( !\x[2][3]~q\ ) + ( GND ) + ( \Add12~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_x[2][3]~q\,
	cin => \Add12~10\,
	sumout => \Add12~13_sumout\,
	cout => \Add12~14\);

-- Location: MLABCELL_X87_Y25_N9
\Add13~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~13_sumout\ = SUM(( \x[0][3]~q\ ) + ( \Add12~13_sumout\ ) + ( \Add13~10\ ))
-- \Add13~14\ = CARRY(( \x[0][3]~q\ ) + ( \Add12~13_sumout\ ) + ( \Add13~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add12~13_sumout\,
	datad => \ALT_INV_x[0][3]~q\,
	cin => \Add13~10\,
	sumout => \Add13~13_sumout\,
	cout => \Add13~14\);

-- Location: MLABCELL_X84_Y22_N42
\Add12~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~17_sumout\ = SUM(( !\x[2][4]~q\ ) + ( GND ) + ( \Add12~14\ ))
-- \Add12~18\ = CARRY(( !\x[2][4]~q\ ) + ( GND ) + ( \Add12~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_x[2][4]~q\,
	cin => \Add12~14\,
	sumout => \Add12~17_sumout\,
	cout => \Add12~18\);

-- Location: LABCELL_X88_Y25_N0
\Add11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~1_sumout\ = SUM(( !\x[0][4]~q\ $ (!\x[1][0]~q\ $ (\Add14~1_sumout\)) ) + ( !VCC ) + ( !VCC ))
-- \Add11~2\ = CARRY(( !\x[0][4]~q\ $ (!\x[1][0]~q\ $ (\Add14~1_sumout\)) ) + ( !VCC ) + ( !VCC ))
-- \Add11~3\ = SHARE((!\x[0][4]~q\ & (\x[1][0]~q\ & \Add14~1_sumout\)) # (\x[0][4]~q\ & ((\Add14~1_sumout\) # (\x[1][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x[0][4]~q\,
	datac => \ALT_INV_x[1][0]~q\,
	datad => \ALT_INV_Add14~1_sumout\,
	cin => GND,
	sharein => GND,
	sumout => \Add11~1_sumout\,
	cout => \Add11~2\,
	shareout => \Add11~3\);

-- Location: MLABCELL_X87_Y25_N12
\Add13~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~17_sumout\ = SUM(( \Add11~1_sumout\ ) + ( \Add12~17_sumout\ ) + ( \Add13~14\ ))
-- \Add13~18\ = CARRY(( \Add11~1_sumout\ ) + ( \Add12~17_sumout\ ) + ( \Add13~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add12~17_sumout\,
	datad => \ALT_INV_Add11~1_sumout\,
	cin => \Add13~14\,
	sumout => \Add13~17_sumout\,
	cout => \Add13~18\);

-- Location: LABCELL_X88_Y25_N3
\Add11~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~5_sumout\ = SUM(( !\x[1][1]~q\ $ (!\x[0][5]~q\ $ (\Add14~5_sumout\)) ) + ( \Add11~3\ ) + ( \Add11~2\ ))
-- \Add11~6\ = CARRY(( !\x[1][1]~q\ $ (!\x[0][5]~q\ $ (\Add14~5_sumout\)) ) + ( \Add11~3\ ) + ( \Add11~2\ ))
-- \Add11~7\ = SHARE((!\x[1][1]~q\ & (\x[0][5]~q\ & \Add14~5_sumout\)) # (\x[1][1]~q\ & ((\Add14~5_sumout\) # (\x[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[1][1]~q\,
	datac => \ALT_INV_x[0][5]~q\,
	datad => \ALT_INV_Add14~5_sumout\,
	cin => \Add11~2\,
	sharein => \Add11~3\,
	sumout => \Add11~5_sumout\,
	cout => \Add11~6\,
	shareout => \Add11~7\);

-- Location: MLABCELL_X84_Y22_N45
\Add12~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~21_sumout\ = SUM(( !\x[2][5]~q\ ) + ( GND ) + ( \Add12~18\ ))
-- \Add12~22\ = CARRY(( !\x[2][5]~q\ ) + ( GND ) + ( \Add12~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_x[2][5]~q\,
	cin => \Add12~18\,
	sumout => \Add12~21_sumout\,
	cout => \Add12~22\);

-- Location: MLABCELL_X87_Y25_N15
\Add13~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~21_sumout\ = SUM(( \Add12~21_sumout\ ) + ( \Add11~5_sumout\ ) + ( \Add13~18\ ))
-- \Add13~22\ = CARRY(( \Add12~21_sumout\ ) + ( \Add11~5_sumout\ ) + ( \Add13~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add11~5_sumout\,
	datad => \ALT_INV_Add12~21_sumout\,
	cin => \Add13~18\,
	sumout => \Add13~21_sumout\,
	cout => \Add13~22\);

-- Location: MLABCELL_X84_Y22_N48
\Add12~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~25_sumout\ = SUM(( !\x[2][6]~q\ ) + ( GND ) + ( \Add12~22\ ))
-- \Add12~26\ = CARRY(( !\x[2][6]~q\ ) + ( GND ) + ( \Add12~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_x[2][6]~q\,
	cin => \Add12~22\,
	sumout => \Add12~25_sumout\,
	cout => \Add12~26\);

-- Location: LABCELL_X88_Y25_N6
\Add11~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~9_sumout\ = SUM(( !\x[0][6]~DUPLICATE_q\ $ (!\Add14~9_sumout\ $ (\x[1][2]~q\)) ) + ( \Add11~7\ ) + ( \Add11~6\ ))
-- \Add11~10\ = CARRY(( !\x[0][6]~DUPLICATE_q\ $ (!\Add14~9_sumout\ $ (\x[1][2]~q\)) ) + ( \Add11~7\ ) + ( \Add11~6\ ))
-- \Add11~11\ = SHARE((!\x[0][6]~DUPLICATE_q\ & (\Add14~9_sumout\ & \x[1][2]~q\)) # (\x[0][6]~DUPLICATE_q\ & ((\x[1][2]~q\) # (\Add14~9_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[0][6]~DUPLICATE_q\,
	datac => \ALT_INV_Add14~9_sumout\,
	datad => \ALT_INV_x[1][2]~q\,
	cin => \Add11~6\,
	sharein => \Add11~7\,
	sumout => \Add11~9_sumout\,
	cout => \Add11~10\,
	shareout => \Add11~11\);

-- Location: MLABCELL_X87_Y25_N18
\Add13~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~25_sumout\ = SUM(( \Add11~9_sumout\ ) + ( \Add12~25_sumout\ ) + ( \Add13~22\ ))
-- \Add13~26\ = CARRY(( \Add11~9_sumout\ ) + ( \Add12~25_sumout\ ) + ( \Add13~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add12~25_sumout\,
	datad => \ALT_INV_Add11~9_sumout\,
	cin => \Add13~22\,
	sumout => \Add13~25_sumout\,
	cout => \Add13~26\);

-- Location: FF_X85_Y24_N4
\x[0][7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[1][7]~DUPLICATE_q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[0][7]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y25_N9
\Add11~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~41_sumout\ = SUM(( !\x[1][3]~q\ $ (!\x[0][7]~DUPLICATE_q\ $ (\Add14~13_sumout\)) ) + ( \Add11~11\ ) + ( \Add11~10\ ))
-- \Add11~42\ = CARRY(( !\x[1][3]~q\ $ (!\x[0][7]~DUPLICATE_q\ $ (\Add14~13_sumout\)) ) + ( \Add11~11\ ) + ( \Add11~10\ ))
-- \Add11~43\ = SHARE((!\x[1][3]~q\ & (\x[0][7]~DUPLICATE_q\ & \Add14~13_sumout\)) # (\x[1][3]~q\ & ((\Add14~13_sumout\) # (\x[0][7]~DUPLICATE_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x[1][3]~q\,
	datac => \ALT_INV_x[0][7]~DUPLICATE_q\,
	datad => \ALT_INV_Add14~13_sumout\,
	cin => \Add11~10\,
	sharein => \Add11~11\,
	sumout => \Add11~41_sumout\,
	cout => \Add11~42\,
	shareout => \Add11~43\);

-- Location: LABCELL_X88_Y25_N12
\Add11~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~37_sumout\ = SUM(( !\x[0][7]~DUPLICATE_q\ $ (!\x[1][4]~q\ $ (\Add14~17_sumout\)) ) + ( \Add11~43\ ) + ( \Add11~42\ ))
-- \Add11~38\ = CARRY(( !\x[0][7]~DUPLICATE_q\ $ (!\x[1][4]~q\ $ (\Add14~17_sumout\)) ) + ( \Add11~43\ ) + ( \Add11~42\ ))
-- \Add11~39\ = SHARE((!\x[0][7]~DUPLICATE_q\ & (\x[1][4]~q\ & \Add14~17_sumout\)) # (\x[0][7]~DUPLICATE_q\ & ((\Add14~17_sumout\) # (\x[1][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x[0][7]~DUPLICATE_q\,
	datac => \ALT_INV_x[1][4]~q\,
	datad => \ALT_INV_Add14~17_sumout\,
	cin => \Add11~42\,
	sharein => \Add11~43\,
	sumout => \Add11~37_sumout\,
	cout => \Add11~38\,
	shareout => \Add11~39\);

-- Location: LABCELL_X88_Y25_N15
\Add11~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~33_sumout\ = SUM(( !\Add14~21_sumout\ $ (!\x[0][7]~DUPLICATE_q\ $ (\x[1][5]~q\)) ) + ( \Add11~39\ ) + ( \Add11~38\ ))
-- \Add11~34\ = CARRY(( !\Add14~21_sumout\ $ (!\x[0][7]~DUPLICATE_q\ $ (\x[1][5]~q\)) ) + ( \Add11~39\ ) + ( \Add11~38\ ))
-- \Add11~35\ = SHARE((!\Add14~21_sumout\ & (\x[0][7]~DUPLICATE_q\ & \x[1][5]~q\)) # (\Add14~21_sumout\ & ((\x[1][5]~q\) # (\x[0][7]~DUPLICATE_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101110001011100000000000000000110100101101001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add14~21_sumout\,
	datab => \ALT_INV_x[0][7]~DUPLICATE_q\,
	datac => \ALT_INV_x[1][5]~q\,
	cin => \Add11~38\,
	sharein => \Add11~39\,
	sumout => \Add11~33_sumout\,
	cout => \Add11~34\,
	shareout => \Add11~35\);

-- Location: LABCELL_X88_Y25_N18
\Add11~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~29_sumout\ = SUM(( !\x[0][7]~DUPLICATE_q\ $ (!\x[1][6]~DUPLICATE_q\ $ (\Add14~25_sumout\)) ) + ( \Add11~35\ ) + ( \Add11~34\ ))
-- \Add11~30\ = CARRY(( !\x[0][7]~DUPLICATE_q\ $ (!\x[1][6]~DUPLICATE_q\ $ (\Add14~25_sumout\)) ) + ( \Add11~35\ ) + ( \Add11~34\ ))
-- \Add11~31\ = SHARE((!\x[0][7]~DUPLICATE_q\ & (\x[1][6]~DUPLICATE_q\ & \Add14~25_sumout\)) # (\x[0][7]~DUPLICATE_q\ & ((\Add14~25_sumout\) # (\x[1][6]~DUPLICATE_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x[0][7]~DUPLICATE_q\,
	datac => \ALT_INV_x[1][6]~DUPLICATE_q\,
	datad => \ALT_INV_Add14~25_sumout\,
	cin => \Add11~34\,
	sharein => \Add11~35\,
	sumout => \Add11~29_sumout\,
	cout => \Add11~30\,
	shareout => \Add11~31\);

-- Location: LABCELL_X88_Y25_N21
\Add11~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~25_sumout\ = SUM(( !\x[1][7]~q\ $ (!\x[0][7]~DUPLICATE_q\ $ (\Add14~33_sumout\)) ) + ( \Add11~31\ ) + ( \Add11~30\ ))
-- \Add11~26\ = CARRY(( !\x[1][7]~q\ $ (!\x[0][7]~DUPLICATE_q\ $ (\Add14~33_sumout\)) ) + ( \Add11~31\ ) + ( \Add11~30\ ))
-- \Add11~27\ = SHARE((!\x[1][7]~q\ & (\x[0][7]~DUPLICATE_q\ & \Add14~33_sumout\)) # (\x[1][7]~q\ & ((\Add14~33_sumout\) # (\x[0][7]~DUPLICATE_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010111011100000000000000000110011010011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[1][7]~q\,
	datab => \ALT_INV_x[0][7]~DUPLICATE_q\,
	datad => \ALT_INV_Add14~33_sumout\,
	cin => \Add11~30\,
	sharein => \Add11~31\,
	sumout => \Add11~25_sumout\,
	cout => \Add11~26\,
	shareout => \Add11~27\);

-- Location: LABCELL_X88_Y25_N24
\Add11~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~21_sumout\ = SUM(( !\x[0][7]~DUPLICATE_q\ $ (!\x[1][7]~q\ $ (\Add14~29_sumout\)) ) + ( \Add11~27\ ) + ( \Add11~26\ ))
-- \Add11~22\ = CARRY(( !\x[0][7]~DUPLICATE_q\ $ (!\x[1][7]~q\ $ (\Add14~29_sumout\)) ) + ( \Add11~27\ ) + ( \Add11~26\ ))
-- \Add11~23\ = SHARE((!\x[0][7]~DUPLICATE_q\ & (\x[1][7]~q\ & \Add14~29_sumout\)) # (\x[0][7]~DUPLICATE_q\ & ((\Add14~29_sumout\) # (\x[1][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x[0][7]~DUPLICATE_q\,
	datac => \ALT_INV_x[1][7]~q\,
	datad => \ALT_INV_Add14~29_sumout\,
	cin => \Add11~26\,
	sharein => \Add11~27\,
	sumout => \Add11~21_sumout\,
	cout => \Add11~22\,
	shareout => \Add11~23\);

-- Location: LABCELL_X88_Y25_N27
\Add11~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~17_sumout\ = SUM(( !\x[1][7]~q\ $ (!\x[0][7]~DUPLICATE_q\ $ (\Add14~29_sumout\)) ) + ( \Add11~23\ ) + ( \Add11~22\ ))
-- \Add11~18\ = CARRY(( !\x[1][7]~q\ $ (!\x[0][7]~DUPLICATE_q\ $ (\Add14~29_sumout\)) ) + ( \Add11~23\ ) + ( \Add11~22\ ))
-- \Add11~19\ = SHARE((!\x[1][7]~q\ & (\x[0][7]~DUPLICATE_q\ & \Add14~29_sumout\)) # (\x[1][7]~q\ & ((\Add14~29_sumout\) # (\x[0][7]~DUPLICATE_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010111011100000000000000000110011010011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[1][7]~q\,
	datab => \ALT_INV_x[0][7]~DUPLICATE_q\,
	datad => \ALT_INV_Add14~29_sumout\,
	cin => \Add11~22\,
	sharein => \Add11~23\,
	sumout => \Add11~17_sumout\,
	cout => \Add11~18\,
	shareout => \Add11~19\);

-- Location: LABCELL_X88_Y25_N30
\Add11~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~13_sumout\ = SUM(( !\x[0][7]~DUPLICATE_q\ $ (!\x[1][7]~q\ $ (\Add14~29_sumout\)) ) + ( \Add11~19\ ) + ( \Add11~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x[0][7]~DUPLICATE_q\,
	datac => \ALT_INV_x[1][7]~q\,
	datad => \ALT_INV_Add14~29_sumout\,
	cin => \Add11~18\,
	sharein => \Add11~19\,
	sumout => \Add11~13_sumout\);

-- Location: MLABCELL_X84_Y22_N51
\Add12~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~33_sumout\ = SUM(( !\x[2][7]~q\ ) + ( GND ) + ( \Add12~26\ ))
-- \Add12~34\ = CARRY(( !\x[2][7]~q\ ) + ( GND ) + ( \Add12~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_x[2][7]~q\,
	cin => \Add12~26\,
	sumout => \Add12~33_sumout\,
	cout => \Add12~34\);

-- Location: MLABCELL_X84_Y22_N54
\Add12~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~29_sumout\ = SUM(( !\x[2][7]~q\ ) + ( GND ) + ( \Add12~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x[2][7]~q\,
	cin => \Add12~34\,
	sumout => \Add12~29_sumout\);

-- Location: MLABCELL_X87_Y25_N21
\Add13~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~58_cout\ = CARRY(( \Add12~33_sumout\ ) + ( \Add11~41_sumout\ ) + ( \Add13~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add11~41_sumout\,
	datad => \ALT_INV_Add12~33_sumout\,
	cin => \Add13~26\,
	cout => \Add13~58_cout\);

-- Location: MLABCELL_X87_Y25_N24
\Add13~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~54_cout\ = CARRY(( \Add11~37_sumout\ ) + ( \Add12~29_sumout\ ) + ( \Add13~58_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add12~29_sumout\,
	datad => \ALT_INV_Add11~37_sumout\,
	cin => \Add13~58_cout\,
	cout => \Add13~54_cout\);

-- Location: MLABCELL_X87_Y25_N27
\Add13~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~50_cout\ = CARRY(( \Add12~29_sumout\ ) + ( \Add11~33_sumout\ ) + ( \Add13~54_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add12~29_sumout\,
	datac => \ALT_INV_Add11~33_sumout\,
	cin => \Add13~54_cout\,
	cout => \Add13~50_cout\);

-- Location: MLABCELL_X87_Y25_N30
\Add13~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~46_cout\ = CARRY(( \Add12~29_sumout\ ) + ( \Add11~29_sumout\ ) + ( \Add13~50_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add11~29_sumout\,
	datad => \ALT_INV_Add12~29_sumout\,
	cin => \Add13~50_cout\,
	cout => \Add13~46_cout\);

-- Location: MLABCELL_X87_Y25_N33
\Add13~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~42_cout\ = CARRY(( \Add11~25_sumout\ ) + ( \Add12~29_sumout\ ) + ( \Add13~46_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add12~29_sumout\,
	datad => \ALT_INV_Add11~25_sumout\,
	cin => \Add13~46_cout\,
	cout => \Add13~42_cout\);

-- Location: MLABCELL_X87_Y25_N36
\Add13~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~38_cout\ = CARRY(( \Add12~29_sumout\ ) + ( \Add11~21_sumout\ ) + ( \Add13~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add11~21_sumout\,
	datac => \ALT_INV_Add12~29_sumout\,
	cin => \Add13~42_cout\,
	cout => \Add13~38_cout\);

-- Location: MLABCELL_X87_Y25_N39
\Add13~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~34_cout\ = CARRY(( \Add11~17_sumout\ ) + ( \Add12~29_sumout\ ) + ( \Add13~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add12~29_sumout\,
	datad => \ALT_INV_Add11~17_sumout\,
	cin => \Add13~38_cout\,
	cout => \Add13~34_cout\);

-- Location: MLABCELL_X87_Y25_N42
\Add13~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~29_sumout\ = SUM(( \Add12~29_sumout\ ) + ( \Add11~13_sumout\ ) + ( \Add13~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add11~13_sumout\,
	datad => \ALT_INV_Add12~29_sumout\,
	cin => \Add13~34_cout\,
	sumout => \Add13~29_sumout\);

-- Location: LABCELL_X88_Y22_N30
\Add17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~1_sumout\ = SUM(( !\h[2][0]~q\ ) + ( VCC ) + ( !VCC ))
-- \Add17~2\ = CARRY(( !\h[2][0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_h[2][0]~q\,
	cin => GND,
	sumout => \Add17~1_sumout\,
	cout => \Add17~2\);

-- Location: LABCELL_X85_Y25_N0
\Add18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add18~1_sumout\ = SUM(( \Add17~1_sumout\ ) + ( \h[0][0]~DUPLICATE_q\ ) + ( !VCC ))
-- \Add18~2\ = CARRY(( \Add17~1_sumout\ ) + ( \h[0][0]~DUPLICATE_q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_h[0][0]~DUPLICATE_q\,
	datac => \ALT_INV_Add17~1_sumout\,
	cin => GND,
	sumout => \Add18~1_sumout\,
	cout => \Add18~2\);

-- Location: LABCELL_X88_Y22_N33
\Add17~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~5_sumout\ = SUM(( !\h[2][1]~q\ ) + ( GND ) + ( \Add17~2\ ))
-- \Add17~6\ = CARRY(( !\h[2][1]~q\ ) + ( GND ) + ( \Add17~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_h[2][1]~q\,
	cin => \Add17~2\,
	sumout => \Add17~5_sumout\,
	cout => \Add17~6\);

-- Location: LABCELL_X85_Y25_N3
\Add18~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add18~5_sumout\ = SUM(( \h[0][1]~q\ ) + ( \Add17~5_sumout\ ) + ( \Add18~2\ ))
-- \Add18~6\ = CARRY(( \h[0][1]~q\ ) + ( \Add17~5_sumout\ ) + ( \Add18~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add17~5_sumout\,
	datad => \ALT_INV_h[0][1]~q\,
	cin => \Add18~2\,
	sumout => \Add18~5_sumout\,
	cout => \Add18~6\);

-- Location: LABCELL_X88_Y22_N36
\Add17~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~9_sumout\ = SUM(( !\h[2][2]~q\ ) + ( GND ) + ( \Add17~6\ ))
-- \Add17~10\ = CARRY(( !\h[2][2]~q\ ) + ( GND ) + ( \Add17~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_h[2][2]~q\,
	cin => \Add17~6\,
	sumout => \Add17~9_sumout\,
	cout => \Add17~10\);

-- Location: LABCELL_X85_Y25_N6
\Add18~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add18~9_sumout\ = SUM(( \Add17~9_sumout\ ) + ( \h[0][2]~q\ ) + ( \Add18~6\ ))
-- \Add18~10\ = CARRY(( \Add17~9_sumout\ ) + ( \h[0][2]~q\ ) + ( \Add18~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_h[0][2]~q\,
	datad => \ALT_INV_Add17~9_sumout\,
	cin => \Add18~6\,
	sumout => \Add18~9_sumout\,
	cout => \Add18~10\);

-- Location: FF_X82_Y25_N43
\h[0][3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \h[1][3]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h[0][3]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y22_N39
\Add17~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~13_sumout\ = SUM(( !\h[2][3]~q\ ) + ( GND ) + ( \Add17~10\ ))
-- \Add17~14\ = CARRY(( !\h[2][3]~q\ ) + ( GND ) + ( \Add17~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_h[2][3]~q\,
	cin => \Add17~10\,
	sumout => \Add17~13_sumout\,
	cout => \Add17~14\);

-- Location: LABCELL_X85_Y25_N9
\Add18~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add18~13_sumout\ = SUM(( \Add17~13_sumout\ ) + ( \h[0][3]~DUPLICATE_q\ ) + ( \Add18~10\ ))
-- \Add18~14\ = CARRY(( \Add17~13_sumout\ ) + ( \h[0][3]~DUPLICATE_q\ ) + ( \Add18~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_h[0][3]~DUPLICATE_q\,
	datac => \ALT_INV_Add17~13_sumout\,
	cin => \Add18~10\,
	sumout => \Add18~13_sumout\,
	cout => \Add18~14\);

-- Location: FF_X84_Y25_N50
\h[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \h[1][4]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h[0][4]~q\);

-- Location: MLABCELL_X84_Y25_N0
\Add16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add16~1_sumout\ = SUM(( !\Add19~1_sumout\ $ (!\h[0][4]~q\ $ (\h[1][0]~DUPLICATE_q\)) ) + ( !VCC ) + ( !VCC ))
-- \Add16~2\ = CARRY(( !\Add19~1_sumout\ $ (!\h[0][4]~q\ $ (\h[1][0]~DUPLICATE_q\)) ) + ( !VCC ) + ( !VCC ))
-- \Add16~3\ = SHARE((!\Add19~1_sumout\ & (\h[0][4]~q\ & \h[1][0]~DUPLICATE_q\)) # (\Add19~1_sumout\ & ((\h[1][0]~DUPLICATE_q\) # (\h[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add19~1_sumout\,
	datac => \ALT_INV_h[0][4]~q\,
	datad => \ALT_INV_h[1][0]~DUPLICATE_q\,
	cin => GND,
	sharein => GND,
	sumout => \Add16~1_sumout\,
	cout => \Add16~2\,
	shareout => \Add16~3\);

-- Location: LABCELL_X88_Y22_N42
\Add17~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~17_sumout\ = SUM(( !\h[2][4]~q\ ) + ( GND ) + ( \Add17~14\ ))
-- \Add17~18\ = CARRY(( !\h[2][4]~q\ ) + ( GND ) + ( \Add17~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_h[2][4]~q\,
	cin => \Add17~14\,
	sumout => \Add17~17_sumout\,
	cout => \Add17~18\);

-- Location: LABCELL_X85_Y25_N12
\Add18~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add18~17_sumout\ = SUM(( \Add17~17_sumout\ ) + ( \Add16~1_sumout\ ) + ( \Add18~14\ ))
-- \Add18~18\ = CARRY(( \Add17~17_sumout\ ) + ( \Add16~1_sumout\ ) + ( \Add18~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add16~1_sumout\,
	datad => \ALT_INV_Add17~17_sumout\,
	cin => \Add18~14\,
	sumout => \Add18~17_sumout\,
	cout => \Add18~18\);

-- Location: MLABCELL_X84_Y25_N3
\Add16~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add16~5_sumout\ = SUM(( !\h[1][1]~q\ $ (!\Add19~5_sumout\ $ (\h[0][5]~q\)) ) + ( \Add16~3\ ) + ( \Add16~2\ ))
-- \Add16~6\ = CARRY(( !\h[1][1]~q\ $ (!\Add19~5_sumout\ $ (\h[0][5]~q\)) ) + ( \Add16~3\ ) + ( \Add16~2\ ))
-- \Add16~7\ = SHARE((!\h[1][1]~q\ & (\Add19~5_sumout\ & \h[0][5]~q\)) # (\h[1][1]~q\ & ((\h[0][5]~q\) # (\Add19~5_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_h[1][1]~q\,
	datac => \ALT_INV_Add19~5_sumout\,
	datad => \ALT_INV_h[0][5]~q\,
	cin => \Add16~2\,
	sharein => \Add16~3\,
	sumout => \Add16~5_sumout\,
	cout => \Add16~6\,
	shareout => \Add16~7\);

-- Location: LABCELL_X88_Y22_N45
\Add17~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~21_sumout\ = SUM(( !\h[2][5]~q\ ) + ( GND ) + ( \Add17~18\ ))
-- \Add17~22\ = CARRY(( !\h[2][5]~q\ ) + ( GND ) + ( \Add17~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_h[2][5]~q\,
	cin => \Add17~18\,
	sumout => \Add17~21_sumout\,
	cout => \Add17~22\);

-- Location: LABCELL_X85_Y25_N15
\Add18~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add18~21_sumout\ = SUM(( \Add17~21_sumout\ ) + ( \Add16~5_sumout\ ) + ( \Add18~18\ ))
-- \Add18~22\ = CARRY(( \Add17~21_sumout\ ) + ( \Add16~5_sumout\ ) + ( \Add18~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add16~5_sumout\,
	datad => \ALT_INV_Add17~21_sumout\,
	cin => \Add18~18\,
	sumout => \Add18~21_sumout\,
	cout => \Add18~22\);

-- Location: LABCELL_X88_Y22_N48
\Add17~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~25_sumout\ = SUM(( !\h[2][6]~q\ ) + ( GND ) + ( \Add17~22\ ))
-- \Add17~26\ = CARRY(( !\h[2][6]~q\ ) + ( GND ) + ( \Add17~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_h[2][6]~q\,
	cin => \Add17~22\,
	sumout => \Add17~25_sumout\,
	cout => \Add17~26\);

-- Location: MLABCELL_X84_Y25_N6
\Add16~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add16~9_sumout\ = SUM(( !\h[0][6]~q\ $ (!\h[1][2]~q\ $ (\Add19~9_sumout\)) ) + ( \Add16~7\ ) + ( \Add16~6\ ))
-- \Add16~10\ = CARRY(( !\h[0][6]~q\ $ (!\h[1][2]~q\ $ (\Add19~9_sumout\)) ) + ( \Add16~7\ ) + ( \Add16~6\ ))
-- \Add16~11\ = SHARE((!\h[0][6]~q\ & (\h[1][2]~q\ & \Add19~9_sumout\)) # (\h[0][6]~q\ & ((\Add19~9_sumout\) # (\h[1][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_h[0][6]~q\,
	datac => \ALT_INV_h[1][2]~q\,
	datad => \ALT_INV_Add19~9_sumout\,
	cin => \Add16~6\,
	sharein => \Add16~7\,
	sumout => \Add16~9_sumout\,
	cout => \Add16~10\,
	shareout => \Add16~11\);

-- Location: LABCELL_X85_Y25_N18
\Add18~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add18~25_sumout\ = SUM(( \Add16~9_sumout\ ) + ( \Add17~25_sumout\ ) + ( \Add18~22\ ))
-- \Add18~26\ = CARRY(( \Add16~9_sumout\ ) + ( \Add17~25_sumout\ ) + ( \Add18~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add17~25_sumout\,
	datad => \ALT_INV_Add16~9_sumout\,
	cin => \Add18~22\,
	sumout => \Add18~25_sumout\,
	cout => \Add18~26\);

-- Location: MLABCELL_X84_Y25_N9
\Add16~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add16~41_sumout\ = SUM(( !\h[0][7]~q\ $ (!\Add19~13_sumout\ $ (\h[1][3]~q\)) ) + ( \Add16~11\ ) + ( \Add16~10\ ))
-- \Add16~42\ = CARRY(( !\h[0][7]~q\ $ (!\Add19~13_sumout\ $ (\h[1][3]~q\)) ) + ( \Add16~11\ ) + ( \Add16~10\ ))
-- \Add16~43\ = SHARE((!\h[0][7]~q\ & (\Add19~13_sumout\ & \h[1][3]~q\)) # (\h[0][7]~q\ & ((\h[1][3]~q\) # (\Add19~13_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_h[0][7]~q\,
	datac => \ALT_INV_Add19~13_sumout\,
	datad => \ALT_INV_h[1][3]~q\,
	cin => \Add16~10\,
	sharein => \Add16~11\,
	sumout => \Add16~41_sumout\,
	cout => \Add16~42\,
	shareout => \Add16~43\);

-- Location: MLABCELL_X84_Y25_N12
\Add16~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add16~37_sumout\ = SUM(( !\h[0][7]~q\ $ (!\h[1][4]~q\ $ (\Add19~17_sumout\)) ) + ( \Add16~43\ ) + ( \Add16~42\ ))
-- \Add16~38\ = CARRY(( !\h[0][7]~q\ $ (!\h[1][4]~q\ $ (\Add19~17_sumout\)) ) + ( \Add16~43\ ) + ( \Add16~42\ ))
-- \Add16~39\ = SHARE((!\h[0][7]~q\ & (\h[1][4]~q\ & \Add19~17_sumout\)) # (\h[0][7]~q\ & ((\Add19~17_sumout\) # (\h[1][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_h[0][7]~q\,
	datac => \ALT_INV_h[1][4]~q\,
	datad => \ALT_INV_Add19~17_sumout\,
	cin => \Add16~42\,
	sharein => \Add16~43\,
	sumout => \Add16~37_sumout\,
	cout => \Add16~38\,
	shareout => \Add16~39\);

-- Location: MLABCELL_X84_Y25_N15
\Add16~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add16~33_sumout\ = SUM(( !\h[0][7]~q\ $ (!\Add19~21_sumout\ $ (\h[1][5]~DUPLICATE_q\)) ) + ( \Add16~39\ ) + ( \Add16~38\ ))
-- \Add16~34\ = CARRY(( !\h[0][7]~q\ $ (!\Add19~21_sumout\ $ (\h[1][5]~DUPLICATE_q\)) ) + ( \Add16~39\ ) + ( \Add16~38\ ))
-- \Add16~35\ = SHARE((!\h[0][7]~q\ & (\Add19~21_sumout\ & \h[1][5]~DUPLICATE_q\)) # (\h[0][7]~q\ & ((\h[1][5]~DUPLICATE_q\) # (\Add19~21_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_h[0][7]~q\,
	datac => \ALT_INV_Add19~21_sumout\,
	datad => \ALT_INV_h[1][5]~DUPLICATE_q\,
	cin => \Add16~38\,
	sharein => \Add16~39\,
	sumout => \Add16~33_sumout\,
	cout => \Add16~34\,
	shareout => \Add16~35\);

-- Location: MLABCELL_X84_Y25_N18
\Add16~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add16~29_sumout\ = SUM(( !\h[0][7]~q\ $ (!\Add19~25_sumout\ $ (\h[1][6]~q\)) ) + ( \Add16~35\ ) + ( \Add16~34\ ))
-- \Add16~30\ = CARRY(( !\h[0][7]~q\ $ (!\Add19~25_sumout\ $ (\h[1][6]~q\)) ) + ( \Add16~35\ ) + ( \Add16~34\ ))
-- \Add16~31\ = SHARE((!\h[0][7]~q\ & (\Add19~25_sumout\ & \h[1][6]~q\)) # (\h[0][7]~q\ & ((\h[1][6]~q\) # (\Add19~25_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101110001011100000000000000000110100101101001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_h[0][7]~q\,
	datab => \ALT_INV_Add19~25_sumout\,
	datac => \ALT_INV_h[1][6]~q\,
	cin => \Add16~34\,
	sharein => \Add16~35\,
	sumout => \Add16~29_sumout\,
	cout => \Add16~30\,
	shareout => \Add16~31\);

-- Location: MLABCELL_X84_Y25_N21
\Add16~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add16~25_sumout\ = SUM(( !\h[0][7]~q\ $ (!\h[1][7]~q\ $ (\Add19~33_sumout\)) ) + ( \Add16~31\ ) + ( \Add16~30\ ))
-- \Add16~26\ = CARRY(( !\h[0][7]~q\ $ (!\h[1][7]~q\ $ (\Add19~33_sumout\)) ) + ( \Add16~31\ ) + ( \Add16~30\ ))
-- \Add16~27\ = SHARE((!\h[0][7]~q\ & (\h[1][7]~q\ & \Add19~33_sumout\)) # (\h[0][7]~q\ & ((\Add19~33_sumout\) # (\h[1][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_h[0][7]~q\,
	datac => \ALT_INV_h[1][7]~q\,
	datad => \ALT_INV_Add19~33_sumout\,
	cin => \Add16~30\,
	sharein => \Add16~31\,
	sumout => \Add16~25_sumout\,
	cout => \Add16~26\,
	shareout => \Add16~27\);

-- Location: MLABCELL_X84_Y25_N24
\Add16~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add16~21_sumout\ = SUM(( !\h[1][7]~q\ $ (!\h[0][7]~q\ $ (\Add19~29_sumout\)) ) + ( \Add16~27\ ) + ( \Add16~26\ ))
-- \Add16~22\ = CARRY(( !\h[1][7]~q\ $ (!\h[0][7]~q\ $ (\Add19~29_sumout\)) ) + ( \Add16~27\ ) + ( \Add16~26\ ))
-- \Add16~23\ = SHARE((!\h[1][7]~q\ & (\h[0][7]~q\ & \Add19~29_sumout\)) # (\h[1][7]~q\ & ((\Add19~29_sumout\) # (\h[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_h[1][7]~q\,
	datac => \ALT_INV_h[0][7]~q\,
	datad => \ALT_INV_Add19~29_sumout\,
	cin => \Add16~26\,
	sharein => \Add16~27\,
	sumout => \Add16~21_sumout\,
	cout => \Add16~22\,
	shareout => \Add16~23\);

-- Location: MLABCELL_X84_Y25_N27
\Add16~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add16~17_sumout\ = SUM(( !\h[0][7]~q\ $ (!\h[1][7]~q\ $ (\Add19~29_sumout\)) ) + ( \Add16~23\ ) + ( \Add16~22\ ))
-- \Add16~18\ = CARRY(( !\h[0][7]~q\ $ (!\h[1][7]~q\ $ (\Add19~29_sumout\)) ) + ( \Add16~23\ ) + ( \Add16~22\ ))
-- \Add16~19\ = SHARE((!\h[0][7]~q\ & (\h[1][7]~q\ & \Add19~29_sumout\)) # (\h[0][7]~q\ & ((\Add19~29_sumout\) # (\h[1][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010111011100000000000000000110011010011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_h[0][7]~q\,
	datab => \ALT_INV_h[1][7]~q\,
	datad => \ALT_INV_Add19~29_sumout\,
	cin => \Add16~22\,
	sharein => \Add16~23\,
	sumout => \Add16~17_sumout\,
	cout => \Add16~18\,
	shareout => \Add16~19\);

-- Location: MLABCELL_X84_Y25_N30
\Add16~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add16~13_sumout\ = SUM(( !\h[1][7]~q\ $ (!\h[0][7]~q\ $ (\Add19~29_sumout\)) ) + ( \Add16~19\ ) + ( \Add16~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_h[1][7]~q\,
	datac => \ALT_INV_h[0][7]~q\,
	datad => \ALT_INV_Add19~29_sumout\,
	cin => \Add16~18\,
	sharein => \Add16~19\,
	sumout => \Add16~13_sumout\);

-- Location: LABCELL_X88_Y22_N51
\Add17~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~33_sumout\ = SUM(( !\h[2][7]~q\ ) + ( GND ) + ( \Add17~26\ ))
-- \Add17~34\ = CARRY(( !\h[2][7]~q\ ) + ( GND ) + ( \Add17~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_h[2][7]~q\,
	cin => \Add17~26\,
	sumout => \Add17~33_sumout\,
	cout => \Add17~34\);

-- Location: LABCELL_X88_Y22_N54
\Add17~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~29_sumout\ = SUM(( !\h[2][7]~q\ ) + ( GND ) + ( \Add17~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_h[2][7]~q\,
	cin => \Add17~34\,
	sumout => \Add17~29_sumout\);

-- Location: LABCELL_X85_Y25_N21
\Add18~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add18~58_cout\ = CARRY(( \Add17~33_sumout\ ) + ( \Add16~41_sumout\ ) + ( \Add18~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add16~41_sumout\,
	datad => \ALT_INV_Add17~33_sumout\,
	cin => \Add18~26\,
	cout => \Add18~58_cout\);

-- Location: LABCELL_X85_Y25_N24
\Add18~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add18~54_cout\ = CARRY(( \Add17~29_sumout\ ) + ( \Add16~37_sumout\ ) + ( \Add18~58_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add16~37_sumout\,
	datad => \ALT_INV_Add17~29_sumout\,
	cin => \Add18~58_cout\,
	cout => \Add18~54_cout\);

-- Location: LABCELL_X85_Y25_N27
\Add18~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add18~50_cout\ = CARRY(( \Add17~29_sumout\ ) + ( \Add16~33_sumout\ ) + ( \Add18~54_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add16~33_sumout\,
	datad => \ALT_INV_Add17~29_sumout\,
	cin => \Add18~54_cout\,
	cout => \Add18~50_cout\);

-- Location: LABCELL_X85_Y25_N30
\Add18~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add18~46_cout\ = CARRY(( \Add17~29_sumout\ ) + ( \Add16~29_sumout\ ) + ( \Add18~50_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add16~29_sumout\,
	datad => \ALT_INV_Add17~29_sumout\,
	cin => \Add18~50_cout\,
	cout => \Add18~46_cout\);

-- Location: LABCELL_X85_Y25_N33
\Add18~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add18~42_cout\ = CARRY(( \Add16~25_sumout\ ) + ( \Add17~29_sumout\ ) + ( \Add18~46_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add17~29_sumout\,
	datad => \ALT_INV_Add16~25_sumout\,
	cin => \Add18~46_cout\,
	cout => \Add18~42_cout\);

-- Location: LABCELL_X85_Y25_N36
\Add18~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add18~38_cout\ = CARRY(( \Add17~29_sumout\ ) + ( \Add16~21_sumout\ ) + ( \Add18~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add16~21_sumout\,
	datad => \ALT_INV_Add17~29_sumout\,
	cin => \Add18~42_cout\,
	cout => \Add18~38_cout\);

-- Location: LABCELL_X85_Y25_N39
\Add18~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add18~34_cout\ = CARRY(( \Add16~17_sumout\ ) + ( \Add17~29_sumout\ ) + ( \Add18~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add17~29_sumout\,
	datad => \ALT_INV_Add16~17_sumout\,
	cin => \Add18~38_cout\,
	cout => \Add18~34_cout\);

-- Location: LABCELL_X85_Y25_N42
\Add18~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add18~29_sumout\ = SUM(( \Add17~29_sumout\ ) + ( \Add16~13_sumout\ ) + ( \Add18~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add16~13_sumout\,
	datad => \ALT_INV_Add17~29_sumout\,
	cin => \Add18~34_cout\,
	sumout => \Add18~29_sumout\);

-- Location: DSP_X86_Y26_N0
\Mult1~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "0",
	ax_width => 9,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 9,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "0",
	bx_width => 9,
	by_clock => "0",
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
	signed_max => "true",
	signed_may => "true",
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
	by => \Mult1~8_BY_bus\,
	resulta => \Mult1~8_RESULTA_bus\);

-- Location: MLABCELL_X84_Y29_N0
\Add51~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add51~1_sumout\ = SUM(( \capy[1][0]\ ) + ( VCC ) + ( !VCC ))
-- \Add51~2\ = CARRY(( \capy[1][0]\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[1][0]\,
	cin => GND,
	sumout => \Add51~1_sumout\,
	cout => \Add51~2\);

-- Location: MLABCELL_X84_Y29_N3
\Add51~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add51~5_sumout\ = SUM(( \capy[1][1]\ ) + ( GND ) + ( \Add51~2\ ))
-- \Add51~6\ = CARRY(( \capy[1][1]\ ) + ( GND ) + ( \Add51~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[1][1]\,
	cin => \Add51~2\,
	sumout => \Add51~5_sumout\,
	cout => \Add51~6\);

-- Location: MLABCELL_X84_Y29_N6
\Add51~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add51~9_sumout\ = SUM(( \capy[1][2]\ ) + ( GND ) + ( \Add51~6\ ))
-- \Add51~10\ = CARRY(( \capy[1][2]\ ) + ( GND ) + ( \Add51~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[1][2]\,
	cin => \Add51~6\,
	sumout => \Add51~9_sumout\,
	cout => \Add51~10\);

-- Location: MLABCELL_X84_Y29_N9
\Add51~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add51~13_sumout\ = SUM(( \capy[1][3]\ ) + ( GND ) + ( \Add51~10\ ))
-- \Add51~14\ = CARRY(( \capy[1][3]\ ) + ( GND ) + ( \Add51~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[1][3]\,
	cin => \Add51~10\,
	sumout => \Add51~13_sumout\,
	cout => \Add51~14\);

-- Location: MLABCELL_X84_Y29_N12
\Add51~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add51~17_sumout\ = SUM(( \capy[1][4]\ ) + ( GND ) + ( \Add51~14\ ))
-- \Add51~18\ = CARRY(( \capy[1][4]\ ) + ( GND ) + ( \Add51~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_capy[1][4]\,
	cin => \Add51~14\,
	sumout => \Add51~17_sumout\,
	cout => \Add51~18\);

-- Location: MLABCELL_X84_Y29_N15
\Add51~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add51~25_sumout\ = SUM(( \capy[1][5]\ ) + ( GND ) + ( \Add51~18\ ))
-- \Add51~26\ = CARRY(( \capy[1][5]\ ) + ( GND ) + ( \Add51~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[1][5]\,
	cin => \Add51~18\,
	sumout => \Add51~25_sumout\,
	cout => \Add51~26\);

-- Location: MLABCELL_X84_Y29_N18
\Add51~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add51~29_sumout\ = SUM(( \capy[1][6]\ ) + ( GND ) + ( \Add51~26\ ))
-- \Add51~30\ = CARRY(( \capy[1][6]\ ) + ( GND ) + ( \Add51~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[1][6]\,
	cin => \Add51~26\,
	sumout => \Add51~29_sumout\,
	cout => \Add51~30\);

-- Location: MLABCELL_X84_Y29_N21
\Add51~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add51~58_cout\ = CARRY(( \capy[1][7]\ ) + ( GND ) + ( \Add51~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[1][7]\,
	cin => \Add51~30\,
	cout => \Add51~58_cout\);

-- Location: MLABCELL_X84_Y29_N24
\Add51~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add51~54_cout\ = CARRY(( \capy[1][8]\ ) + ( VCC ) + ( \Add51~58_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[1][8]\,
	cin => \Add51~58_cout\,
	cout => \Add51~54_cout\);

-- Location: MLABCELL_X84_Y29_N27
\Add51~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add51~50_cout\ = CARRY(( \capy[1][9]\ ) + ( GND ) + ( \Add51~54_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capy[1][9]\,
	cin => \Add51~54_cout\,
	cout => \Add51~50_cout\);

-- Location: MLABCELL_X84_Y29_N30
\Add51~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add51~46_cout\ = CARRY(( \capy[1][10]\ ) + ( GND ) + ( \Add51~50_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[1][10]\,
	cin => \Add51~50_cout\,
	cout => \Add51~46_cout\);

-- Location: MLABCELL_X84_Y29_N33
\Add51~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add51~42_cout\ = CARRY(( \capy[1][11]\ ) + ( GND ) + ( \Add51~46_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capy[1][11]\,
	cin => \Add51~46_cout\,
	cout => \Add51~42_cout\);

-- Location: MLABCELL_X84_Y29_N36
\Add51~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add51~38_cout\ = CARRY(( \capy[1][12]\ ) + ( GND ) + ( \Add51~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_capy[1][12]\,
	cin => \Add51~42_cout\,
	cout => \Add51~38_cout\);

-- Location: MLABCELL_X84_Y29_N39
\Add51~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add51~34_cout\ = CARRY(( \capy[1][13]\ ) + ( GND ) + ( \Add51~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_capy[1][13]\,
	cin => \Add51~38_cout\,
	cout => \Add51~34_cout\);

-- Location: MLABCELL_X84_Y29_N42
\Add51~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add51~21_sumout\ = SUM(( \capy[1][14]\ ) + ( GND ) + ( \Add51~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_capy[1][14]\,
	cin => \Add51~34_cout\,
	sumout => \Add51~21_sumout\);

-- Location: MLABCELL_X82_Y29_N51
\capym~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \capym~27_combout\ = ( \Add51~21_sumout\ & ( \capy[1][14]\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capy[1][14]\,
	dataf => \ALT_INV_Add51~21_sumout\,
	combout => \capym~27_combout\);

-- Location: FF_X83_Y29_N32
\capym[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \capym~27_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[1][7]~q\);

-- Location: LABCELL_X85_Y28_N9
\Add50~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add50~5_sumout\ = SUM(( \capy[0][3]\ ) + ( GND ) + ( \Add50~2\ ))
-- \Add50~6\ = CARRY(( \capy[0][3]\ ) + ( GND ) + ( \Add50~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[0][3]\,
	cin => \Add50~2\,
	sumout => \Add50~5_sumout\,
	cout => \Add50~6\);

-- Location: LABCELL_X85_Y28_N12
\Add50~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add50~17_sumout\ = SUM(( \capy[0][4]\ ) + ( GND ) + ( \Add50~6\ ))
-- \Add50~18\ = CARRY(( \capy[0][4]\ ) + ( GND ) + ( \Add50~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[0][4]\,
	cin => \Add50~6\,
	sumout => \Add50~17_sumout\,
	cout => \Add50~18\);

-- Location: LABCELL_X85_Y28_N15
\Add50~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add50~21_sumout\ = SUM(( \capy[0][5]\ ) + ( GND ) + ( \Add50~18\ ))
-- \Add50~22\ = CARRY(( \capy[0][5]\ ) + ( GND ) + ( \Add50~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_capy[0][5]\,
	cin => \Add50~18\,
	sumout => \Add50~21_sumout\,
	cout => \Add50~22\);

-- Location: LABCELL_X85_Y28_N18
\Add50~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add50~25_sumout\ = SUM(( \capy[0][6]\ ) + ( GND ) + ( \Add50~22\ ))
-- \Add50~26\ = CARRY(( \capy[0][6]\ ) + ( GND ) + ( \Add50~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_capy[0][6]\,
	cin => \Add50~22\,
	sumout => \Add50~25_sumout\,
	cout => \Add50~26\);

-- Location: LABCELL_X85_Y28_N21
\Add50~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add50~58_cout\ = CARRY(( \capy[0][7]\ ) + ( GND ) + ( \Add50~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[0][7]\,
	cin => \Add50~26\,
	cout => \Add50~58_cout\);

-- Location: LABCELL_X85_Y28_N24
\Add50~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add50~54_cout\ = CARRY(( \capy[0][8]\ ) + ( VCC ) + ( \Add50~58_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[0][8]\,
	cin => \Add50~58_cout\,
	cout => \Add50~54_cout\);

-- Location: LABCELL_X85_Y28_N27
\Add50~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add50~50_cout\ = CARRY(( \capy[0][9]\ ) + ( GND ) + ( \Add50~54_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capy[0][9]\,
	cin => \Add50~54_cout\,
	cout => \Add50~50_cout\);

-- Location: LABCELL_X85_Y28_N30
\Add50~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add50~46_cout\ = CARRY(( \capy[0][10]\ ) + ( GND ) + ( \Add50~50_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[0][10]\,
	cin => \Add50~50_cout\,
	cout => \Add50~46_cout\);

-- Location: LABCELL_X85_Y28_N33
\Add50~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add50~42_cout\ = CARRY(( \capy[0][11]\ ) + ( GND ) + ( \Add50~46_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[0][11]\,
	cin => \Add50~46_cout\,
	cout => \Add50~42_cout\);

-- Location: LABCELL_X85_Y28_N36
\Add50~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add50~38_cout\ = CARRY(( \capy[0][12]\ ) + ( GND ) + ( \Add50~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[0][12]\,
	cin => \Add50~42_cout\,
	cout => \Add50~38_cout\);

-- Location: LABCELL_X85_Y28_N39
\Add50~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add50~34_cout\ = CARRY(( \capy[0][13]\ ) + ( GND ) + ( \Add50~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[0][13]\,
	cin => \Add50~38_cout\,
	cout => \Add50~34_cout\);

-- Location: LABCELL_X85_Y28_N42
\Add50~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add50~29_sumout\ = SUM(( \capy[0][14]\ ) + ( GND ) + ( \Add50~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_capy[0][14]\,
	cin => \Add50~34_cout\,
	sumout => \Add50~29_sumout\);

-- Location: MLABCELL_X82_Y29_N42
\capym~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \capym~25_combout\ = ( \Add50~29_sumout\ & ( \capy[0][14]\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capy[0][14]\,
	dataf => \ALT_INV_Add50~29_sumout\,
	combout => \capym~25_combout\);

-- Location: FF_X82_Y29_N43
\capym[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \capym~25_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[0][7]~q\);

-- Location: LABCELL_X85_Y22_N0
\Add40~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add40~1_sumout\ = SUM(( \x[0][0]~q\ ) + ( \Add12~1_sumout\ ) + ( !VCC ))
-- \Add40~2\ = CARRY(( \x[0][0]~q\ ) + ( \Add12~1_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add12~1_sumout\,
	datad => \ALT_INV_x[0][0]~q\,
	cin => GND,
	sumout => \Add40~1_sumout\,
	cout => \Add40~2\);

-- Location: LABCELL_X85_Y22_N3
\Add40~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add40~5_sumout\ = SUM(( \Add12~5_sumout\ ) + ( \x[0][1]~q\ ) + ( \Add40~2\ ))
-- \Add40~6\ = CARRY(( \Add12~5_sumout\ ) + ( \x[0][1]~q\ ) + ( \Add40~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[0][1]~q\,
	datad => \ALT_INV_Add12~5_sumout\,
	cin => \Add40~2\,
	sumout => \Add40~5_sumout\,
	cout => \Add40~6\);

-- Location: LABCELL_X85_Y22_N6
\Add40~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add40~9_sumout\ = SUM(( \Add12~9_sumout\ ) + ( \x[0][2]~q\ ) + ( \Add40~6\ ))
-- \Add40~10\ = CARRY(( \Add12~9_sumout\ ) + ( \x[0][2]~q\ ) + ( \Add40~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add12~9_sumout\,
	dataf => \ALT_INV_x[0][2]~q\,
	cin => \Add40~6\,
	sumout => \Add40~9_sumout\,
	cout => \Add40~10\);

-- Location: LABCELL_X85_Y22_N9
\Add40~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add40~13_sumout\ = SUM(( \x[0][3]~q\ ) + ( \Add12~13_sumout\ ) + ( \Add40~10\ ))
-- \Add40~14\ = CARRY(( \x[0][3]~q\ ) + ( \Add12~13_sumout\ ) + ( \Add40~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add12~13_sumout\,
	datad => \ALT_INV_x[0][3]~q\,
	cin => \Add40~10\,
	sumout => \Add40~13_sumout\,
	cout => \Add40~14\);

-- Location: MLABCELL_X84_Y22_N0
\Add40~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add40~33_sumout\ = SUM(( !\x[0][4]~q\ $ (!\x[3][0]~q\ $ (\Add12~17_sumout\)) ) + ( !VCC ) + ( !VCC ))
-- \Add40~34\ = CARRY(( !\x[0][4]~q\ $ (!\x[3][0]~q\ $ (\Add12~17_sumout\)) ) + ( !VCC ) + ( !VCC ))
-- \Add40~35\ = SHARE((!\x[0][4]~q\ & (\x[3][0]~q\ & \Add12~17_sumout\)) # (\x[0][4]~q\ & ((\Add12~17_sumout\) # (\x[3][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[0][4]~q\,
	datac => \ALT_INV_x[3][0]~q\,
	datad => \ALT_INV_Add12~17_sumout\,
	cin => GND,
	sharein => GND,
	sumout => \Add40~33_sumout\,
	cout => \Add40~34\,
	shareout => \Add40~35\);

-- Location: LABCELL_X85_Y22_N12
\Add40~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add40~17_sumout\ = SUM(( \Add27~1_sumout\ ) + ( \Add40~33_sumout\ ) + ( \Add40~14\ ))
-- \Add40~18\ = CARRY(( \Add27~1_sumout\ ) + ( \Add40~33_sumout\ ) + ( \Add40~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add40~33_sumout\,
	datac => \ALT_INV_Add27~1_sumout\,
	cin => \Add40~14\,
	sumout => \Add40~17_sumout\,
	cout => \Add40~18\);

-- Location: MLABCELL_X84_Y22_N3
\Add40~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add40~37_sumout\ = SUM(( !\x[0][5]~q\ $ (!\x[3][1]~q\ $ (\Add12~21_sumout\)) ) + ( \Add40~35\ ) + ( \Add40~34\ ))
-- \Add40~38\ = CARRY(( !\x[0][5]~q\ $ (!\x[3][1]~q\ $ (\Add12~21_sumout\)) ) + ( \Add40~35\ ) + ( \Add40~34\ ))
-- \Add40~39\ = SHARE((!\x[0][5]~q\ & (\x[3][1]~q\ & \Add12~21_sumout\)) # (\x[0][5]~q\ & ((\Add12~21_sumout\) # (\x[3][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x[0][5]~q\,
	datac => \ALT_INV_x[3][1]~q\,
	datad => \ALT_INV_Add12~21_sumout\,
	cin => \Add40~34\,
	sharein => \Add40~35\,
	sumout => \Add40~37_sumout\,
	cout => \Add40~38\,
	shareout => \Add40~39\);

-- Location: LABCELL_X85_Y22_N15
\Add40~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add40~21_sumout\ = SUM(( \Add27~5_sumout\ ) + ( \Add40~37_sumout\ ) + ( \Add40~18\ ))
-- \Add40~22\ = CARRY(( \Add27~5_sumout\ ) + ( \Add40~37_sumout\ ) + ( \Add40~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add40~37_sumout\,
	datad => \ALT_INV_Add27~5_sumout\,
	cin => \Add40~18\,
	sumout => \Add40~21_sumout\,
	cout => \Add40~22\);

-- Location: FF_X84_Y22_N59
\x[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[1][6]~DUPLICATE_q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_load~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[0][6]~q\);

-- Location: MLABCELL_X84_Y22_N6
\Add40~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add40~41_sumout\ = SUM(( !\x[0][6]~q\ $ (!\Add12~25_sumout\ $ (\x[3][2]~q\)) ) + ( \Add40~39\ ) + ( \Add40~38\ ))
-- \Add40~42\ = CARRY(( !\x[0][6]~q\ $ (!\Add12~25_sumout\ $ (\x[3][2]~q\)) ) + ( \Add40~39\ ) + ( \Add40~38\ ))
-- \Add40~43\ = SHARE((!\x[0][6]~q\ & (\Add12~25_sumout\ & \x[3][2]~q\)) # (\x[0][6]~q\ & ((\x[3][2]~q\) # (\Add12~25_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x[0][6]~q\,
	datac => \ALT_INV_Add12~25_sumout\,
	datad => \ALT_INV_x[3][2]~q\,
	cin => \Add40~38\,
	sharein => \Add40~39\,
	sumout => \Add40~41_sumout\,
	cout => \Add40~42\,
	shareout => \Add40~43\);

-- Location: LABCELL_X85_Y22_N18
\Add40~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add40~25_sumout\ = SUM(( \Add40~41_sumout\ ) + ( \Add27~9_sumout\ ) + ( \Add40~22\ ))
-- \Add40~26\ = CARRY(( \Add40~41_sumout\ ) + ( \Add27~9_sumout\ ) + ( \Add40~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add27~9_sumout\,
	datad => \ALT_INV_Add40~41_sumout\,
	cin => \Add40~22\,
	sumout => \Add40~25_sumout\,
	cout => \Add40~26\);

-- Location: MLABCELL_X84_Y22_N9
\Add40~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add40~93_sumout\ = SUM(( !\x[0][7]~q\ $ (!\x[3][3]~q\ $ (\Add12~33_sumout\)) ) + ( \Add40~43\ ) + ( \Add40~42\ ))
-- \Add40~94\ = CARRY(( !\x[0][7]~q\ $ (!\x[3][3]~q\ $ (\Add12~33_sumout\)) ) + ( \Add40~43\ ) + ( \Add40~42\ ))
-- \Add40~95\ = SHARE((!\x[0][7]~q\ & (\x[3][3]~q\ & \Add12~33_sumout\)) # (\x[0][7]~q\ & ((\Add12~33_sumout\) # (\x[3][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[0][7]~q\,
	datac => \ALT_INV_x[3][3]~q\,
	datad => \ALT_INV_Add12~33_sumout\,
	cin => \Add40~42\,
	sharein => \Add40~43\,
	sumout => \Add40~93_sumout\,
	cout => \Add40~94\,
	shareout => \Add40~95\);

-- Location: MLABCELL_X84_Y22_N12
\Add40~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add40~85_sumout\ = SUM(( !\x[0][7]~q\ $ (!\x[3][4]~q\ $ (\Add12~29_sumout\)) ) + ( \Add40~95\ ) + ( \Add40~94\ ))
-- \Add40~86\ = CARRY(( !\x[0][7]~q\ $ (!\x[3][4]~q\ $ (\Add12~29_sumout\)) ) + ( \Add40~95\ ) + ( \Add40~94\ ))
-- \Add40~87\ = SHARE((!\x[0][7]~q\ & (\x[3][4]~q\ & \Add12~29_sumout\)) # (\x[0][7]~q\ & ((\Add12~29_sumout\) # (\x[3][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[0][7]~q\,
	datac => \ALT_INV_x[3][4]~q\,
	datad => \ALT_INV_Add12~29_sumout\,
	cin => \Add40~94\,
	sharein => \Add40~95\,
	sumout => \Add40~85_sumout\,
	cout => \Add40~86\,
	shareout => \Add40~87\);

-- Location: MLABCELL_X84_Y22_N15
\Add40~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add40~77_sumout\ = SUM(( !\x[0][7]~q\ $ (!\x[3][5]~q\ $ (\Add12~29_sumout\)) ) + ( \Add40~87\ ) + ( \Add40~86\ ))
-- \Add40~78\ = CARRY(( !\x[0][7]~q\ $ (!\x[3][5]~q\ $ (\Add12~29_sumout\)) ) + ( \Add40~87\ ) + ( \Add40~86\ ))
-- \Add40~79\ = SHARE((!\x[0][7]~q\ & (\x[3][5]~q\ & \Add12~29_sumout\)) # (\x[0][7]~q\ & ((\Add12~29_sumout\) # (\x[3][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[0][7]~q\,
	datac => \ALT_INV_x[3][5]~q\,
	datad => \ALT_INV_Add12~29_sumout\,
	cin => \Add40~86\,
	sharein => \Add40~87\,
	sumout => \Add40~77_sumout\,
	cout => \Add40~78\,
	shareout => \Add40~79\);

-- Location: MLABCELL_X84_Y22_N18
\Add40~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add40~69_sumout\ = SUM(( !\x[0][7]~q\ $ (!\x[3][6]~q\ $ (\Add12~29_sumout\)) ) + ( \Add40~79\ ) + ( \Add40~78\ ))
-- \Add40~70\ = CARRY(( !\x[0][7]~q\ $ (!\x[3][6]~q\ $ (\Add12~29_sumout\)) ) + ( \Add40~79\ ) + ( \Add40~78\ ))
-- \Add40~71\ = SHARE((!\x[0][7]~q\ & (\x[3][6]~q\ & \Add12~29_sumout\)) # (\x[0][7]~q\ & ((\Add12~29_sumout\) # (\x[3][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[0][7]~q\,
	datac => \ALT_INV_x[3][6]~q\,
	datad => \ALT_INV_Add12~29_sumout\,
	cin => \Add40~78\,
	sharein => \Add40~79\,
	sumout => \Add40~69_sumout\,
	cout => \Add40~70\,
	shareout => \Add40~71\);

-- Location: MLABCELL_X84_Y22_N21
\Add40~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add40~61_sumout\ = SUM(( !\x[0][7]~q\ $ (!\x[3][7]~q\ $ (\Add12~29_sumout\)) ) + ( \Add40~71\ ) + ( \Add40~70\ ))
-- \Add40~62\ = CARRY(( !\x[0][7]~q\ $ (!\x[3][7]~q\ $ (\Add12~29_sumout\)) ) + ( \Add40~71\ ) + ( \Add40~70\ ))
-- \Add40~63\ = SHARE((!\x[0][7]~q\ & (\x[3][7]~q\ & \Add12~29_sumout\)) # (\x[0][7]~q\ & ((\Add12~29_sumout\) # (\x[3][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[0][7]~q\,
	datac => \ALT_INV_x[3][7]~q\,
	datad => \ALT_INV_Add12~29_sumout\,
	cin => \Add40~70\,
	sharein => \Add40~71\,
	sumout => \Add40~61_sumout\,
	cout => \Add40~62\,
	shareout => \Add40~63\);

-- Location: MLABCELL_X84_Y22_N24
\Add40~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add40~53_sumout\ = SUM(( !\x[0][7]~q\ $ (!\x[3][7]~q\ $ (\Add12~29_sumout\)) ) + ( \Add40~63\ ) + ( \Add40~62\ ))
-- \Add40~54\ = CARRY(( !\x[0][7]~q\ $ (!\x[3][7]~q\ $ (\Add12~29_sumout\)) ) + ( \Add40~63\ ) + ( \Add40~62\ ))
-- \Add40~55\ = SHARE((!\x[0][7]~q\ & (\x[3][7]~q\ & \Add12~29_sumout\)) # (\x[0][7]~q\ & ((\Add12~29_sumout\) # (\x[3][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010111011100000000000000000110011010011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[0][7]~q\,
	datab => \ALT_INV_x[3][7]~q\,
	datad => \ALT_INV_Add12~29_sumout\,
	cin => \Add40~62\,
	sharein => \Add40~63\,
	sumout => \Add40~53_sumout\,
	cout => \Add40~54\,
	shareout => \Add40~55\);

-- Location: MLABCELL_X84_Y22_N27
\Add40~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add40~45_sumout\ = SUM(( !\x[0][7]~q\ $ (!\x[3][7]~q\ $ (\Add12~29_sumout\)) ) + ( \Add40~55\ ) + ( \Add40~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000110011010011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[0][7]~q\,
	datab => \ALT_INV_x[3][7]~q\,
	datad => \ALT_INV_Add12~29_sumout\,
	cin => \Add40~54\,
	sharein => \Add40~55\,
	sumout => \Add40~45_sumout\);

-- Location: LABCELL_X85_Y22_N21
\Add40~98\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add40~98_cout\ = CARRY(( \Add27~17_sumout\ ) + ( \Add40~93_sumout\ ) + ( \Add40~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add40~93_sumout\,
	datad => \ALT_INV_Add27~17_sumout\,
	cin => \Add40~26\,
	cout => \Add40~98_cout\);

-- Location: LABCELL_X85_Y22_N24
\Add40~90\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add40~90_cout\ = CARRY(( \Add40~85_sumout\ ) + ( \Add27~21_sumout\ ) + ( \Add40~98_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add27~21_sumout\,
	datad => \ALT_INV_Add40~85_sumout\,
	cin => \Add40~98_cout\,
	cout => \Add40~90_cout\);

-- Location: LABCELL_X85_Y22_N27
\Add40~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add40~82_cout\ = CARRY(( \Add27~25_sumout\ ) + ( \Add40~77_sumout\ ) + ( \Add40~90_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add40~77_sumout\,
	datad => \ALT_INV_Add27~25_sumout\,
	cin => \Add40~90_cout\,
	cout => \Add40~82_cout\);

-- Location: LABCELL_X85_Y22_N30
\Add40~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add40~74_cout\ = CARRY(( \Add27~29_sumout\ ) + ( \Add40~69_sumout\ ) + ( \Add40~82_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add40~69_sumout\,
	datac => \ALT_INV_Add27~29_sumout\,
	cin => \Add40~82_cout\,
	cout => \Add40~74_cout\);

-- Location: LABCELL_X85_Y22_N33
\Add40~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add40~66_cout\ = CARRY(( \Add40~61_sumout\ ) + ( \Add27~33_sumout\ ) + ( \Add40~74_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add27~33_sumout\,
	datad => \ALT_INV_Add40~61_sumout\,
	cin => \Add40~74_cout\,
	cout => \Add40~66_cout\);

-- Location: LABCELL_X85_Y22_N36
\Add40~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add40~58_cout\ = CARRY(( \Add27~13_sumout\ ) + ( \Add40~53_sumout\ ) + ( \Add40~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add40~53_sumout\,
	datac => \ALT_INV_Add27~13_sumout\,
	cin => \Add40~66_cout\,
	cout => \Add40~58_cout\);

-- Location: LABCELL_X85_Y22_N39
\Add40~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add40~50_cout\ = CARRY(( \Add40~45_sumout\ ) + ( \Add27~13_sumout\ ) + ( \Add40~58_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add27~13_sumout\,
	datad => \ALT_INV_Add40~45_sumout\,
	cin => \Add40~58_cout\,
	cout => \Add40~50_cout\);

-- Location: LABCELL_X85_Y22_N42
\Add40~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add40~29_sumout\ = SUM(( \Add40~45_sumout\ ) + ( \Add27~13_sumout\ ) + ( \Add40~50_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add27~13_sumout\,
	datad => \ALT_INV_Add40~45_sumout\,
	cin => \Add40~50_cout\,
	sumout => \Add40~29_sumout\);

-- Location: MLABCELL_X87_Y22_N0
\Add43~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add43~1_sumout\ = SUM(( \h[0][0]~DUPLICATE_q\ ) + ( \Add17~1_sumout\ ) + ( !VCC ))
-- \Add43~2\ = CARRY(( \h[0][0]~DUPLICATE_q\ ) + ( \Add17~1_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add17~1_sumout\,
	datad => \ALT_INV_h[0][0]~DUPLICATE_q\,
	cin => GND,
	sumout => \Add43~1_sumout\,
	cout => \Add43~2\);

-- Location: MLABCELL_X87_Y22_N3
\Add43~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add43~5_sumout\ = SUM(( \Add17~5_sumout\ ) + ( \h[0][1]~q\ ) + ( \Add43~2\ ))
-- \Add43~6\ = CARRY(( \Add17~5_sumout\ ) + ( \h[0][1]~q\ ) + ( \Add43~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_h[0][1]~q\,
	datac => \ALT_INV_Add17~5_sumout\,
	cin => \Add43~2\,
	sumout => \Add43~5_sumout\,
	cout => \Add43~6\);

-- Location: MLABCELL_X87_Y22_N6
\Add43~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add43~9_sumout\ = SUM(( \Add17~9_sumout\ ) + ( \h[0][2]~q\ ) + ( \Add43~6\ ))
-- \Add43~10\ = CARRY(( \Add17~9_sumout\ ) + ( \h[0][2]~q\ ) + ( \Add43~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_h[0][2]~q\,
	datad => \ALT_INV_Add17~9_sumout\,
	cin => \Add43~6\,
	sumout => \Add43~9_sumout\,
	cout => \Add43~10\);

-- Location: MLABCELL_X87_Y22_N9
\Add43~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add43~13_sumout\ = SUM(( \Add17~13_sumout\ ) + ( \h[0][3]~q\ ) + ( \Add43~10\ ))
-- \Add43~14\ = CARRY(( \Add17~13_sumout\ ) + ( \h[0][3]~q\ ) + ( \Add43~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_h[0][3]~q\,
	datad => \ALT_INV_Add17~13_sumout\,
	cin => \Add43~10\,
	sumout => \Add43~13_sumout\,
	cout => \Add43~14\);

-- Location: LABCELL_X88_Y22_N0
\Add43~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add43~33_sumout\ = SUM(( !\h[0][4]~DUPLICATE_q\ $ (!\h[3][0]~q\ $ (\Add17~17_sumout\)) ) + ( !VCC ) + ( !VCC ))
-- \Add43~34\ = CARRY(( !\h[0][4]~DUPLICATE_q\ $ (!\h[3][0]~q\ $ (\Add17~17_sumout\)) ) + ( !VCC ) + ( !VCC ))
-- \Add43~35\ = SHARE((!\h[0][4]~DUPLICATE_q\ & (\h[3][0]~q\ & \Add17~17_sumout\)) # (\h[0][4]~DUPLICATE_q\ & ((\Add17~17_sumout\) # (\h[3][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_h[0][4]~DUPLICATE_q\,
	datac => \ALT_INV_h[3][0]~q\,
	datad => \ALT_INV_Add17~17_sumout\,
	cin => GND,
	sharein => GND,
	sumout => \Add43~33_sumout\,
	cout => \Add43~34\,
	shareout => \Add43~35\);

-- Location: MLABCELL_X87_Y22_N12
\Add43~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add43~17_sumout\ = SUM(( \Add43~33_sumout\ ) + ( \Add31~1_sumout\ ) + ( \Add43~14\ ))
-- \Add43~18\ = CARRY(( \Add43~33_sumout\ ) + ( \Add31~1_sumout\ ) + ( \Add43~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add31~1_sumout\,
	datad => \ALT_INV_Add43~33_sumout\,
	cin => \Add43~14\,
	sumout => \Add43~17_sumout\,
	cout => \Add43~18\);

-- Location: LABCELL_X88_Y22_N3
\Add43~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add43~37_sumout\ = SUM(( !\h[3][1]~q\ $ (!\Add17~21_sumout\ $ (\h[0][5]~q\)) ) + ( \Add43~35\ ) + ( \Add43~34\ ))
-- \Add43~38\ = CARRY(( !\h[3][1]~q\ $ (!\Add17~21_sumout\ $ (\h[0][5]~q\)) ) + ( \Add43~35\ ) + ( \Add43~34\ ))
-- \Add43~39\ = SHARE((!\h[3][1]~q\ & (\Add17~21_sumout\ & \h[0][5]~q\)) # (\h[3][1]~q\ & ((\h[0][5]~q\) # (\Add17~21_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_h[3][1]~q\,
	datac => \ALT_INV_Add17~21_sumout\,
	datad => \ALT_INV_h[0][5]~q\,
	cin => \Add43~34\,
	sharein => \Add43~35\,
	sumout => \Add43~37_sumout\,
	cout => \Add43~38\,
	shareout => \Add43~39\);

-- Location: MLABCELL_X87_Y22_N15
\Add43~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add43~21_sumout\ = SUM(( \Add31~5_sumout\ ) + ( \Add43~37_sumout\ ) + ( \Add43~18\ ))
-- \Add43~22\ = CARRY(( \Add31~5_sumout\ ) + ( \Add43~37_sumout\ ) + ( \Add43~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add43~37_sumout\,
	datad => \ALT_INV_Add31~5_sumout\,
	cin => \Add43~18\,
	sumout => \Add43~21_sumout\,
	cout => \Add43~22\);

-- Location: LABCELL_X88_Y22_N6
\Add43~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add43~41_sumout\ = SUM(( !\h[0][6]~q\ $ (!\Add17~25_sumout\ $ (\h[3][2]~q\)) ) + ( \Add43~39\ ) + ( \Add43~38\ ))
-- \Add43~42\ = CARRY(( !\h[0][6]~q\ $ (!\Add17~25_sumout\ $ (\h[3][2]~q\)) ) + ( \Add43~39\ ) + ( \Add43~38\ ))
-- \Add43~43\ = SHARE((!\h[0][6]~q\ & (\Add17~25_sumout\ & \h[3][2]~q\)) # (\h[0][6]~q\ & ((\h[3][2]~q\) # (\Add17~25_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_h[0][6]~q\,
	datac => \ALT_INV_Add17~25_sumout\,
	datad => \ALT_INV_h[3][2]~q\,
	cin => \Add43~38\,
	sharein => \Add43~39\,
	sumout => \Add43~41_sumout\,
	cout => \Add43~42\,
	shareout => \Add43~43\);

-- Location: MLABCELL_X87_Y22_N18
\Add43~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add43~25_sumout\ = SUM(( \Add31~9_sumout\ ) + ( \Add43~41_sumout\ ) + ( \Add43~22\ ))
-- \Add43~26\ = CARRY(( \Add31~9_sumout\ ) + ( \Add43~41_sumout\ ) + ( \Add43~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add43~41_sumout\,
	datad => \ALT_INV_Add31~9_sumout\,
	cin => \Add43~22\,
	sumout => \Add43~25_sumout\,
	cout => \Add43~26\);

-- Location: LABCELL_X88_Y22_N9
\Add43~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add43~93_sumout\ = SUM(( !\h[3][3]~q\ $ (!\Add17~33_sumout\ $ (\h[0][7]~q\)) ) + ( \Add43~43\ ) + ( \Add43~42\ ))
-- \Add43~94\ = CARRY(( !\h[3][3]~q\ $ (!\Add17~33_sumout\ $ (\h[0][7]~q\)) ) + ( \Add43~43\ ) + ( \Add43~42\ ))
-- \Add43~95\ = SHARE((!\h[3][3]~q\ & (\Add17~33_sumout\ & \h[0][7]~q\)) # (\h[3][3]~q\ & ((\h[0][7]~q\) # (\Add17~33_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_h[3][3]~q\,
	datac => \ALT_INV_Add17~33_sumout\,
	datad => \ALT_INV_h[0][7]~q\,
	cin => \Add43~42\,
	sharein => \Add43~43\,
	sumout => \Add43~93_sumout\,
	cout => \Add43~94\,
	shareout => \Add43~95\);

-- Location: LABCELL_X88_Y22_N12
\Add43~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add43~85_sumout\ = SUM(( !\h[0][7]~q\ $ (!\h[3][4]~q\ $ (\Add17~29_sumout\)) ) + ( \Add43~95\ ) + ( \Add43~94\ ))
-- \Add43~86\ = CARRY(( !\h[0][7]~q\ $ (!\h[3][4]~q\ $ (\Add17~29_sumout\)) ) + ( \Add43~95\ ) + ( \Add43~94\ ))
-- \Add43~87\ = SHARE((!\h[0][7]~q\ & (\h[3][4]~q\ & \Add17~29_sumout\)) # (\h[0][7]~q\ & ((\Add17~29_sumout\) # (\h[3][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_h[0][7]~q\,
	datac => \ALT_INV_h[3][4]~q\,
	datad => \ALT_INV_Add17~29_sumout\,
	cin => \Add43~94\,
	sharein => \Add43~95\,
	sumout => \Add43~85_sumout\,
	cout => \Add43~86\,
	shareout => \Add43~87\);

-- Location: LABCELL_X88_Y22_N15
\Add43~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add43~77_sumout\ = SUM(( !\h[0][7]~q\ $ (!\h[3][5]~q\ $ (\Add17~29_sumout\)) ) + ( \Add43~87\ ) + ( \Add43~86\ ))
-- \Add43~78\ = CARRY(( !\h[0][7]~q\ $ (!\h[3][5]~q\ $ (\Add17~29_sumout\)) ) + ( \Add43~87\ ) + ( \Add43~86\ ))
-- \Add43~79\ = SHARE((!\h[0][7]~q\ & (\h[3][5]~q\ & \Add17~29_sumout\)) # (\h[0][7]~q\ & ((\Add17~29_sumout\) # (\h[3][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_h[0][7]~q\,
	datac => \ALT_INV_h[3][5]~q\,
	datad => \ALT_INV_Add17~29_sumout\,
	cin => \Add43~86\,
	sharein => \Add43~87\,
	sumout => \Add43~77_sumout\,
	cout => \Add43~78\,
	shareout => \Add43~79\);

-- Location: LABCELL_X88_Y22_N18
\Add43~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add43~69_sumout\ = SUM(( !\h[0][7]~q\ $ (!\h[3][6]~q\ $ (\Add17~29_sumout\)) ) + ( \Add43~79\ ) + ( \Add43~78\ ))
-- \Add43~70\ = CARRY(( !\h[0][7]~q\ $ (!\h[3][6]~q\ $ (\Add17~29_sumout\)) ) + ( \Add43~79\ ) + ( \Add43~78\ ))
-- \Add43~71\ = SHARE((!\h[0][7]~q\ & (\h[3][6]~q\ & \Add17~29_sumout\)) # (\h[0][7]~q\ & ((\Add17~29_sumout\) # (\h[3][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_h[0][7]~q\,
	datac => \ALT_INV_h[3][6]~q\,
	datad => \ALT_INV_Add17~29_sumout\,
	cin => \Add43~78\,
	sharein => \Add43~79\,
	sumout => \Add43~69_sumout\,
	cout => \Add43~70\,
	shareout => \Add43~71\);

-- Location: LABCELL_X88_Y22_N21
\Add43~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add43~61_sumout\ = SUM(( !\h[0][7]~q\ $ (!\h[3][7]~q\ $ (\Add17~29_sumout\)) ) + ( \Add43~71\ ) + ( \Add43~70\ ))
-- \Add43~62\ = CARRY(( !\h[0][7]~q\ $ (!\h[3][7]~q\ $ (\Add17~29_sumout\)) ) + ( \Add43~71\ ) + ( \Add43~70\ ))
-- \Add43~63\ = SHARE((!\h[0][7]~q\ & (\h[3][7]~q\ & \Add17~29_sumout\)) # (\h[0][7]~q\ & ((\Add17~29_sumout\) # (\h[3][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_h[0][7]~q\,
	datac => \ALT_INV_h[3][7]~q\,
	datad => \ALT_INV_Add17~29_sumout\,
	cin => \Add43~70\,
	sharein => \Add43~71\,
	sumout => \Add43~61_sumout\,
	cout => \Add43~62\,
	shareout => \Add43~63\);

-- Location: LABCELL_X88_Y22_N24
\Add43~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add43~53_sumout\ = SUM(( !\h[0][7]~q\ $ (!\h[3][7]~q\ $ (\Add17~29_sumout\)) ) + ( \Add43~63\ ) + ( \Add43~62\ ))
-- \Add43~54\ = CARRY(( !\h[0][7]~q\ $ (!\h[3][7]~q\ $ (\Add17~29_sumout\)) ) + ( \Add43~63\ ) + ( \Add43~62\ ))
-- \Add43~55\ = SHARE((!\h[0][7]~q\ & (\h[3][7]~q\ & \Add17~29_sumout\)) # (\h[0][7]~q\ & ((\Add17~29_sumout\) # (\h[3][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_h[0][7]~q\,
	datac => \ALT_INV_h[3][7]~q\,
	datad => \ALT_INV_Add17~29_sumout\,
	cin => \Add43~62\,
	sharein => \Add43~63\,
	sumout => \Add43~53_sumout\,
	cout => \Add43~54\,
	shareout => \Add43~55\);

-- Location: LABCELL_X88_Y22_N27
\Add43~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add43~45_sumout\ = SUM(( !\h[0][7]~q\ $ (!\h[3][7]~q\ $ (\Add17~29_sumout\)) ) + ( \Add43~55\ ) + ( \Add43~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_h[0][7]~q\,
	datac => \ALT_INV_h[3][7]~q\,
	datad => \ALT_INV_Add17~29_sumout\,
	cin => \Add43~54\,
	sharein => \Add43~55\,
	sumout => \Add43~45_sumout\);

-- Location: MLABCELL_X87_Y22_N21
\Add43~98\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add43~98_cout\ = CARRY(( \Add43~93_sumout\ ) + ( \Add31~17_sumout\ ) + ( \Add43~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add31~17_sumout\,
	datad => \ALT_INV_Add43~93_sumout\,
	cin => \Add43~26\,
	cout => \Add43~98_cout\);

-- Location: MLABCELL_X87_Y22_N24
\Add43~90\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add43~90_cout\ = CARRY(( \Add31~21_sumout\ ) + ( \Add43~85_sumout\ ) + ( \Add43~98_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add43~85_sumout\,
	datac => \ALT_INV_Add31~21_sumout\,
	cin => \Add43~98_cout\,
	cout => \Add43~90_cout\);

-- Location: MLABCELL_X87_Y22_N27
\Add43~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add43~82_cout\ = CARRY(( \Add43~77_sumout\ ) + ( \Add31~25_sumout\ ) + ( \Add43~90_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add31~25_sumout\,
	datad => \ALT_INV_Add43~77_sumout\,
	cin => \Add43~90_cout\,
	cout => \Add43~82_cout\);

-- Location: MLABCELL_X87_Y22_N30
\Add43~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add43~74_cout\ = CARRY(( \Add31~29_sumout\ ) + ( \Add43~69_sumout\ ) + ( \Add43~82_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add43~69_sumout\,
	datad => \ALT_INV_Add31~29_sumout\,
	cin => \Add43~82_cout\,
	cout => \Add43~74_cout\);

-- Location: MLABCELL_X87_Y22_N33
\Add43~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add43~66_cout\ = CARRY(( \Add43~61_sumout\ ) + ( \Add31~33_sumout\ ) + ( \Add43~74_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add31~33_sumout\,
	datad => \ALT_INV_Add43~61_sumout\,
	cin => \Add43~74_cout\,
	cout => \Add43~66_cout\);

-- Location: MLABCELL_X87_Y22_N36
\Add43~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add43~58_cout\ = CARRY(( \Add31~13_sumout\ ) + ( \Add43~53_sumout\ ) + ( \Add43~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add43~53_sumout\,
	datad => \ALT_INV_Add31~13_sumout\,
	cin => \Add43~66_cout\,
	cout => \Add43~58_cout\);

-- Location: MLABCELL_X87_Y22_N39
\Add43~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add43~50_cout\ = CARRY(( \Add43~45_sumout\ ) + ( \Add31~13_sumout\ ) + ( \Add43~58_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add31~13_sumout\,
	datad => \ALT_INV_Add43~45_sumout\,
	cin => \Add43~58_cout\,
	cout => \Add43~50_cout\);

-- Location: MLABCELL_X87_Y22_N42
\Add43~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add43~29_sumout\ = SUM(( \Add43~45_sumout\ ) + ( \Add31~13_sumout\ ) + ( \Add43~50_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add31~13_sumout\,
	datad => \ALT_INV_Add43~45_sumout\,
	cin => \Add43~50_cout\,
	sumout => \Add43~29_sumout\);

-- Location: DSP_X86_Y22_N0
\Mult3~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "0",
	ax_width => 9,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 9,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "0",
	bx_width => 9,
	by_clock => "0",
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
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \Mult3~8_ACLR_bus\,
	clk => \Mult3~8_CLK_bus\,
	ena => \Mult3~8_ENA_bus\,
	ax => \Mult3~8_AX_bus\,
	ay => \Mult3~8_AY_bus\,
	bx => \Mult3~8_BX_bus\,
	by => \Mult3~8_BY_bus\,
	resulta => \Mult3~8_RESULTA_bus\);

-- Location: MLABCELL_X84_Y27_N0
\Add53~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add53~1_sumout\ = SUM(( \capy[3][0]\ ) + ( VCC ) + ( !VCC ))
-- \Add53~2\ = CARRY(( \capy[3][0]\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[3][0]\,
	cin => GND,
	sumout => \Add53~1_sumout\,
	cout => \Add53~2\);

-- Location: MLABCELL_X84_Y27_N3
\Add53~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add53~5_sumout\ = SUM(( \capy[3][1]\ ) + ( GND ) + ( \Add53~2\ ))
-- \Add53~6\ = CARRY(( \capy[3][1]\ ) + ( GND ) + ( \Add53~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[3][1]\,
	cin => \Add53~2\,
	sumout => \Add53~5_sumout\,
	cout => \Add53~6\);

-- Location: MLABCELL_X84_Y27_N6
\Add53~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add53~9_sumout\ = SUM(( \capy[3][2]\ ) + ( GND ) + ( \Add53~6\ ))
-- \Add53~10\ = CARRY(( \capy[3][2]\ ) + ( GND ) + ( \Add53~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[3][2]\,
	cin => \Add53~6\,
	sumout => \Add53~9_sumout\,
	cout => \Add53~10\);

-- Location: MLABCELL_X84_Y27_N9
\Add53~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add53~13_sumout\ = SUM(( \capy[3][3]\ ) + ( GND ) + ( \Add53~10\ ))
-- \Add53~14\ = CARRY(( \capy[3][3]\ ) + ( GND ) + ( \Add53~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[3][3]\,
	cin => \Add53~10\,
	sumout => \Add53~13_sumout\,
	cout => \Add53~14\);

-- Location: MLABCELL_X84_Y27_N12
\Add53~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add53~17_sumout\ = SUM(( \capy[3][4]\ ) + ( GND ) + ( \Add53~14\ ))
-- \Add53~18\ = CARRY(( \capy[3][4]\ ) + ( GND ) + ( \Add53~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[3][4]\,
	cin => \Add53~14\,
	sumout => \Add53~17_sumout\,
	cout => \Add53~18\);

-- Location: MLABCELL_X84_Y27_N15
\Add53~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add53~25_sumout\ = SUM(( \capy[3][5]\ ) + ( GND ) + ( \Add53~18\ ))
-- \Add53~26\ = CARRY(( \capy[3][5]\ ) + ( GND ) + ( \Add53~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[3][5]\,
	cin => \Add53~18\,
	sumout => \Add53~25_sumout\,
	cout => \Add53~26\);

-- Location: MLABCELL_X84_Y27_N18
\Add53~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add53~29_sumout\ = SUM(( \capy[3][6]\ ) + ( GND ) + ( \Add53~26\ ))
-- \Add53~30\ = CARRY(( \capy[3][6]\ ) + ( GND ) + ( \Add53~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[3][6]\,
	cin => \Add53~26\,
	sumout => \Add53~29_sumout\,
	cout => \Add53~30\);

-- Location: MLABCELL_X84_Y27_N21
\Add53~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add53~58_cout\ = CARRY(( \capy[3][7]\ ) + ( GND ) + ( \Add53~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capy[3][7]\,
	cin => \Add53~30\,
	cout => \Add53~58_cout\);

-- Location: MLABCELL_X84_Y27_N24
\Add53~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add53~54_cout\ = CARRY(( \capy[3][8]\ ) + ( VCC ) + ( \Add53~58_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_capy[3][8]\,
	cin => \Add53~58_cout\,
	cout => \Add53~54_cout\);

-- Location: MLABCELL_X84_Y27_N27
\Add53~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add53~50_cout\ = CARRY(( \capy[3][9]\ ) + ( GND ) + ( \Add53~54_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[3][9]\,
	cin => \Add53~54_cout\,
	cout => \Add53~50_cout\);

-- Location: MLABCELL_X84_Y27_N30
\Add53~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add53~46_cout\ = CARRY(( \capy[3][10]\ ) + ( GND ) + ( \Add53~50_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[3][10]\,
	cin => \Add53~50_cout\,
	cout => \Add53~46_cout\);

-- Location: MLABCELL_X84_Y27_N33
\Add53~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add53~42_cout\ = CARRY(( \capy[3][11]\ ) + ( GND ) + ( \Add53~46_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capy[3][11]\,
	cin => \Add53~46_cout\,
	cout => \Add53~42_cout\);

-- Location: MLABCELL_X84_Y27_N36
\Add53~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add53~38_cout\ = CARRY(( \capy[3][12]\ ) + ( GND ) + ( \Add53~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[3][12]\,
	cin => \Add53~42_cout\,
	cout => \Add53~38_cout\);

-- Location: MLABCELL_X84_Y27_N39
\Add53~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add53~34_cout\ = CARRY(( \capy[3][13]\ ) + ( GND ) + ( \Add53~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[3][13]\,
	cin => \Add53~38_cout\,
	cout => \Add53~34_cout\);

-- Location: MLABCELL_X84_Y27_N42
\Add53~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add53~21_sumout\ = SUM(( \capy[3][14]\ ) + ( GND ) + ( \Add53~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_capy[3][14]\,
	cin => \Add53~34_cout\,
	sumout => \Add53~21_sumout\);

-- Location: LABCELL_X83_Y27_N48
\capym~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \capym~7_combout\ = (\capy[3][14]\ & \Add53~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_capy[3][14]\,
	datad => \ALT_INV_Add53~21_sumout\,
	combout => \capym~7_combout\);

-- Location: FF_X83_Y27_N50
\capym[3][7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \capym~7_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[3][7]~DUPLICATE_q\);

-- Location: FF_X83_Y27_N49
\capym[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \capym~7_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[3][7]~q\);

-- Location: LABCELL_X83_Y27_N33
\capym~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \capym~9_combout\ = ( \Add53~29_sumout\ & ( (\capy[3][6]\) # (\capy[3][14]\) ) ) # ( !\Add53~29_sumout\ & ( (!\capy[3][14]\ & \capy[3][6]\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_capy[3][14]\,
	datac => \ALT_INV_capy[3][6]\,
	dataf => \ALT_INV_Add53~29_sumout\,
	combout => \capym~9_combout\);

-- Location: FF_X83_Y27_N35
\capym[3][6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \capym~9_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[3][6]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y27_N51
\capym~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \capym~8_combout\ = ( \capy[3][14]\ & ( \Add53~25_sumout\ ) ) # ( !\capy[3][14]\ & ( \Add53~25_sumout\ & ( \capy[3][5]\ ) ) ) # ( !\capy[3][14]\ & ( !\Add53~25_sumout\ & ( \capy[3][5]\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[3][5]\,
	datae => \ALT_INV_capy[3][14]\,
	dataf => \ALT_INV_Add53~25_sumout\,
	combout => \capym~8_combout\);

-- Location: LABCELL_X83_Y27_N45
\capym[3][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \capym[3][5]~feeder_combout\ = ( \capym~8_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_capym~8_combout\,
	combout => \capym[3][5]~feeder_combout\);

-- Location: FF_X83_Y27_N47
\capym[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \capym[3][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[3][5]~q\);

-- Location: LABCELL_X83_Y27_N54
\capym~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \capym~6_combout\ = ( \capy[3][4]\ & ( (!\capy[3][14]\) # (\Add53~17_sumout\) ) ) # ( !\capy[3][4]\ & ( (\capy[3][14]\ & \Add53~17_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_capy[3][14]\,
	datac => \ALT_INV_Add53~17_sumout\,
	dataf => \ALT_INV_capy[3][4]\,
	combout => \capym~6_combout\);

-- Location: FF_X83_Y27_N56
\capym[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \capym~6_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[3][4]~q\);

-- Location: LABCELL_X83_Y27_N57
\capym~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \capym~5_combout\ = (!\capy[3][14]\ & (\capy[3][3]\)) # (\capy[3][14]\ & ((\Add53~13_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capy[3][3]\,
	datab => \ALT_INV_capy[3][14]\,
	datad => \ALT_INV_Add53~13_sumout\,
	combout => \capym~5_combout\);

-- Location: FF_X83_Y27_N59
\capym[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \capym~5_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[3][3]~q\);

-- Location: LABCELL_X83_Y27_N51
\capym~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \capym~4_combout\ = ( \capy[3][2]\ & ( (!\capy[3][14]\) # (\Add53~9_sumout\) ) ) # ( !\capy[3][2]\ & ( (\capy[3][14]\ & \Add53~9_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_capy[3][14]\,
	datad => \ALT_INV_Add53~9_sumout\,
	dataf => \ALT_INV_capy[3][2]\,
	combout => \capym~4_combout\);

-- Location: FF_X83_Y27_N53
\capym[3][2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \capym~4_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[3][2]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y27_N30
\capym~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \capym~3_combout\ = ( \Add53~5_sumout\ & ( (\capy[3][1]\) # (\capy[3][14]\) ) ) # ( !\Add53~5_sumout\ & ( (!\capy[3][14]\ & \capy[3][1]\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_capy[3][14]\,
	datac => \ALT_INV_capy[3][1]\,
	dataf => \ALT_INV_Add53~5_sumout\,
	combout => \capym~3_combout\);

-- Location: FF_X83_Y27_N32
\capym[3][1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \capym~3_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[3][1]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y27_N36
\capym~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \capym~2_combout\ = ( \capy[3][14]\ & ( \Add53~1_sumout\ ) ) # ( !\capy[3][14]\ & ( \Add53~1_sumout\ & ( \capy[3][0]\ ) ) ) # ( !\capy[3][14]\ & ( !\Add53~1_sumout\ & ( \capy[3][0]\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[3][0]\,
	datae => \ALT_INV_capy[3][14]\,
	dataf => \ALT_INV_Add53~1_sumout\,
	combout => \capym~2_combout\);

-- Location: FF_X83_Y27_N38
\capym[3][0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \capym~2_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[3][0]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y27_N0
\Add37~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add37~1_sumout\ = SUM(( !\capym[3][0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \Add37~2\ = CARRY(( !\capym[3][0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_capym[3][0]~DUPLICATE_q\,
	cin => GND,
	sumout => \Add37~1_sumout\,
	cout => \Add37~2\);

-- Location: LABCELL_X83_Y27_N3
\Add37~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add37~5_sumout\ = SUM(( !\capym[3][1]~DUPLICATE_q\ ) + ( GND ) + ( \Add37~2\ ))
-- \Add37~6\ = CARRY(( !\capym[3][1]~DUPLICATE_q\ ) + ( GND ) + ( \Add37~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capym[3][1]~DUPLICATE_q\,
	cin => \Add37~2\,
	sumout => \Add37~5_sumout\,
	cout => \Add37~6\);

-- Location: LABCELL_X83_Y27_N6
\Add37~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add37~9_sumout\ = SUM(( !\capym[3][2]~DUPLICATE_q\ ) + ( GND ) + ( \Add37~6\ ))
-- \Add37~10\ = CARRY(( !\capym[3][2]~DUPLICATE_q\ ) + ( GND ) + ( \Add37~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capym[3][2]~DUPLICATE_q\,
	cin => \Add37~6\,
	sumout => \Add37~9_sumout\,
	cout => \Add37~10\);

-- Location: LABCELL_X83_Y27_N9
\Add37~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add37~13_sumout\ = SUM(( !\capym[3][3]~q\ ) + ( GND ) + ( \Add37~10\ ))
-- \Add37~14\ = CARRY(( !\capym[3][3]~q\ ) + ( GND ) + ( \Add37~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_capym[3][3]~q\,
	cin => \Add37~10\,
	sumout => \Add37~13_sumout\,
	cout => \Add37~14\);

-- Location: LABCELL_X83_Y27_N12
\Add37~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add37~17_sumout\ = SUM(( !\capym[3][4]~q\ ) + ( GND ) + ( \Add37~14\ ))
-- \Add37~18\ = CARRY(( !\capym[3][4]~q\ ) + ( GND ) + ( \Add37~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_capym[3][4]~q\,
	cin => \Add37~14\,
	sumout => \Add37~17_sumout\,
	cout => \Add37~18\);

-- Location: LABCELL_X83_Y27_N15
\Add37~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add37~25_sumout\ = SUM(( !\capym[3][5]~q\ ) + ( GND ) + ( \Add37~18\ ))
-- \Add37~26\ = CARRY(( !\capym[3][5]~q\ ) + ( GND ) + ( \Add37~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_capym[3][5]~q\,
	cin => \Add37~18\,
	sumout => \Add37~25_sumout\,
	cout => \Add37~26\);

-- Location: LABCELL_X83_Y27_N18
\Add37~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add37~29_sumout\ = SUM(( !\capym[3][6]~DUPLICATE_q\ ) + ( GND ) + ( \Add37~26\ ))
-- \Add37~30\ = CARRY(( !\capym[3][6]~DUPLICATE_q\ ) + ( GND ) + ( \Add37~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capym[3][6]~DUPLICATE_q\,
	cin => \Add37~26\,
	sumout => \Add37~29_sumout\,
	cout => \Add37~30\);

-- Location: LABCELL_X83_Y27_N21
\Add37~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add37~33_sumout\ = SUM(( !\capym[3][7]~q\ ) + ( GND ) + ( \Add37~30\ ))
-- \Add37~34\ = CARRY(( !\capym[3][7]~q\ ) + ( GND ) + ( \Add37~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_capym[3][7]~q\,
	cin => \Add37~30\,
	sumout => \Add37~33_sumout\,
	cout => \Add37~34\);

-- Location: LABCELL_X83_Y27_N24
\Add37~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add37~21_sumout\ = SUM(( !\capym[3][7]~DUPLICATE_q\ ) + ( GND ) + ( \Add37~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capym[3][7]~DUPLICATE_q\,
	cin => \Add37~34\,
	sumout => \Add37~21_sumout\);

-- Location: MLABCELL_X84_Y29_N48
\capym~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \capym~29_combout\ = ( \Add51~29_sumout\ & ( (\capy[1][6]\) # (\capy[1][14]\) ) ) # ( !\Add51~29_sumout\ & ( (!\capy[1][14]\ & \capy[1][6]\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_capy[1][14]\,
	datac => \ALT_INV_capy[1][6]\,
	dataf => \ALT_INV_Add51~29_sumout\,
	combout => \capym~29_combout\);

-- Location: FF_X83_Y29_N38
\capym[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \capym~29_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[1][6]~q\);

-- Location: MLABCELL_X84_Y29_N54
\capym~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \capym~28_combout\ = ( \capy[1][14]\ & ( \Add51~25_sumout\ ) ) # ( !\capy[1][14]\ & ( \Add51~25_sumout\ & ( \capy[1][5]\ ) ) ) # ( !\capy[1][14]\ & ( !\Add51~25_sumout\ & ( \capy[1][5]\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_capy[1][5]\,
	datae => \ALT_INV_capy[1][14]\,
	dataf => \ALT_INV_Add51~25_sumout\,
	combout => \capym~28_combout\);

-- Location: FF_X83_Y29_N47
\capym[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \capym~28_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[1][5]~q\);

-- Location: LABCELL_X85_Y29_N27
\capym~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \capym~26_combout\ = ( \Add51~17_sumout\ & ( \capy[1][4]\ ) ) # ( !\Add51~17_sumout\ & ( \capy[1][4]\ & ( !\capy[1][14]\ ) ) ) # ( \Add51~17_sumout\ & ( !\capy[1][4]\ & ( \capy[1][14]\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[1][14]\,
	datae => \ALT_INV_Add51~17_sumout\,
	dataf => \ALT_INV_capy[1][4]\,
	combout => \capym~26_combout\);

-- Location: FF_X83_Y29_N14
\capym[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \capym~26_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[1][4]~q\);

-- Location: MLABCELL_X84_Y29_N51
\capym~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \capym~24_combout\ = ( \Add51~13_sumout\ & ( (\capy[1][3]\) # (\capy[1][14]\) ) ) # ( !\Add51~13_sumout\ & ( (!\capy[1][14]\ & \capy[1][3]\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_capy[1][14]\,
	datac => \ALT_INV_capy[1][3]\,
	dataf => \ALT_INV_Add51~13_sumout\,
	combout => \capym~24_combout\);

-- Location: FF_X83_Y29_N41
\capym[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \capym~24_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[1][3]~q\);

-- Location: MLABCELL_X82_Y29_N48
\capym~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \capym~21_combout\ = ( \capy[1][2]\ & ( (!\capy[1][14]\) # (\Add51~9_sumout\) ) ) # ( !\capy[1][2]\ & ( (\capy[1][14]\ & \Add51~9_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capy[1][14]\,
	datac => \ALT_INV_Add51~9_sumout\,
	dataf => \ALT_INV_capy[1][2]\,
	combout => \capym~21_combout\);

-- Location: FF_X82_Y29_N50
\capym[1][2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \capym~21_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[1][2]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y29_N45
\capym~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \capym~22_combout\ = ( \Add50~25_sumout\ & ( (\capy[0][6]\) # (\capy[0][14]\) ) ) # ( !\Add50~25_sumout\ & ( (!\capy[0][14]\ & \capy[0][6]\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capy[0][14]\,
	datac => \ALT_INV_capy[0][6]\,
	dataf => \ALT_INV_Add50~25_sumout\,
	combout => \capym~22_combout\);

-- Location: FF_X82_Y29_N47
\capym[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \capym~22_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[0][6]~q\);

-- Location: MLABCELL_X84_Y28_N21
\capym~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \capym~19_combout\ = ( \Add50~21_sumout\ & ( \capy[0][14]\ ) ) # ( \Add50~21_sumout\ & ( !\capy[0][14]\ & ( \capy[0][5]\ ) ) ) # ( !\Add50~21_sumout\ & ( !\capy[0][14]\ & ( \capy[0][5]\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[0][5]\,
	datae => \ALT_INV_Add50~21_sumout\,
	dataf => \ALT_INV_capy[0][14]\,
	combout => \capym~19_combout\);

-- Location: FF_X83_Y29_N5
\capym[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \capym~19_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[0][5]~q\);

-- Location: MLABCELL_X82_Y29_N54
\capym~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \capym~18_combout\ = ( \Add51~5_sumout\ & ( (\capy[1][1]\) # (\capy[1][14]\) ) ) # ( !\Add51~5_sumout\ & ( (!\capy[1][14]\ & \capy[1][1]\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capy[1][14]\,
	datac => \ALT_INV_capy[1][1]\,
	dataf => \ALT_INV_Add51~5_sumout\,
	combout => \capym~18_combout\);

-- Location: FF_X83_Y29_N35
\capym[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \capym~18_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[1][1]~q\);

-- Location: MLABCELL_X82_Y29_N57
\capym~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \capym~15_combout\ = ( \Add51~1_sumout\ & ( (\capy[1][0]\) # (\capy[1][14]\) ) ) # ( !\Add51~1_sumout\ & ( (!\capy[1][14]\ & \capy[1][0]\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capy[1][14]\,
	datad => \ALT_INV_capy[1][0]\,
	dataf => \ALT_INV_Add51~1_sumout\,
	combout => \capym~15_combout\);

-- Location: FF_X82_Y29_N59
\capym[1][0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \capym~15_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[1][0]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y29_N36
\capym~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \capym~16_combout\ = ( \Add50~17_sumout\ & ( (\capy[0][4]\) # (\capy[0][14]\) ) ) # ( !\Add50~17_sumout\ & ( (!\capy[0][14]\ & \capy[0][4]\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capy[0][14]\,
	datab => \ALT_INV_capy[0][4]\,
	dataf => \ALT_INV_Add50~17_sumout\,
	combout => \capym~16_combout\);

-- Location: FF_X82_Y29_N38
\capym[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \capym~16_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[0][4]~q\);

-- Location: MLABCELL_X82_Y29_N0
\Add46~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add46~1_sumout\ = SUM(( !\capym[1][0]~DUPLICATE_q\ $ (!\capym[0][4]~q\ $ (\Add37~1_sumout\)) ) + ( !VCC ) + ( !VCC ))
-- \Add46~2\ = CARRY(( !\capym[1][0]~DUPLICATE_q\ $ (!\capym[0][4]~q\ $ (\Add37~1_sumout\)) ) + ( !VCC ) + ( !VCC ))
-- \Add46~3\ = SHARE((!\capym[1][0]~DUPLICATE_q\ & (\capym[0][4]~q\ & \Add37~1_sumout\)) # (\capym[1][0]~DUPLICATE_q\ & ((\Add37~1_sumout\) # (\capym[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_capym[1][0]~DUPLICATE_q\,
	datac => \ALT_INV_capym[0][4]~q\,
	datad => \ALT_INV_Add37~1_sumout\,
	cin => GND,
	sharein => GND,
	sumout => \Add46~1_sumout\,
	cout => \Add46~2\,
	shareout => \Add46~3\);

-- Location: MLABCELL_X82_Y29_N3
\Add46~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add46~5_sumout\ = SUM(( !\capym[0][5]~q\ $ (!\capym[1][1]~q\ $ (\Add37~5_sumout\)) ) + ( \Add46~3\ ) + ( \Add46~2\ ))
-- \Add46~6\ = CARRY(( !\capym[0][5]~q\ $ (!\capym[1][1]~q\ $ (\Add37~5_sumout\)) ) + ( \Add46~3\ ) + ( \Add46~2\ ))
-- \Add46~7\ = SHARE((!\capym[0][5]~q\ & (\capym[1][1]~q\ & \Add37~5_sumout\)) # (\capym[0][5]~q\ & ((\Add37~5_sumout\) # (\capym[1][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capym[0][5]~q\,
	datac => \ALT_INV_capym[1][1]~q\,
	datad => \ALT_INV_Add37~5_sumout\,
	cin => \Add46~2\,
	sharein => \Add46~3\,
	sumout => \Add46~5_sumout\,
	cout => \Add46~6\,
	shareout => \Add46~7\);

-- Location: MLABCELL_X82_Y29_N6
\Add46~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add46~9_sumout\ = SUM(( !\capym[1][2]~DUPLICATE_q\ $ (!\Add37~9_sumout\ $ (\capym[0][6]~q\)) ) + ( \Add46~7\ ) + ( \Add46~6\ ))
-- \Add46~10\ = CARRY(( !\capym[1][2]~DUPLICATE_q\ $ (!\Add37~9_sumout\ $ (\capym[0][6]~q\)) ) + ( \Add46~7\ ) + ( \Add46~6\ ))
-- \Add46~11\ = SHARE((!\capym[1][2]~DUPLICATE_q\ & (\Add37~9_sumout\ & \capym[0][6]~q\)) # (\capym[1][2]~DUPLICATE_q\ & ((\capym[0][6]~q\) # (\Add37~9_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capym[1][2]~DUPLICATE_q\,
	datac => \ALT_INV_Add37~9_sumout\,
	datad => \ALT_INV_capym[0][6]~q\,
	cin => \Add46~6\,
	sharein => \Add46~7\,
	sumout => \Add46~9_sumout\,
	cout => \Add46~10\,
	shareout => \Add46~11\);

-- Location: MLABCELL_X82_Y29_N9
\Add46~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add46~13_sumout\ = SUM(( !\capym[0][7]~q\ $ (!\Add37~13_sumout\ $ (\capym[1][3]~q\)) ) + ( \Add46~11\ ) + ( \Add46~10\ ))
-- \Add46~14\ = CARRY(( !\capym[0][7]~q\ $ (!\Add37~13_sumout\ $ (\capym[1][3]~q\)) ) + ( \Add46~11\ ) + ( \Add46~10\ ))
-- \Add46~15\ = SHARE((!\capym[0][7]~q\ & (\Add37~13_sumout\ & \capym[1][3]~q\)) # (\capym[0][7]~q\ & ((\capym[1][3]~q\) # (\Add37~13_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_capym[0][7]~q\,
	datac => \ALT_INV_Add37~13_sumout\,
	datad => \ALT_INV_capym[1][3]~q\,
	cin => \Add46~10\,
	sharein => \Add46~11\,
	sumout => \Add46~13_sumout\,
	cout => \Add46~14\,
	shareout => \Add46~15\);

-- Location: MLABCELL_X82_Y29_N12
\Add46~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add46~17_sumout\ = SUM(( !\capym[0][7]~q\ $ (!\Add37~17_sumout\ $ (\capym[1][4]~q\)) ) + ( \Add46~15\ ) + ( \Add46~14\ ))
-- \Add46~18\ = CARRY(( !\capym[0][7]~q\ $ (!\Add37~17_sumout\ $ (\capym[1][4]~q\)) ) + ( \Add46~15\ ) + ( \Add46~14\ ))
-- \Add46~19\ = SHARE((!\capym[0][7]~q\ & (\Add37~17_sumout\ & \capym[1][4]~q\)) # (\capym[0][7]~q\ & ((\capym[1][4]~q\) # (\Add37~17_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_capym[0][7]~q\,
	datac => \ALT_INV_Add37~17_sumout\,
	datad => \ALT_INV_capym[1][4]~q\,
	cin => \Add46~14\,
	sharein => \Add46~15\,
	sumout => \Add46~17_sumout\,
	cout => \Add46~18\,
	shareout => \Add46~19\);

-- Location: MLABCELL_X82_Y29_N15
\Add46~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add46~41_sumout\ = SUM(( !\capym[1][5]~q\ $ (!\capym[0][7]~q\ $ (\Add37~25_sumout\)) ) + ( \Add46~19\ ) + ( \Add46~18\ ))
-- \Add46~42\ = CARRY(( !\capym[1][5]~q\ $ (!\capym[0][7]~q\ $ (\Add37~25_sumout\)) ) + ( \Add46~19\ ) + ( \Add46~18\ ))
-- \Add46~43\ = SHARE((!\capym[1][5]~q\ & (\capym[0][7]~q\ & \Add37~25_sumout\)) # (\capym[1][5]~q\ & ((\Add37~25_sumout\) # (\capym[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010111011100000000000000000110011010011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capym[1][5]~q\,
	datab => \ALT_INV_capym[0][7]~q\,
	datad => \ALT_INV_Add37~25_sumout\,
	cin => \Add46~18\,
	sharein => \Add46~19\,
	sumout => \Add46~41_sumout\,
	cout => \Add46~42\,
	shareout => \Add46~43\);

-- Location: MLABCELL_X82_Y29_N18
\Add46~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add46~37_sumout\ = SUM(( !\capym[0][7]~q\ $ (!\Add37~29_sumout\ $ (\capym[1][6]~q\)) ) + ( \Add46~43\ ) + ( \Add46~42\ ))
-- \Add46~38\ = CARRY(( !\capym[0][7]~q\ $ (!\Add37~29_sumout\ $ (\capym[1][6]~q\)) ) + ( \Add46~43\ ) + ( \Add46~42\ ))
-- \Add46~39\ = SHARE((!\capym[0][7]~q\ & (\Add37~29_sumout\ & \capym[1][6]~q\)) # (\capym[0][7]~q\ & ((\capym[1][6]~q\) # (\Add37~29_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_capym[0][7]~q\,
	datac => \ALT_INV_Add37~29_sumout\,
	datad => \ALT_INV_capym[1][6]~q\,
	cin => \Add46~42\,
	sharein => \Add46~43\,
	sumout => \Add46~37_sumout\,
	cout => \Add46~38\,
	shareout => \Add46~39\);

-- Location: MLABCELL_X82_Y29_N21
\Add46~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add46~33_sumout\ = SUM(( !\capym[1][7]~q\ $ (!\capym[0][7]~q\ $ (\Add37~33_sumout\)) ) + ( \Add46~39\ ) + ( \Add46~38\ ))
-- \Add46~34\ = CARRY(( !\capym[1][7]~q\ $ (!\capym[0][7]~q\ $ (\Add37~33_sumout\)) ) + ( \Add46~39\ ) + ( \Add46~38\ ))
-- \Add46~35\ = SHARE((!\capym[1][7]~q\ & (\capym[0][7]~q\ & \Add37~33_sumout\)) # (\capym[1][7]~q\ & ((\Add37~33_sumout\) # (\capym[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101110001011100000000000000000110100101101001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capym[1][7]~q\,
	datab => \ALT_INV_capym[0][7]~q\,
	datac => \ALT_INV_Add37~33_sumout\,
	cin => \Add46~38\,
	sharein => \Add46~39\,
	sumout => \Add46~33_sumout\,
	cout => \Add46~34\,
	shareout => \Add46~35\);

-- Location: MLABCELL_X82_Y29_N24
\Add46~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add46~29_sumout\ = SUM(( !\capym[1][7]~q\ $ (!\capym[0][7]~q\ $ (\Add37~21_sumout\)) ) + ( \Add46~35\ ) + ( \Add46~34\ ))
-- \Add46~30\ = CARRY(( !\capym[1][7]~q\ $ (!\capym[0][7]~q\ $ (\Add37~21_sumout\)) ) + ( \Add46~35\ ) + ( \Add46~34\ ))
-- \Add46~31\ = SHARE((!\capym[1][7]~q\ & (\capym[0][7]~q\ & \Add37~21_sumout\)) # (\capym[1][7]~q\ & ((\Add37~21_sumout\) # (\capym[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010111011100000000000000000110011010011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capym[1][7]~q\,
	datab => \ALT_INV_capym[0][7]~q\,
	datad => \ALT_INV_Add37~21_sumout\,
	cin => \Add46~34\,
	sharein => \Add46~35\,
	sumout => \Add46~29_sumout\,
	cout => \Add46~30\,
	shareout => \Add46~31\);

-- Location: MLABCELL_X82_Y29_N27
\Add46~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add46~25_sumout\ = SUM(( !\capym[1][7]~q\ $ (!\capym[0][7]~q\ $ (\Add37~21_sumout\)) ) + ( \Add46~31\ ) + ( \Add46~30\ ))
-- \Add46~26\ = CARRY(( !\capym[1][7]~q\ $ (!\capym[0][7]~q\ $ (\Add37~21_sumout\)) ) + ( \Add46~31\ ) + ( \Add46~30\ ))
-- \Add46~27\ = SHARE((!\capym[1][7]~q\ & (\capym[0][7]~q\ & \Add37~21_sumout\)) # (\capym[1][7]~q\ & ((\Add37~21_sumout\) # (\capym[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010111011100000000000000000110011010011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capym[1][7]~q\,
	datab => \ALT_INV_capym[0][7]~q\,
	datad => \ALT_INV_Add37~21_sumout\,
	cin => \Add46~30\,
	sharein => \Add46~31\,
	sumout => \Add46~25_sumout\,
	cout => \Add46~26\,
	shareout => \Add46~27\);

-- Location: MLABCELL_X82_Y29_N30
\Add46~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add46~21_sumout\ = SUM(( !\capym[1][7]~q\ $ (!\capym[0][7]~q\ $ (\Add37~21_sumout\)) ) + ( \Add46~27\ ) + ( \Add46~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000110011010011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capym[1][7]~q\,
	datab => \ALT_INV_capym[0][7]~q\,
	datad => \ALT_INV_Add37~21_sumout\,
	cin => \Add46~26\,
	sharein => \Add46~27\,
	sumout => \Add46~21_sumout\);

-- Location: MLABCELL_X84_Y26_N9
\Add52~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add52~5_sumout\ = SUM(( \capy[2][3]\ ) + ( GND ) + ( \Add52~2\ ))
-- \Add52~6\ = CARRY(( \capy[2][3]\ ) + ( GND ) + ( \Add52~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[2][3]\,
	cin => \Add52~2\,
	sumout => \Add52~5_sumout\,
	cout => \Add52~6\);

-- Location: MLABCELL_X84_Y26_N12
\Add52~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add52~9_sumout\ = SUM(( \capy[2][4]\ ) + ( GND ) + ( \Add52~6\ ))
-- \Add52~10\ = CARRY(( \capy[2][4]\ ) + ( GND ) + ( \Add52~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_capy[2][4]\,
	cin => \Add52~6\,
	sumout => \Add52~9_sumout\,
	cout => \Add52~10\);

-- Location: MLABCELL_X84_Y26_N15
\Add52~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add52~13_sumout\ = SUM(( \capy[2][5]\ ) + ( GND ) + ( \Add52~10\ ))
-- \Add52~14\ = CARRY(( \capy[2][5]\ ) + ( GND ) + ( \Add52~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_capy[2][5]\,
	cin => \Add52~10\,
	sumout => \Add52~13_sumout\,
	cout => \Add52~14\);

-- Location: MLABCELL_X84_Y26_N18
\Add52~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add52~17_sumout\ = SUM(( \capy[2][6]\ ) + ( GND ) + ( \Add52~14\ ))
-- \Add52~18\ = CARRY(( \capy[2][6]\ ) + ( GND ) + ( \Add52~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[2][6]\,
	cin => \Add52~14\,
	sumout => \Add52~17_sumout\,
	cout => \Add52~18\);

-- Location: MLABCELL_X84_Y26_N21
\Add52~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add52~58_cout\ = CARRY(( \capy[2][7]\ ) + ( GND ) + ( \Add52~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_capy[2][7]\,
	cin => \Add52~18\,
	cout => \Add52~58_cout\);

-- Location: MLABCELL_X84_Y26_N24
\Add52~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add52~54_cout\ = CARRY(( \capy[2][8]\ ) + ( VCC ) + ( \Add52~58_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_capy[2][8]\,
	cin => \Add52~58_cout\,
	cout => \Add52~54_cout\);

-- Location: MLABCELL_X84_Y26_N27
\Add52~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add52~50_cout\ = CARRY(( \capy[2][9]\ ) + ( GND ) + ( \Add52~54_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capy[2][9]\,
	cin => \Add52~54_cout\,
	cout => \Add52~50_cout\);

-- Location: MLABCELL_X84_Y26_N30
\Add52~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add52~46_cout\ = CARRY(( \capy[2][10]\ ) + ( GND ) + ( \Add52~50_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_capy[2][10]\,
	cin => \Add52~50_cout\,
	cout => \Add52~46_cout\);

-- Location: MLABCELL_X84_Y26_N33
\Add52~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add52~42_cout\ = CARRY(( \capy[2][11]\ ) + ( GND ) + ( \Add52~46_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[2][11]\,
	cin => \Add52~46_cout\,
	cout => \Add52~42_cout\);

-- Location: MLABCELL_X84_Y26_N36
\Add52~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add52~38_cout\ = CARRY(( \capy[2][12]\ ) + ( GND ) + ( \Add52~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[2][12]\,
	cin => \Add52~42_cout\,
	cout => \Add52~38_cout\);

-- Location: MLABCELL_X84_Y26_N39
\Add52~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add52~34_cout\ = CARRY(( \capy[2][13]\ ) + ( GND ) + ( \Add52~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[2][13]\,
	cin => \Add52~38_cout\,
	cout => \Add52~34_cout\);

-- Location: MLABCELL_X84_Y26_N42
\Add52~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add52~21_sumout\ = SUM(( \capy[2][14]\ ) + ( GND ) + ( \Add52~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_capy[2][14]\,
	cin => \Add52~34_cout\,
	sumout => \Add52~21_sumout\);

-- Location: LABCELL_X83_Y26_N48
\capym~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \capym~23_combout\ = (\capy[2][14]\ & \Add52~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capy[2][14]\,
	datad => \ALT_INV_Add52~21_sumout\,
	combout => \capym~23_combout\);

-- Location: FF_X83_Y26_N49
\capym[2][7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \capym~23_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[2][7]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y26_N57
\capym~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \capym~20_combout\ = (!\capy[2][14]\ & ((\capy[2][6]\))) # (\capy[2][14]\ & (\Add52~17_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capy[2][14]\,
	datac => \ALT_INV_Add52~17_sumout\,
	datad => \ALT_INV_capy[2][6]\,
	combout => \capym~20_combout\);

-- Location: FF_X83_Y26_N58
\capym[2][6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \capym~20_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[2][6]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y28_N51
\capym~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \capym~17_combout\ = ( \capy[2][14]\ & ( \Add52~13_sumout\ ) ) # ( !\capy[2][14]\ & ( \Add52~13_sumout\ & ( \capy[2][5]\ ) ) ) # ( !\capy[2][14]\ & ( !\Add52~13_sumout\ & ( \capy[2][5]\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[2][5]\,
	datae => \ALT_INV_capy[2][14]\,
	dataf => \ALT_INV_Add52~13_sumout\,
	combout => \capym~17_combout\);

-- Location: FF_X83_Y28_N2
\capym[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \capym~17_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[2][5]~q\);

-- Location: LABCELL_X83_Y26_N51
\capym~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \capym~14_combout\ = ( \Add52~9_sumout\ & ( (\capy[2][4]\) # (\capy[2][14]\) ) ) # ( !\Add52~9_sumout\ & ( (!\capy[2][14]\ & \capy[2][4]\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capy[2][14]\,
	datac => \ALT_INV_capy[2][4]\,
	dataf => \ALT_INV_Add52~9_sumout\,
	combout => \capym~14_combout\);

-- Location: FF_X83_Y26_N53
\capym[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \capym~14_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[2][4]~q\);

-- Location: LABCELL_X83_Y26_N42
\capym~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \capym~13_combout\ = ( \Add52~5_sumout\ & ( (\capy[2][3]\) # (\capy[2][14]\) ) ) # ( !\Add52~5_sumout\ & ( (!\capy[2][14]\ & \capy[2][3]\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capy[2][14]\,
	datab => \ALT_INV_capy[2][3]\,
	dataf => \ALT_INV_Add52~5_sumout\,
	combout => \capym~13_combout\);

-- Location: FF_X83_Y26_N43
\capym[2][3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \capym~13_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[2][3]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y28_N9
\Add23~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~5_sumout\ = SUM(( !\capym[2][3]~DUPLICATE_q\ ) + ( GND ) + ( \Add23~2\ ))
-- \Add23~6\ = CARRY(( !\capym[2][3]~DUPLICATE_q\ ) + ( GND ) + ( \Add23~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_capym[2][3]~DUPLICATE_q\,
	cin => \Add23~2\,
	sumout => \Add23~5_sumout\,
	cout => \Add23~6\);

-- Location: LABCELL_X83_Y28_N12
\Add23~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~9_sumout\ = SUM(( !\capym[2][4]~q\ ) + ( GND ) + ( \Add23~6\ ))
-- \Add23~10\ = CARRY(( !\capym[2][4]~q\ ) + ( GND ) + ( \Add23~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_capym[2][4]~q\,
	cin => \Add23~6\,
	sumout => \Add23~9_sumout\,
	cout => \Add23~10\);

-- Location: LABCELL_X83_Y28_N15
\Add23~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~13_sumout\ = SUM(( !\capym[2][5]~q\ ) + ( GND ) + ( \Add23~10\ ))
-- \Add23~14\ = CARRY(( !\capym[2][5]~q\ ) + ( GND ) + ( \Add23~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_capym[2][5]~q\,
	cin => \Add23~10\,
	sumout => \Add23~13_sumout\,
	cout => \Add23~14\);

-- Location: LABCELL_X83_Y28_N18
\Add23~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~17_sumout\ = SUM(( !\capym[2][6]~DUPLICATE_q\ ) + ( GND ) + ( \Add23~14\ ))
-- \Add23~18\ = CARRY(( !\capym[2][6]~DUPLICATE_q\ ) + ( GND ) + ( \Add23~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_capym[2][6]~DUPLICATE_q\,
	cin => \Add23~14\,
	sumout => \Add23~17_sumout\,
	cout => \Add23~18\);

-- Location: LABCELL_X83_Y28_N21
\Add23~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~21_sumout\ = SUM(( !\capym[2][7]~DUPLICATE_q\ ) + ( GND ) + ( \Add23~18\ ))
-- \Add23~22\ = CARRY(( !\capym[2][7]~DUPLICATE_q\ ) + ( GND ) + ( \Add23~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_capym[2][7]~DUPLICATE_q\,
	cin => \Add23~18\,
	sumout => \Add23~21_sumout\,
	cout => \Add23~22\);

-- Location: LABCELL_X83_Y28_N24
\Add23~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~25_sumout\ = SUM(( !\capym[2][7]~DUPLICATE_q\ ) + ( GND ) + ( \Add23~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_capym[2][7]~DUPLICATE_q\,
	cin => \Add23~22\,
	sumout => \Add23~25_sumout\);

-- Location: MLABCELL_X84_Y28_N54
\capym~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \capym~1_combout\ = ( \Add50~5_sumout\ & ( \capy[0][14]\ ) ) # ( \Add50~5_sumout\ & ( !\capy[0][14]\ & ( \capy[0][3]\ ) ) ) # ( !\Add50~5_sumout\ & ( !\capy[0][14]\ & ( \capy[0][3]\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capy[0][3]\,
	datae => \ALT_INV_Add50~5_sumout\,
	dataf => \ALT_INV_capy[0][14]\,
	combout => \capym~1_combout\);

-- Location: FF_X83_Y28_N41
\capym[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \capym~1_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[0][3]~q\);

-- Location: LABCELL_X81_Y29_N9
\Add47~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add47~5_sumout\ = SUM(( \Add23~5_sumout\ ) + ( \capym[0][3]~q\ ) + ( \Add47~2\ ))
-- \Add47~6\ = CARRY(( \Add23~5_sumout\ ) + ( \capym[0][3]~q\ ) + ( \Add47~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capym[0][3]~q\,
	datad => \ALT_INV_Add23~5_sumout\,
	cin => \Add47~2\,
	sumout => \Add47~5_sumout\,
	cout => \Add47~6\);

-- Location: LABCELL_X81_Y29_N12
\Add47~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add47~9_sumout\ = SUM(( \Add23~9_sumout\ ) + ( \Add46~1_sumout\ ) + ( \Add47~6\ ))
-- \Add47~10\ = CARRY(( \Add23~9_sumout\ ) + ( \Add46~1_sumout\ ) + ( \Add47~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add23~9_sumout\,
	datac => \ALT_INV_Add46~1_sumout\,
	cin => \Add47~6\,
	sumout => \Add47~9_sumout\,
	cout => \Add47~10\);

-- Location: LABCELL_X81_Y29_N15
\Add47~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add47~13_sumout\ = SUM(( \Add46~5_sumout\ ) + ( \Add23~13_sumout\ ) + ( \Add47~10\ ))
-- \Add47~14\ = CARRY(( \Add46~5_sumout\ ) + ( \Add23~13_sumout\ ) + ( \Add47~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add23~13_sumout\,
	datad => \ALT_INV_Add46~5_sumout\,
	cin => \Add47~10\,
	sumout => \Add47~13_sumout\,
	cout => \Add47~14\);

-- Location: LABCELL_X81_Y29_N18
\Add47~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add47~17_sumout\ = SUM(( \Add46~9_sumout\ ) + ( \Add23~17_sumout\ ) + ( \Add47~14\ ))
-- \Add47~18\ = CARRY(( \Add46~9_sumout\ ) + ( \Add23~17_sumout\ ) + ( \Add47~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add23~17_sumout\,
	datad => \ALT_INV_Add46~9_sumout\,
	cin => \Add47~14\,
	sumout => \Add47~17_sumout\,
	cout => \Add47~18\);

-- Location: LABCELL_X81_Y29_N21
\Add47~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add47~21_sumout\ = SUM(( \Add46~13_sumout\ ) + ( \Add23~21_sumout\ ) + ( \Add47~18\ ))
-- \Add47~22\ = CARRY(( \Add46~13_sumout\ ) + ( \Add23~21_sumout\ ) + ( \Add47~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add23~21_sumout\,
	datad => \ALT_INV_Add46~13_sumout\,
	cin => \Add47~18\,
	sumout => \Add47~21_sumout\,
	cout => \Add47~22\);

-- Location: LABCELL_X81_Y29_N24
\Add47~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add47~25_sumout\ = SUM(( \Add23~25_sumout\ ) + ( \Add46~17_sumout\ ) + ( \Add47~22\ ))
-- \Add47~26\ = CARRY(( \Add23~25_sumout\ ) + ( \Add46~17_sumout\ ) + ( \Add47~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add46~17_sumout\,
	datad => \ALT_INV_Add23~25_sumout\,
	cin => \Add47~22\,
	sumout => \Add47~25_sumout\,
	cout => \Add47~26\);

-- Location: LABCELL_X81_Y29_N27
\Add47~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add47~57_sumout\ = SUM(( \Add46~41_sumout\ ) + ( \Add23~25_sumout\ ) + ( \Add47~26\ ))
-- \Add47~58\ = CARRY(( \Add46~41_sumout\ ) + ( \Add23~25_sumout\ ) + ( \Add47~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add23~25_sumout\,
	datad => \ALT_INV_Add46~41_sumout\,
	cin => \Add47~26\,
	sumout => \Add47~57_sumout\,
	cout => \Add47~58\);

-- Location: LABCELL_X81_Y29_N30
\Add47~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add47~53_sumout\ = SUM(( \Add23~25_sumout\ ) + ( \Add46~37_sumout\ ) + ( \Add47~58\ ))
-- \Add47~54\ = CARRY(( \Add23~25_sumout\ ) + ( \Add46~37_sumout\ ) + ( \Add47~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add46~37_sumout\,
	datad => \ALT_INV_Add23~25_sumout\,
	cin => \Add47~58\,
	sumout => \Add47~53_sumout\,
	cout => \Add47~54\);

-- Location: LABCELL_X81_Y29_N33
\Add47~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add47~49_sumout\ = SUM(( \Add46~33_sumout\ ) + ( \Add23~25_sumout\ ) + ( \Add47~54\ ))
-- \Add47~50\ = CARRY(( \Add46~33_sumout\ ) + ( \Add23~25_sumout\ ) + ( \Add47~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add23~25_sumout\,
	datad => \ALT_INV_Add46~33_sumout\,
	cin => \Add47~54\,
	sumout => \Add47~49_sumout\,
	cout => \Add47~50\);

-- Location: LABCELL_X81_Y29_N36
\Add47~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add47~45_sumout\ = SUM(( \Add23~25_sumout\ ) + ( \Add46~29_sumout\ ) + ( \Add47~50\ ))
-- \Add47~46\ = CARRY(( \Add23~25_sumout\ ) + ( \Add46~29_sumout\ ) + ( \Add47~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add46~29_sumout\,
	datad => \ALT_INV_Add23~25_sumout\,
	cin => \Add47~50\,
	sumout => \Add47~45_sumout\,
	cout => \Add47~46\);

-- Location: LABCELL_X81_Y29_N39
\Add47~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add47~41_sumout\ = SUM(( \Add46~25_sumout\ ) + ( \Add23~25_sumout\ ) + ( \Add47~46\ ))
-- \Add47~42\ = CARRY(( \Add46~25_sumout\ ) + ( \Add23~25_sumout\ ) + ( \Add47~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add23~25_sumout\,
	datad => \ALT_INV_Add46~25_sumout\,
	cin => \Add47~46\,
	sumout => \Add47~41_sumout\,
	cout => \Add47~42\);

-- Location: LABCELL_X81_Y29_N42
\Add47~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add47~29_sumout\ = SUM(( \Add23~25_sumout\ ) + ( \Add46~21_sumout\ ) + ( \Add47~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add46~21_sumout\,
	datad => \ALT_INV_Add23~25_sumout\,
	cin => \Add47~42\,
	sumout => \Add47~29_sumout\);

-- Location: LABCELL_X80_Y29_N0
\Add49~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add49~34_cout\ = CARRY(( \Add47~29_sumout\ ) + ( (\Add47~33_sumout\) # (\Add47~37_sumout\) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add47~37_sumout\,
	datac => \ALT_INV_Add47~33_sumout\,
	datad => \ALT_INV_Add47~29_sumout\,
	cin => GND,
	cout => \Add49~34_cout\);

-- Location: LABCELL_X80_Y29_N3
\Add49~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add49~1_sumout\ = SUM(( \Add47~1_sumout\ ) + ( GND ) + ( \Add49~34_cout\ ))
-- \Add49~2\ = CARRY(( \Add47~1_sumout\ ) + ( GND ) + ( \Add49~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add47~1_sumout\,
	cin => \Add49~34_cout\,
	sumout => \Add49~1_sumout\,
	cout => \Add49~2\);

-- Location: FF_X80_Y29_N4
\y[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add49~1_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[3][0]~q\);

-- Location: LABCELL_X80_Y29_N6
\Add49~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add49~5_sumout\ = SUM(( \Add47~5_sumout\ ) + ( GND ) + ( \Add49~2\ ))
-- \Add49~6\ = CARRY(( \Add47~5_sumout\ ) + ( GND ) + ( \Add49~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add47~5_sumout\,
	cin => \Add49~2\,
	sumout => \Add49~5_sumout\,
	cout => \Add49~6\);

-- Location: FF_X80_Y29_N7
\y[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add49~5_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[3][1]~q\);

-- Location: LABCELL_X80_Y29_N9
\Add49~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add49~9_sumout\ = SUM(( \Add47~9_sumout\ ) + ( GND ) + ( \Add49~6\ ))
-- \Add49~10\ = CARRY(( \Add47~9_sumout\ ) + ( GND ) + ( \Add49~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add47~9_sumout\,
	cin => \Add49~6\,
	sumout => \Add49~9_sumout\,
	cout => \Add49~10\);

-- Location: FF_X80_Y29_N10
\y[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add49~9_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[3][2]~q\);

-- Location: LABCELL_X80_Y29_N12
\Add49~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add49~13_sumout\ = SUM(( \Add47~13_sumout\ ) + ( GND ) + ( \Add49~10\ ))
-- \Add49~14\ = CARRY(( \Add47~13_sumout\ ) + ( GND ) + ( \Add49~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add47~13_sumout\,
	cin => \Add49~10\,
	sumout => \Add49~13_sumout\,
	cout => \Add49~14\);

-- Location: FF_X80_Y29_N13
\y[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add49~13_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[3][3]~q\);

-- Location: LABCELL_X80_Y29_N15
\Add49~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add49~17_sumout\ = SUM(( \Add47~17_sumout\ ) + ( GND ) + ( \Add49~14\ ))
-- \Add49~18\ = CARRY(( \Add47~17_sumout\ ) + ( GND ) + ( \Add49~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add47~17_sumout\,
	cin => \Add49~14\,
	sumout => \Add49~17_sumout\,
	cout => \Add49~18\);

-- Location: FF_X80_Y29_N16
\y[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add49~17_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[3][4]~q\);

-- Location: LABCELL_X80_Y29_N18
\Add49~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add49~21_sumout\ = SUM(( \Add47~21_sumout\ ) + ( GND ) + ( \Add49~18\ ))
-- \Add49~22\ = CARRY(( \Add47~21_sumout\ ) + ( GND ) + ( \Add49~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add47~21_sumout\,
	cin => \Add49~18\,
	sumout => \Add49~21_sumout\,
	cout => \Add49~22\);

-- Location: FF_X80_Y29_N19
\y[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add49~21_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[3][5]~q\);

-- Location: LABCELL_X80_Y29_N21
\Add49~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add49~25_sumout\ = SUM(( \Add47~25_sumout\ ) + ( GND ) + ( \Add49~22\ ))
-- \Add49~26\ = CARRY(( \Add47~25_sumout\ ) + ( GND ) + ( \Add49~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add47~25_sumout\,
	cin => \Add49~22\,
	sumout => \Add49~25_sumout\,
	cout => \Add49~26\);

-- Location: FF_X80_Y29_N22
\y[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add49~25_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[3][6]~q\);

-- Location: LABCELL_X80_Y29_N24
\Add49~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add49~58_cout\ = CARRY(( \Add47~57_sumout\ ) + ( GND ) + ( \Add49~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add47~57_sumout\,
	cin => \Add49~26\,
	cout => \Add49~58_cout\);

-- Location: LABCELL_X80_Y29_N27
\Add49~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add49~54_cout\ = CARRY(( \Add47~53_sumout\ ) + ( GND ) + ( \Add49~58_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add47~53_sumout\,
	cin => \Add49~58_cout\,
	cout => \Add49~54_cout\);

-- Location: LABCELL_X80_Y29_N30
\Add49~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add49~50_cout\ = CARRY(( \Add47~49_sumout\ ) + ( GND ) + ( \Add49~54_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add47~49_sumout\,
	cin => \Add49~54_cout\,
	cout => \Add49~50_cout\);

-- Location: LABCELL_X80_Y29_N33
\Add49~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add49~46_cout\ = CARRY(( \Add47~45_sumout\ ) + ( GND ) + ( \Add49~50_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add47~45_sumout\,
	cin => \Add49~50_cout\,
	cout => \Add49~46_cout\);

-- Location: LABCELL_X80_Y29_N36
\Add49~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add49~42_cout\ = CARRY(( \Add47~41_sumout\ ) + ( GND ) + ( \Add49~46_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add47~41_sumout\,
	cin => \Add49~46_cout\,
	cout => \Add49~42_cout\);

-- Location: LABCELL_X80_Y29_N39
\Add49~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add49~38_cout\ = CARRY(( \Add47~29_sumout\ ) + ( GND ) + ( \Add49~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add47~29_sumout\,
	cin => \Add49~42_cout\,
	cout => \Add49~38_cout\);

-- Location: LABCELL_X80_Y29_N42
\Add49~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add49~29_sumout\ = SUM(( \Add47~29_sumout\ ) + ( GND ) + ( \Add49~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add47~29_sumout\,
	cin => \Add49~38_cout\,
	sumout => \Add49~29_sumout\);

-- Location: FF_X80_Y29_N43
\y[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add49~29_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[3][7]~q\);

-- Location: FF_X83_Y26_N41
\capym[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \capym~10_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[2][2]~q\);

-- Location: FF_X83_Y26_N56
\capym[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \capym~31_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[2][0]~q\);

-- Location: LABCELL_X83_Y26_N0
\Add35~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~81_sumout\ = SUM(( !\capym[2][0]~q\ $ (!\capym[0][0]~DUPLICATE_q\ $ (\Add37~1_sumout\)) ) + ( !VCC ) + ( !VCC ))
-- \Add35~82\ = CARRY(( !\capym[2][0]~q\ $ (!\capym[0][0]~DUPLICATE_q\ $ (\Add37~1_sumout\)) ) + ( !VCC ) + ( !VCC ))
-- \Add35~83\ = SHARE((!\capym[2][0]~q\ & (\capym[0][0]~DUPLICATE_q\ & \Add37~1_sumout\)) # (\capym[2][0]~q\ & ((\Add37~1_sumout\) # (\capym[0][0]~DUPLICATE_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capym[2][0]~q\,
	datac => \ALT_INV_capym[0][0]~DUPLICATE_q\,
	datad => \ALT_INV_Add37~1_sumout\,
	cin => GND,
	sharein => GND,
	sumout => \Add35~81_sumout\,
	cout => \Add35~82\,
	shareout => \Add35~83\);

-- Location: LABCELL_X83_Y26_N3
\Add35~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~77_sumout\ = SUM(( !\capym[2][1]~q\ $ (!\capym[0][1]~DUPLICATE_q\ $ (\Add37~5_sumout\)) ) + ( \Add35~83\ ) + ( \Add35~82\ ))
-- \Add35~78\ = CARRY(( !\capym[2][1]~q\ $ (!\capym[0][1]~DUPLICATE_q\ $ (\Add37~5_sumout\)) ) + ( \Add35~83\ ) + ( \Add35~82\ ))
-- \Add35~79\ = SHARE((!\capym[2][1]~q\ & (\capym[0][1]~DUPLICATE_q\ & \Add37~5_sumout\)) # (\capym[2][1]~q\ & ((\Add37~5_sumout\) # (\capym[0][1]~DUPLICATE_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_capym[2][1]~q\,
	datac => \ALT_INV_capym[0][1]~DUPLICATE_q\,
	datad => \ALT_INV_Add37~5_sumout\,
	cin => \Add35~82\,
	sharein => \Add35~83\,
	sumout => \Add35~77_sumout\,
	cout => \Add35~78\,
	shareout => \Add35~79\);

-- Location: LABCELL_X83_Y26_N6
\Add35~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~33_sumout\ = SUM(( !\capym[2][2]~q\ $ (!\capym[0][2]~q\ $ (\Add37~9_sumout\)) ) + ( \Add35~79\ ) + ( \Add35~78\ ))
-- \Add35~34\ = CARRY(( !\capym[2][2]~q\ $ (!\capym[0][2]~q\ $ (\Add37~9_sumout\)) ) + ( \Add35~79\ ) + ( \Add35~78\ ))
-- \Add35~35\ = SHARE((!\capym[2][2]~q\ & (\capym[0][2]~q\ & \Add37~9_sumout\)) # (\capym[2][2]~q\ & ((\Add37~9_sumout\) # (\capym[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_capym[2][2]~q\,
	datac => \ALT_INV_capym[0][2]~q\,
	datad => \ALT_INV_Add37~9_sumout\,
	cin => \Add35~78\,
	sharein => \Add35~79\,
	sumout => \Add35~33_sumout\,
	cout => \Add35~34\,
	shareout => \Add35~35\);

-- Location: FF_X82_Y29_N49
\capym[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \capym~21_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[1][2]~q\);

-- Location: FF_X82_Y29_N58
\capym[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \capym~15_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[1][0]~q\);

-- Location: LABCELL_X83_Y29_N30
\Add21~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~33_sumout\ = SUM(( !\capym[1][0]~q\ ) + ( VCC ) + ( !VCC ))
-- \Add21~34\ = CARRY(( !\capym[1][0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_capym[1][0]~q\,
	cin => GND,
	sumout => \Add21~33_sumout\,
	cout => \Add21~34\);

-- Location: LABCELL_X83_Y29_N33
\Add21~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~29_sumout\ = SUM(( !\capym[1][1]~q\ ) + ( GND ) + ( \Add21~34\ ))
-- \Add21~30\ = CARRY(( !\capym[1][1]~q\ ) + ( GND ) + ( \Add21~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_capym[1][1]~q\,
	cin => \Add21~34\,
	sumout => \Add21~29_sumout\,
	cout => \Add21~30\);

-- Location: LABCELL_X83_Y29_N36
\Add21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~1_sumout\ = SUM(( !\capym[1][2]~q\ ) + ( GND ) + ( \Add21~30\ ))
-- \Add21~2\ = CARRY(( !\capym[1][2]~q\ ) + ( GND ) + ( \Add21~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_capym[1][2]~q\,
	cin => \Add21~30\,
	sumout => \Add21~1_sumout\,
	cout => \Add21~2\);

-- Location: MLABCELL_X82_Y26_N0
\Add35~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~41_sumout\ = SUM(( \Add21~33_sumout\ ) + ( \Add35~81_sumout\ ) + ( !VCC ))
-- \Add35~42\ = CARRY(( \Add21~33_sumout\ ) + ( \Add35~81_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add35~81_sumout\,
	datad => \ALT_INV_Add21~33_sumout\,
	cin => GND,
	sumout => \Add35~41_sumout\,
	cout => \Add35~42\);

-- Location: MLABCELL_X82_Y26_N3
\Add35~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~37_sumout\ = SUM(( \Add35~77_sumout\ ) + ( \Add21~29_sumout\ ) + ( \Add35~42\ ))
-- \Add35~38\ = CARRY(( \Add35~77_sumout\ ) + ( \Add21~29_sumout\ ) + ( \Add35~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add21~29_sumout\,
	datad => \ALT_INV_Add35~77_sumout\,
	cin => \Add35~42\,
	sumout => \Add35~37_sumout\,
	cout => \Add35~38\);

-- Location: MLABCELL_X82_Y26_N6
\Add35~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~1_sumout\ = SUM(( \Add21~1_sumout\ ) + ( \Add35~33_sumout\ ) + ( \Add35~38\ ))
-- \Add35~2\ = CARRY(( \Add21~1_sumout\ ) + ( \Add35~33_sumout\ ) + ( \Add35~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add35~33_sumout\,
	datad => \ALT_INV_Add21~1_sumout\,
	cin => \Add35~38\,
	sumout => \Add35~1_sumout\,
	cout => \Add35~2\);

-- Location: FF_X83_Y26_N50
\capym[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \capym~23_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[2][7]~q\);

-- Location: FF_X83_Y26_N59
\capym[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \capym~20_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[2][6]~q\);

-- Location: FF_X82_Y29_N37
\capym[0][4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \capym~16_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[0][4]~DUPLICATE_q\);

-- Location: FF_X83_Y26_N44
\capym[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \capym~13_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[2][3]~q\);

-- Location: LABCELL_X83_Y26_N9
\Add35~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~45_sumout\ = SUM(( !\capym[0][3]~q\ $ (!\capym[2][3]~q\ $ (\Add37~13_sumout\)) ) + ( \Add35~35\ ) + ( \Add35~34\ ))
-- \Add35~46\ = CARRY(( !\capym[0][3]~q\ $ (!\capym[2][3]~q\ $ (\Add37~13_sumout\)) ) + ( \Add35~35\ ) + ( \Add35~34\ ))
-- \Add35~47\ = SHARE((!\capym[0][3]~q\ & (\capym[2][3]~q\ & \Add37~13_sumout\)) # (\capym[0][3]~q\ & ((\Add37~13_sumout\) # (\capym[2][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capym[0][3]~q\,
	datac => \ALT_INV_capym[2][3]~q\,
	datad => \ALT_INV_Add37~13_sumout\,
	cin => \Add35~34\,
	sharein => \Add35~35\,
	sumout => \Add35~45_sumout\,
	cout => \Add35~46\,
	shareout => \Add35~47\);

-- Location: LABCELL_X83_Y26_N12
\Add35~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~49_sumout\ = SUM(( !\capym[2][4]~q\ $ (!\Add37~17_sumout\ $ (\capym[0][4]~DUPLICATE_q\)) ) + ( \Add35~47\ ) + ( \Add35~46\ ))
-- \Add35~50\ = CARRY(( !\capym[2][4]~q\ $ (!\Add37~17_sumout\ $ (\capym[0][4]~DUPLICATE_q\)) ) + ( \Add35~47\ ) + ( \Add35~46\ ))
-- \Add35~51\ = SHARE((!\capym[2][4]~q\ & (\Add37~17_sumout\ & \capym[0][4]~DUPLICATE_q\)) # (\capym[2][4]~q\ & ((\capym[0][4]~DUPLICATE_q\) # (\Add37~17_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capym[2][4]~q\,
	datac => \ALT_INV_Add37~17_sumout\,
	datad => \ALT_INV_capym[0][4]~DUPLICATE_q\,
	cin => \Add35~46\,
	sharein => \Add35~47\,
	sumout => \Add35~49_sumout\,
	cout => \Add35~50\,
	shareout => \Add35~51\);

-- Location: LABCELL_X83_Y26_N15
\Add35~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~53_sumout\ = SUM(( !\capym[0][5]~q\ $ (!\Add37~25_sumout\ $ (\capym[2][5]~q\)) ) + ( \Add35~51\ ) + ( \Add35~50\ ))
-- \Add35~54\ = CARRY(( !\capym[0][5]~q\ $ (!\Add37~25_sumout\ $ (\capym[2][5]~q\)) ) + ( \Add35~51\ ) + ( \Add35~50\ ))
-- \Add35~55\ = SHARE((!\capym[0][5]~q\ & (\Add37~25_sumout\ & \capym[2][5]~q\)) # (\capym[0][5]~q\ & ((\capym[2][5]~q\) # (\Add37~25_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_capym[0][5]~q\,
	datac => \ALT_INV_Add37~25_sumout\,
	datad => \ALT_INV_capym[2][5]~q\,
	cin => \Add35~50\,
	sharein => \Add35~51\,
	sumout => \Add35~53_sumout\,
	cout => \Add35~54\,
	shareout => \Add35~55\);

-- Location: LABCELL_X83_Y26_N18
\Add35~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~57_sumout\ = SUM(( !\capym[2][6]~q\ $ (!\capym[0][6]~q\ $ (\Add37~29_sumout\)) ) + ( \Add35~55\ ) + ( \Add35~54\ ))
-- \Add35~58\ = CARRY(( !\capym[2][6]~q\ $ (!\capym[0][6]~q\ $ (\Add37~29_sumout\)) ) + ( \Add35~55\ ) + ( \Add35~54\ ))
-- \Add35~59\ = SHARE((!\capym[2][6]~q\ & (\capym[0][6]~q\ & \Add37~29_sumout\)) # (\capym[2][6]~q\ & ((\Add37~29_sumout\) # (\capym[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_capym[2][6]~q\,
	datac => \ALT_INV_capym[0][6]~q\,
	datad => \ALT_INV_Add37~29_sumout\,
	cin => \Add35~54\,
	sharein => \Add35~55\,
	sumout => \Add35~57_sumout\,
	cout => \Add35~58\,
	shareout => \Add35~59\);

-- Location: LABCELL_X83_Y26_N21
\Add35~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~61_sumout\ = SUM(( !\capym[2][7]~q\ $ (!\Add37~33_sumout\ $ (\capym[0][7]~q\)) ) + ( \Add35~59\ ) + ( \Add35~58\ ))
-- \Add35~62\ = CARRY(( !\capym[2][7]~q\ $ (!\Add37~33_sumout\ $ (\capym[0][7]~q\)) ) + ( \Add35~59\ ) + ( \Add35~58\ ))
-- \Add35~63\ = SHARE((!\capym[2][7]~q\ & (\Add37~33_sumout\ & \capym[0][7]~q\)) # (\capym[2][7]~q\ & ((\capym[0][7]~q\) # (\Add37~33_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capym[2][7]~q\,
	datac => \ALT_INV_Add37~33_sumout\,
	datad => \ALT_INV_capym[0][7]~q\,
	cin => \Add35~58\,
	sharein => \Add35~59\,
	sumout => \Add35~61_sumout\,
	cout => \Add35~62\,
	shareout => \Add35~63\);

-- Location: LABCELL_X83_Y26_N24
\Add35~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~65_sumout\ = SUM(( !\capym[2][7]~q\ $ (!\Add37~21_sumout\ $ (\capym[0][7]~q\)) ) + ( \Add35~63\ ) + ( \Add35~62\ ))
-- \Add35~66\ = CARRY(( !\capym[2][7]~q\ $ (!\Add37~21_sumout\ $ (\capym[0][7]~q\)) ) + ( \Add35~63\ ) + ( \Add35~62\ ))
-- \Add35~67\ = SHARE((!\capym[2][7]~q\ & (\Add37~21_sumout\ & \capym[0][7]~q\)) # (\capym[2][7]~q\ & ((\capym[0][7]~q\) # (\Add37~21_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capym[2][7]~q\,
	datac => \ALT_INV_Add37~21_sumout\,
	datad => \ALT_INV_capym[0][7]~q\,
	cin => \Add35~62\,
	sharein => \Add35~63\,
	sumout => \Add35~65_sumout\,
	cout => \Add35~66\,
	shareout => \Add35~67\);

-- Location: LABCELL_X83_Y26_N27
\Add35~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~85_sumout\ = SUM(( !\capym[2][7]~q\ $ (!\capym[0][7]~q\ $ (\Add37~21_sumout\)) ) + ( \Add35~67\ ) + ( \Add35~66\ ))
-- \Add35~86\ = CARRY(( !\capym[2][7]~q\ $ (!\capym[0][7]~q\ $ (\Add37~21_sumout\)) ) + ( \Add35~67\ ) + ( \Add35~66\ ))
-- \Add35~87\ = SHARE((!\capym[2][7]~q\ & (\capym[0][7]~q\ & \Add37~21_sumout\)) # (\capym[2][7]~q\ & ((\Add37~21_sumout\) # (\capym[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capym[2][7]~q\,
	datac => \ALT_INV_capym[0][7]~q\,
	datad => \ALT_INV_Add37~21_sumout\,
	cin => \Add35~66\,
	sharein => \Add35~67\,
	sumout => \Add35~85_sumout\,
	cout => \Add35~86\,
	shareout => \Add35~87\);

-- Location: LABCELL_X83_Y26_N30
\Add35~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~69_sumout\ = SUM(( !\capym[2][7]~q\ $ (!\Add37~21_sumout\ $ (\capym[0][7]~q\)) ) + ( \Add35~87\ ) + ( \Add35~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capym[2][7]~q\,
	datac => \ALT_INV_Add37~21_sumout\,
	datad => \ALT_INV_capym[0][7]~q\,
	cin => \Add35~86\,
	sharein => \Add35~87\,
	sumout => \Add35~69_sumout\);

-- Location: LABCELL_X83_Y29_N39
\Add21~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~5_sumout\ = SUM(( !\capym[1][3]~q\ ) + ( GND ) + ( \Add21~2\ ))
-- \Add21~6\ = CARRY(( !\capym[1][3]~q\ ) + ( GND ) + ( \Add21~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_capym[1][3]~q\,
	cin => \Add21~2\,
	sumout => \Add21~5_sumout\,
	cout => \Add21~6\);

-- Location: LABCELL_X83_Y29_N42
\Add21~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~9_sumout\ = SUM(( !\capym[1][4]~q\ ) + ( GND ) + ( \Add21~6\ ))
-- \Add21~10\ = CARRY(( !\capym[1][4]~q\ ) + ( GND ) + ( \Add21~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_capym[1][4]~q\,
	cin => \Add21~6\,
	sumout => \Add21~9_sumout\,
	cout => \Add21~10\);

-- Location: LABCELL_X83_Y29_N45
\Add21~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~13_sumout\ = SUM(( !\capym[1][5]~q\ ) + ( GND ) + ( \Add21~10\ ))
-- \Add21~14\ = CARRY(( !\capym[1][5]~q\ ) + ( GND ) + ( \Add21~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_capym[1][5]~q\,
	cin => \Add21~10\,
	sumout => \Add21~13_sumout\,
	cout => \Add21~14\);

-- Location: LABCELL_X83_Y29_N48
\Add21~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~17_sumout\ = SUM(( !\capym[1][6]~q\ ) + ( GND ) + ( \Add21~14\ ))
-- \Add21~18\ = CARRY(( !\capym[1][6]~q\ ) + ( GND ) + ( \Add21~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_capym[1][6]~q\,
	cin => \Add21~14\,
	sumout => \Add21~17_sumout\,
	cout => \Add21~18\);

-- Location: LABCELL_X83_Y29_N51
\Add21~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~21_sumout\ = SUM(( !\capym[1][7]~q\ ) + ( GND ) + ( \Add21~18\ ))
-- \Add21~22\ = CARRY(( !\capym[1][7]~q\ ) + ( GND ) + ( \Add21~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capym[1][7]~q\,
	cin => \Add21~18\,
	sumout => \Add21~21_sumout\,
	cout => \Add21~22\);

-- Location: LABCELL_X83_Y29_N54
\Add21~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~25_sumout\ = SUM(( !\capym[1][7]~q\ ) + ( GND ) + ( \Add21~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_capym[1][7]~q\,
	cin => \Add21~22\,
	sumout => \Add21~25_sumout\);

-- Location: MLABCELL_X82_Y26_N9
\Add35~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~5_sumout\ = SUM(( \Add35~45_sumout\ ) + ( \Add21~5_sumout\ ) + ( \Add35~2\ ))
-- \Add35~6\ = CARRY(( \Add35~45_sumout\ ) + ( \Add21~5_sumout\ ) + ( \Add35~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add21~5_sumout\,
	datad => \ALT_INV_Add35~45_sumout\,
	cin => \Add35~2\,
	sumout => \Add35~5_sumout\,
	cout => \Add35~6\);

-- Location: MLABCELL_X82_Y26_N12
\Add35~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~9_sumout\ = SUM(( \Add21~9_sumout\ ) + ( \Add35~49_sumout\ ) + ( \Add35~6\ ))
-- \Add35~10\ = CARRY(( \Add21~9_sumout\ ) + ( \Add35~49_sumout\ ) + ( \Add35~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add35~49_sumout\,
	datac => \ALT_INV_Add21~9_sumout\,
	cin => \Add35~6\,
	sumout => \Add35~9_sumout\,
	cout => \Add35~10\);

-- Location: MLABCELL_X82_Y26_N15
\Add35~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~13_sumout\ = SUM(( \Add35~53_sumout\ ) + ( \Add21~13_sumout\ ) + ( \Add35~10\ ))
-- \Add35~14\ = CARRY(( \Add35~53_sumout\ ) + ( \Add21~13_sumout\ ) + ( \Add35~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add21~13_sumout\,
	datad => \ALT_INV_Add35~53_sumout\,
	cin => \Add35~10\,
	sumout => \Add35~13_sumout\,
	cout => \Add35~14\);

-- Location: MLABCELL_X82_Y26_N18
\Add35~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~17_sumout\ = SUM(( \Add21~17_sumout\ ) + ( \Add35~57_sumout\ ) + ( \Add35~14\ ))
-- \Add35~18\ = CARRY(( \Add21~17_sumout\ ) + ( \Add35~57_sumout\ ) + ( \Add35~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add35~57_sumout\,
	datad => \ALT_INV_Add21~17_sumout\,
	cin => \Add35~14\,
	sumout => \Add35~17_sumout\,
	cout => \Add35~18\);

-- Location: MLABCELL_X82_Y26_N21
\Add35~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~21_sumout\ = SUM(( \Add35~61_sumout\ ) + ( \Add21~21_sumout\ ) + ( \Add35~18\ ))
-- \Add35~22\ = CARRY(( \Add35~61_sumout\ ) + ( \Add21~21_sumout\ ) + ( \Add35~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add21~21_sumout\,
	datad => \ALT_INV_Add35~61_sumout\,
	cin => \Add35~18\,
	sumout => \Add35~21_sumout\,
	cout => \Add35~22\);

-- Location: MLABCELL_X82_Y26_N24
\Add35~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~25_sumout\ = SUM(( \Add21~25_sumout\ ) + ( \Add35~65_sumout\ ) + ( \Add35~22\ ))
-- \Add35~26\ = CARRY(( \Add21~25_sumout\ ) + ( \Add35~65_sumout\ ) + ( \Add35~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add35~65_sumout\,
	datad => \ALT_INV_Add21~25_sumout\,
	cin => \Add35~22\,
	sumout => \Add35~25_sumout\,
	cout => \Add35~26\);

-- Location: MLABCELL_X82_Y26_N27
\Add35~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~89_sumout\ = SUM(( \Add35~85_sumout\ ) + ( \Add21~25_sumout\ ) + ( \Add35~26\ ))
-- \Add35~90\ = CARRY(( \Add35~85_sumout\ ) + ( \Add21~25_sumout\ ) + ( \Add35~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add21~25_sumout\,
	datad => \ALT_INV_Add35~85_sumout\,
	cin => \Add35~26\,
	sumout => \Add35~89_sumout\,
	cout => \Add35~90\);

-- Location: MLABCELL_X82_Y26_N30
\Add35~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~73_sumout\ = SUM(( \Add21~25_sumout\ ) + ( \Add35~69_sumout\ ) + ( \Add35~90\ ))
-- \Add35~74\ = CARRY(( \Add21~25_sumout\ ) + ( \Add35~69_sumout\ ) + ( \Add35~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add35~69_sumout\,
	datad => \ALT_INV_Add21~25_sumout\,
	cin => \Add35~90\,
	sumout => \Add35~73_sumout\,
	cout => \Add35~74\);

-- Location: MLABCELL_X82_Y26_N33
\Add35~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~29_sumout\ = SUM(( \Add21~25_sumout\ ) + ( \Add35~69_sumout\ ) + ( \Add35~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add35~69_sumout\,
	datad => \ALT_INV_Add21~25_sumout\,
	cin => \Add35~74\,
	sumout => \Add35~29_sumout\);

-- Location: LABCELL_X81_Y26_N0
\Add39~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add39~34_cout\ = CARRY(( (\Add35~37_sumout\) # (\Add35~41_sumout\) ) + ( \Add35~29_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add35~41_sumout\,
	datac => \ALT_INV_Add35~29_sumout\,
	datad => \ALT_INV_Add35~37_sumout\,
	cin => GND,
	cout => \Add39~34_cout\);

-- Location: LABCELL_X81_Y26_N3
\Add39~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add39~1_sumout\ = SUM(( \Add35~1_sumout\ ) + ( GND ) + ( \Add39~34_cout\ ))
-- \Add39~2\ = CARRY(( \Add35~1_sumout\ ) + ( GND ) + ( \Add39~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add35~1_sumout\,
	cin => \Add39~34_cout\,
	sumout => \Add39~1_sumout\,
	cout => \Add39~2\);

-- Location: FF_X81_Y26_N4
\y[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add39~1_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[2][0]~q\);

-- Location: LABCELL_X81_Y26_N6
\Add39~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add39~5_sumout\ = SUM(( \Add35~5_sumout\ ) + ( GND ) + ( \Add39~2\ ))
-- \Add39~6\ = CARRY(( \Add35~5_sumout\ ) + ( GND ) + ( \Add39~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add35~5_sumout\,
	cin => \Add39~2\,
	sumout => \Add39~5_sumout\,
	cout => \Add39~6\);

-- Location: FF_X81_Y26_N8
\y[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add39~5_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[2][1]~q\);

-- Location: LABCELL_X81_Y26_N9
\Add39~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add39~9_sumout\ = SUM(( \Add35~9_sumout\ ) + ( GND ) + ( \Add39~6\ ))
-- \Add39~10\ = CARRY(( \Add35~9_sumout\ ) + ( GND ) + ( \Add39~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add35~9_sumout\,
	cin => \Add39~6\,
	sumout => \Add39~9_sumout\,
	cout => \Add39~10\);

-- Location: FF_X81_Y26_N11
\y[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add39~9_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[2][2]~q\);

-- Location: LABCELL_X81_Y26_N12
\Add39~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add39~13_sumout\ = SUM(( \Add35~13_sumout\ ) + ( GND ) + ( \Add39~10\ ))
-- \Add39~14\ = CARRY(( \Add35~13_sumout\ ) + ( GND ) + ( \Add39~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add35~13_sumout\,
	cin => \Add39~10\,
	sumout => \Add39~13_sumout\,
	cout => \Add39~14\);

-- Location: FF_X81_Y26_N14
\y[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add39~13_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[2][3]~q\);

-- Location: LABCELL_X81_Y26_N15
\Add39~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add39~17_sumout\ = SUM(( \Add35~17_sumout\ ) + ( GND ) + ( \Add39~14\ ))
-- \Add39~18\ = CARRY(( \Add35~17_sumout\ ) + ( GND ) + ( \Add39~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add35~17_sumout\,
	cin => \Add39~14\,
	sumout => \Add39~17_sumout\,
	cout => \Add39~18\);

-- Location: FF_X81_Y26_N16
\y[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add39~17_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[2][4]~q\);

-- Location: LABCELL_X81_Y26_N18
\Add39~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add39~21_sumout\ = SUM(( \Add35~21_sumout\ ) + ( GND ) + ( \Add39~18\ ))
-- \Add39~22\ = CARRY(( \Add35~21_sumout\ ) + ( GND ) + ( \Add39~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add35~21_sumout\,
	cin => \Add39~18\,
	sumout => \Add39~21_sumout\,
	cout => \Add39~22\);

-- Location: FF_X81_Y26_N19
\y[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add39~21_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[2][5]~q\);

-- Location: LABCELL_X81_Y26_N21
\Add39~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add39~25_sumout\ = SUM(( \Add35~25_sumout\ ) + ( GND ) + ( \Add39~22\ ))
-- \Add39~26\ = CARRY(( \Add35~25_sumout\ ) + ( GND ) + ( \Add39~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add35~25_sumout\,
	cin => \Add39~22\,
	sumout => \Add39~25_sumout\,
	cout => \Add39~26\);

-- Location: FF_X81_Y26_N22
\y[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add39~25_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[2][6]~q\);

-- Location: LABCELL_X81_Y26_N24
\Add39~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add39~46_cout\ = CARRY(( \Add35~89_sumout\ ) + ( GND ) + ( \Add39~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add35~89_sumout\,
	cin => \Add39~26\,
	cout => \Add39~46_cout\);

-- Location: LABCELL_X81_Y26_N27
\Add39~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add39~42_cout\ = CARRY(( \Add35~73_sumout\ ) + ( GND ) + ( \Add39~46_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add35~73_sumout\,
	cin => \Add39~46_cout\,
	cout => \Add39~42_cout\);

-- Location: LABCELL_X81_Y26_N30
\Add39~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add39~38_cout\ = CARRY(( \Add35~29_sumout\ ) + ( GND ) + ( \Add39~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add35~29_sumout\,
	cin => \Add39~42_cout\,
	cout => \Add39~38_cout\);

-- Location: LABCELL_X81_Y26_N33
\Add39~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add39~29_sumout\ = SUM(( \Add35~29_sumout\ ) + ( GND ) + ( \Add39~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add35~29_sumout\,
	cin => \Add39~38_cout\,
	sumout => \Add39~29_sumout\);

-- Location: FF_X81_Y26_N34
\y[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add39~29_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[2][7]~q\);

-- Location: FF_X83_Y26_N38
\capym[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \capym~11_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[0][1]~q\);

-- Location: FF_X82_Y28_N53
\capym[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \capym~12_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[0][0]~q\);

-- Location: MLABCELL_X82_Y28_N0
\Add25~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add25~37_sumout\ = SUM(( !\Add23~33_sumout\ $ (!\capym[0][0]~q\) ) + ( !VCC ) + ( !VCC ))
-- \Add25~38\ = CARRY(( !\Add23~33_sumout\ $ (!\capym[0][0]~q\) ) + ( !VCC ) + ( !VCC ))
-- \Add25~39\ = SHARE((\Add23~33_sumout\ & \capym[0][0]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add23~33_sumout\,
	datac => \ALT_INV_capym[0][0]~q\,
	cin => GND,
	sharein => GND,
	sumout => \Add25~37_sumout\,
	cout => \Add25~38\,
	shareout => \Add25~39\);

-- Location: MLABCELL_X82_Y28_N3
\Add25~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add25~33_sumout\ = SUM(( !\capym[0][1]~q\ $ (!\Add23~29_sumout\) ) + ( \Add25~39\ ) + ( \Add25~38\ ))
-- \Add25~34\ = CARRY(( !\capym[0][1]~q\ $ (!\Add23~29_sumout\) ) + ( \Add25~39\ ) + ( \Add25~38\ ))
-- \Add25~35\ = SHARE((\capym[0][1]~q\ & \Add23~29_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capym[0][1]~q\,
	datad => \ALT_INV_Add23~29_sumout\,
	cin => \Add25~38\,
	sharein => \Add25~39\,
	sumout => \Add25~33_sumout\,
	cout => \Add25~34\,
	shareout => \Add25~35\);

-- Location: MLABCELL_X82_Y28_N6
\Add25~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add25~1_sumout\ = SUM(( !\Add23~1_sumout\ $ (!\capym[0][2]~q\) ) + ( \Add25~35\ ) + ( \Add25~34\ ))
-- \Add25~2\ = CARRY(( !\Add23~1_sumout\ $ (!\capym[0][2]~q\) ) + ( \Add25~35\ ) + ( \Add25~34\ ))
-- \Add25~3\ = SHARE((\Add23~1_sumout\ & \capym[0][2]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add23~1_sumout\,
	datad => \ALT_INV_capym[0][2]~q\,
	cin => \Add25~34\,
	sharein => \Add25~35\,
	sumout => \Add25~1_sumout\,
	cout => \Add25~2\,
	shareout => \Add25~3\);

-- Location: FF_X82_Y29_N46
\capym[0][6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \capym~22_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[0][6]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y29_N0
\Add22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add22~1_sumout\ = SUM(( \Add21~33_sumout\ ) + ( \capym[0][4]~DUPLICATE_q\ ) + ( !VCC ))
-- \Add22~2\ = CARRY(( \Add21~33_sumout\ ) + ( \capym[0][4]~DUPLICATE_q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add21~33_sumout\,
	dataf => \ALT_INV_capym[0][4]~DUPLICATE_q\,
	cin => GND,
	sumout => \Add22~1_sumout\,
	cout => \Add22~2\);

-- Location: LABCELL_X83_Y29_N3
\Add22~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add22~5_sumout\ = SUM(( \capym[0][5]~q\ ) + ( \Add21~29_sumout\ ) + ( \Add22~2\ ))
-- \Add22~6\ = CARRY(( \capym[0][5]~q\ ) + ( \Add21~29_sumout\ ) + ( \Add22~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add21~29_sumout\,
	datad => \ALT_INV_capym[0][5]~q\,
	cin => \Add22~2\,
	sumout => \Add22~5_sumout\,
	cout => \Add22~6\);

-- Location: LABCELL_X83_Y29_N6
\Add22~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add22~9_sumout\ = SUM(( \Add21~1_sumout\ ) + ( \capym[0][6]~DUPLICATE_q\ ) + ( \Add22~6\ ))
-- \Add22~10\ = CARRY(( \Add21~1_sumout\ ) + ( \capym[0][6]~DUPLICATE_q\ ) + ( \Add22~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capym[0][6]~DUPLICATE_q\,
	datad => \ALT_INV_Add21~1_sumout\,
	cin => \Add22~6\,
	sumout => \Add22~9_sumout\,
	cout => \Add22~10\);

-- Location: LABCELL_X83_Y29_N9
\Add22~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add22~13_sumout\ = SUM(( \capym[0][7]~q\ ) + ( \Add21~5_sumout\ ) + ( \Add22~10\ ))
-- \Add22~14\ = CARRY(( \capym[0][7]~q\ ) + ( \Add21~5_sumout\ ) + ( \Add22~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add21~5_sumout\,
	datad => \ALT_INV_capym[0][7]~q\,
	cin => \Add22~10\,
	sumout => \Add22~13_sumout\,
	cout => \Add22~14\);

-- Location: LABCELL_X83_Y29_N12
\Add22~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add22~17_sumout\ = SUM(( \Add21~9_sumout\ ) + ( \capym[0][7]~q\ ) + ( \Add22~14\ ))
-- \Add22~18\ = CARRY(( \Add21~9_sumout\ ) + ( \capym[0][7]~q\ ) + ( \Add22~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_capym[0][7]~q\,
	datad => \ALT_INV_Add21~9_sumout\,
	cin => \Add22~14\,
	sumout => \Add22~17_sumout\,
	cout => \Add22~18\);

-- Location: LABCELL_X83_Y29_N15
\Add22~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add22~37_sumout\ = SUM(( \Add21~13_sumout\ ) + ( \capym[0][7]~q\ ) + ( \Add22~18\ ))
-- \Add22~38\ = CARRY(( \Add21~13_sumout\ ) + ( \capym[0][7]~q\ ) + ( \Add22~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capym[0][7]~q\,
	datad => \ALT_INV_Add21~13_sumout\,
	cin => \Add22~18\,
	sumout => \Add22~37_sumout\,
	cout => \Add22~38\);

-- Location: LABCELL_X83_Y29_N18
\Add22~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add22~33_sumout\ = SUM(( \capym[0][7]~q\ ) + ( \Add21~17_sumout\ ) + ( \Add22~38\ ))
-- \Add22~34\ = CARRY(( \capym[0][7]~q\ ) + ( \Add21~17_sumout\ ) + ( \Add22~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add21~17_sumout\,
	datad => \ALT_INV_capym[0][7]~q\,
	cin => \Add22~38\,
	sumout => \Add22~33_sumout\,
	cout => \Add22~34\);

-- Location: LABCELL_X83_Y29_N21
\Add22~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add22~29_sumout\ = SUM(( \Add21~21_sumout\ ) + ( \capym[0][7]~q\ ) + ( \Add22~34\ ))
-- \Add22~30\ = CARRY(( \Add21~21_sumout\ ) + ( \capym[0][7]~q\ ) + ( \Add22~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capym[0][7]~q\,
	datad => \ALT_INV_Add21~21_sumout\,
	cin => \Add22~34\,
	sumout => \Add22~29_sumout\,
	cout => \Add22~30\);

-- Location: LABCELL_X83_Y29_N24
\Add22~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add22~25_sumout\ = SUM(( \Add21~25_sumout\ ) + ( \capym[0][7]~q\ ) + ( \Add22~30\ ))
-- \Add22~26\ = CARRY(( \Add21~25_sumout\ ) + ( \capym[0][7]~q\ ) + ( \Add22~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_capym[0][7]~q\,
	datad => \ALT_INV_Add21~25_sumout\,
	cin => \Add22~30\,
	sumout => \Add22~25_sumout\,
	cout => \Add22~26\);

-- Location: LABCELL_X83_Y29_N27
\Add22~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add22~21_sumout\ = SUM(( \Add21~25_sumout\ ) + ( \capym[0][7]~q\ ) + ( \Add22~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capym[0][7]~q\,
	datad => \ALT_INV_Add21~25_sumout\,
	cin => \Add22~26\,
	sumout => \Add22~21_sumout\);

-- Location: FF_X83_Y27_N34
\capym[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \capym~9_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[3][6]~q\);

-- Location: FF_X83_Y27_N52
\capym[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \capym~4_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[3][2]~q\);

-- Location: FF_X83_Y27_N31
\capym[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \capym~3_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[3][1]~q\);

-- Location: FF_X83_Y27_N37
\capym[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \capym~2_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capym[3][0]~q\);

-- Location: MLABCELL_X82_Y28_N9
\Add25~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add25~5_sumout\ = SUM(( !\capym[0][3]~q\ $ (!\Add23~5_sumout\) ) + ( \Add25~3\ ) + ( \Add25~2\ ))
-- \Add25~6\ = CARRY(( !\capym[0][3]~q\ $ (!\Add23~5_sumout\) ) + ( \Add25~3\ ) + ( \Add25~2\ ))
-- \Add25~7\ = SHARE((\capym[0][3]~q\ & \Add23~5_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capym[0][3]~q\,
	datad => \ALT_INV_Add23~5_sumout\,
	cin => \Add25~2\,
	sharein => \Add25~3\,
	sumout => \Add25~5_sumout\,
	cout => \Add25~6\,
	shareout => \Add25~7\);

-- Location: MLABCELL_X82_Y28_N12
\Add25~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add25~9_sumout\ = SUM(( !\Add22~1_sumout\ $ (!\capym[3][0]~q\ $ (\Add23~9_sumout\)) ) + ( \Add25~7\ ) + ( \Add25~6\ ))
-- \Add25~10\ = CARRY(( !\Add22~1_sumout\ $ (!\capym[3][0]~q\ $ (\Add23~9_sumout\)) ) + ( \Add25~7\ ) + ( \Add25~6\ ))
-- \Add25~11\ = SHARE((!\Add22~1_sumout\ & (\capym[3][0]~q\ & \Add23~9_sumout\)) # (\Add22~1_sumout\ & ((\Add23~9_sumout\) # (\capym[3][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add22~1_sumout\,
	datac => \ALT_INV_capym[3][0]~q\,
	datad => \ALT_INV_Add23~9_sumout\,
	cin => \Add25~6\,
	sharein => \Add25~7\,
	sumout => \Add25~9_sumout\,
	cout => \Add25~10\,
	shareout => \Add25~11\);

-- Location: MLABCELL_X82_Y28_N15
\Add25~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add25~13_sumout\ = SUM(( !\Add23~13_sumout\ $ (!\capym[3][1]~q\ $ (\Add22~5_sumout\)) ) + ( \Add25~11\ ) + ( \Add25~10\ ))
-- \Add25~14\ = CARRY(( !\Add23~13_sumout\ $ (!\capym[3][1]~q\ $ (\Add22~5_sumout\)) ) + ( \Add25~11\ ) + ( \Add25~10\ ))
-- \Add25~15\ = SHARE((!\Add23~13_sumout\ & (\capym[3][1]~q\ & \Add22~5_sumout\)) # (\Add23~13_sumout\ & ((\Add22~5_sumout\) # (\capym[3][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add23~13_sumout\,
	datac => \ALT_INV_capym[3][1]~q\,
	datad => \ALT_INV_Add22~5_sumout\,
	cin => \Add25~10\,
	sharein => \Add25~11\,
	sumout => \Add25~13_sumout\,
	cout => \Add25~14\,
	shareout => \Add25~15\);

-- Location: MLABCELL_X82_Y28_N18
\Add25~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add25~17_sumout\ = SUM(( !\Add23~17_sumout\ $ (!\capym[3][2]~q\ $ (\Add22~9_sumout\)) ) + ( \Add25~15\ ) + ( \Add25~14\ ))
-- \Add25~18\ = CARRY(( !\Add23~17_sumout\ $ (!\capym[3][2]~q\ $ (\Add22~9_sumout\)) ) + ( \Add25~15\ ) + ( \Add25~14\ ))
-- \Add25~19\ = SHARE((!\Add23~17_sumout\ & (\capym[3][2]~q\ & \Add22~9_sumout\)) # (\Add23~17_sumout\ & ((\Add22~9_sumout\) # (\capym[3][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add23~17_sumout\,
	datac => \ALT_INV_capym[3][2]~q\,
	datad => \ALT_INV_Add22~9_sumout\,
	cin => \Add25~14\,
	sharein => \Add25~15\,
	sumout => \Add25~17_sumout\,
	cout => \Add25~18\,
	shareout => \Add25~19\);

-- Location: MLABCELL_X82_Y28_N21
\Add25~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add25~21_sumout\ = SUM(( !\capym[3][3]~q\ $ (!\Add23~21_sumout\ $ (\Add22~13_sumout\)) ) + ( \Add25~19\ ) + ( \Add25~18\ ))
-- \Add25~22\ = CARRY(( !\capym[3][3]~q\ $ (!\Add23~21_sumout\ $ (\Add22~13_sumout\)) ) + ( \Add25~19\ ) + ( \Add25~18\ ))
-- \Add25~23\ = SHARE((!\capym[3][3]~q\ & (\Add23~21_sumout\ & \Add22~13_sumout\)) # (\capym[3][3]~q\ & ((\Add22~13_sumout\) # (\Add23~21_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capym[3][3]~q\,
	datac => \ALT_INV_Add23~21_sumout\,
	datad => \ALT_INV_Add22~13_sumout\,
	cin => \Add25~18\,
	sharein => \Add25~19\,
	sumout => \Add25~21_sumout\,
	cout => \Add25~22\,
	shareout => \Add25~23\);

-- Location: MLABCELL_X82_Y28_N24
\Add25~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add25~25_sumout\ = SUM(( !\Add23~25_sumout\ $ (!\capym[3][4]~q\ $ (\Add22~17_sumout\)) ) + ( \Add25~23\ ) + ( \Add25~22\ ))
-- \Add25~26\ = CARRY(( !\Add23~25_sumout\ $ (!\capym[3][4]~q\ $ (\Add22~17_sumout\)) ) + ( \Add25~23\ ) + ( \Add25~22\ ))
-- \Add25~27\ = SHARE((!\Add23~25_sumout\ & (\capym[3][4]~q\ & \Add22~17_sumout\)) # (\Add23~25_sumout\ & ((\Add22~17_sumout\) # (\capym[3][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add23~25_sumout\,
	datac => \ALT_INV_capym[3][4]~q\,
	datad => \ALT_INV_Add22~17_sumout\,
	cin => \Add25~22\,
	sharein => \Add25~23\,
	sumout => \Add25~25_sumout\,
	cout => \Add25~26\,
	shareout => \Add25~27\);

-- Location: MLABCELL_X82_Y28_N27
\Add25~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add25~61_sumout\ = SUM(( !\capym[3][5]~q\ $ (!\Add23~25_sumout\ $ (\Add22~37_sumout\)) ) + ( \Add25~27\ ) + ( \Add25~26\ ))
-- \Add25~62\ = CARRY(( !\capym[3][5]~q\ $ (!\Add23~25_sumout\ $ (\Add22~37_sumout\)) ) + ( \Add25~27\ ) + ( \Add25~26\ ))
-- \Add25~63\ = SHARE((!\capym[3][5]~q\ & (\Add23~25_sumout\ & \Add22~37_sumout\)) # (\capym[3][5]~q\ & ((\Add22~37_sumout\) # (\Add23~25_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010111011100000000000000000110011010011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capym[3][5]~q\,
	datab => \ALT_INV_Add23~25_sumout\,
	datad => \ALT_INV_Add22~37_sumout\,
	cin => \Add25~26\,
	sharein => \Add25~27\,
	sumout => \Add25~61_sumout\,
	cout => \Add25~62\,
	shareout => \Add25~63\);

-- Location: MLABCELL_X82_Y28_N30
\Add25~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add25~57_sumout\ = SUM(( !\Add23~25_sumout\ $ (!\Add22~33_sumout\ $ (\capym[3][6]~q\)) ) + ( \Add25~63\ ) + ( \Add25~62\ ))
-- \Add25~58\ = CARRY(( !\Add23~25_sumout\ $ (!\Add22~33_sumout\ $ (\capym[3][6]~q\)) ) + ( \Add25~63\ ) + ( \Add25~62\ ))
-- \Add25~59\ = SHARE((!\Add23~25_sumout\ & (\Add22~33_sumout\ & \capym[3][6]~q\)) # (\Add23~25_sumout\ & ((\capym[3][6]~q\) # (\Add22~33_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add23~25_sumout\,
	datac => \ALT_INV_Add22~33_sumout\,
	datad => \ALT_INV_capym[3][6]~q\,
	cin => \Add25~62\,
	sharein => \Add25~63\,
	sumout => \Add25~57_sumout\,
	cout => \Add25~58\,
	shareout => \Add25~59\);

-- Location: MLABCELL_X82_Y28_N33
\Add25~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add25~53_sumout\ = SUM(( !\Add23~25_sumout\ $ (!\capym[3][7]~q\ $ (\Add22~29_sumout\)) ) + ( \Add25~59\ ) + ( \Add25~58\ ))
-- \Add25~54\ = CARRY(( !\Add23~25_sumout\ $ (!\capym[3][7]~q\ $ (\Add22~29_sumout\)) ) + ( \Add25~59\ ) + ( \Add25~58\ ))
-- \Add25~55\ = SHARE((!\Add23~25_sumout\ & (\capym[3][7]~q\ & \Add22~29_sumout\)) # (\Add23~25_sumout\ & ((\Add22~29_sumout\) # (\capym[3][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add23~25_sumout\,
	datac => \ALT_INV_capym[3][7]~q\,
	datad => \ALT_INV_Add22~29_sumout\,
	cin => \Add25~58\,
	sharein => \Add25~59\,
	sumout => \Add25~53_sumout\,
	cout => \Add25~54\,
	shareout => \Add25~55\);

-- Location: MLABCELL_X82_Y28_N36
\Add25~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add25~49_sumout\ = SUM(( !\capym[3][7]~q\ $ (!\Add23~25_sumout\ $ (\Add22~25_sumout\)) ) + ( \Add25~55\ ) + ( \Add25~54\ ))
-- \Add25~50\ = CARRY(( !\capym[3][7]~q\ $ (!\Add23~25_sumout\ $ (\Add22~25_sumout\)) ) + ( \Add25~55\ ) + ( \Add25~54\ ))
-- \Add25~51\ = SHARE((!\capym[3][7]~q\ & (\Add23~25_sumout\ & \Add22~25_sumout\)) # (\capym[3][7]~q\ & ((\Add22~25_sumout\) # (\Add23~25_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010111011100000000000000000110011010011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capym[3][7]~q\,
	datab => \ALT_INV_Add23~25_sumout\,
	datad => \ALT_INV_Add22~25_sumout\,
	cin => \Add25~54\,
	sharein => \Add25~55\,
	sumout => \Add25~49_sumout\,
	cout => \Add25~50\,
	shareout => \Add25~51\);

-- Location: MLABCELL_X82_Y28_N39
\Add25~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add25~45_sumout\ = SUM(( !\capym[3][7]~q\ $ (!\Add23~25_sumout\ $ (\Add22~21_sumout\)) ) + ( \Add25~51\ ) + ( \Add25~50\ ))
-- \Add25~46\ = CARRY(( !\capym[3][7]~q\ $ (!\Add23~25_sumout\ $ (\Add22~21_sumout\)) ) + ( \Add25~51\ ) + ( \Add25~50\ ))
-- \Add25~47\ = SHARE((!\capym[3][7]~q\ & (\Add23~25_sumout\ & \Add22~21_sumout\)) # (\capym[3][7]~q\ & ((\Add22~21_sumout\) # (\Add23~25_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capym[3][7]~q\,
	datac => \ALT_INV_Add23~25_sumout\,
	datad => \ALT_INV_Add22~21_sumout\,
	cin => \Add25~50\,
	sharein => \Add25~51\,
	sumout => \Add25~45_sumout\,
	cout => \Add25~46\,
	shareout => \Add25~47\);

-- Location: MLABCELL_X82_Y28_N42
\Add25~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add25~41_sumout\ = SUM(( !\Add23~25_sumout\ $ (!\capym[3][7]~q\ $ (\Add22~21_sumout\)) ) + ( \Add25~47\ ) + ( \Add25~46\ ))
-- \Add25~42\ = CARRY(( !\Add23~25_sumout\ $ (!\capym[3][7]~q\ $ (\Add22~21_sumout\)) ) + ( \Add25~47\ ) + ( \Add25~46\ ))
-- \Add25~43\ = SHARE((!\Add23~25_sumout\ & (\capym[3][7]~q\ & \Add22~21_sumout\)) # (\Add23~25_sumout\ & ((\Add22~21_sumout\) # (\capym[3][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add23~25_sumout\,
	datac => \ALT_INV_capym[3][7]~q\,
	datad => \ALT_INV_Add22~21_sumout\,
	cin => \Add25~46\,
	sharein => \Add25~47\,
	sumout => \Add25~41_sumout\,
	cout => \Add25~42\,
	shareout => \Add25~43\);

-- Location: MLABCELL_X82_Y28_N45
\Add25~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add25~29_sumout\ = SUM(( !\Add23~25_sumout\ $ (!\capym[3][7]~q\ $ (\Add22~21_sumout\)) ) + ( \Add25~43\ ) + ( \Add25~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add23~25_sumout\,
	datac => \ALT_INV_capym[3][7]~q\,
	datad => \ALT_INV_Add22~21_sumout\,
	cin => \Add25~42\,
	sharein => \Add25~43\,
	sumout => \Add25~29_sumout\);

-- Location: LABCELL_X81_Y28_N0
\Add26~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~34_cout\ = CARRY(( (\Add25~37_sumout\) # (\Add25~33_sumout\) ) + ( \Add25~29_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add25~33_sumout\,
	datac => \ALT_INV_Add25~29_sumout\,
	datad => \ALT_INV_Add25~37_sumout\,
	cin => GND,
	cout => \Add26~34_cout\);

-- Location: LABCELL_X81_Y28_N3
\Add26~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~1_sumout\ = SUM(( \Add25~1_sumout\ ) + ( GND ) + ( \Add26~34_cout\ ))
-- \Add26~2\ = CARRY(( \Add25~1_sumout\ ) + ( GND ) + ( \Add26~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add25~1_sumout\,
	cin => \Add26~34_cout\,
	sumout => \Add26~1_sumout\,
	cout => \Add26~2\);

-- Location: FF_X81_Y28_N4
\y[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add26~1_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[1][0]~q\);

-- Location: LABCELL_X81_Y28_N6
\Add26~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~5_sumout\ = SUM(( \Add25~5_sumout\ ) + ( GND ) + ( \Add26~2\ ))
-- \Add26~6\ = CARRY(( \Add25~5_sumout\ ) + ( GND ) + ( \Add26~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add25~5_sumout\,
	cin => \Add26~2\,
	sumout => \Add26~5_sumout\,
	cout => \Add26~6\);

-- Location: FF_X81_Y28_N7
\y[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add26~5_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[1][1]~q\);

-- Location: LABCELL_X81_Y28_N9
\Add26~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~9_sumout\ = SUM(( \Add25~9_sumout\ ) + ( GND ) + ( \Add26~6\ ))
-- \Add26~10\ = CARRY(( \Add25~9_sumout\ ) + ( GND ) + ( \Add26~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add25~9_sumout\,
	cin => \Add26~6\,
	sumout => \Add26~9_sumout\,
	cout => \Add26~10\);

-- Location: FF_X81_Y28_N10
\y[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add26~9_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[1][2]~q\);

-- Location: LABCELL_X81_Y28_N12
\Add26~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~13_sumout\ = SUM(( \Add25~13_sumout\ ) + ( GND ) + ( \Add26~10\ ))
-- \Add26~14\ = CARRY(( \Add25~13_sumout\ ) + ( GND ) + ( \Add26~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add25~13_sumout\,
	cin => \Add26~10\,
	sumout => \Add26~13_sumout\,
	cout => \Add26~14\);

-- Location: FF_X81_Y28_N14
\y[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add26~13_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[1][3]~q\);

-- Location: LABCELL_X81_Y28_N15
\Add26~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~17_sumout\ = SUM(( \Add25~17_sumout\ ) + ( GND ) + ( \Add26~14\ ))
-- \Add26~18\ = CARRY(( \Add25~17_sumout\ ) + ( GND ) + ( \Add26~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add25~17_sumout\,
	cin => \Add26~14\,
	sumout => \Add26~17_sumout\,
	cout => \Add26~18\);

-- Location: FF_X81_Y28_N17
\y[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add26~17_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[1][4]~q\);

-- Location: LABCELL_X81_Y28_N18
\Add26~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~21_sumout\ = SUM(( \Add25~21_sumout\ ) + ( GND ) + ( \Add26~18\ ))
-- \Add26~22\ = CARRY(( \Add25~21_sumout\ ) + ( GND ) + ( \Add26~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add25~21_sumout\,
	cin => \Add26~18\,
	sumout => \Add26~21_sumout\,
	cout => \Add26~22\);

-- Location: FF_X81_Y28_N19
\y[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add26~21_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[1][5]~q\);

-- Location: LABCELL_X81_Y28_N21
\Add26~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~25_sumout\ = SUM(( \Add25~25_sumout\ ) + ( GND ) + ( \Add26~22\ ))
-- \Add26~26\ = CARRY(( \Add25~25_sumout\ ) + ( GND ) + ( \Add26~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add25~25_sumout\,
	cin => \Add26~22\,
	sumout => \Add26~25_sumout\,
	cout => \Add26~26\);

-- Location: FF_X81_Y28_N22
\y[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add26~25_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[1][6]~q\);

-- Location: LABCELL_X81_Y28_N24
\Add26~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~62_cout\ = CARRY(( \Add25~61_sumout\ ) + ( GND ) + ( \Add26~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add25~61_sumout\,
	cin => \Add26~26\,
	cout => \Add26~62_cout\);

-- Location: LABCELL_X81_Y28_N27
\Add26~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~58_cout\ = CARRY(( \Add25~57_sumout\ ) + ( GND ) + ( \Add26~62_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add25~57_sumout\,
	cin => \Add26~62_cout\,
	cout => \Add26~58_cout\);

-- Location: LABCELL_X81_Y28_N30
\Add26~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~54_cout\ = CARRY(( \Add25~53_sumout\ ) + ( GND ) + ( \Add26~58_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add25~53_sumout\,
	cin => \Add26~58_cout\,
	cout => \Add26~54_cout\);

-- Location: LABCELL_X81_Y28_N33
\Add26~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~50_cout\ = CARRY(( \Add25~49_sumout\ ) + ( GND ) + ( \Add26~54_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add25~49_sumout\,
	cin => \Add26~54_cout\,
	cout => \Add26~50_cout\);

-- Location: LABCELL_X81_Y28_N36
\Add26~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~46_cout\ = CARRY(( \Add25~45_sumout\ ) + ( GND ) + ( \Add26~50_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add25~45_sumout\,
	cin => \Add26~50_cout\,
	cout => \Add26~46_cout\);

-- Location: LABCELL_X81_Y28_N39
\Add26~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~42_cout\ = CARRY(( \Add25~41_sumout\ ) + ( GND ) + ( \Add26~46_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add25~41_sumout\,
	cin => \Add26~46_cout\,
	cout => \Add26~42_cout\);

-- Location: LABCELL_X81_Y28_N42
\Add26~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~38_cout\ = CARRY(( \Add25~29_sumout\ ) + ( GND ) + ( \Add26~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add25~29_sumout\,
	cin => \Add26~42_cout\,
	cout => \Add26~38_cout\);

-- Location: LABCELL_X81_Y28_N45
\Add26~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~29_sumout\ = SUM(( \Add25~29_sumout\ ) + ( GND ) + ( \Add26~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add25~29_sumout\,
	cin => \Add26~38_cout\,
	sumout => \Add26~29_sumout\);

-- Location: FF_X81_Y28_N46
\y[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add26~29_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[1][7]~q\);

-- Location: LABCELL_X83_Y28_N30
\Add7~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~37_sumout\ = SUM(( !\capym[1][0]~DUPLICATE_q\ $ (!\capym[0][0]~DUPLICATE_q\ $ (\capym[2][0]~DUPLICATE_q\)) ) + ( !VCC ) + ( !VCC ))
-- \Add7~38\ = CARRY(( !\capym[1][0]~DUPLICATE_q\ $ (!\capym[0][0]~DUPLICATE_q\ $ (\capym[2][0]~DUPLICATE_q\)) ) + ( !VCC ) + ( !VCC ))
-- \Add7~39\ = SHARE((!\capym[1][0]~DUPLICATE_q\ & (\capym[0][0]~DUPLICATE_q\ & \capym[2][0]~DUPLICATE_q\)) # (\capym[1][0]~DUPLICATE_q\ & ((\capym[2][0]~DUPLICATE_q\) # (\capym[0][0]~DUPLICATE_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_capym[1][0]~DUPLICATE_q\,
	datac => \ALT_INV_capym[0][0]~DUPLICATE_q\,
	datad => \ALT_INV_capym[2][0]~DUPLICATE_q\,
	cin => GND,
	sharein => GND,
	sumout => \Add7~37_sumout\,
	cout => \Add7~38\,
	shareout => \Add7~39\);

-- Location: LABCELL_X83_Y28_N33
\Add7~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~33_sumout\ = SUM(( !\capym[0][1]~q\ $ (!\capym[1][1]~q\ $ (\capym[2][1]~q\)) ) + ( \Add7~39\ ) + ( \Add7~38\ ))
-- \Add7~34\ = CARRY(( !\capym[0][1]~q\ $ (!\capym[1][1]~q\ $ (\capym[2][1]~q\)) ) + ( \Add7~39\ ) + ( \Add7~38\ ))
-- \Add7~35\ = SHARE((!\capym[0][1]~q\ & (\capym[1][1]~q\ & \capym[2][1]~q\)) # (\capym[0][1]~q\ & ((\capym[2][1]~q\) # (\capym[1][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capym[0][1]~q\,
	datac => \ALT_INV_capym[1][1]~q\,
	datad => \ALT_INV_capym[2][1]~q\,
	cin => \Add7~38\,
	sharein => \Add7~39\,
	sumout => \Add7~33_sumout\,
	cout => \Add7~34\,
	shareout => \Add7~35\);

-- Location: LABCELL_X83_Y28_N36
\Add7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~1_sumout\ = SUM(( !\capym[1][2]~DUPLICATE_q\ $ (!\capym[2][2]~DUPLICATE_q\ $ (\capym[0][2]~q\)) ) + ( \Add7~35\ ) + ( \Add7~34\ ))
-- \Add7~2\ = CARRY(( !\capym[1][2]~DUPLICATE_q\ $ (!\capym[2][2]~DUPLICATE_q\ $ (\capym[0][2]~q\)) ) + ( \Add7~35\ ) + ( \Add7~34\ ))
-- \Add7~3\ = SHARE((!\capym[1][2]~DUPLICATE_q\ & (\capym[2][2]~DUPLICATE_q\ & \capym[0][2]~q\)) # (\capym[1][2]~DUPLICATE_q\ & ((\capym[0][2]~q\) # (\capym[2][2]~DUPLICATE_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capym[1][2]~DUPLICATE_q\,
	datac => \ALT_INV_capym[2][2]~DUPLICATE_q\,
	datad => \ALT_INV_capym[0][2]~q\,
	cin => \Add7~34\,
	sharein => \Add7~35\,
	sumout => \Add7~1_sumout\,
	cout => \Add7~2\,
	shareout => \Add7~3\);

-- Location: MLABCELL_X82_Y27_N0
\Add9~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~37_sumout\ = SUM(( \capym[3][0]~DUPLICATE_q\ ) + ( \Add7~37_sumout\ ) + ( !VCC ))
-- \Add9~38\ = CARRY(( \capym[3][0]~DUPLICATE_q\ ) + ( \Add7~37_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add7~37_sumout\,
	datad => \ALT_INV_capym[3][0]~DUPLICATE_q\,
	cin => GND,
	sumout => \Add9~37_sumout\,
	cout => \Add9~38\);

-- Location: MLABCELL_X82_Y27_N3
\Add9~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~33_sumout\ = SUM(( \Add7~33_sumout\ ) + ( \capym[3][1]~DUPLICATE_q\ ) + ( \Add9~38\ ))
-- \Add9~34\ = CARRY(( \Add7~33_sumout\ ) + ( \capym[3][1]~DUPLICATE_q\ ) + ( \Add9~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capym[3][1]~DUPLICATE_q\,
	datac => \ALT_INV_Add7~33_sumout\,
	cin => \Add9~38\,
	sumout => \Add9~33_sumout\,
	cout => \Add9~34\);

-- Location: MLABCELL_X82_Y27_N6
\Add9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~1_sumout\ = SUM(( \Add7~1_sumout\ ) + ( \capym[3][2]~DUPLICATE_q\ ) + ( \Add9~34\ ))
-- \Add9~2\ = CARRY(( \Add7~1_sumout\ ) + ( \capym[3][2]~DUPLICATE_q\ ) + ( \Add9~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capym[3][2]~DUPLICATE_q\,
	datac => \ALT_INV_Add7~1_sumout\,
	cin => \Add9~34\,
	sumout => \Add9~1_sumout\,
	cout => \Add9~2\);

-- Location: LABCELL_X83_Y28_N39
\Add7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~5_sumout\ = SUM(( !\capym[2][3]~DUPLICATE_q\ $ (!\capym[1][3]~q\ $ (\capym[0][3]~q\)) ) + ( \Add7~3\ ) + ( \Add7~2\ ))
-- \Add7~6\ = CARRY(( !\capym[2][3]~DUPLICATE_q\ $ (!\capym[1][3]~q\ $ (\capym[0][3]~q\)) ) + ( \Add7~3\ ) + ( \Add7~2\ ))
-- \Add7~7\ = SHARE((!\capym[2][3]~DUPLICATE_q\ & (\capym[1][3]~q\ & \capym[0][3]~q\)) # (\capym[2][3]~DUPLICATE_q\ & ((\capym[0][3]~q\) # (\capym[1][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_capym[2][3]~DUPLICATE_q\,
	datac => \ALT_INV_capym[1][3]~q\,
	datad => \ALT_INV_capym[0][3]~q\,
	cin => \Add7~2\,
	sharein => \Add7~3\,
	sumout => \Add7~5_sumout\,
	cout => \Add7~6\,
	shareout => \Add7~7\);

-- Location: LABCELL_X83_Y28_N42
\Add7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~9_sumout\ = SUM(( !\capym[1][4]~q\ $ (!\capym[0][4]~DUPLICATE_q\ $ (\capym[2][4]~q\)) ) + ( \Add7~7\ ) + ( \Add7~6\ ))
-- \Add7~10\ = CARRY(( !\capym[1][4]~q\ $ (!\capym[0][4]~DUPLICATE_q\ $ (\capym[2][4]~q\)) ) + ( \Add7~7\ ) + ( \Add7~6\ ))
-- \Add7~11\ = SHARE((!\capym[1][4]~q\ & (\capym[0][4]~DUPLICATE_q\ & \capym[2][4]~q\)) # (\capym[1][4]~q\ & ((\capym[2][4]~q\) # (\capym[0][4]~DUPLICATE_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_capym[1][4]~q\,
	datac => \ALT_INV_capym[0][4]~DUPLICATE_q\,
	datad => \ALT_INV_capym[2][4]~q\,
	cin => \Add7~6\,
	sharein => \Add7~7\,
	sumout => \Add7~9_sumout\,
	cout => \Add7~10\,
	shareout => \Add7~11\);

-- Location: LABCELL_X83_Y28_N45
\Add7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~13_sumout\ = SUM(( !\capym[1][5]~q\ $ (!\capym[0][5]~q\ $ (\capym[2][5]~q\)) ) + ( \Add7~11\ ) + ( \Add7~10\ ))
-- \Add7~14\ = CARRY(( !\capym[1][5]~q\ $ (!\capym[0][5]~q\ $ (\capym[2][5]~q\)) ) + ( \Add7~11\ ) + ( \Add7~10\ ))
-- \Add7~15\ = SHARE((!\capym[1][5]~q\ & (\capym[0][5]~q\ & \capym[2][5]~q\)) # (\capym[1][5]~q\ & ((\capym[2][5]~q\) # (\capym[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capym[1][5]~q\,
	datac => \ALT_INV_capym[0][5]~q\,
	datad => \ALT_INV_capym[2][5]~q\,
	cin => \Add7~10\,
	sharein => \Add7~11\,
	sumout => \Add7~13_sumout\,
	cout => \Add7~14\,
	shareout => \Add7~15\);

-- Location: LABCELL_X83_Y28_N48
\Add7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~17_sumout\ = SUM(( !\capym[1][6]~q\ $ (!\capym[0][6]~q\ $ (\capym[2][6]~DUPLICATE_q\)) ) + ( \Add7~15\ ) + ( \Add7~14\ ))
-- \Add7~18\ = CARRY(( !\capym[1][6]~q\ $ (!\capym[0][6]~q\ $ (\capym[2][6]~DUPLICATE_q\)) ) + ( \Add7~15\ ) + ( \Add7~14\ ))
-- \Add7~19\ = SHARE((!\capym[1][6]~q\ & (\capym[0][6]~q\ & \capym[2][6]~DUPLICATE_q\)) # (\capym[1][6]~q\ & ((\capym[2][6]~DUPLICATE_q\) # (\capym[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_capym[1][6]~q\,
	datac => \ALT_INV_capym[0][6]~q\,
	datad => \ALT_INV_capym[2][6]~DUPLICATE_q\,
	cin => \Add7~14\,
	sharein => \Add7~15\,
	sumout => \Add7~17_sumout\,
	cout => \Add7~18\,
	shareout => \Add7~19\);

-- Location: LABCELL_X83_Y28_N51
\Add7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~21_sumout\ = SUM(( !\capym[1][7]~q\ $ (!\capym[2][7]~DUPLICATE_q\ $ (\capym[0][7]~q\)) ) + ( \Add7~19\ ) + ( \Add7~18\ ))
-- \Add7~22\ = CARRY(( !\capym[1][7]~q\ $ (!\capym[2][7]~DUPLICATE_q\ $ (\capym[0][7]~q\)) ) + ( \Add7~19\ ) + ( \Add7~18\ ))
-- \Add7~23\ = SHARE((!\capym[1][7]~q\ & (\capym[2][7]~DUPLICATE_q\ & \capym[0][7]~q\)) # (\capym[1][7]~q\ & ((\capym[0][7]~q\) # (\capym[2][7]~DUPLICATE_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capym[1][7]~q\,
	datac => \ALT_INV_capym[2][7]~DUPLICATE_q\,
	datad => \ALT_INV_capym[0][7]~q\,
	cin => \Add7~18\,
	sharein => \Add7~19\,
	sumout => \Add7~21_sumout\,
	cout => \Add7~22\,
	shareout => \Add7~23\);

-- Location: LABCELL_X83_Y28_N54
\Add7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~25_sumout\ = SUM(( !\capym[0][7]~q\ $ (!\capym[1][7]~q\ $ (\capym[2][7]~DUPLICATE_q\)) ) + ( \Add7~23\ ) + ( \Add7~22\ ))
-- \Add7~26\ = CARRY(( !\capym[0][7]~q\ $ (!\capym[1][7]~q\ $ (\capym[2][7]~DUPLICATE_q\)) ) + ( \Add7~23\ ) + ( \Add7~22\ ))
-- \Add7~27\ = SHARE((!\capym[0][7]~q\ & (\capym[1][7]~q\ & \capym[2][7]~DUPLICATE_q\)) # (\capym[0][7]~q\ & ((\capym[2][7]~DUPLICATE_q\) # (\capym[1][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_capym[0][7]~q\,
	datac => \ALT_INV_capym[1][7]~q\,
	datad => \ALT_INV_capym[2][7]~DUPLICATE_q\,
	cin => \Add7~22\,
	sharein => \Add7~23\,
	sumout => \Add7~25_sumout\,
	cout => \Add7~26\,
	shareout => \Add7~27\);

-- Location: LABCELL_X83_Y28_N57
\Add7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~29_sumout\ = SUM(( !\capym[1][7]~q\ $ (!\capym[0][7]~q\ $ (\capym[2][7]~DUPLICATE_q\)) ) + ( \Add7~27\ ) + ( \Add7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000110100101101001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capym[1][7]~q\,
	datab => \ALT_INV_capym[0][7]~q\,
	datac => \ALT_INV_capym[2][7]~DUPLICATE_q\,
	cin => \Add7~26\,
	sharein => \Add7~27\,
	sumout => \Add7~29_sumout\);

-- Location: MLABCELL_X82_Y27_N9
\Add9~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~5_sumout\ = SUM(( \Add7~5_sumout\ ) + ( \capym[3][3]~q\ ) + ( \Add9~2\ ))
-- \Add9~6\ = CARRY(( \Add7~5_sumout\ ) + ( \capym[3][3]~q\ ) + ( \Add9~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capym[3][3]~q\,
	datad => \ALT_INV_Add7~5_sumout\,
	cin => \Add9~2\,
	sumout => \Add9~5_sumout\,
	cout => \Add9~6\);

-- Location: MLABCELL_X82_Y27_N12
\Add9~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~9_sumout\ = SUM(( \capym[3][4]~q\ ) + ( \Add7~9_sumout\ ) + ( \Add9~6\ ))
-- \Add9~10\ = CARRY(( \capym[3][4]~q\ ) + ( \Add7~9_sumout\ ) + ( \Add9~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add7~9_sumout\,
	datad => \ALT_INV_capym[3][4]~q\,
	cin => \Add9~6\,
	sumout => \Add9~9_sumout\,
	cout => \Add9~10\);

-- Location: MLABCELL_X82_Y27_N15
\Add9~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~13_sumout\ = SUM(( \Add7~13_sumout\ ) + ( \capym[3][5]~q\ ) + ( \Add9~10\ ))
-- \Add9~14\ = CARRY(( \Add7~13_sumout\ ) + ( \capym[3][5]~q\ ) + ( \Add9~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_capym[3][5]~q\,
	datad => \ALT_INV_Add7~13_sumout\,
	cin => \Add9~10\,
	sumout => \Add9~13_sumout\,
	cout => \Add9~14\);

-- Location: MLABCELL_X82_Y27_N18
\Add9~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~17_sumout\ = SUM(( \Add7~17_sumout\ ) + ( \capym[3][6]~DUPLICATE_q\ ) + ( \Add9~14\ ))
-- \Add9~18\ = CARRY(( \Add7~17_sumout\ ) + ( \capym[3][6]~DUPLICATE_q\ ) + ( \Add9~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capym[3][6]~DUPLICATE_q\,
	datad => \ALT_INV_Add7~17_sumout\,
	cin => \Add9~14\,
	sumout => \Add9~17_sumout\,
	cout => \Add9~18\);

-- Location: MLABCELL_X82_Y27_N21
\Add9~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~21_sumout\ = SUM(( \Add7~21_sumout\ ) + ( \capym[3][7]~DUPLICATE_q\ ) + ( \Add9~18\ ))
-- \Add9~22\ = CARRY(( \Add7~21_sumout\ ) + ( \capym[3][7]~DUPLICATE_q\ ) + ( \Add9~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capym[3][7]~DUPLICATE_q\,
	datad => \ALT_INV_Add7~21_sumout\,
	cin => \Add9~18\,
	sumout => \Add9~21_sumout\,
	cout => \Add9~22\);

-- Location: MLABCELL_X82_Y27_N24
\Add9~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~25_sumout\ = SUM(( \capym[3][7]~DUPLICATE_q\ ) + ( \Add7~25_sumout\ ) + ( \Add9~22\ ))
-- \Add9~26\ = CARRY(( \capym[3][7]~DUPLICATE_q\ ) + ( \Add7~25_sumout\ ) + ( \Add9~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add7~25_sumout\,
	datad => \ALT_INV_capym[3][7]~DUPLICATE_q\,
	cin => \Add9~22\,
	sumout => \Add9~25_sumout\,
	cout => \Add9~26\);

-- Location: MLABCELL_X82_Y27_N27
\Add9~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~41_sumout\ = SUM(( \Add7~29_sumout\ ) + ( \capym[3][7]~DUPLICATE_q\ ) + ( \Add9~26\ ))
-- \Add9~42\ = CARRY(( \Add7~29_sumout\ ) + ( \capym[3][7]~DUPLICATE_q\ ) + ( \Add9~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capym[3][7]~DUPLICATE_q\,
	datad => \ALT_INV_Add7~29_sumout\,
	cin => \Add9~26\,
	sumout => \Add9~41_sumout\,
	cout => \Add9~42\);

-- Location: MLABCELL_X82_Y27_N30
\Add9~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~29_sumout\ = SUM(( \Add7~29_sumout\ ) + ( \capym[3][7]~DUPLICATE_q\ ) + ( \Add9~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_capym[3][7]~DUPLICATE_q\,
	datad => \ALT_INV_Add7~29_sumout\,
	cin => \Add9~42\,
	sumout => \Add9~29_sumout\);

-- Location: LABCELL_X81_Y27_N0
\Add10~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~34_cout\ = CARRY(( (\Add9~33_sumout\) # (\Add9~37_sumout\) ) + ( \Add9~29_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add9~37_sumout\,
	datac => \ALT_INV_Add9~29_sumout\,
	datad => \ALT_INV_Add9~33_sumout\,
	cin => GND,
	cout => \Add10~34_cout\);

-- Location: LABCELL_X81_Y27_N3
\Add10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~1_sumout\ = SUM(( \Add9~1_sumout\ ) + ( GND ) + ( \Add10~34_cout\ ))
-- \Add10~2\ = CARRY(( \Add9~1_sumout\ ) + ( GND ) + ( \Add10~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add9~1_sumout\,
	cin => \Add10~34_cout\,
	sumout => \Add10~1_sumout\,
	cout => \Add10~2\);

-- Location: FF_X81_Y27_N4
\y[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add10~1_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[0][0]~q\);

-- Location: LABCELL_X81_Y27_N6
\Add10~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~5_sumout\ = SUM(( \Add9~5_sumout\ ) + ( GND ) + ( \Add10~2\ ))
-- \Add10~6\ = CARRY(( \Add9~5_sumout\ ) + ( GND ) + ( \Add10~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add9~5_sumout\,
	cin => \Add10~2\,
	sumout => \Add10~5_sumout\,
	cout => \Add10~6\);

-- Location: FF_X81_Y27_N7
\y[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add10~5_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[0][1]~q\);

-- Location: LABCELL_X81_Y27_N9
\Add10~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~9_sumout\ = SUM(( \Add9~9_sumout\ ) + ( GND ) + ( \Add10~6\ ))
-- \Add10~10\ = CARRY(( \Add9~9_sumout\ ) + ( GND ) + ( \Add10~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add9~9_sumout\,
	cin => \Add10~6\,
	sumout => \Add10~9_sumout\,
	cout => \Add10~10\);

-- Location: FF_X81_Y27_N10
\y[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add10~9_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[0][2]~q\);

-- Location: LABCELL_X81_Y27_N12
\Add10~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~13_sumout\ = SUM(( \Add9~13_sumout\ ) + ( GND ) + ( \Add10~10\ ))
-- \Add10~14\ = CARRY(( \Add9~13_sumout\ ) + ( GND ) + ( \Add10~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add9~13_sumout\,
	cin => \Add10~10\,
	sumout => \Add10~13_sumout\,
	cout => \Add10~14\);

-- Location: FF_X81_Y27_N14
\y[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add10~13_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[0][3]~q\);

-- Location: LABCELL_X81_Y27_N15
\Add10~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~17_sumout\ = SUM(( \Add9~17_sumout\ ) + ( GND ) + ( \Add10~14\ ))
-- \Add10~18\ = CARRY(( \Add9~17_sumout\ ) + ( GND ) + ( \Add10~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add9~17_sumout\,
	cin => \Add10~14\,
	sumout => \Add10~17_sumout\,
	cout => \Add10~18\);

-- Location: FF_X81_Y27_N17
\y[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add10~17_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[0][4]~q\);

-- Location: LABCELL_X81_Y27_N18
\Add10~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~21_sumout\ = SUM(( \Add9~21_sumout\ ) + ( GND ) + ( \Add10~18\ ))
-- \Add10~22\ = CARRY(( \Add9~21_sumout\ ) + ( GND ) + ( \Add10~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add9~21_sumout\,
	cin => \Add10~18\,
	sumout => \Add10~21_sumout\,
	cout => \Add10~22\);

-- Location: FF_X81_Y27_N19
\y[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add10~21_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[0][5]~q\);

-- Location: LABCELL_X81_Y27_N21
\Add10~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~25_sumout\ = SUM(( \Add9~25_sumout\ ) + ( GND ) + ( \Add10~22\ ))
-- \Add10~26\ = CARRY(( \Add9~25_sumout\ ) + ( GND ) + ( \Add10~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add9~25_sumout\,
	cin => \Add10~22\,
	sumout => \Add10~25_sumout\,
	cout => \Add10~26\);

-- Location: FF_X81_Y27_N22
\y[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add10~25_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[0][6]~q\);

-- Location: LABCELL_X81_Y27_N24
\Add10~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~42_cout\ = CARRY(( \Add9~41_sumout\ ) + ( GND ) + ( \Add10~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add9~41_sumout\,
	cin => \Add10~26\,
	cout => \Add10~42_cout\);

-- Location: LABCELL_X81_Y27_N27
\Add10~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~38_cout\ = CARRY(( \Add9~29_sumout\ ) + ( GND ) + ( \Add10~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add9~29_sumout\,
	cin => \Add10~42_cout\,
	cout => \Add10~38_cout\);

-- Location: LABCELL_X81_Y27_N30
\Add10~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~29_sumout\ = SUM(( \Add9~29_sumout\ ) + ( GND ) + ( \Add10~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add9~29_sumout\,
	cin => \Add10~38_cout\,
	sumout => \Add10~29_sumout\);

-- Location: FF_X81_Y27_N31
\y[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add10~29_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[0][7]~q\);

-- Location: LABCELL_X73_Y28_N0
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


