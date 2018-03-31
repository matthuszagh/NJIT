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

-- DATE "03/30/2018 18:48:34"

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

ENTITY 	fir_gen IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	load_x : IN std_logic;
	c_in : IN std_logic_vector(8 DOWNTO 0);
	x_in : IN std_logic_vector(8 DOWNTO 0);
	y_out : BUFFER std_logic_vector(10 DOWNTO 0)
	);
END fir_gen;

-- Design Ports Information
-- y_out[0]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[1]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[2]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[3]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[4]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[5]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[6]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[7]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[8]	=>  Location: PIN_AK29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[9]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[10]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_x	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[0]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[1]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[2]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[4]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[5]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[6]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[7]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[8]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in[0]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in[1]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in[2]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in[3]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in[4]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in[5]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in[6]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in[7]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fir_gen IS
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
SIGNAL ww_load_x : std_logic;
SIGNAL ww_c_in : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_x_in : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_y_out : std_logic_vector(10 DOWNTO 0);
SIGNAL \Mult0~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Mult0~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult0~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult0~mac_AX_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0~mac_AY_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0~mac_BX_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0~mac_BY_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult1~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Mult1~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult1~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult1~mac_AX_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult1~mac_AY_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult1~mac_BX_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult1~mac_BY_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult1~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult2~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Mult2~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult2~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult2~mac_AX_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult2~mac_AY_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult2~mac_BX_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult2~mac_BY_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult2~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult3~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Mult3~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult3~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult3~mac_AX_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult3~mac_AY_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult3~mac_BX_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult3~mac_BY_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult3~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
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
SIGNAL \Mult2~8\ : std_logic;
SIGNAL \Mult2~9\ : std_logic;
SIGNAL \Mult2~10\ : std_logic;
SIGNAL \Mult2~11\ : std_logic;
SIGNAL \Mult2~12\ : std_logic;
SIGNAL \Mult2~13\ : std_logic;
SIGNAL \Mult2~14\ : std_logic;
SIGNAL \Mult2~15\ : std_logic;
SIGNAL \Mult2~16\ : std_logic;
SIGNAL \Mult2~17\ : std_logic;
SIGNAL \Mult2~18\ : std_logic;
SIGNAL \Mult2~19\ : std_logic;
SIGNAL \Mult2~20\ : std_logic;
SIGNAL \Mult2~21\ : std_logic;
SIGNAL \Mult2~22\ : std_logic;
SIGNAL \Mult2~23\ : std_logic;
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
SIGNAL \Mult3~8\ : std_logic;
SIGNAL \Mult3~9\ : std_logic;
SIGNAL \Mult3~10\ : std_logic;
SIGNAL \Mult3~11\ : std_logic;
SIGNAL \Mult3~12\ : std_logic;
SIGNAL \Mult3~13\ : std_logic;
SIGNAL \Mult3~14\ : std_logic;
SIGNAL \Mult3~15\ : std_logic;
SIGNAL \Mult3~16\ : std_logic;
SIGNAL \Mult3~17\ : std_logic;
SIGNAL \Mult3~18\ : std_logic;
SIGNAL \Mult3~19\ : std_logic;
SIGNAL \Mult3~20\ : std_logic;
SIGNAL \Mult3~21\ : std_logic;
SIGNAL \Mult3~22\ : std_logic;
SIGNAL \Mult3~23\ : std_logic;
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
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \load_x~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \c_in[0]~input_o\ : std_logic;
SIGNAL \c[3][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \c[2][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \c[1][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \c_in[1]~input_o\ : std_logic;
SIGNAL \c[3][1]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \c[3][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \c[2][1]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \c[2][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \c[1][1]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \c[1][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \c_in[2]~input_o\ : std_logic;
SIGNAL \c[3][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \c[2][2]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \c[2][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \c[1][2]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \c[1][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \c_in[3]~input_o\ : std_logic;
SIGNAL \c[3][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \c[2][3]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \c[2][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \c[1][3]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \c[1][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \c_in[4]~input_o\ : std_logic;
SIGNAL \c[3][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \c[2][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \c[1][4]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \c[1][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \c_in[5]~input_o\ : std_logic;
SIGNAL \c[3][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \c[2][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \c[1][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \c_in[6]~input_o\ : std_logic;
SIGNAL \c[3][6]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \c[3][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \c[2][6]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \c[2][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \c[1][6]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \c[1][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \c_in[7]~input_o\ : std_logic;
SIGNAL \c[3][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \c[2][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \c[1][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \c_in[8]~input_o\ : std_logic;
SIGNAL \c[3][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \c[2][8]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \c[2][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \c[1][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \x_in[0]~input_o\ : std_logic;
SIGNAL \x_in[1]~input_o\ : std_logic;
SIGNAL \x_in[2]~input_o\ : std_logic;
SIGNAL \x_in[3]~input_o\ : std_logic;
SIGNAL \x_in[4]~input_o\ : std_logic;
SIGNAL \x_in[5]~input_o\ : std_logic;
SIGNAL \x_in[6]~input_o\ : std_logic;
SIGNAL \x_in[7]~input_o\ : std_logic;
SIGNAL \x_in[8]~input_o\ : std_logic;
SIGNAL \p[0][8]\ : std_logic;
SIGNAL \a[3][8]\ : std_logic;
SIGNAL \p[2][8]\ : std_logic;
SIGNAL \a[3][7]\ : std_logic;
SIGNAL \p[2][7]\ : std_logic;
SIGNAL \a[3][6]\ : std_logic;
SIGNAL \p[2][6]\ : std_logic;
SIGNAL \p[2][5]\ : std_logic;
SIGNAL \a[3][5]\ : std_logic;
SIGNAL \a[3][4]\ : std_logic;
SIGNAL \p[2][4]\ : std_logic;
SIGNAL \a[3][3]\ : std_logic;
SIGNAL \p[2][3]\ : std_logic;
SIGNAL \a[3][2]\ : std_logic;
SIGNAL \p[2][2]\ : std_logic;
SIGNAL \a[3][1]\ : std_logic;
SIGNAL \p[2][1]\ : std_logic;
SIGNAL \a[3][0]\ : std_logic;
SIGNAL \p[2][0]\ : std_logic;
SIGNAL \Add2~74\ : std_logic;
SIGNAL \Add2~70\ : std_logic;
SIGNAL \Add2~66\ : std_logic;
SIGNAL \Add2~62\ : std_logic;
SIGNAL \Add2~58\ : std_logic;
SIGNAL \Add2~54\ : std_logic;
SIGNAL \Add2~50\ : std_logic;
SIGNAL \Add2~46\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \a[2][8]~q\ : std_logic;
SIGNAL \p[1][8]\ : std_logic;
SIGNAL \Add2~45_sumout\ : std_logic;
SIGNAL \a[2][7]~q\ : std_logic;
SIGNAL \p[1][7]\ : std_logic;
SIGNAL \Add2~49_sumout\ : std_logic;
SIGNAL \a[2][6]~q\ : std_logic;
SIGNAL \p[1][6]\ : std_logic;
SIGNAL \Add2~53_sumout\ : std_logic;
SIGNAL \a[2][5]~q\ : std_logic;
SIGNAL \p[1][5]\ : std_logic;
SIGNAL \Add2~57_sumout\ : std_logic;
SIGNAL \a[2][4]~q\ : std_logic;
SIGNAL \p[1][4]\ : std_logic;
SIGNAL \Add2~61_sumout\ : std_logic;
SIGNAL \a[2][3]~q\ : std_logic;
SIGNAL \p[1][3]\ : std_logic;
SIGNAL \Add2~65_sumout\ : std_logic;
SIGNAL \a[2][2]~q\ : std_logic;
SIGNAL \p[1][2]\ : std_logic;
SIGNAL \Add2~69_sumout\ : std_logic;
SIGNAL \a[2][1]~q\ : std_logic;
SIGNAL \p[1][1]\ : std_logic;
SIGNAL \Add2~73_sumout\ : std_logic;
SIGNAL \a[2][0]~q\ : std_logic;
SIGNAL \p[1][0]\ : std_logic;
SIGNAL \Add1~74\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~66\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \a[1][8]~q\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \a[1][7]~q\ : std_logic;
SIGNAL \p[0][7]\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \a[1][6]~q\ : std_logic;
SIGNAL \p[0][6]\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \a[1][5]~q\ : std_logic;
SIGNAL \p[0][5]\ : std_logic;
SIGNAL \p[0][4]\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \a[1][4]~q\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \a[1][3]~q\ : std_logic;
SIGNAL \p[0][3]\ : std_logic;
SIGNAL \Add1~65_sumout\ : std_logic;
SIGNAL \a[1][2]~q\ : std_logic;
SIGNAL \p[0][2]\ : std_logic;
SIGNAL \Add1~69_sumout\ : std_logic;
SIGNAL \a[1][1]~q\ : std_logic;
SIGNAL \p[0][1]\ : std_logic;
SIGNAL \Add1~73_sumout\ : std_logic;
SIGNAL \a[1][0]~q\ : std_logic;
SIGNAL \p[0][0]\ : std_logic;
SIGNAL \Add0~74_cout\ : std_logic;
SIGNAL \Add0~70_cout\ : std_logic;
SIGNAL \Add0~66_cout\ : std_logic;
SIGNAL \Add0~62_cout\ : std_logic;
SIGNAL \Add0~58_cout\ : std_logic;
SIGNAL \Add0~54_cout\ : std_logic;
SIGNAL \Add0~50_cout\ : std_logic;
SIGNAL \Add0~46_cout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \a[0][8]~q\ : std_logic;
SIGNAL \a[3][9]\ : std_logic;
SIGNAL \p[2][9]\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \a[2][9]~q\ : std_logic;
SIGNAL \p[1][9]\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \a[1][9]~q\ : std_logic;
SIGNAL \p[0][9]\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \a[0][9]~q\ : std_logic;
SIGNAL \a[3][10]\ : std_logic;
SIGNAL \p[2][10]\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \a[2][10]~q\ : std_logic;
SIGNAL \p[1][10]\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \a[1][10]~q\ : std_logic;
SIGNAL \p[0][10]\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \a[0][10]~q\ : std_logic;
SIGNAL \a[3][11]\ : std_logic;
SIGNAL \p[2][11]\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \a[2][11]~q\ : std_logic;
SIGNAL \p[1][11]\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \a[1][11]~q\ : std_logic;
SIGNAL \p[0][11]\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \a[0][11]~q\ : std_logic;
SIGNAL \p[1][12]\ : std_logic;
SIGNAL \p[2][12]\ : std_logic;
SIGNAL \a[3][12]\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \a[2][12]~q\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \a[1][12]~q\ : std_logic;
SIGNAL \p[0][12]\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \a[0][12]~q\ : std_logic;
SIGNAL \p[0][13]\ : std_logic;
SIGNAL \a[3][13]\ : std_logic;
SIGNAL \p[2][13]\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \a[2][13]~q\ : std_logic;
SIGNAL \p[1][13]\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \a[1][13]~q\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \a[0][13]~q\ : std_logic;
SIGNAL \p[1][14]\ : std_logic;
SIGNAL \p[2][14]\ : std_logic;
SIGNAL \a[3][14]\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \a[2][14]~q\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \a[1][14]~q\ : std_logic;
SIGNAL \p[0][14]\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \a[0][14]~q\ : std_logic;
SIGNAL \a[3][15]\ : std_logic;
SIGNAL \p[2][15]\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \a[2][15]~q\ : std_logic;
SIGNAL \p[1][15]\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \a[1][15]~q\ : std_logic;
SIGNAL \p[0][15]\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \a[0][15]~q\ : std_logic;
SIGNAL \a[3][16]\ : std_logic;
SIGNAL \p[2][16]\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \a[2][16]~q\ : std_logic;
SIGNAL \p[1][16]\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \a[1][16]~q\ : std_logic;
SIGNAL \p[0][16]\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \a[0][16]~q\ : std_logic;
SIGNAL \a[3][18]\ : std_logic;
SIGNAL \p[2][17]\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~37_sumout\ : std_logic;
SIGNAL \a[2][17]~q\ : std_logic;
SIGNAL \p[1][17]\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \a[1][17]~q\ : std_logic;
SIGNAL \p[0][17]\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \a[0][17]~q\ : std_logic;
SIGNAL \Add2~38\ : std_logic;
SIGNAL \Add2~41_sumout\ : std_logic;
SIGNAL \a[2][18]~q\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \a[1][18]~q\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \a[0][18]~q\ : std_logic;
SIGNAL \ALT_INV_p[1][17]\ : std_logic;
SIGNAL \ALT_INV_p[1][16]\ : std_logic;
SIGNAL \ALT_INV_p[1][15]\ : std_logic;
SIGNAL \ALT_INV_p[1][14]\ : std_logic;
SIGNAL \ALT_INV_p[1][13]\ : std_logic;
SIGNAL \ALT_INV_p[1][12]\ : std_logic;
SIGNAL \ALT_INV_p[1][11]\ : std_logic;
SIGNAL \ALT_INV_p[1][10]\ : std_logic;
SIGNAL \ALT_INV_p[1][9]\ : std_logic;
SIGNAL \ALT_INV_p[1][8]\ : std_logic;
SIGNAL \ALT_INV_p[1][7]\ : std_logic;
SIGNAL \ALT_INV_p[1][6]\ : std_logic;
SIGNAL \ALT_INV_p[1][5]\ : std_logic;
SIGNAL \ALT_INV_p[1][4]\ : std_logic;
SIGNAL \ALT_INV_p[1][3]\ : std_logic;
SIGNAL \ALT_INV_p[1][2]\ : std_logic;
SIGNAL \ALT_INV_p[1][1]\ : std_logic;
SIGNAL \ALT_INV_p[1][0]\ : std_logic;
SIGNAL \ALT_INV_p[0][17]\ : std_logic;
SIGNAL \ALT_INV_p[0][16]\ : std_logic;
SIGNAL \ALT_INV_p[0][15]\ : std_logic;
SIGNAL \ALT_INV_p[0][14]\ : std_logic;
SIGNAL \ALT_INV_p[0][13]\ : std_logic;
SIGNAL \ALT_INV_p[0][12]\ : std_logic;
SIGNAL \ALT_INV_p[0][11]\ : std_logic;
SIGNAL \ALT_INV_p[0][10]\ : std_logic;
SIGNAL \ALT_INV_p[0][9]\ : std_logic;
SIGNAL \ALT_INV_p[0][8]\ : std_logic;
SIGNAL \ALT_INV_p[0][7]\ : std_logic;
SIGNAL \ALT_INV_p[0][6]\ : std_logic;
SIGNAL \ALT_INV_p[0][5]\ : std_logic;
SIGNAL \ALT_INV_p[0][4]\ : std_logic;
SIGNAL \ALT_INV_p[0][3]\ : std_logic;
SIGNAL \ALT_INV_p[0][2]\ : std_logic;
SIGNAL \ALT_INV_p[0][1]\ : std_logic;
SIGNAL \ALT_INV_p[0][0]\ : std_logic;
SIGNAL \ALT_INV_a[3][18]\ : std_logic;
SIGNAL \ALT_INV_a[3][16]\ : std_logic;
SIGNAL \ALT_INV_a[3][15]\ : std_logic;
SIGNAL \ALT_INV_a[3][14]\ : std_logic;
SIGNAL \ALT_INV_a[3][13]\ : std_logic;
SIGNAL \ALT_INV_a[3][12]\ : std_logic;
SIGNAL \ALT_INV_a[3][11]\ : std_logic;
SIGNAL \ALT_INV_a[3][10]\ : std_logic;
SIGNAL \ALT_INV_a[3][9]\ : std_logic;
SIGNAL \ALT_INV_a[3][8]\ : std_logic;
SIGNAL \ALT_INV_a[3][7]\ : std_logic;
SIGNAL \ALT_INV_a[3][6]\ : std_logic;
SIGNAL \ALT_INV_a[3][5]\ : std_logic;
SIGNAL \ALT_INV_a[3][4]\ : std_logic;
SIGNAL \ALT_INV_a[3][3]\ : std_logic;
SIGNAL \ALT_INV_a[3][2]\ : std_logic;
SIGNAL \ALT_INV_a[3][1]\ : std_logic;
SIGNAL \ALT_INV_a[3][0]\ : std_logic;
SIGNAL \ALT_INV_p[2][17]\ : std_logic;
SIGNAL \ALT_INV_p[2][16]\ : std_logic;
SIGNAL \ALT_INV_p[2][15]\ : std_logic;
SIGNAL \ALT_INV_p[2][14]\ : std_logic;
SIGNAL \ALT_INV_p[2][13]\ : std_logic;
SIGNAL \ALT_INV_p[2][12]\ : std_logic;
SIGNAL \ALT_INV_p[2][11]\ : std_logic;
SIGNAL \ALT_INV_p[2][10]\ : std_logic;
SIGNAL \ALT_INV_p[2][9]\ : std_logic;
SIGNAL \ALT_INV_p[2][8]\ : std_logic;
SIGNAL \ALT_INV_p[2][7]\ : std_logic;
SIGNAL \ALT_INV_p[2][6]\ : std_logic;
SIGNAL \ALT_INV_p[2][5]\ : std_logic;
SIGNAL \ALT_INV_p[2][4]\ : std_logic;
SIGNAL \ALT_INV_p[2][3]\ : std_logic;
SIGNAL \ALT_INV_p[2][2]\ : std_logic;
SIGNAL \ALT_INV_p[2][1]\ : std_logic;
SIGNAL \ALT_INV_p[2][0]\ : std_logic;
SIGNAL \ALT_INV_c_in[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_c_in[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_load_x~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_a[2][0]~q\ : std_logic;
SIGNAL \ALT_INV_a[2][1]~q\ : std_logic;
SIGNAL \ALT_INV_a[1][0]~q\ : std_logic;
SIGNAL \ALT_INV_a[2][2]~q\ : std_logic;
SIGNAL \ALT_INV_a[1][1]~q\ : std_logic;
SIGNAL \ALT_INV_a[2][3]~q\ : std_logic;
SIGNAL \ALT_INV_a[1][2]~q\ : std_logic;
SIGNAL \ALT_INV_a[2][4]~q\ : std_logic;
SIGNAL \ALT_INV_a[1][3]~q\ : std_logic;
SIGNAL \ALT_INV_a[2][5]~q\ : std_logic;
SIGNAL \ALT_INV_a[1][4]~q\ : std_logic;
SIGNAL \ALT_INV_a[2][6]~q\ : std_logic;
SIGNAL \ALT_INV_c[3][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_c[3][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_c[3][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_c[3][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_c[3][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_a[1][5]~q\ : std_logic;
SIGNAL \ALT_INV_a[2][7]~q\ : std_logic;
SIGNAL \ALT_INV_c[2][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_c[2][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_c[2][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_c[2][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_c[2][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_a[2][18]~q\ : std_logic;
SIGNAL \ALT_INV_a[2][17]~q\ : std_logic;
SIGNAL \ALT_INV_a[2][16]~q\ : std_logic;
SIGNAL \ALT_INV_a[2][15]~q\ : std_logic;
SIGNAL \ALT_INV_a[2][14]~q\ : std_logic;
SIGNAL \ALT_INV_a[2][13]~q\ : std_logic;
SIGNAL \ALT_INV_a[2][12]~q\ : std_logic;
SIGNAL \ALT_INV_a[2][11]~q\ : std_logic;
SIGNAL \ALT_INV_a[2][10]~q\ : std_logic;
SIGNAL \ALT_INV_a[2][9]~q\ : std_logic;
SIGNAL \ALT_INV_a[1][6]~q\ : std_logic;
SIGNAL \ALT_INV_a[2][8]~q\ : std_logic;
SIGNAL \ALT_INV_a[1][7]~q\ : std_logic;
SIGNAL \ALT_INV_a[1][18]~q\ : std_logic;
SIGNAL \ALT_INV_a[1][17]~q\ : std_logic;
SIGNAL \ALT_INV_a[1][16]~q\ : std_logic;
SIGNAL \ALT_INV_a[1][15]~q\ : std_logic;
SIGNAL \ALT_INV_a[1][14]~q\ : std_logic;
SIGNAL \ALT_INV_a[1][13]~q\ : std_logic;
SIGNAL \ALT_INV_a[1][12]~q\ : std_logic;
SIGNAL \ALT_INV_a[1][11]~q\ : std_logic;
SIGNAL \ALT_INV_a[1][10]~q\ : std_logic;
SIGNAL \ALT_INV_a[1][9]~q\ : std_logic;
SIGNAL \ALT_INV_a[1][8]~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_load_x <= load_x;
ww_c_in <= c_in;
ww_x_in <= x_in;
y_out <= ww_y_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult0~mac_ACLR_bus\ <= (gnd & \reset~input_o\);

\Mult0~mac_CLK_bus\ <= (gnd & \clk~inputCLKENA0_outclk\ & \clk~inputCLKENA0_outclk\);

\Mult0~mac_ENA_bus\ <= (vcc & \load_x~input_o\ & NOT \load_x~input_o\);

\Mult0~mac_AX_bus\ <= (\c[1][8]~_Duplicate_1_q\ & \c[1][7]~_Duplicate_1_q\ & \c[1][6]~_Duplicate_1_q\ & \c[1][5]~_Duplicate_1_q\ & \c[1][4]~_Duplicate_1_q\ & \c[1][3]~_Duplicate_1_q\ & \c[1][2]~_Duplicate_1_q\ & \c[1][1]~_Duplicate_1_q\ & 
\c[1][0]~_Duplicate_1_q\);

\Mult0~mac_AY_bus\ <= (\x_in[8]~input_o\ & \x_in[7]~input_o\ & \x_in[6]~input_o\ & \x_in[5]~input_o\ & \x_in[4]~input_o\ & \x_in[3]~input_o\ & \x_in[2]~input_o\ & \x_in[1]~input_o\ & \x_in[0]~input_o\);

\Mult0~mac_BX_bus\ <= (\c[1][8]~_Duplicate_1_q\ & \c[1][8]~_Duplicate_1_q\ & \c[1][8]~_Duplicate_1_q\ & \c[1][8]~_Duplicate_1_q\ & \c[1][8]~_Duplicate_1_q\ & \c[1][8]~_Duplicate_1_q\ & \c[1][8]~_Duplicate_1_q\ & \c[1][8]~_Duplicate_1_q\ & 
\c[1][8]~_Duplicate_1_q\);

\Mult0~mac_BY_bus\ <= (\x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\);

\p[0][0]\ <= \Mult0~mac_RESULTA_bus\(0);
\p[0][1]\ <= \Mult0~mac_RESULTA_bus\(1);
\p[0][2]\ <= \Mult0~mac_RESULTA_bus\(2);
\p[0][3]\ <= \Mult0~mac_RESULTA_bus\(3);
\p[0][4]\ <= \Mult0~mac_RESULTA_bus\(4);
\p[0][5]\ <= \Mult0~mac_RESULTA_bus\(5);
\p[0][6]\ <= \Mult0~mac_RESULTA_bus\(6);
\p[0][7]\ <= \Mult0~mac_RESULTA_bus\(7);
\p[0][8]\ <= \Mult0~mac_RESULTA_bus\(8);
\p[0][9]\ <= \Mult0~mac_RESULTA_bus\(9);
\p[0][10]\ <= \Mult0~mac_RESULTA_bus\(10);
\p[0][11]\ <= \Mult0~mac_RESULTA_bus\(11);
\p[0][12]\ <= \Mult0~mac_RESULTA_bus\(12);
\p[0][13]\ <= \Mult0~mac_RESULTA_bus\(13);
\p[0][14]\ <= \Mult0~mac_RESULTA_bus\(14);
\p[0][15]\ <= \Mult0~mac_RESULTA_bus\(15);
\p[0][16]\ <= \Mult0~mac_RESULTA_bus\(16);
\p[0][17]\ <= \Mult0~mac_RESULTA_bus\(17);
\Mult0~8\ <= \Mult0~mac_RESULTA_bus\(18);
\Mult0~9\ <= \Mult0~mac_RESULTA_bus\(19);
\Mult0~10\ <= \Mult0~mac_RESULTA_bus\(20);
\Mult0~11\ <= \Mult0~mac_RESULTA_bus\(21);
\Mult0~12\ <= \Mult0~mac_RESULTA_bus\(22);
\Mult0~13\ <= \Mult0~mac_RESULTA_bus\(23);
\Mult0~14\ <= \Mult0~mac_RESULTA_bus\(24);
\Mult0~15\ <= \Mult0~mac_RESULTA_bus\(25);
\Mult0~16\ <= \Mult0~mac_RESULTA_bus\(26);
\Mult0~17\ <= \Mult0~mac_RESULTA_bus\(27);
\Mult0~18\ <= \Mult0~mac_RESULTA_bus\(28);
\Mult0~19\ <= \Mult0~mac_RESULTA_bus\(29);
\Mult0~20\ <= \Mult0~mac_RESULTA_bus\(30);
\Mult0~21\ <= \Mult0~mac_RESULTA_bus\(31);
\Mult0~22\ <= \Mult0~mac_RESULTA_bus\(32);
\Mult0~23\ <= \Mult0~mac_RESULTA_bus\(33);
\Mult0~24\ <= \Mult0~mac_RESULTA_bus\(34);
\Mult0~25\ <= \Mult0~mac_RESULTA_bus\(35);
\Mult0~26\ <= \Mult0~mac_RESULTA_bus\(36);
\Mult0~27\ <= \Mult0~mac_RESULTA_bus\(37);
\Mult0~28\ <= \Mult0~mac_RESULTA_bus\(38);
\Mult0~29\ <= \Mult0~mac_RESULTA_bus\(39);
\Mult0~30\ <= \Mult0~mac_RESULTA_bus\(40);
\Mult0~31\ <= \Mult0~mac_RESULTA_bus\(41);
\Mult0~32\ <= \Mult0~mac_RESULTA_bus\(42);
\Mult0~33\ <= \Mult0~mac_RESULTA_bus\(43);
\Mult0~34\ <= \Mult0~mac_RESULTA_bus\(44);
\Mult0~35\ <= \Mult0~mac_RESULTA_bus\(45);
\Mult0~36\ <= \Mult0~mac_RESULTA_bus\(46);
\Mult0~37\ <= \Mult0~mac_RESULTA_bus\(47);
\Mult0~38\ <= \Mult0~mac_RESULTA_bus\(48);
\Mult0~39\ <= \Mult0~mac_RESULTA_bus\(49);
\Mult0~40\ <= \Mult0~mac_RESULTA_bus\(50);
\Mult0~41\ <= \Mult0~mac_RESULTA_bus\(51);
\Mult0~42\ <= \Mult0~mac_RESULTA_bus\(52);
\Mult0~43\ <= \Mult0~mac_RESULTA_bus\(53);
\Mult0~44\ <= \Mult0~mac_RESULTA_bus\(54);
\Mult0~45\ <= \Mult0~mac_RESULTA_bus\(55);
\Mult0~46\ <= \Mult0~mac_RESULTA_bus\(56);
\Mult0~47\ <= \Mult0~mac_RESULTA_bus\(57);
\Mult0~48\ <= \Mult0~mac_RESULTA_bus\(58);
\Mult0~49\ <= \Mult0~mac_RESULTA_bus\(59);
\Mult0~50\ <= \Mult0~mac_RESULTA_bus\(60);
\Mult0~51\ <= \Mult0~mac_RESULTA_bus\(61);
\Mult0~52\ <= \Mult0~mac_RESULTA_bus\(62);
\Mult0~53\ <= \Mult0~mac_RESULTA_bus\(63);

\Mult1~mac_ACLR_bus\ <= (gnd & \reset~input_o\);

\Mult1~mac_CLK_bus\ <= (gnd & \clk~inputCLKENA0_outclk\ & \clk~inputCLKENA0_outclk\);

\Mult1~mac_ENA_bus\ <= (vcc & NOT \load_x~input_o\ & \load_x~input_o\);

\Mult1~mac_AX_bus\ <= (\c[2][8]~_Duplicate_1_q\ & \c[2][7]~_Duplicate_1_q\ & \c[2][6]~_Duplicate_1_q\ & \c[2][5]~_Duplicate_1_q\ & \c[2][4]~_Duplicate_1_q\ & \c[2][3]~_Duplicate_1_q\ & \c[2][2]~_Duplicate_1_q\ & \c[2][1]~_Duplicate_1_q\ & 
\c[2][0]~_Duplicate_1_q\);

\Mult1~mac_AY_bus\ <= (\x_in[8]~input_o\ & \x_in[7]~input_o\ & \x_in[6]~input_o\ & \x_in[5]~input_o\ & \x_in[4]~input_o\ & \x_in[3]~input_o\ & \x_in[2]~input_o\ & \x_in[1]~input_o\ & \x_in[0]~input_o\);

\Mult1~mac_BX_bus\ <= (\c[2][8]~_Duplicate_1_q\ & \c[2][8]~_Duplicate_1_q\ & \c[2][8]~_Duplicate_1_q\ & \c[2][8]~_Duplicate_1_q\ & \c[2][8]~_Duplicate_1_q\ & \c[2][8]~_Duplicate_1_q\ & \c[2][8]~_Duplicate_1_q\ & \c[2][8]~_Duplicate_1_q\ & 
\c[2][8]~_Duplicate_1_q\);

\Mult1~mac_BY_bus\ <= (\x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\);

\p[1][0]\ <= \Mult1~mac_RESULTA_bus\(0);
\p[1][1]\ <= \Mult1~mac_RESULTA_bus\(1);
\p[1][2]\ <= \Mult1~mac_RESULTA_bus\(2);
\p[1][3]\ <= \Mult1~mac_RESULTA_bus\(3);
\p[1][4]\ <= \Mult1~mac_RESULTA_bus\(4);
\p[1][5]\ <= \Mult1~mac_RESULTA_bus\(5);
\p[1][6]\ <= \Mult1~mac_RESULTA_bus\(6);
\p[1][7]\ <= \Mult1~mac_RESULTA_bus\(7);
\p[1][8]\ <= \Mult1~mac_RESULTA_bus\(8);
\p[1][9]\ <= \Mult1~mac_RESULTA_bus\(9);
\p[1][10]\ <= \Mult1~mac_RESULTA_bus\(10);
\p[1][11]\ <= \Mult1~mac_RESULTA_bus\(11);
\p[1][12]\ <= \Mult1~mac_RESULTA_bus\(12);
\p[1][13]\ <= \Mult1~mac_RESULTA_bus\(13);
\p[1][14]\ <= \Mult1~mac_RESULTA_bus\(14);
\p[1][15]\ <= \Mult1~mac_RESULTA_bus\(15);
\p[1][16]\ <= \Mult1~mac_RESULTA_bus\(16);
\p[1][17]\ <= \Mult1~mac_RESULTA_bus\(17);
\Mult1~8\ <= \Mult1~mac_RESULTA_bus\(18);
\Mult1~9\ <= \Mult1~mac_RESULTA_bus\(19);
\Mult1~10\ <= \Mult1~mac_RESULTA_bus\(20);
\Mult1~11\ <= \Mult1~mac_RESULTA_bus\(21);
\Mult1~12\ <= \Mult1~mac_RESULTA_bus\(22);
\Mult1~13\ <= \Mult1~mac_RESULTA_bus\(23);
\Mult1~14\ <= \Mult1~mac_RESULTA_bus\(24);
\Mult1~15\ <= \Mult1~mac_RESULTA_bus\(25);
\Mult1~16\ <= \Mult1~mac_RESULTA_bus\(26);
\Mult1~17\ <= \Mult1~mac_RESULTA_bus\(27);
\Mult1~18\ <= \Mult1~mac_RESULTA_bus\(28);
\Mult1~19\ <= \Mult1~mac_RESULTA_bus\(29);
\Mult1~20\ <= \Mult1~mac_RESULTA_bus\(30);
\Mult1~21\ <= \Mult1~mac_RESULTA_bus\(31);
\Mult1~22\ <= \Mult1~mac_RESULTA_bus\(32);
\Mult1~23\ <= \Mult1~mac_RESULTA_bus\(33);
\Mult1~24\ <= \Mult1~mac_RESULTA_bus\(34);
\Mult1~25\ <= \Mult1~mac_RESULTA_bus\(35);
\Mult1~26\ <= \Mult1~mac_RESULTA_bus\(36);
\Mult1~27\ <= \Mult1~mac_RESULTA_bus\(37);
\Mult1~28\ <= \Mult1~mac_RESULTA_bus\(38);
\Mult1~29\ <= \Mult1~mac_RESULTA_bus\(39);
\Mult1~30\ <= \Mult1~mac_RESULTA_bus\(40);
\Mult1~31\ <= \Mult1~mac_RESULTA_bus\(41);
\Mult1~32\ <= \Mult1~mac_RESULTA_bus\(42);
\Mult1~33\ <= \Mult1~mac_RESULTA_bus\(43);
\Mult1~34\ <= \Mult1~mac_RESULTA_bus\(44);
\Mult1~35\ <= \Mult1~mac_RESULTA_bus\(45);
\Mult1~36\ <= \Mult1~mac_RESULTA_bus\(46);
\Mult1~37\ <= \Mult1~mac_RESULTA_bus\(47);
\Mult1~38\ <= \Mult1~mac_RESULTA_bus\(48);
\Mult1~39\ <= \Mult1~mac_RESULTA_bus\(49);
\Mult1~40\ <= \Mult1~mac_RESULTA_bus\(50);
\Mult1~41\ <= \Mult1~mac_RESULTA_bus\(51);
\Mult1~42\ <= \Mult1~mac_RESULTA_bus\(52);
\Mult1~43\ <= \Mult1~mac_RESULTA_bus\(53);
\Mult1~44\ <= \Mult1~mac_RESULTA_bus\(54);
\Mult1~45\ <= \Mult1~mac_RESULTA_bus\(55);
\Mult1~46\ <= \Mult1~mac_RESULTA_bus\(56);
\Mult1~47\ <= \Mult1~mac_RESULTA_bus\(57);
\Mult1~48\ <= \Mult1~mac_RESULTA_bus\(58);
\Mult1~49\ <= \Mult1~mac_RESULTA_bus\(59);
\Mult1~50\ <= \Mult1~mac_RESULTA_bus\(60);
\Mult1~51\ <= \Mult1~mac_RESULTA_bus\(61);
\Mult1~52\ <= \Mult1~mac_RESULTA_bus\(62);
\Mult1~53\ <= \Mult1~mac_RESULTA_bus\(63);

\Mult2~mac_ACLR_bus\ <= (gnd & \reset~input_o\);

\Mult2~mac_CLK_bus\ <= (gnd & \clk~inputCLKENA0_outclk\ & \clk~inputCLKENA0_outclk\);

\Mult2~mac_ENA_bus\ <= (vcc & NOT \load_x~input_o\ & \load_x~input_o\);

\Mult2~mac_AX_bus\ <= (\c[3][8]~_Duplicate_1_q\ & \c[3][7]~_Duplicate_1_q\ & \c[3][6]~_Duplicate_1_q\ & \c[3][5]~_Duplicate_1_q\ & \c[3][4]~_Duplicate_1_q\ & \c[3][3]~_Duplicate_1_q\ & \c[3][2]~_Duplicate_1_q\ & \c[3][1]~_Duplicate_1_q\ & 
\c[3][0]~_Duplicate_1_q\);

\Mult2~mac_AY_bus\ <= (\x_in[8]~input_o\ & \x_in[7]~input_o\ & \x_in[6]~input_o\ & \x_in[5]~input_o\ & \x_in[4]~input_o\ & \x_in[3]~input_o\ & \x_in[2]~input_o\ & \x_in[1]~input_o\ & \x_in[0]~input_o\);

\Mult2~mac_BX_bus\ <= (\c[3][8]~_Duplicate_1_q\ & \c[3][8]~_Duplicate_1_q\ & \c[3][8]~_Duplicate_1_q\ & \c[3][8]~_Duplicate_1_q\ & \c[3][8]~_Duplicate_1_q\ & \c[3][8]~_Duplicate_1_q\ & \c[3][8]~_Duplicate_1_q\ & \c[3][8]~_Duplicate_1_q\ & 
\c[3][8]~_Duplicate_1_q\);

\Mult2~mac_BY_bus\ <= (\x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\);

\p[2][0]\ <= \Mult2~mac_RESULTA_bus\(0);
\p[2][1]\ <= \Mult2~mac_RESULTA_bus\(1);
\p[2][2]\ <= \Mult2~mac_RESULTA_bus\(2);
\p[2][3]\ <= \Mult2~mac_RESULTA_bus\(3);
\p[2][4]\ <= \Mult2~mac_RESULTA_bus\(4);
\p[2][5]\ <= \Mult2~mac_RESULTA_bus\(5);
\p[2][6]\ <= \Mult2~mac_RESULTA_bus\(6);
\p[2][7]\ <= \Mult2~mac_RESULTA_bus\(7);
\p[2][8]\ <= \Mult2~mac_RESULTA_bus\(8);
\p[2][9]\ <= \Mult2~mac_RESULTA_bus\(9);
\p[2][10]\ <= \Mult2~mac_RESULTA_bus\(10);
\p[2][11]\ <= \Mult2~mac_RESULTA_bus\(11);
\p[2][12]\ <= \Mult2~mac_RESULTA_bus\(12);
\p[2][13]\ <= \Mult2~mac_RESULTA_bus\(13);
\p[2][14]\ <= \Mult2~mac_RESULTA_bus\(14);
\p[2][15]\ <= \Mult2~mac_RESULTA_bus\(15);
\p[2][16]\ <= \Mult2~mac_RESULTA_bus\(16);
\p[2][17]\ <= \Mult2~mac_RESULTA_bus\(17);
\Mult2~8\ <= \Mult2~mac_RESULTA_bus\(18);
\Mult2~9\ <= \Mult2~mac_RESULTA_bus\(19);
\Mult2~10\ <= \Mult2~mac_RESULTA_bus\(20);
\Mult2~11\ <= \Mult2~mac_RESULTA_bus\(21);
\Mult2~12\ <= \Mult2~mac_RESULTA_bus\(22);
\Mult2~13\ <= \Mult2~mac_RESULTA_bus\(23);
\Mult2~14\ <= \Mult2~mac_RESULTA_bus\(24);
\Mult2~15\ <= \Mult2~mac_RESULTA_bus\(25);
\Mult2~16\ <= \Mult2~mac_RESULTA_bus\(26);
\Mult2~17\ <= \Mult2~mac_RESULTA_bus\(27);
\Mult2~18\ <= \Mult2~mac_RESULTA_bus\(28);
\Mult2~19\ <= \Mult2~mac_RESULTA_bus\(29);
\Mult2~20\ <= \Mult2~mac_RESULTA_bus\(30);
\Mult2~21\ <= \Mult2~mac_RESULTA_bus\(31);
\Mult2~22\ <= \Mult2~mac_RESULTA_bus\(32);
\Mult2~23\ <= \Mult2~mac_RESULTA_bus\(33);
\Mult2~24\ <= \Mult2~mac_RESULTA_bus\(34);
\Mult2~25\ <= \Mult2~mac_RESULTA_bus\(35);
\Mult2~26\ <= \Mult2~mac_RESULTA_bus\(36);
\Mult2~27\ <= \Mult2~mac_RESULTA_bus\(37);
\Mult2~28\ <= \Mult2~mac_RESULTA_bus\(38);
\Mult2~29\ <= \Mult2~mac_RESULTA_bus\(39);
\Mult2~30\ <= \Mult2~mac_RESULTA_bus\(40);
\Mult2~31\ <= \Mult2~mac_RESULTA_bus\(41);
\Mult2~32\ <= \Mult2~mac_RESULTA_bus\(42);
\Mult2~33\ <= \Mult2~mac_RESULTA_bus\(43);
\Mult2~34\ <= \Mult2~mac_RESULTA_bus\(44);
\Mult2~35\ <= \Mult2~mac_RESULTA_bus\(45);
\Mult2~36\ <= \Mult2~mac_RESULTA_bus\(46);
\Mult2~37\ <= \Mult2~mac_RESULTA_bus\(47);
\Mult2~38\ <= \Mult2~mac_RESULTA_bus\(48);
\Mult2~39\ <= \Mult2~mac_RESULTA_bus\(49);
\Mult2~40\ <= \Mult2~mac_RESULTA_bus\(50);
\Mult2~41\ <= \Mult2~mac_RESULTA_bus\(51);
\Mult2~42\ <= \Mult2~mac_RESULTA_bus\(52);
\Mult2~43\ <= \Mult2~mac_RESULTA_bus\(53);
\Mult2~44\ <= \Mult2~mac_RESULTA_bus\(54);
\Mult2~45\ <= \Mult2~mac_RESULTA_bus\(55);
\Mult2~46\ <= \Mult2~mac_RESULTA_bus\(56);
\Mult2~47\ <= \Mult2~mac_RESULTA_bus\(57);
\Mult2~48\ <= \Mult2~mac_RESULTA_bus\(58);
\Mult2~49\ <= \Mult2~mac_RESULTA_bus\(59);
\Mult2~50\ <= \Mult2~mac_RESULTA_bus\(60);
\Mult2~51\ <= \Mult2~mac_RESULTA_bus\(61);
\Mult2~52\ <= \Mult2~mac_RESULTA_bus\(62);
\Mult2~53\ <= \Mult2~mac_RESULTA_bus\(63);

\Mult3~mac_ACLR_bus\ <= (\reset~input_o\ & \reset~input_o\);

\Mult3~mac_CLK_bus\ <= (\clk~inputCLKENA0_outclk\ & \clk~inputCLKENA0_outclk\ & \clk~inputCLKENA0_outclk\);

\Mult3~mac_ENA_bus\ <= (NOT \load_x~input_o\ & \load_x~input_o\ & vcc);

\Mult3~mac_AX_bus\ <= (\c_in[8]~input_o\ & \c_in[7]~input_o\ & \c_in[6]~input_o\ & \c_in[5]~input_o\ & \c_in[4]~input_o\ & \c_in[3]~input_o\ & \c_in[2]~input_o\ & \c_in[1]~input_o\ & \c_in[0]~input_o\);

\Mult3~mac_AY_bus\ <= (\x_in[8]~input_o\ & \x_in[7]~input_o\ & \x_in[6]~input_o\ & \x_in[5]~input_o\ & \x_in[4]~input_o\ & \x_in[3]~input_o\ & \x_in[2]~input_o\ & \x_in[1]~input_o\ & \x_in[0]~input_o\);

\Mult3~mac_BX_bus\ <= (\c_in[8]~input_o\ & \c_in[8]~input_o\ & \c_in[8]~input_o\ & \c_in[8]~input_o\ & \c_in[8]~input_o\ & \c_in[8]~input_o\ & \c_in[8]~input_o\ & \c_in[8]~input_o\ & \c_in[8]~input_o\);

\Mult3~mac_BY_bus\ <= (\x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\);

\a[3][0]\ <= \Mult3~mac_RESULTA_bus\(0);
\a[3][1]\ <= \Mult3~mac_RESULTA_bus\(1);
\a[3][2]\ <= \Mult3~mac_RESULTA_bus\(2);
\a[3][3]\ <= \Mult3~mac_RESULTA_bus\(3);
\a[3][4]\ <= \Mult3~mac_RESULTA_bus\(4);
\a[3][5]\ <= \Mult3~mac_RESULTA_bus\(5);
\a[3][6]\ <= \Mult3~mac_RESULTA_bus\(6);
\a[3][7]\ <= \Mult3~mac_RESULTA_bus\(7);
\a[3][8]\ <= \Mult3~mac_RESULTA_bus\(8);
\a[3][9]\ <= \Mult3~mac_RESULTA_bus\(9);
\a[3][10]\ <= \Mult3~mac_RESULTA_bus\(10);
\a[3][11]\ <= \Mult3~mac_RESULTA_bus\(11);
\a[3][12]\ <= \Mult3~mac_RESULTA_bus\(12);
\a[3][13]\ <= \Mult3~mac_RESULTA_bus\(13);
\a[3][14]\ <= \Mult3~mac_RESULTA_bus\(14);
\a[3][15]\ <= \Mult3~mac_RESULTA_bus\(15);
\a[3][16]\ <= \Mult3~mac_RESULTA_bus\(16);
\a[3][18]\ <= \Mult3~mac_RESULTA_bus\(17);
\Mult3~8\ <= \Mult3~mac_RESULTA_bus\(18);
\Mult3~9\ <= \Mult3~mac_RESULTA_bus\(19);
\Mult3~10\ <= \Mult3~mac_RESULTA_bus\(20);
\Mult3~11\ <= \Mult3~mac_RESULTA_bus\(21);
\Mult3~12\ <= \Mult3~mac_RESULTA_bus\(22);
\Mult3~13\ <= \Mult3~mac_RESULTA_bus\(23);
\Mult3~14\ <= \Mult3~mac_RESULTA_bus\(24);
\Mult3~15\ <= \Mult3~mac_RESULTA_bus\(25);
\Mult3~16\ <= \Mult3~mac_RESULTA_bus\(26);
\Mult3~17\ <= \Mult3~mac_RESULTA_bus\(27);
\Mult3~18\ <= \Mult3~mac_RESULTA_bus\(28);
\Mult3~19\ <= \Mult3~mac_RESULTA_bus\(29);
\Mult3~20\ <= \Mult3~mac_RESULTA_bus\(30);
\Mult3~21\ <= \Mult3~mac_RESULTA_bus\(31);
\Mult3~22\ <= \Mult3~mac_RESULTA_bus\(32);
\Mult3~23\ <= \Mult3~mac_RESULTA_bus\(33);
\Mult3~24\ <= \Mult3~mac_RESULTA_bus\(34);
\Mult3~25\ <= \Mult3~mac_RESULTA_bus\(35);
\Mult3~26\ <= \Mult3~mac_RESULTA_bus\(36);
\Mult3~27\ <= \Mult3~mac_RESULTA_bus\(37);
\Mult3~28\ <= \Mult3~mac_RESULTA_bus\(38);
\Mult3~29\ <= \Mult3~mac_RESULTA_bus\(39);
\Mult3~30\ <= \Mult3~mac_RESULTA_bus\(40);
\Mult3~31\ <= \Mult3~mac_RESULTA_bus\(41);
\Mult3~32\ <= \Mult3~mac_RESULTA_bus\(42);
\Mult3~33\ <= \Mult3~mac_RESULTA_bus\(43);
\Mult3~34\ <= \Mult3~mac_RESULTA_bus\(44);
\Mult3~35\ <= \Mult3~mac_RESULTA_bus\(45);
\Mult3~36\ <= \Mult3~mac_RESULTA_bus\(46);
\Mult3~37\ <= \Mult3~mac_RESULTA_bus\(47);
\Mult3~38\ <= \Mult3~mac_RESULTA_bus\(48);
\Mult3~39\ <= \Mult3~mac_RESULTA_bus\(49);
\Mult3~40\ <= \Mult3~mac_RESULTA_bus\(50);
\Mult3~41\ <= \Mult3~mac_RESULTA_bus\(51);
\Mult3~42\ <= \Mult3~mac_RESULTA_bus\(52);
\Mult3~43\ <= \Mult3~mac_RESULTA_bus\(53);
\Mult3~44\ <= \Mult3~mac_RESULTA_bus\(54);
\Mult3~45\ <= \Mult3~mac_RESULTA_bus\(55);
\Mult3~46\ <= \Mult3~mac_RESULTA_bus\(56);
\Mult3~47\ <= \Mult3~mac_RESULTA_bus\(57);
\Mult3~48\ <= \Mult3~mac_RESULTA_bus\(58);
\Mult3~49\ <= \Mult3~mac_RESULTA_bus\(59);
\Mult3~50\ <= \Mult3~mac_RESULTA_bus\(60);
\Mult3~51\ <= \Mult3~mac_RESULTA_bus\(61);
\Mult3~52\ <= \Mult3~mac_RESULTA_bus\(62);
\Mult3~53\ <= \Mult3~mac_RESULTA_bus\(63);
\ALT_INV_p[1][17]\ <= NOT \p[1][17]\;
\ALT_INV_p[1][16]\ <= NOT \p[1][16]\;
\ALT_INV_p[1][15]\ <= NOT \p[1][15]\;
\ALT_INV_p[1][14]\ <= NOT \p[1][14]\;
\ALT_INV_p[1][13]\ <= NOT \p[1][13]\;
\ALT_INV_p[1][12]\ <= NOT \p[1][12]\;
\ALT_INV_p[1][11]\ <= NOT \p[1][11]\;
\ALT_INV_p[1][10]\ <= NOT \p[1][10]\;
\ALT_INV_p[1][9]\ <= NOT \p[1][9]\;
\ALT_INV_p[1][8]\ <= NOT \p[1][8]\;
\ALT_INV_p[1][7]\ <= NOT \p[1][7]\;
\ALT_INV_p[1][6]\ <= NOT \p[1][6]\;
\ALT_INV_p[1][5]\ <= NOT \p[1][5]\;
\ALT_INV_p[1][4]\ <= NOT \p[1][4]\;
\ALT_INV_p[1][3]\ <= NOT \p[1][3]\;
\ALT_INV_p[1][2]\ <= NOT \p[1][2]\;
\ALT_INV_p[1][1]\ <= NOT \p[1][1]\;
\ALT_INV_p[1][0]\ <= NOT \p[1][0]\;
\ALT_INV_p[0][17]\ <= NOT \p[0][17]\;
\ALT_INV_p[0][16]\ <= NOT \p[0][16]\;
\ALT_INV_p[0][15]\ <= NOT \p[0][15]\;
\ALT_INV_p[0][14]\ <= NOT \p[0][14]\;
\ALT_INV_p[0][13]\ <= NOT \p[0][13]\;
\ALT_INV_p[0][12]\ <= NOT \p[0][12]\;
\ALT_INV_p[0][11]\ <= NOT \p[0][11]\;
\ALT_INV_p[0][10]\ <= NOT \p[0][10]\;
\ALT_INV_p[0][9]\ <= NOT \p[0][9]\;
\ALT_INV_p[0][8]\ <= NOT \p[0][8]\;
\ALT_INV_p[0][7]\ <= NOT \p[0][7]\;
\ALT_INV_p[0][6]\ <= NOT \p[0][6]\;
\ALT_INV_p[0][5]\ <= NOT \p[0][5]\;
\ALT_INV_p[0][4]\ <= NOT \p[0][4]\;
\ALT_INV_p[0][3]\ <= NOT \p[0][3]\;
\ALT_INV_p[0][2]\ <= NOT \p[0][2]\;
\ALT_INV_p[0][1]\ <= NOT \p[0][1]\;
\ALT_INV_p[0][0]\ <= NOT \p[0][0]\;
\ALT_INV_a[3][18]\ <= NOT \a[3][18]\;
\ALT_INV_a[3][16]\ <= NOT \a[3][16]\;
\ALT_INV_a[3][15]\ <= NOT \a[3][15]\;
\ALT_INV_a[3][14]\ <= NOT \a[3][14]\;
\ALT_INV_a[3][13]\ <= NOT \a[3][13]\;
\ALT_INV_a[3][12]\ <= NOT \a[3][12]\;
\ALT_INV_a[3][11]\ <= NOT \a[3][11]\;
\ALT_INV_a[3][10]\ <= NOT \a[3][10]\;
\ALT_INV_a[3][9]\ <= NOT \a[3][9]\;
\ALT_INV_a[3][8]\ <= NOT \a[3][8]\;
\ALT_INV_a[3][7]\ <= NOT \a[3][7]\;
\ALT_INV_a[3][6]\ <= NOT \a[3][6]\;
\ALT_INV_a[3][5]\ <= NOT \a[3][5]\;
\ALT_INV_a[3][4]\ <= NOT \a[3][4]\;
\ALT_INV_a[3][3]\ <= NOT \a[3][3]\;
\ALT_INV_a[3][2]\ <= NOT \a[3][2]\;
\ALT_INV_a[3][1]\ <= NOT \a[3][1]\;
\ALT_INV_a[3][0]\ <= NOT \a[3][0]\;
\ALT_INV_p[2][17]\ <= NOT \p[2][17]\;
\ALT_INV_p[2][16]\ <= NOT \p[2][16]\;
\ALT_INV_p[2][15]\ <= NOT \p[2][15]\;
\ALT_INV_p[2][14]\ <= NOT \p[2][14]\;
\ALT_INV_p[2][13]\ <= NOT \p[2][13]\;
\ALT_INV_p[2][12]\ <= NOT \p[2][12]\;
\ALT_INV_p[2][11]\ <= NOT \p[2][11]\;
\ALT_INV_p[2][10]\ <= NOT \p[2][10]\;
\ALT_INV_p[2][9]\ <= NOT \p[2][9]\;
\ALT_INV_p[2][8]\ <= NOT \p[2][8]\;
\ALT_INV_p[2][7]\ <= NOT \p[2][7]\;
\ALT_INV_p[2][6]\ <= NOT \p[2][6]\;
\ALT_INV_p[2][5]\ <= NOT \p[2][5]\;
\ALT_INV_p[2][4]\ <= NOT \p[2][4]\;
\ALT_INV_p[2][3]\ <= NOT \p[2][3]\;
\ALT_INV_p[2][2]\ <= NOT \p[2][2]\;
\ALT_INV_p[2][1]\ <= NOT \p[2][1]\;
\ALT_INV_p[2][0]\ <= NOT \p[2][0]\;
\ALT_INV_c_in[6]~input_o\ <= NOT \c_in[6]~input_o\;
\ALT_INV_c_in[1]~input_o\ <= NOT \c_in[1]~input_o\;
\ALT_INV_load_x~input_o\ <= NOT \load_x~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_a[2][0]~q\ <= NOT \a[2][0]~q\;
\ALT_INV_a[2][1]~q\ <= NOT \a[2][1]~q\;
\ALT_INV_a[1][0]~q\ <= NOT \a[1][0]~q\;
\ALT_INV_a[2][2]~q\ <= NOT \a[2][2]~q\;
\ALT_INV_a[1][1]~q\ <= NOT \a[1][1]~q\;
\ALT_INV_a[2][3]~q\ <= NOT \a[2][3]~q\;
\ALT_INV_a[1][2]~q\ <= NOT \a[1][2]~q\;
\ALT_INV_a[2][4]~q\ <= NOT \a[2][4]~q\;
\ALT_INV_a[1][3]~q\ <= NOT \a[1][3]~q\;
\ALT_INV_a[2][5]~q\ <= NOT \a[2][5]~q\;
\ALT_INV_a[1][4]~q\ <= NOT \a[1][4]~q\;
\ALT_INV_a[2][6]~q\ <= NOT \a[2][6]~q\;
\ALT_INV_c[3][8]~_Duplicate_1_q\ <= NOT \c[3][8]~_Duplicate_1_q\;
\ALT_INV_c[3][6]~_Duplicate_1_q\ <= NOT \c[3][6]~_Duplicate_1_q\;
\ALT_INV_c[3][3]~_Duplicate_1_q\ <= NOT \c[3][3]~_Duplicate_1_q\;
\ALT_INV_c[3][2]~_Duplicate_1_q\ <= NOT \c[3][2]~_Duplicate_1_q\;
\ALT_INV_c[3][1]~_Duplicate_1_q\ <= NOT \c[3][1]~_Duplicate_1_q\;
\ALT_INV_a[1][5]~q\ <= NOT \a[1][5]~q\;
\ALT_INV_a[2][7]~q\ <= NOT \a[2][7]~q\;
\ALT_INV_c[2][6]~_Duplicate_1_q\ <= NOT \c[2][6]~_Duplicate_1_q\;
\ALT_INV_c[2][4]~_Duplicate_1_q\ <= NOT \c[2][4]~_Duplicate_1_q\;
\ALT_INV_c[2][3]~_Duplicate_1_q\ <= NOT \c[2][3]~_Duplicate_1_q\;
\ALT_INV_c[2][2]~_Duplicate_1_q\ <= NOT \c[2][2]~_Duplicate_1_q\;
\ALT_INV_c[2][1]~_Duplicate_1_q\ <= NOT \c[2][1]~_Duplicate_1_q\;
\ALT_INV_a[2][18]~q\ <= NOT \a[2][18]~q\;
\ALT_INV_a[2][17]~q\ <= NOT \a[2][17]~q\;
\ALT_INV_a[2][16]~q\ <= NOT \a[2][16]~q\;
\ALT_INV_a[2][15]~q\ <= NOT \a[2][15]~q\;
\ALT_INV_a[2][14]~q\ <= NOT \a[2][14]~q\;
\ALT_INV_a[2][13]~q\ <= NOT \a[2][13]~q\;
\ALT_INV_a[2][12]~q\ <= NOT \a[2][12]~q\;
\ALT_INV_a[2][11]~q\ <= NOT \a[2][11]~q\;
\ALT_INV_a[2][10]~q\ <= NOT \a[2][10]~q\;
\ALT_INV_a[2][9]~q\ <= NOT \a[2][9]~q\;
\ALT_INV_a[1][6]~q\ <= NOT \a[1][6]~q\;
\ALT_INV_a[2][8]~q\ <= NOT \a[2][8]~q\;
\ALT_INV_a[1][7]~q\ <= NOT \a[1][7]~q\;
\ALT_INV_a[1][18]~q\ <= NOT \a[1][18]~q\;
\ALT_INV_a[1][17]~q\ <= NOT \a[1][17]~q\;
\ALT_INV_a[1][16]~q\ <= NOT \a[1][16]~q\;
\ALT_INV_a[1][15]~q\ <= NOT \a[1][15]~q\;
\ALT_INV_a[1][14]~q\ <= NOT \a[1][14]~q\;
\ALT_INV_a[1][13]~q\ <= NOT \a[1][13]~q\;
\ALT_INV_a[1][12]~q\ <= NOT \a[1][12]~q\;
\ALT_INV_a[1][11]~q\ <= NOT \a[1][11]~q\;
\ALT_INV_a[1][10]~q\ <= NOT \a[1][10]~q\;
\ALT_INV_a[1][9]~q\ <= NOT \a[1][9]~q\;
\ALT_INV_a[1][8]~q\ <= NOT \a[1][8]~q\;

-- Location: IOOBUF_X84_Y0_N36
\y_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \a[0][8]~q\,
	devoe => ww_devoe,
	o => ww_y_out(0));

-- Location: IOOBUF_X88_Y0_N20
\y_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \a[0][9]~q\,
	devoe => ww_devoe,
	o => ww_y_out(1));

-- Location: IOOBUF_X82_Y0_N76
\y_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \a[0][10]~q\,
	devoe => ww_devoe,
	o => ww_y_out(2));

-- Location: IOOBUF_X86_Y0_N36
\y_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \a[0][11]~q\,
	devoe => ww_devoe,
	o => ww_y_out(3));

-- Location: IOOBUF_X84_Y0_N2
\y_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \a[0][12]~q\,
	devoe => ww_devoe,
	o => ww_y_out(4));

-- Location: IOOBUF_X88_Y0_N37
\y_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \a[0][13]~q\,
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
	i => \a[0][14]~q\,
	devoe => ww_devoe,
	o => ww_y_out(6));

-- Location: IOOBUF_X84_Y0_N53
\y_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \a[0][15]~q\,
	devoe => ww_devoe,
	o => ww_y_out(7));

-- Location: IOOBUF_X82_Y0_N93
\y_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \a[0][16]~q\,
	devoe => ww_devoe,
	o => ww_y_out(8));

-- Location: IOOBUF_X88_Y0_N54
\y_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \a[0][17]~q\,
	devoe => ww_devoe,
	o => ww_y_out(9));

-- Location: IOOBUF_X88_Y0_N3
\y_out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \a[0][18]~q\,
	devoe => ww_devoe,
	o => ww_y_out(10));

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

-- Location: IOIBUF_X89_Y9_N55
\load_x~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_x,
	o => \load_x~input_o\);

-- Location: IOIBUF_X89_Y6_N55
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X89_Y6_N4
\c_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in(0),
	o => \c_in[0]~input_o\);

-- Location: FF_X85_Y4_N47
\c[3][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c_in[0]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \ALT_INV_load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[3][0]~_Duplicate_1_q\);

-- Location: FF_X85_Y4_N35
\c[2][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c[3][0]~_Duplicate_1_q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \ALT_INV_load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[2][0]~_Duplicate_1_q\);

-- Location: FF_X85_Y4_N31
\c[1][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c[2][0]~_Duplicate_1_q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \ALT_INV_load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[1][0]~_Duplicate_1_q\);

-- Location: IOIBUF_X89_Y6_N38
\c_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in(1),
	o => \c_in[1]~input_o\);

-- Location: LABCELL_X85_Y6_N0
\c[3][1]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \c[3][1]~_Duplicate_1feeder_combout\ = ( \c_in[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_c_in[1]~input_o\,
	combout => \c[3][1]~_Duplicate_1feeder_combout\);

-- Location: FF_X85_Y6_N2
\c[3][1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \c[3][1]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[3][1]~_Duplicate_1_q\);

-- Location: LABCELL_X85_Y4_N48
\c[2][1]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \c[2][1]~_Duplicate_1feeder_combout\ = ( \c[3][1]~_Duplicate_1_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_c[3][1]~_Duplicate_1_q\,
	combout => \c[2][1]~_Duplicate_1feeder_combout\);

-- Location: FF_X85_Y4_N50
\c[2][1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \c[2][1]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[2][1]~_Duplicate_1_q\);

-- Location: LABCELL_X85_Y4_N51
\c[1][1]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \c[1][1]~_Duplicate_1feeder_combout\ = ( \c[2][1]~_Duplicate_1_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_c[2][1]~_Duplicate_1_q\,
	combout => \c[1][1]~_Duplicate_1feeder_combout\);

-- Location: FF_X85_Y4_N52
\c[1][1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \c[1][1]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[1][1]~_Duplicate_1_q\);

-- Location: IOIBUF_X89_Y9_N38
\c_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in(2),
	o => \c_in[2]~input_o\);

-- Location: FF_X85_Y6_N35
\c[3][2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c_in[2]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \ALT_INV_load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[3][2]~_Duplicate_1_q\);

-- Location: LABCELL_X85_Y6_N30
\c[2][2]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \c[2][2]~_Duplicate_1feeder_combout\ = ( \c[3][2]~_Duplicate_1_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_c[3][2]~_Duplicate_1_q\,
	combout => \c[2][2]~_Duplicate_1feeder_combout\);

-- Location: FF_X85_Y6_N32
\c[2][2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \c[2][2]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[2][2]~_Duplicate_1_q\);

-- Location: LABCELL_X85_Y6_N51
\c[1][2]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \c[1][2]~_Duplicate_1feeder_combout\ = ( \c[2][2]~_Duplicate_1_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_c[2][2]~_Duplicate_1_q\,
	combout => \c[1][2]~_Duplicate_1feeder_combout\);

-- Location: FF_X85_Y6_N52
\c[1][2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \c[1][2]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[1][2]~_Duplicate_1_q\);

-- Location: IOIBUF_X89_Y9_N21
\c_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in(3),
	o => \c_in[3]~input_o\);

-- Location: FF_X85_Y6_N26
\c[3][3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c_in[3]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \ALT_INV_load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[3][3]~_Duplicate_1_q\);

-- Location: LABCELL_X85_Y6_N9
\c[2][3]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \c[2][3]~_Duplicate_1feeder_combout\ = ( \c[3][3]~_Duplicate_1_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_c[3][3]~_Duplicate_1_q\,
	combout => \c[2][3]~_Duplicate_1feeder_combout\);

-- Location: FF_X85_Y6_N11
\c[2][3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \c[2][3]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[2][3]~_Duplicate_1_q\);

-- Location: LABCELL_X85_Y6_N6
\c[1][3]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \c[1][3]~_Duplicate_1feeder_combout\ = ( \c[2][3]~_Duplicate_1_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_c[2][3]~_Duplicate_1_q\,
	combout => \c[1][3]~_Duplicate_1feeder_combout\);

-- Location: FF_X85_Y6_N7
\c[1][3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \c[1][3]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[1][3]~_Duplicate_1_q\);

-- Location: IOIBUF_X89_Y9_N4
\c_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in(4),
	o => \c_in[4]~input_o\);

-- Location: FF_X85_Y6_N17
\c[3][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c_in[4]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \ALT_INV_load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[3][4]~_Duplicate_1_q\);

-- Location: FF_X85_Y6_N14
\c[2][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c[3][4]~_Duplicate_1_q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \ALT_INV_load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[2][4]~_Duplicate_1_q\);

-- Location: LABCELL_X85_Y6_N21
\c[1][4]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \c[1][4]~_Duplicate_1feeder_combout\ = ( \c[2][4]~_Duplicate_1_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_c[2][4]~_Duplicate_1_q\,
	combout => \c[1][4]~_Duplicate_1feeder_combout\);

-- Location: FF_X85_Y6_N22
\c[1][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \c[1][4]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[1][4]~_Duplicate_1_q\);

-- Location: IOIBUF_X89_Y8_N38
\c_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in(5),
	o => \c_in[5]~input_o\);

-- Location: FF_X85_Y4_N41
\c[3][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c_in[5]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \ALT_INV_load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[3][5]~_Duplicate_1_q\);

-- Location: FF_X85_Y4_N38
\c[2][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c[3][5]~_Duplicate_1_q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \ALT_INV_load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[2][5]~_Duplicate_1_q\);

-- Location: FF_X85_Y4_N8
\c[1][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c[2][5]~_Duplicate_1_q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \ALT_INV_load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[1][5]~_Duplicate_1_q\);

-- Location: IOIBUF_X89_Y8_N21
\c_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in(6),
	o => \c_in[6]~input_o\);

-- Location: LABCELL_X85_Y8_N36
\c[3][6]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \c[3][6]~_Duplicate_1feeder_combout\ = ( \c_in[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_c_in[6]~input_o\,
	combout => \c[3][6]~_Duplicate_1feeder_combout\);

-- Location: FF_X85_Y8_N38
\c[3][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \c[3][6]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[3][6]~_Duplicate_1_q\);

-- Location: LABCELL_X85_Y4_N18
\c[2][6]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \c[2][6]~_Duplicate_1feeder_combout\ = ( \c[3][6]~_Duplicate_1_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_c[3][6]~_Duplicate_1_q\,
	combout => \c[2][6]~_Duplicate_1feeder_combout\);

-- Location: FF_X85_Y4_N20
\c[2][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \c[2][6]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[2][6]~_Duplicate_1_q\);

-- Location: LABCELL_X85_Y4_N21
\c[1][6]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \c[1][6]~_Duplicate_1feeder_combout\ = ( \c[2][6]~_Duplicate_1_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_c[2][6]~_Duplicate_1_q\,
	combout => \c[1][6]~_Duplicate_1feeder_combout\);

-- Location: FF_X85_Y4_N22
\c[1][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \c[1][6]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[1][6]~_Duplicate_1_q\);

-- Location: IOIBUF_X89_Y8_N55
\c_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in(7),
	o => \c_in[7]~input_o\);

-- Location: FF_X85_Y4_N17
\c[3][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c_in[7]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \ALT_INV_load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[3][7]~_Duplicate_1_q\);

-- Location: FF_X85_Y4_N14
\c[2][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c[3][7]~_Duplicate_1_q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \ALT_INV_load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[2][7]~_Duplicate_1_q\);

-- Location: FF_X85_Y4_N55
\c[1][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c[2][7]~_Duplicate_1_q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \ALT_INV_load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[1][7]~_Duplicate_1_q\);

-- Location: IOIBUF_X89_Y8_N4
\c_in[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in(8),
	o => \c_in[8]~input_o\);

-- Location: FF_X85_Y6_N47
\c[3][8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c_in[8]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \ALT_INV_load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[3][8]~_Duplicate_1_q\);

-- Location: LABCELL_X85_Y4_N27
\c[2][8]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \c[2][8]~_Duplicate_1feeder_combout\ = ( \c[3][8]~_Duplicate_1_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_c[3][8]~_Duplicate_1_q\,
	combout => \c[2][8]~_Duplicate_1feeder_combout\);

-- Location: FF_X85_Y4_N29
\c[2][8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \c[2][8]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[2][8]~_Duplicate_1_q\);

-- Location: FF_X85_Y4_N2
\c[1][8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c[2][8]~_Duplicate_1_q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \ALT_INV_load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[1][8]~_Duplicate_1_q\);

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

-- Location: IOIBUF_X86_Y0_N18
\x_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(1),
	o => \x_in[1]~input_o\);

-- Location: IOIBUF_X89_Y4_N95
\x_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(2),
	o => \x_in[2]~input_o\);

-- Location: IOIBUF_X89_Y4_N78
\x_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(3),
	o => \x_in[3]~input_o\);

-- Location: IOIBUF_X89_Y4_N44
\x_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(4),
	o => \x_in[4]~input_o\);

-- Location: IOIBUF_X86_Y0_N1
\x_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(5),
	o => \x_in[5]~input_o\);

-- Location: IOIBUF_X82_Y0_N41
\x_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(6),
	o => \x_in[6]~input_o\);

-- Location: IOIBUF_X89_Y6_N21
\x_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(7),
	o => \x_in[7]~input_o\);

-- Location: IOIBUF_X86_Y0_N52
\x_in[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(8),
	o => \x_in[8]~input_o\);

-- Location: DSP_X86_Y2_N0
\Mult0~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "0",
	ax_width => 9,
	ay_scan_in_clock => "1",
	ay_scan_in_width => 9,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "0",
	bx_width => 9,
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
	output_clock => "none",
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
	aclr => \Mult0~mac_ACLR_bus\,
	clk => \Mult0~mac_CLK_bus\,
	ena => \Mult0~mac_ENA_bus\,
	ax => \Mult0~mac_AX_bus\,
	ay => \Mult0~mac_AY_bus\,
	bx => \Mult0~mac_BX_bus\,
	by => \Mult0~mac_BY_bus\,
	resulta => \Mult0~mac_RESULTA_bus\);

-- Location: DSP_X86_Y8_N0
\Mult3~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "2",
	ax_width => 9,
	ay_scan_in_clock => "1",
	ay_scan_in_width => 9,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "2",
	bx_width => 9,
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
	aclr => \Mult3~mac_ACLR_bus\,
	clk => \Mult3~mac_CLK_bus\,
	ena => \Mult3~mac_ENA_bus\,
	ax => \Mult3~mac_AX_bus\,
	ay => \Mult3~mac_AY_bus\,
	bx => \Mult3~mac_BX_bus\,
	by => \Mult3~mac_BY_bus\,
	resulta => \Mult3~mac_RESULTA_bus\);

-- Location: DSP_X86_Y6_N0
\Mult2~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "1",
	ax_width => 9,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 9,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "1",
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
	output_clock => "none",
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
	aclr => \Mult2~mac_ACLR_bus\,
	clk => \Mult2~mac_CLK_bus\,
	ena => \Mult2~mac_ENA_bus\,
	ax => \Mult2~mac_AX_bus\,
	ay => \Mult2~mac_AY_bus\,
	bx => \Mult2~mac_BX_bus\,
	by => \Mult2~mac_BY_bus\,
	resulta => \Mult2~mac_RESULTA_bus\);

-- Location: MLABCELL_X87_Y6_N0
\Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~73_sumout\ = SUM(( \p[2][0]\ ) + ( \a[3][0]\ ) + ( !VCC ))
-- \Add2~74\ = CARRY(( \p[2][0]\ ) + ( \a[3][0]\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[3][0]\,
	datad => \ALT_INV_p[2][0]\,
	cin => GND,
	sumout => \Add2~73_sumout\,
	cout => \Add2~74\);

-- Location: MLABCELL_X87_Y6_N3
\Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~69_sumout\ = SUM(( \p[2][1]\ ) + ( \a[3][1]\ ) + ( \Add2~74\ ))
-- \Add2~70\ = CARRY(( \p[2][1]\ ) + ( \a[3][1]\ ) + ( \Add2~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[3][1]\,
	datad => \ALT_INV_p[2][1]\,
	cin => \Add2~74\,
	sumout => \Add2~69_sumout\,
	cout => \Add2~70\);

-- Location: MLABCELL_X87_Y6_N6
\Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~65_sumout\ = SUM(( \p[2][2]\ ) + ( \a[3][2]\ ) + ( \Add2~70\ ))
-- \Add2~66\ = CARRY(( \p[2][2]\ ) + ( \a[3][2]\ ) + ( \Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[3][2]\,
	datad => \ALT_INV_p[2][2]\,
	cin => \Add2~70\,
	sumout => \Add2~65_sumout\,
	cout => \Add2~66\);

-- Location: MLABCELL_X87_Y6_N9
\Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~61_sumout\ = SUM(( \p[2][3]\ ) + ( \a[3][3]\ ) + ( \Add2~66\ ))
-- \Add2~62\ = CARRY(( \p[2][3]\ ) + ( \a[3][3]\ ) + ( \Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[3][3]\,
	datad => \ALT_INV_p[2][3]\,
	cin => \Add2~66\,
	sumout => \Add2~61_sumout\,
	cout => \Add2~62\);

-- Location: MLABCELL_X87_Y6_N12
\Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~57_sumout\ = SUM(( \p[2][4]\ ) + ( \a[3][4]\ ) + ( \Add2~62\ ))
-- \Add2~58\ = CARRY(( \p[2][4]\ ) + ( \a[3][4]\ ) + ( \Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[3][4]\,
	datac => \ALT_INV_p[2][4]\,
	cin => \Add2~62\,
	sumout => \Add2~57_sumout\,
	cout => \Add2~58\);

-- Location: MLABCELL_X87_Y6_N15
\Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~53_sumout\ = SUM(( \p[2][5]\ ) + ( \a[3][5]\ ) + ( \Add2~58\ ))
-- \Add2~54\ = CARRY(( \p[2][5]\ ) + ( \a[3][5]\ ) + ( \Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_p[2][5]\,
	dataf => \ALT_INV_a[3][5]\,
	cin => \Add2~58\,
	sumout => \Add2~53_sumout\,
	cout => \Add2~54\);

-- Location: MLABCELL_X87_Y6_N18
\Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~49_sumout\ = SUM(( \p[2][6]\ ) + ( \a[3][6]\ ) + ( \Add2~54\ ))
-- \Add2~50\ = CARRY(( \p[2][6]\ ) + ( \a[3][6]\ ) + ( \Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[3][6]\,
	datad => \ALT_INV_p[2][6]\,
	cin => \Add2~54\,
	sumout => \Add2~49_sumout\,
	cout => \Add2~50\);

-- Location: MLABCELL_X87_Y6_N21
\Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~45_sumout\ = SUM(( \p[2][7]\ ) + ( \a[3][7]\ ) + ( \Add2~50\ ))
-- \Add2~46\ = CARRY(( \p[2][7]\ ) + ( \a[3][7]\ ) + ( \Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[3][7]\,
	datad => \ALT_INV_p[2][7]\,
	cin => \Add2~50\,
	sumout => \Add2~45_sumout\,
	cout => \Add2~46\);

-- Location: MLABCELL_X87_Y6_N24
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( \p[2][8]\ ) + ( \a[3][8]\ ) + ( \Add2~46\ ))
-- \Add2~2\ = CARRY(( \p[2][8]\ ) + ( \a[3][8]\ ) + ( \Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[3][8]\,
	datad => \ALT_INV_p[2][8]\,
	cin => \Add2~46\,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: FF_X87_Y6_N25
\a[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~1_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][8]~q\);

-- Location: DSP_X86_Y4_N0
\Mult1~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "1",
	ax_width => 9,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 9,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "1",
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
	output_clock => "none",
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
	aclr => \Mult1~mac_ACLR_bus\,
	clk => \Mult1~mac_CLK_bus\,
	ena => \Mult1~mac_ENA_bus\,
	ax => \Mult1~mac_AX_bus\,
	ay => \Mult1~mac_AY_bus\,
	bx => \Mult1~mac_BX_bus\,
	by => \Mult1~mac_BY_bus\,
	resulta => \Mult1~mac_RESULTA_bus\);

-- Location: FF_X87_Y6_N23
\a[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~45_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][7]~q\);

-- Location: FF_X87_Y6_N19
\a[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~49_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][6]~q\);

-- Location: FF_X87_Y6_N17
\a[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~53_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][5]~q\);

-- Location: FF_X87_Y6_N13
\a[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~57_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][4]~q\);

-- Location: FF_X87_Y6_N11
\a[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~61_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][3]~q\);

-- Location: FF_X87_Y6_N7
\a[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~65_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][2]~q\);

-- Location: FF_X87_Y6_N5
\a[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~69_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][1]~q\);

-- Location: FF_X87_Y6_N1
\a[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~73_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][0]~q\);

-- Location: MLABCELL_X87_Y4_N0
\Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~73_sumout\ = SUM(( \p[1][0]\ ) + ( \a[2][0]~q\ ) + ( !VCC ))
-- \Add1~74\ = CARRY(( \p[1][0]\ ) + ( \a[2][0]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[2][0]~q\,
	datad => \ALT_INV_p[1][0]\,
	cin => GND,
	sumout => \Add1~73_sumout\,
	cout => \Add1~74\);

-- Location: MLABCELL_X87_Y4_N3
\Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~69_sumout\ = SUM(( \p[1][1]\ ) + ( \a[2][1]~q\ ) + ( \Add1~74\ ))
-- \Add1~70\ = CARRY(( \p[1][1]\ ) + ( \a[2][1]~q\ ) + ( \Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[2][1]~q\,
	datad => \ALT_INV_p[1][1]\,
	cin => \Add1~74\,
	sumout => \Add1~69_sumout\,
	cout => \Add1~70\);

-- Location: MLABCELL_X87_Y4_N6
\Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~65_sumout\ = SUM(( \p[1][2]\ ) + ( \a[2][2]~q\ ) + ( \Add1~70\ ))
-- \Add1~66\ = CARRY(( \p[1][2]\ ) + ( \a[2][2]~q\ ) + ( \Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[2][2]~q\,
	datad => \ALT_INV_p[1][2]\,
	cin => \Add1~70\,
	sumout => \Add1~65_sumout\,
	cout => \Add1~66\);

-- Location: MLABCELL_X87_Y4_N9
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( \p[1][3]\ ) + ( \a[2][3]~q\ ) + ( \Add1~66\ ))
-- \Add1~62\ = CARRY(( \p[1][3]\ ) + ( \a[2][3]~q\ ) + ( \Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[2][3]~q\,
	datad => \ALT_INV_p[1][3]\,
	cin => \Add1~66\,
	sumout => \Add1~61_sumout\,
	cout => \Add1~62\);

-- Location: MLABCELL_X87_Y4_N12
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( \p[1][4]\ ) + ( \a[2][4]~q\ ) + ( \Add1~62\ ))
-- \Add1~58\ = CARRY(( \p[1][4]\ ) + ( \a[2][4]~q\ ) + ( \Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[2][4]~q\,
	datad => \ALT_INV_p[1][4]\,
	cin => \Add1~62\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: MLABCELL_X87_Y4_N15
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( \p[1][5]\ ) + ( \a[2][5]~q\ ) + ( \Add1~58\ ))
-- \Add1~54\ = CARRY(( \p[1][5]\ ) + ( \a[2][5]~q\ ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[2][5]~q\,
	datad => \ALT_INV_p[1][5]\,
	cin => \Add1~58\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: MLABCELL_X87_Y4_N18
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( \p[1][6]\ ) + ( \a[2][6]~q\ ) + ( \Add1~54\ ))
-- \Add1~50\ = CARRY(( \p[1][6]\ ) + ( \a[2][6]~q\ ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[2][6]~q\,
	datad => \ALT_INV_p[1][6]\,
	cin => \Add1~54\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: MLABCELL_X87_Y4_N21
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( \p[1][7]\ ) + ( \a[2][7]~q\ ) + ( \Add1~50\ ))
-- \Add1~46\ = CARRY(( \p[1][7]\ ) + ( \a[2][7]~q\ ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[2][7]~q\,
	datad => \ALT_INV_p[1][7]\,
	cin => \Add1~50\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: MLABCELL_X87_Y4_N24
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( \p[1][8]\ ) + ( \a[2][8]~q\ ) + ( \Add1~46\ ))
-- \Add1~2\ = CARRY(( \p[1][8]\ ) + ( \a[2][8]~q\ ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[2][8]~q\,
	datad => \ALT_INV_p[1][8]\,
	cin => \Add1~46\,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: FF_X87_Y4_N25
\a[1][8]\ : dffeas
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
	q => \a[1][8]~q\);

-- Location: FF_X87_Y4_N23
\a[1][7]\ : dffeas
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
	q => \a[1][7]~q\);

-- Location: FF_X87_Y4_N19
\a[1][6]\ : dffeas
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
	q => \a[1][6]~q\);

-- Location: FF_X87_Y4_N17
\a[1][5]\ : dffeas
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
	q => \a[1][5]~q\);

-- Location: FF_X87_Y4_N13
\a[1][4]\ : dffeas
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
	q => \a[1][4]~q\);

-- Location: FF_X87_Y4_N10
\a[1][3]\ : dffeas
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
	q => \a[1][3]~q\);

-- Location: FF_X87_Y4_N7
\a[1][2]\ : dffeas
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
	q => \a[1][2]~q\);

-- Location: FF_X87_Y4_N5
\a[1][1]\ : dffeas
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
	q => \a[1][1]~q\);

-- Location: FF_X87_Y4_N1
\a[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~73_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[1][0]~q\);

-- Location: MLABCELL_X87_Y2_N0
\Add0~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~74_cout\ = CARRY(( \p[0][0]\ ) + ( \a[1][0]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[1][0]~q\,
	datad => \ALT_INV_p[0][0]\,
	cin => GND,
	cout => \Add0~74_cout\);

-- Location: MLABCELL_X87_Y2_N3
\Add0~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~70_cout\ = CARRY(( \p[0][1]\ ) + ( \a[1][1]~q\ ) + ( \Add0~74_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1][1]~q\,
	datad => \ALT_INV_p[0][1]\,
	cin => \Add0~74_cout\,
	cout => \Add0~70_cout\);

-- Location: MLABCELL_X87_Y2_N6
\Add0~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~66_cout\ = CARRY(( \p[0][2]\ ) + ( \a[1][2]~q\ ) + ( \Add0~70_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[1][2]~q\,
	datad => \ALT_INV_p[0][2]\,
	cin => \Add0~70_cout\,
	cout => \Add0~66_cout\);

-- Location: MLABCELL_X87_Y2_N9
\Add0~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~62_cout\ = CARRY(( \p[0][3]\ ) + ( \a[1][3]~q\ ) + ( \Add0~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[1][3]~q\,
	datad => \ALT_INV_p[0][3]\,
	cin => \Add0~66_cout\,
	cout => \Add0~62_cout\);

-- Location: MLABCELL_X87_Y2_N12
\Add0~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~58_cout\ = CARRY(( \a[1][4]~q\ ) + ( \p[0][4]\ ) + ( \Add0~62_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_p[0][4]\,
	datad => \ALT_INV_a[1][4]~q\,
	cin => \Add0~62_cout\,
	cout => \Add0~58_cout\);

-- Location: MLABCELL_X87_Y2_N15
\Add0~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~54_cout\ = CARRY(( \p[0][5]\ ) + ( \a[1][5]~q\ ) + ( \Add0~58_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[1][5]~q\,
	datac => \ALT_INV_p[0][5]\,
	cin => \Add0~58_cout\,
	cout => \Add0~54_cout\);

-- Location: MLABCELL_X87_Y2_N18
\Add0~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~50_cout\ = CARRY(( \p[0][6]\ ) + ( \a[1][6]~q\ ) + ( \Add0~54_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[1][6]~q\,
	datad => \ALT_INV_p[0][6]\,
	cin => \Add0~54_cout\,
	cout => \Add0~50_cout\);

-- Location: MLABCELL_X87_Y2_N21
\Add0~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~46_cout\ = CARRY(( \p[0][7]\ ) + ( \a[1][7]~q\ ) + ( \Add0~50_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1][7]~q\,
	datac => \ALT_INV_p[0][7]\,
	cin => \Add0~50_cout\,
	cout => \Add0~46_cout\);

-- Location: MLABCELL_X87_Y2_N24
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \p[0][8]\ ) + ( \a[1][8]~q\ ) + ( \Add0~46_cout\ ))
-- \Add0~2\ = CARRY(( \p[0][8]\ ) + ( \a[1][8]~q\ ) + ( \Add0~46_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_p[0][8]\,
	dataf => \ALT_INV_a[1][8]~q\,
	cin => \Add0~46_cout\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X87_Y2_N25
\a[0][8]\ : dffeas
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
	q => \a[0][8]~q\);

-- Location: MLABCELL_X87_Y6_N27
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( \p[2][9]\ ) + ( \a[3][9]\ ) + ( \Add2~2\ ))
-- \Add2~6\ = CARRY(( \p[2][9]\ ) + ( \a[3][9]\ ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[3][9]\,
	datad => \ALT_INV_p[2][9]\,
	cin => \Add2~2\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: FF_X87_Y6_N28
\a[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~5_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][9]~q\);

-- Location: MLABCELL_X87_Y4_N27
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( \p[1][9]\ ) + ( \a[2][9]~q\ ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( \p[1][9]\ ) + ( \a[2][9]~q\ ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[2][9]~q\,
	datad => \ALT_INV_p[1][9]\,
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: FF_X87_Y4_N29
\a[1][9]\ : dffeas
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
	q => \a[1][9]~q\);

-- Location: MLABCELL_X87_Y2_N27
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \p[0][9]\ ) + ( \a[1][9]~q\ ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( \p[0][9]\ ) + ( \a[1][9]~q\ ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1][9]~q\,
	datad => \ALT_INV_p[0][9]\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X87_Y2_N28
\a[0][9]\ : dffeas
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
	q => \a[0][9]~q\);

-- Location: MLABCELL_X87_Y6_N30
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( \p[2][10]\ ) + ( \a[3][10]\ ) + ( \Add2~6\ ))
-- \Add2~10\ = CARRY(( \p[2][10]\ ) + ( \a[3][10]\ ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[3][10]\,
	datad => \ALT_INV_p[2][10]\,
	cin => \Add2~6\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: FF_X87_Y6_N31
\a[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][10]~q\);

-- Location: MLABCELL_X87_Y4_N30
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( \p[1][10]\ ) + ( \a[2][10]~q\ ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( \p[1][10]\ ) + ( \a[2][10]~q\ ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[2][10]~q\,
	datac => \ALT_INV_p[1][10]\,
	cin => \Add1~6\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X87_Y4_N31
\a[1][10]\ : dffeas
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
	q => \a[1][10]~q\);

-- Location: MLABCELL_X87_Y2_N30
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \p[0][10]\ ) + ( \a[1][10]~q\ ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( \p[0][10]\ ) + ( \a[1][10]~q\ ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[1][10]~q\,
	datad => \ALT_INV_p[0][10]\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X87_Y2_N31
\a[0][10]\ : dffeas
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
	q => \a[0][10]~q\);

-- Location: MLABCELL_X87_Y6_N33
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( \p[2][11]\ ) + ( \a[3][11]\ ) + ( \Add2~10\ ))
-- \Add2~14\ = CARRY(( \p[2][11]\ ) + ( \a[3][11]\ ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[3][11]\,
	datad => \ALT_INV_p[2][11]\,
	cin => \Add2~10\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: FF_X87_Y6_N34
\a[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][11]~q\);

-- Location: MLABCELL_X87_Y4_N33
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( \p[1][11]\ ) + ( \a[2][11]~q\ ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( \p[1][11]\ ) + ( \a[2][11]~q\ ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[2][11]~q\,
	datad => \ALT_INV_p[1][11]\,
	cin => \Add1~10\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X87_Y4_N35
\a[1][11]\ : dffeas
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
	q => \a[1][11]~q\);

-- Location: MLABCELL_X87_Y2_N33
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \p[0][11]\ ) + ( \a[1][11]~q\ ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( \p[0][11]\ ) + ( \a[1][11]~q\ ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1][11]~q\,
	datad => \ALT_INV_p[0][11]\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X87_Y2_N34
\a[0][11]\ : dffeas
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
	q => \a[0][11]~q\);

-- Location: MLABCELL_X87_Y6_N36
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( \a[3][12]\ ) + ( \p[2][12]\ ) + ( \Add2~14\ ))
-- \Add2~18\ = CARRY(( \a[3][12]\ ) + ( \p[2][12]\ ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_p[2][12]\,
	datad => \ALT_INV_a[3][12]\,
	cin => \Add2~14\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: FF_X87_Y6_N37
\a[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~17_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][12]~q\);

-- Location: MLABCELL_X87_Y4_N36
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( \p[1][12]\ ) + ( \a[2][12]~q\ ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( \p[1][12]\ ) + ( \a[2][12]~q\ ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_p[1][12]\,
	dataf => \ALT_INV_a[2][12]~q\,
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X87_Y4_N37
\a[1][12]\ : dffeas
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
	q => \a[1][12]~q\);

-- Location: MLABCELL_X87_Y2_N36
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \p[0][12]\ ) + ( \a[1][12]~q\ ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( \p[0][12]\ ) + ( \a[1][12]~q\ ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1][12]~q\,
	datac => \ALT_INV_p[0][12]\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X87_Y2_N38
\a[0][12]\ : dffeas
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
	q => \a[0][12]~q\);

-- Location: MLABCELL_X87_Y6_N39
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( \p[2][13]\ ) + ( \a[3][13]\ ) + ( \Add2~18\ ))
-- \Add2~22\ = CARRY(( \p[2][13]\ ) + ( \a[3][13]\ ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[3][13]\,
	datad => \ALT_INV_p[2][13]\,
	cin => \Add2~18\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: FF_X87_Y6_N41
\a[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~21_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][13]~q\);

-- Location: MLABCELL_X87_Y4_N39
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( \p[1][13]\ ) + ( \a[2][13]~q\ ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( \p[1][13]\ ) + ( \a[2][13]~q\ ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[2][13]~q\,
	datac => \ALT_INV_p[1][13]\,
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X87_Y4_N41
\a[1][13]\ : dffeas
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
	q => \a[1][13]~q\);

-- Location: MLABCELL_X87_Y2_N39
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \p[0][13]\ ) + ( \a[1][13]~q\ ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( \p[0][13]\ ) + ( \a[1][13]~q\ ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_p[0][13]\,
	dataf => \ALT_INV_a[1][13]~q\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X87_Y2_N41
\a[0][13]\ : dffeas
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
	q => \a[0][13]~q\);

-- Location: MLABCELL_X87_Y6_N42
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( \a[3][14]\ ) + ( \p[2][14]\ ) + ( \Add2~22\ ))
-- \Add2~26\ = CARRY(( \a[3][14]\ ) + ( \p[2][14]\ ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_p[2][14]\,
	datad => \ALT_INV_a[3][14]\,
	cin => \Add2~22\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: FF_X87_Y6_N43
\a[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~25_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][14]~q\);

-- Location: MLABCELL_X87_Y4_N42
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( \p[1][14]\ ) + ( \a[2][14]~q\ ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( \p[1][14]\ ) + ( \a[2][14]~q\ ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_p[1][14]\,
	dataf => \ALT_INV_a[2][14]~q\,
	cin => \Add1~22\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X87_Y4_N43
\a[1][14]\ : dffeas
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
	q => \a[1][14]~q\);

-- Location: MLABCELL_X87_Y2_N42
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \p[0][14]\ ) + ( \a[1][14]~q\ ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \p[0][14]\ ) + ( \a[1][14]~q\ ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[1][14]~q\,
	datad => \ALT_INV_p[0][14]\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X87_Y2_N43
\a[0][14]\ : dffeas
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
	q => \a[0][14]~q\);

-- Location: MLABCELL_X87_Y6_N45
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( \p[2][15]\ ) + ( \a[3][15]\ ) + ( \Add2~26\ ))
-- \Add2~30\ = CARRY(( \p[2][15]\ ) + ( \a[3][15]\ ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[3][15]\,
	datac => \ALT_INV_p[2][15]\,
	cin => \Add2~26\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: FF_X87_Y6_N46
\a[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~29_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][15]~q\);

-- Location: MLABCELL_X87_Y4_N45
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( \p[1][15]\ ) + ( \a[2][15]~q\ ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( \p[1][15]\ ) + ( \a[2][15]~q\ ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[2][15]~q\,
	datac => \ALT_INV_p[1][15]\,
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X87_Y4_N47
\a[1][15]\ : dffeas
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
	q => \a[1][15]~q\);

-- Location: MLABCELL_X87_Y2_N45
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \p[0][15]\ ) + ( \a[1][15]~q\ ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( \p[0][15]\ ) + ( \a[1][15]~q\ ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[1][15]~q\,
	datac => \ALT_INV_p[0][15]\,
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X87_Y2_N47
\a[0][15]\ : dffeas
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
	q => \a[0][15]~q\);

-- Location: MLABCELL_X87_Y6_N48
\Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( \p[2][16]\ ) + ( \a[3][16]\ ) + ( \Add2~30\ ))
-- \Add2~34\ = CARRY(( \p[2][16]\ ) + ( \a[3][16]\ ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[3][16]\,
	datad => \ALT_INV_p[2][16]\,
	cin => \Add2~30\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\);

-- Location: FF_X87_Y6_N50
\a[2][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~33_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][16]~q\);

-- Location: MLABCELL_X87_Y4_N48
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( \p[1][16]\ ) + ( \a[2][16]~q\ ) + ( \Add1~30\ ))
-- \Add1~34\ = CARRY(( \p[1][16]\ ) + ( \a[2][16]~q\ ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[2][16]~q\,
	datad => \ALT_INV_p[1][16]\,
	cin => \Add1~30\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: FF_X87_Y4_N50
\a[1][16]\ : dffeas
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
	q => \a[1][16]~q\);

-- Location: MLABCELL_X87_Y2_N48
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( \p[0][16]\ ) + ( \a[1][16]~q\ ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( \p[0][16]\ ) + ( \a[1][16]~q\ ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[1][16]~q\,
	datad => \ALT_INV_p[0][16]\,
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X87_Y2_N49
\a[0][16]\ : dffeas
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
	q => \a[0][16]~q\);

-- Location: MLABCELL_X87_Y6_N51
\Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~37_sumout\ = SUM(( \p[2][17]\ ) + ( \a[3][18]\ ) + ( \Add2~34\ ))
-- \Add2~38\ = CARRY(( \p[2][17]\ ) + ( \a[3][18]\ ) + ( \Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[3][18]\,
	datad => \ALT_INV_p[2][17]\,
	cin => \Add2~34\,
	sumout => \Add2~37_sumout\,
	cout => \Add2~38\);

-- Location: FF_X87_Y6_N52
\a[2][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~37_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][17]~q\);

-- Location: MLABCELL_X87_Y4_N51
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( \p[1][17]\ ) + ( \a[2][17]~q\ ) + ( \Add1~34\ ))
-- \Add1~38\ = CARRY(( \p[1][17]\ ) + ( \a[2][17]~q\ ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[2][17]~q\,
	datad => \ALT_INV_p[1][17]\,
	cin => \Add1~34\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: FF_X87_Y4_N52
\a[1][17]\ : dffeas
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
	q => \a[1][17]~q\);

-- Location: MLABCELL_X87_Y2_N51
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( \p[0][17]\ ) + ( \a[1][17]~q\ ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( \p[0][17]\ ) + ( \a[1][17]~q\ ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1][17]~q\,
	datad => \ALT_INV_p[0][17]\,
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X87_Y2_N53
\a[0][17]\ : dffeas
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
	q => \a[0][17]~q\);

-- Location: MLABCELL_X87_Y6_N54
\Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~41_sumout\ = SUM(( \p[2][17]\ ) + ( \a[3][18]\ ) + ( \Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[3][18]\,
	datad => \ALT_INV_p[2][17]\,
	cin => \Add2~38\,
	sumout => \Add2~41_sumout\);

-- Location: FF_X87_Y6_N55
\a[2][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~41_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][18]~q\);

-- Location: MLABCELL_X87_Y4_N54
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( \p[1][17]\ ) + ( \a[2][18]~q\ ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[2][18]~q\,
	datad => \ALT_INV_p[1][17]\,
	cin => \Add1~38\,
	sumout => \Add1~41_sumout\);

-- Location: FF_X87_Y4_N55
\a[1][18]\ : dffeas
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
	q => \a[1][18]~q\);

-- Location: MLABCELL_X87_Y2_N54
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( \p[0][17]\ ) + ( \a[1][18]~q\ ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[1][18]~q\,
	datad => \ALT_INV_p[0][17]\,
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\);

-- Location: FF_X87_Y2_N55
\a[0][18]\ : dffeas
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
	q => \a[0][18]~q\);

-- Location: LABCELL_X9_Y44_N3
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


