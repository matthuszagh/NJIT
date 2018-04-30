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

-- DATE "04/19/2018 21:59:11"

-- 
-- Device: Altera 5CSEMA5F31C8 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

PACKAGE fft4_data_type IS

TYPE X_r_out_8_0_type IS ARRAY (8 DOWNTO 0) OF std_logic;
TYPE X_r_out_8_0_0_3_type IS ARRAY (0 TO 3) OF X_r_out_8_0_type;
SUBTYPE X_r_out_type IS X_r_out_8_0_0_3_type;

TYPE X_i_out_8_0_type IS ARRAY (8 DOWNTO 0) OF std_logic;
TYPE X_i_out_8_0_0_3_type IS ARRAY (0 TO 3) OF X_i_out_8_0_type;
SUBTYPE X_i_out_type IS X_i_out_8_0_0_3_type;

END fft4_data_type;

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
LIBRARY WORK;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.FFT4_DATA_TYPE.ALL;

ENTITY 	fft4 IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	x_in : IN std_logic_vector(8 DOWNTO 0);
	X_r_out : OUT X_r_out_type;
	X_i_out : OUT X_i_out_type
	);
END fft4;

-- Design Ports Information
-- X_r_out[3][0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_r_out[3][1]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_r_out[3][2]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_r_out[3][3]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_r_out[3][4]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_r_out[3][5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_r_out[3][6]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_r_out[3][7]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_r_out[3][8]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_r_out[2][0]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_r_out[2][1]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_r_out[2][2]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_r_out[2][3]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_r_out[2][4]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_r_out[2][5]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_r_out[2][6]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_r_out[2][7]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_r_out[2][8]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_r_out[1][0]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_r_out[1][1]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_r_out[1][2]	=>  Location: PIN_AJ26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_r_out[1][3]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_r_out[1][4]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_r_out[1][5]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_r_out[1][6]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_r_out[1][7]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_r_out[1][8]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_r_out[0][0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_r_out[0][1]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_r_out[0][2]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_r_out[0][3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_r_out[0][4]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_r_out[0][5]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_r_out[0][6]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_r_out[0][7]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_r_out[0][8]	=>  Location: PIN_AK29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_i_out[3][0]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_i_out[3][1]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_i_out[3][2]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_i_out[3][3]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_i_out[3][4]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_i_out[3][5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_i_out[3][6]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_i_out[3][7]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_i_out[3][8]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_i_out[2][0]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_i_out[2][1]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_i_out[2][2]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_i_out[2][3]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_i_out[2][4]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_i_out[2][5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_i_out[2][6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_i_out[2][7]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_i_out[2][8]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_i_out[1][0]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_i_out[1][1]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_i_out[1][2]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_i_out[1][3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_i_out[1][4]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_i_out[1][5]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_i_out[1][6]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_i_out[1][7]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_i_out[1][8]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_i_out[0][0]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_i_out[0][1]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_i_out[0][2]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_i_out[0][3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_i_out[0][4]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_i_out[0][5]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_i_out[0][6]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_i_out[0][7]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_i_out[0][8]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[0]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[1]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[3]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[4]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[5]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[6]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[7]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[8]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fft4 IS
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
SIGNAL ww_x_in : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_X_r_out : X_r_out_type;
SIGNAL ww_X_i_out : X_i_out_type;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~8_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~8_AY_bus\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~8_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~8_AY_bus\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~8_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~8_AY_bus\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~8_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~8_AY_bus\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~8_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~8_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~8_AY_bus\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~8_AY_bus\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~8_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~8_AY_bus\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~8_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~8_AY_bus\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~8_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~8_AY_bus\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~8_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~8_AY_bus\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~8_AY_bus\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~32\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~33\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~34\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~35\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~36\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~37\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~38\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~39\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~40\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~41\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~42\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~43\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~44\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~45\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~46\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~47\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~48\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~49\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~50\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~51\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~52\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~53\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~54\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~55\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~56\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~57\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~58\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~59\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~60\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~61\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~62\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~63\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~64\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~65\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~66\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~67\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~68\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~69\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~70\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~71\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~32\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~33\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~34\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~35\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~36\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~37\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~38\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~39\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~40\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~41\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~42\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~43\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~44\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~45\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~46\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~47\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~48\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~49\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~50\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~51\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~52\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~53\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~54\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~55\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~56\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~57\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~58\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~59\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~60\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~61\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~62\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~63\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~64\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~65\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~66\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~67\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~68\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~69\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~70\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~71\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~31\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~33\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~34\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~35\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~36\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~37\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~38\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~39\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~40\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~41\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~42\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~43\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~44\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~45\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~46\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~47\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~48\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~49\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~50\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~51\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~52\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~53\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~54\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~55\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~56\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~57\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~58\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~59\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~60\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~61\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~62\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~63\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~64\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~65\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~66\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~67\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~68\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~69\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~70\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~71\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~31\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~33\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~34\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~35\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~36\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~37\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~38\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~39\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~40\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~41\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~42\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~43\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~44\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~45\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~46\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~47\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~48\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~49\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~50\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~51\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~52\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~53\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~54\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~55\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~56\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~57\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~58\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~59\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~60\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~61\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~62\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~63\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~64\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~65\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~66\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~67\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~68\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~69\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~70\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~71\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~31\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~33\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~34\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~35\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~36\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~37\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~38\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~39\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~40\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~41\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~42\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~43\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~44\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~45\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~46\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~47\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~48\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~49\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~50\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~51\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~52\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~53\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~54\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~55\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~56\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~57\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~58\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~59\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~60\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~61\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~62\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~63\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~64\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~65\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~66\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~67\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~68\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~69\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~70\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~71\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~32\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~33\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~34\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~35\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~36\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~37\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~38\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~39\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~40\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~41\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~42\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~43\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~44\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~45\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~46\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~47\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~48\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~49\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~50\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~51\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~52\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~53\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~54\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~55\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~56\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~57\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~58\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~59\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~60\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~61\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~62\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~63\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~64\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~65\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~66\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~67\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~68\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~69\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~70\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~71\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~8_resulta\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~9\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~10\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~11\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~12\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~13\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~14\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~15\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~16\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~17\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~18\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~19\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~20\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~21\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~31\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~32\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~33\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~34\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~35\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~36\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~37\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~38\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~39\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~40\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~41\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~42\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~43\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~44\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~45\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~46\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~47\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~48\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~49\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~50\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~51\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~52\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~53\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~54\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~55\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~56\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~57\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~58\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~59\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~60\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~61\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~62\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~63\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~64\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~65\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~66\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~67\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~68\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~69\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~70\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~71\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~31\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~33\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~34\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~35\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~36\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~37\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~38\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~39\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~40\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~41\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~42\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~43\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~44\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~45\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~46\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~47\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~48\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~49\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~50\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~51\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~52\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~53\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~54\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~55\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~56\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~57\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~58\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~59\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~60\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~61\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~62\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~63\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~64\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~65\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~66\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~67\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~68\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~69\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~70\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~71\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~32\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~33\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~34\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~35\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~36\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~37\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~38\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~39\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~40\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~41\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~42\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~43\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~44\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~45\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~46\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~47\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~48\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~49\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~50\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~51\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~52\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~53\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~54\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~55\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~56\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~57\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~58\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~59\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~60\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~61\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~62\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~63\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~64\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~65\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~66\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~67\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~68\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~69\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~70\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~71\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~31\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~33\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~34\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~35\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~36\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~37\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~38\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~39\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~40\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~41\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~42\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~43\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~44\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~45\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~46\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~47\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~48\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~49\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~50\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~51\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~52\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~53\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~54\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~55\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~56\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~57\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~58\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~59\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~60\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~61\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~62\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~63\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~64\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~65\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~66\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~67\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~68\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~69\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~70\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~71\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~32\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~33\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~34\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~35\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~36\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~37\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~38\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~39\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~40\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~41\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~42\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~43\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~44\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~45\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~46\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~47\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~48\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~49\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~50\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~51\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~52\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~53\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~54\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~55\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~56\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~57\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~58\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~59\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~60\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~61\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~62\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~63\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~64\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~65\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~66\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~67\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~68\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~69\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~70\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~71\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~8_resulta\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~9\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~10\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~11\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~12\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~13\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~14\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~15\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~16\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~17\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~18\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~19\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~20\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~21\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~31\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~32\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~33\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~34\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~35\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~36\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~37\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~38\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~39\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~40\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~41\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~42\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~43\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~44\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~45\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~46\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~47\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~48\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~49\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~50\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~51\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~52\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~53\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~54\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~55\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~56\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~57\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~58\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~59\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~60\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~61\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~62\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~63\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~64\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~65\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~66\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~67\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~68\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~69\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~70\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~71\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|state~0_combout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|state~q\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|clk_div2~0_combout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|clk_div2~q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|clk_div2~0_combout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|clk_div2~q\ : std_logic;
SIGNAL \count[0]~1_combout\ : std_logic;
SIGNAL \count[1]~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \x_in[0]~input_o\ : std_logic;
SIGNAL \x_in[1]~input_o\ : std_logic;
SIGNAL \x_in[2]~input_o\ : std_logic;
SIGNAL \x_in[3]~input_o\ : std_logic;
SIGNAL \x_in[4]~input_o\ : std_logic;
SIGNAL \x_in[5]~input_o\ : std_logic;
SIGNAL \x_in[6]~input_o\ : std_logic;
SIGNAL \x_in[7]~input_o\ : std_logic;
SIGNAL \x_in[8]~input_o\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~22\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~13\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~19\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~10\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~9\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~8_resulta\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~11\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~12\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|WideOr2~0_combout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~20\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~21\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~16\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~14\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~18\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~15\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~17\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|WideOr2~1_combout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|WideOr2~combout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~31\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add4~38_cout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add4~1_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~22\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~32\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~21\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~20\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~19\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~13\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~17\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~18\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~15\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~14\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~16\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|WideOr1~1_combout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~8_resulta\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~11\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~12\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~10\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~9\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|WideOr1~0_combout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|WideOr1~combout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add2~38_cout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add2~1_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add5~1_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~23\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add2~2\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add2~5_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~23\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add4~2\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add4~5_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add5~2\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add5~3\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add5~5_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add3~1_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~24\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add2~6\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add2~9_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~24\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add4~6\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add4~9_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add5~6\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add5~7\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add5~9_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add3~2\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add3~5_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~25\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add2~10\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add2~13_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~25\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add4~10\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add4~13_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add5~10\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add5~11\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add5~13_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|i[3]~DUPLICATE_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add3~6\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add3~9_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~26\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add2~14\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add2~17_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~26\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add4~14\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add4~17_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add5~14\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add5~15\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add5~17_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add3~10\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add3~13_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~27\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add2~18\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add2~21_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~27\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add4~18\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add4~21_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add5~18\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add5~19\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add5~21_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add3~14\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add3~17_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~28\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add4~22\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add4~25_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~28\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add2~22\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add2~25_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add5~22\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add5~23\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add5~25_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add3~18\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add3~21_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~29\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add2~26\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add2~29_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~29\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add4~26\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add4~29_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add5~26\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add5~27\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add5~29_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add3~22\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add3~25_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult1~30\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add2~30\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add2~33_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult2~30\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add4~30\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add4~33_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add5~30\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add5~31\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add5~33_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add3~26\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add3~29_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~22\ : std_logic;
SIGNAL \x[3][0]~_Duplicate_2_q\ : std_logic;
SIGNAL \x[2][0]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \x[2][0]~_Duplicate_2_q\ : std_logic;
SIGNAL \x[1][0]~q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~22\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add3~1_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|r[0]~DUPLICATE_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add2~1_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|out2_r_ff[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|out1_i_ff[0]~_Duplicate_2_q\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add1~1_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~23\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add3~2\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add3~5_sumout\ : std_logic;
SIGNAL \x[3][1]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \x[3][1]~_Duplicate_2_q\ : std_logic;
SIGNAL \x[2][1]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \x[2][1]~_Duplicate_2_q\ : std_logic;
SIGNAL \x[1][1]~q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add2~2\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add2~3\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add2~5_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|out2_r_ff[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|out2_i_ff[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add1~2\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add1~3\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add1~5_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~24\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add3~6\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add3~9_sumout\ : std_logic;
SIGNAL \x[3][2]~_Duplicate_2_q\ : std_logic;
SIGNAL \x[2][2]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \x[2][2]~_Duplicate_2_q\ : std_logic;
SIGNAL \x[1][2]~DUPLICATE_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add2~6\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add2~7\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add2~9_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|out2_r_ff[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|out2_i_ff[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add1~6\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add1~7\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add1~9_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|out2_i_ff[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~25\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add3~10\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add3~13_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|r[3]~DUPLICATE_q\ : std_logic;
SIGNAL \x[3][3]~_Duplicate_2_q\ : std_logic;
SIGNAL \x[2][3]~_Duplicate_2_q\ : std_logic;
SIGNAL \x[1][3]~DUPLICATE_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add2~10\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add2~11\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add2~13_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|out2_r_ff[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add1~10\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add1~11\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add1~13_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|out2_i_ff[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~26\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add3~14\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add3~17_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|r[4]~DUPLICATE_q\ : std_logic;
SIGNAL \x[3][4]~_Duplicate_2_q\ : std_logic;
SIGNAL \x[2][4]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \x[2][4]~_Duplicate_2_q\ : std_logic;
SIGNAL \x[1][4]~feeder_combout\ : std_logic;
SIGNAL \x[1][4]~q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add2~14\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add2~15\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add2~17_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|out2_r_ff[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add1~14\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add1~15\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add1~17_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~27\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add3~18\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add3~21_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|r[5]~DUPLICATE_q\ : std_logic;
SIGNAL \x[3][5]~_Duplicate_2_q\ : std_logic;
SIGNAL \x[2][5]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \x[2][5]~_Duplicate_2_q\ : std_logic;
SIGNAL \x[1][5]~q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add2~18\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add2~19\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add2~21_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|out2_r_ff[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|out2_i_ff[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add1~18\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add1~19\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add1~21_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|out2_i_ff[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~28\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add3~22\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add3~25_sumout\ : std_logic;
SIGNAL \x[3][6]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \x[3][6]~_Duplicate_2_q\ : std_logic;
SIGNAL \x[2][6]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \x[2][6]~_Duplicate_2_q\ : std_logic;
SIGNAL \x[1][6]~feeder_combout\ : std_logic;
SIGNAL \x[1][6]~q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add2~22\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add2~23\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add2~25_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|out2_r_ff[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add1~22\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add1~23\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add1~25_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|out2_i_ff[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \x[3][7]~_Duplicate_2_q\ : std_logic;
SIGNAL \x[2][7]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \x[2][7]~_Duplicate_2_q\ : std_logic;
SIGNAL \x[1][7]~DUPLICATE_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~29\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add3~26\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add3~29_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|r[7]~DUPLICATE_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add2~26\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add2~27\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add2~29_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|out2_r_ff[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add1~26\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add1~27\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add1~29_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Mult0~30\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add3~30\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|Add3~33_sumout\ : std_logic;
SIGNAL \x[3][8]~_Duplicate_3feeder_combout\ : std_logic;
SIGNAL \x[3][8]~_Duplicate_3_q\ : std_logic;
SIGNAL \x[2][8]~_Duplicate_3_q\ : std_logic;
SIGNAL \x[1][8]~q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add2~30\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add2~31\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add2~33_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|out2_r_ff[8]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|out2_i_ff[8]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add1~30\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add1~31\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add1~33_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add1~34\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add1~35\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add1~37_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~22\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~32\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~19\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~13\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~21\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~20\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~11\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~10\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~8_resulta\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~9\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~12\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|WideOr1~0_combout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~18\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~17\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~14\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~15\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~16\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|WideOr1~1_combout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|WideOr1~combout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add2~38_cout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add2~1_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~31\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~19\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~16\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~18\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~17\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~15\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~14\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|WideOr0~1_combout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~20\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~21\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~13\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~12\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~10\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~11\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~8_resulta\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~9\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|WideOr0~0_combout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|WideOr0~combout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add0~38_cout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add0~39\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add0~1_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|clk_div2~0_combout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|clk_div2~q\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~22\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~22\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~32\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~13\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~21\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~19\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~20\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~10\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~12\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~9\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~8_resulta\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~11\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|WideOr1~0_combout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~16\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~18\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~14\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~15\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~17\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|WideOr1~1_combout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|WideOr1~combout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add2~38_cout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add2~1_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add3~1_sumout\ : std_logic;
SIGNAL \x[0][0]~feeder_combout\ : std_logic;
SIGNAL \x[0][0]~q\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add2~1_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add2~1_sumout\ : std_logic;
SIGNAL \x[0][1]~feeder_combout\ : std_logic;
SIGNAL \x[0][1]~q\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~23\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~23\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add2~2\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add2~5_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add3~2\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add3~5_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add2~2\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add2~3\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add2~5_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~23\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~23\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add2~2\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add2~5_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add0~2\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add0~3\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add0~5_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add2~2\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add2~3\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add2~5_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~24\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~24\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add2~6\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add2~9_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add0~6\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add0~7\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add0~9_sumout\ : std_logic;
SIGNAL \x[1][2]~q\ : std_logic;
SIGNAL \x[0][2]~feeder_combout\ : std_logic;
SIGNAL \x[0][2]~DUPLICATE_q\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~24\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~24\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add2~6\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add2~9_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add3~6\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add3~9_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add2~6\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add2~7\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add2~9_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add2~6\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add2~7\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add2~9_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~25\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~25\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add2~10\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add2~13_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add0~10\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add0~11\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add0~13_sumout\ : std_logic;
SIGNAL \x[1][3]~q\ : std_logic;
SIGNAL \x[0][3]~feeder_combout\ : std_logic;
SIGNAL \x[0][3]~q\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~25\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~25\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add2~10\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add2~13_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add3~10\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add3~13_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add2~10\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add2~11\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add2~13_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add2~10\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add2~11\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add2~13_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~26\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~26\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add2~14\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add2~17_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add3~14\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add3~17_sumout\ : std_logic;
SIGNAL \x[0][4]~q\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add2~14\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add2~15\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add2~17_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~26\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add2~14\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add2~17_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~26\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add0~14\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add0~15\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add0~17_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add2~14\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add2~15\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add2~17_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~27\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~27\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add2~18\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add2~21_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add0~18\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add0~19\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add0~21_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~27\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~27\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add2~18\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add2~21_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add3~18\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add3~21_sumout\ : std_logic;
SIGNAL \x[0][5]~feeder_combout\ : std_logic;
SIGNAL \x[0][5]~q\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add2~18\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add2~19\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add2~21_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add2~18\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add2~19\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add2~21_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~28\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~28\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add2~22\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add2~25_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add0~22\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add0~23\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add0~25_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~28\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add2~22\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add2~25_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~28\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add3~22\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add3~25_sumout\ : std_logic;
SIGNAL \x[0][6]~feeder_combout\ : std_logic;
SIGNAL \x[0][6]~q\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add2~22\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add2~23\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add2~25_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add2~22\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add2~23\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add2~25_sumout\ : std_logic;
SIGNAL \x[1][7]~q\ : std_logic;
SIGNAL \x[0][7]~feeder_combout\ : std_logic;
SIGNAL \x[0][7]~q\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~29\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~29\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add2~26\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add2~29_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add3~26\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add3~29_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add2~26\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add2~27\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add2~29_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~29\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~29\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add2~26\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add2~29_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add0~26\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add0~27\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add0~29_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add2~26\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add2~27\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add2~29_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult0~30\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult1~30\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add2~30\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add2~33_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add3~30\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add3~33_sumout\ : std_logic;
SIGNAL \x[0][8]~feeder_combout\ : std_logic;
SIGNAL \x[0][8]~q\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add2~30\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add2~31\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add2~33_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult0~30\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult1~30\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add2~30\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add2~33_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add0~30\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add0~31\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add0~33_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add2~30\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add2~31\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add2~33_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|clk_div2~0_combout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|clk_div2~q\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add0~1_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|i[2]~DUPLICATE_q\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~22\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add0~1_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|out1_r_ff[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add1~1_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add0~2\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add0~5_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|out1_r_ff[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|out1_i_ff[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add1~2\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add1~3\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add1~5_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|r[2]~DUPLICATE_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add0~6\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add0~9_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|out1_r_ff[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|out1_i_ff[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add1~6\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add1~7\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add1~9_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add0~10\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add0~13_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|out1_r_ff[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|out1_i_ff[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add1~10\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add1~11\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add1~13_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add0~14\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add0~17_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|out1_r_ff[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|out1_i_ff[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add1~14\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add1~15\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add1~17_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add0~18\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add0~21_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|out1_r_ff[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|out1_i_ff[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add1~18\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add1~19\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add1~21_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|r[6]~DUPLICATE_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add0~22\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add0~25_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|out1_r_ff[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|out1_i_ff[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add1~22\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add1~23\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add1~25_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add0~26\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add0~29_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|out1_r_ff[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|out1_i_ff[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add1~26\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add1~27\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add1~29_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add0~30\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|Add0~33_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|out1_r_ff[8]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|out1_i_ff[8]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add1~30\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add1~31\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add1~33_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add1~34\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add1~35\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add1~37_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~22\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~32\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~19\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~21\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~13\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~20\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~8_resulta\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~10\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~11\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~12\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~9\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|WideOr1~0_combout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~16\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~17\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~15\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~18\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~14\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|WideOr1~1_combout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|WideOr1~combout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add2~38_cout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add2~1_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~31\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~12\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~11\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~8_resulta\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~10\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~9\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|WideOr0~0_combout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~21\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~20\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~13\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~19\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~18\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~14\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~16\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~17\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~15\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|WideOr0~1_combout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|WideOr0~combout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add0~38_cout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add0~39\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add0~1_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add2~1_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|r[1]~DUPLICATE_q\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add0~2\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add0~5_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~23\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~23\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add2~2\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add2~5_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add0~2\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add0~3\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add0~5_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add2~2\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add2~3\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add2~5_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~24\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~24\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add2~6\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add2~9_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add0~6\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add0~7\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add0~9_sumout\ : std_logic;
SIGNAL \x[0][2]~q\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add0~6\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add0~9_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add2~6\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add2~7\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add2~9_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~25\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~25\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add2~10\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add2~13_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add0~10\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add0~11\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add0~13_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add0~10\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add0~13_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add2~10\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add2~11\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add2~13_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~26\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~26\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add2~14\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add2~17_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add0~14\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add0~15\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add0~17_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|r[4]~DUPLICATE_q\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add0~14\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add0~17_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add2~14\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add2~15\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add2~17_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~27\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~27\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add2~18\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add2~21_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add0~18\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add0~19\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add0~21_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add0~18\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add0~21_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add2~18\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add2~19\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add2~21_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add0~22\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add0~25_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~28\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~28\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add2~22\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add2~25_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add0~22\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add0~23\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add0~25_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add2~22\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add2~23\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add2~25_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~29\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add2~26\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add2~29_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~29\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add0~26\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add0~27\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add0~29_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add0~26\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add0~29_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add2~26\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add2~27\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add2~29_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add0~30\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add0~33_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult0~30\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult1~30\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add2~30\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add2~33_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add0~30\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add0~31\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add0~33_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add2~30\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add2~31\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add2~33_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add0~1_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add0~2\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add0~5_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add0~6\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add0~9_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add0~10\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add0~13_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add0~14\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add0~17_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add0~18\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add0~21_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add0~22\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add0~25_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add0~26\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add0~29_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add0~30\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add0~33_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add0~1_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add0~2\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add0~5_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add0~6\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add0~9_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add0~10\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add0~13_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add0~14\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add0~17_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add0~18\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add0~21_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add0~22\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add0~25_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add0~26\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add0~29_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add0~30\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add0~33_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~22\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~13\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~17\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~18\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~16\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~14\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~15\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|WideOr2~1_combout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~19\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~21\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~20\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~9\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~8_resulta\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~12\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~11\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~10\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|WideOr2~0_combout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|WideOr2~combout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~32\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add4~38_cout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add4~1_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add5~1_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~22\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~31\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~21\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~20\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~13\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~19\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~16\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~17\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~14\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~18\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~15\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|WideOr2~1_combout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~10\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~12\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~11\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~9\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~8_resulta\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|WideOr2~0_combout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|WideOr2~combout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add4~38_cout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add4~1_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add5~1_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|out1_i_ff[0]~feeder_combout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add3~1_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~23\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add4~2\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add4~5_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add5~2\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add5~3\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add5~5_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add3~1_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~23\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add4~2\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add4~5_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add5~2\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add5~3\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add5~5_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add3~2\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add3~3\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add3~5_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~24\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add4~6\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add4~9_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add5~6\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add5~7\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add5~9_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~24\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add4~6\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add4~9_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add5~6\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add5~7\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add5~9_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add3~2\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add3~5_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add3~6\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add3~7\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add3~9_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~25\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add4~10\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add4~13_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add5~10\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add5~11\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add5~13_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|i[3]~DUPLICATE_q\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add3~6\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add3~9_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~25\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add4~10\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add4~13_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add5~10\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add5~11\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add5~13_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add3~10\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add3~11\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add3~13_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~26\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add4~14\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add4~17_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add5~14\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add5~15\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add5~17_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~26\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add4~14\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add4~17_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add5~14\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add5~15\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add5~17_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add3~10\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add3~13_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add3~14\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add3~15\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add3~17_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~27\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add4~18\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add4~21_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add5~18\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add5~19\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add5~21_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~27\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add4~18\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add4~21_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add5~18\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add5~19\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add5~21_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add3~14\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add3~17_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add3~18\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add3~19\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add3~21_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~28\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add4~22\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add4~25_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add5~22\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add5~23\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add5~25_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add3~18\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add3~21_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~28\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add4~22\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add4~25_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add5~22\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add5~23\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add5~25_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add3~22\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add3~23\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add3~25_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~29\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add4~26\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add4~29_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add5~26\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add5~27\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add5~29_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add3~22\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add3~25_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~29\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add4~26\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add4~29_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add5~26\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add5~27\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add5~29_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add3~26\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add3~27\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add3~29_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Mult2~30\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add4~30\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add4~33_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add5~30\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add5~31\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|Add5~33_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add3~26\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|Add3~29_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Mult2~30\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add4~30\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add4~33_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add5~30\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add5~31\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|Add5~33_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add3~30\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add3~31\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add3~33_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~22\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~21\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~13\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~19\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~20\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~17\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~15\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~18\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~14\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~16\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|WideOr2~1_combout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~9\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~8_resulta\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~11\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~12\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~10\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|WideOr2~0_combout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|WideOr2~combout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~31\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add4~38_cout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add4~1_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add5~1_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add3~1_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|out1_i_ff[1]~feeder_combout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~23\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add4~2\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add4~5_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add5~2\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add5~3\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add5~5_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add3~2\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add3~3\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add3~5_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~24\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add4~6\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add4~9_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add5~6\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add5~7\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add5~9_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|i[2]~DUPLICATE_q\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|out1_i_ff[2]~feeder_combout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add3~6\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add3~7\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add3~9_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~25\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add4~10\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add4~13_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add5~10\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add5~11\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add5~13_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|out1_i_ff[3]~feeder_combout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add3~10\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add3~11\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add3~13_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|out1_i_ff[4]~feeder_combout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~26\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add4~14\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add4~17_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add5~14\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add5~15\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add5~17_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add3~14\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add3~15\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add3~17_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~27\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add4~18\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add4~21_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add5~18\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add5~19\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add5~21_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add3~18\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add3~19\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add3~21_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|out1_i_ff[6]~feeder_combout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~28\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add4~22\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add4~25_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add5~22\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add5~23\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add5~25_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add3~22\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add3~23\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add3~25_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~29\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add4~26\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add4~29_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add5~26\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add5~27\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add5~29_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add3~26\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add3~27\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add3~29_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|out1_i_ff[8]~feeder_combout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Mult2~30\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add4~30\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add4~33_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add5~30\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add5~31\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|Add5~33_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add3~30\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add3~31\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add3~33_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add1~1_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add1~2\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add1~5_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add1~6\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add1~9_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add1~10\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add1~13_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add1~14\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add1~17_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add1~18\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add1~21_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add1~22\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add1~25_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add1~26\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add1~29_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add1~30\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|Add1~33_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add1~1_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add1~2\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add1~5_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add1~6\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add1~9_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add1~10\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add1~13_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add1~14\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add1~17_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add1~18\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add1~21_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add1~22\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add1~25_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add1~26\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add1~29_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add1~30\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|Add1~33_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|i\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \butterfly_stage1:0:stg1|mul|i\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \butterfly_stage2:0:stg2|mul|i\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \butterfly_stage1:1:stg1|mul|r\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \butterfly_stage1:0:stg1|out1_i_ff\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \butterfly_stage1:0:stg1|out1_r_ff\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \butterfly_stage2:1:stg2|mul|r\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \butterfly_stage2:1:stg2|out2_i_ff\ : std_logic_vector(8 DOWNTO 0);
SIGNAL count : std_logic_vector(2 DOWNTO 0);
SIGNAL \butterfly_stage2:1:stg2|out2_r_ff\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \butterfly_stage2:1:stg2|mul|i\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \butterfly_stage2:0:stg2|out2_r_ff\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \butterfly_stage2:1:stg2|out1_i_ff\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \butterfly_stage1:0:stg1|out2_r_ff\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \butterfly_stage1:0:stg1|mul|r\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \butterfly_stage2:0:stg2|mul|r\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \butterfly_stage2:1:stg2|out1_r_ff\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \butterfly_stage2:0:stg2|out1_i_ff\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \butterfly_stage1:0:stg1|out2_i_ff\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \butterfly_stage2:0:stg2|out1_r_ff\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \butterfly_stage2:0:stg2|out2_i_ff\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_r[7]~DUPLICATE_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_r[6]~DUPLICATE_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_r[5]~DUPLICATE_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_r[4]~DUPLICATE_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_r[3]~DUPLICATE_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_r[2]~DUPLICATE_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_r[0]~DUPLICATE_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_i[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_x[1][7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_x[1][3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_x[1][2]~DUPLICATE_q\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_r[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_x[0][2]~DUPLICATE_q\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_r[1]~DUPLICATE_q\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_i[3]~DUPLICATE_q\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_i[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_x_in[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_x_in[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_x_in[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_WideOr2~combout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_WideOr2~1_combout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_WideOr1~combout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_WideOr1~1_combout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_r\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_WideOr2~combout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_WideOr2~1_combout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_WideOr1~combout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_WideOr1~1_combout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \ALT_INV_x[3][7]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_x[3][6]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_x[3][5]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_x[3][4]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_x[3][2]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_x[3][1]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_x[3][0]~_Duplicate_2_q\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_WideOr2~combout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_WideOr2~1_combout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|ALT_INV_out1_r_ff[8]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|ALT_INV_out1_r_ff[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|ALT_INV_out1_r_ff[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|ALT_INV_out1_r_ff[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|ALT_INV_out1_r_ff[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|ALT_INV_out1_r_ff[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|ALT_INV_out1_r_ff[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|ALT_INV_out1_r_ff[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|ALT_INV_out1_r_ff[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_WideOr2~combout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_WideOr2~1_combout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|ALT_INV_out2_r_ff[8]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|ALT_INV_out2_r_ff[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|ALT_INV_out2_r_ff[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|ALT_INV_out2_r_ff[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|ALT_INV_out2_r_ff[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|ALT_INV_out2_r_ff[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|ALT_INV_out2_r_ff[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|ALT_INV_out2_r_ff[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|ALT_INV_out2_r_ff[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_i\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_WideOr1~combout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_WideOr1~1_combout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \ALT_INV_x[2][6]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_x[2][4]~_Duplicate_2_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|ALT_INV_clk_div2~q\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_WideOr1~combout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_WideOr1~1_combout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL ALT_INV_count : std_logic_vector(2 DOWNTO 0);
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_WideOr0~combout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_WideOr0~1_combout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|ALT_INV_out1_i_ff[8]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|ALT_INV_out1_i_ff[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|ALT_INV_out1_i_ff[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|ALT_INV_out1_i_ff[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|ALT_INV_out1_i_ff[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|ALT_INV_out1_i_ff[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|ALT_INV_out1_i_ff[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|ALT_INV_out1_i_ff[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_x[1][8]~q\ : std_logic;
SIGNAL \ALT_INV_x[1][7]~q\ : std_logic;
SIGNAL \ALT_INV_x[1][6]~q\ : std_logic;
SIGNAL \ALT_INV_x[1][5]~q\ : std_logic;
SIGNAL \ALT_INV_x[1][4]~q\ : std_logic;
SIGNAL \ALT_INV_x[1][3]~q\ : std_logic;
SIGNAL \ALT_INV_x[1][2]~q\ : std_logic;
SIGNAL \ALT_INV_x[1][1]~q\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_WideOr0~combout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_WideOr0~1_combout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|ALT_INV_out2_i_ff[8]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|ALT_INV_out2_i_ff[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|ALT_INV_out2_i_ff[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|ALT_INV_out2_i_ff[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|ALT_INV_out2_i_ff[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|ALT_INV_out2_i_ff[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|ALT_INV_out2_i_ff[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|ALT_INV_out2_i_ff[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|ALT_INV_out1_i_ff[0]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_x[1][0]~q\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_r\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_x[0][8]~q\ : std_logic;
SIGNAL \ALT_INV_x[0][7]~q\ : std_logic;
SIGNAL \ALT_INV_x[0][6]~q\ : std_logic;
SIGNAL \ALT_INV_x[0][5]~q\ : std_logic;
SIGNAL \ALT_INV_x[0][4]~q\ : std_logic;
SIGNAL \ALT_INV_x[0][3]~q\ : std_logic;
SIGNAL \ALT_INV_x[0][2]~q\ : std_logic;
SIGNAL \ALT_INV_x[0][1]~q\ : std_logic;
SIGNAL \ALT_INV_x[0][0]~q\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_i\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \butterfly_stage1:0:stg1|ALT_INV_clk_div2~q\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_i\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \butterfly_stage1:0:stg1|ALT_INV_out1_i_ff\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_i\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \butterfly_stage1:0:stg1|ALT_INV_out2_i_ff\ : std_logic_vector(8 DOWNTO 1);
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_r\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \butterfly_stage1:0:stg1|ALT_INV_out1_r_ff\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_r\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \butterfly_stage1:0:stg1|ALT_INV_out2_r_ff\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \butterfly_stage1:0:stg1|ALT_INV_state~q\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|ALT_INV_clk_div2~q\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|ALT_INV_clk_div2~q\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult0~30\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult0~29\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult0~28\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult0~27\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult0~26\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult0~25\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult0~24\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult0~23\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult0~22\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~31\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~30\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~29\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~28\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~27\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~26\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~25\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~24\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~23\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~22\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~21\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~20\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~19\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~18\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~17\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~16\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~15\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~14\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~13\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~12\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~11\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~10\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~9\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~8_resulta\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~32\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~30\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~29\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~28\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~27\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~26\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~25\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~24\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~23\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~22\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~21\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~20\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~19\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~18\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~17\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~16\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~15\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~14\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~13\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~12\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~11\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~10\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~9\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~8_resulta\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Add4~33_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Add2~33_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Add4~29_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Add4~25_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Add4~21_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Add4~17_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Add4~13_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Add4~9_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Add4~5_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Add4~1_sumout\ : std_logic;
SIGNAL \butterfly_stage1:1:stg1|mul|ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~31\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~30\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~29\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~28\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~27\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~26\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~25\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~24\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~23\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~22\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~21\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~20\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~19\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~18\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~17\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~16\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~15\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~14\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~13\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~12\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~11\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~10\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~9\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~8_resulta\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~32\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~30\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~29\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~28\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~27\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~26\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~25\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~24\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~23\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~22\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~21\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~20\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~19\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~18\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~17\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~16\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~15\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~14\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~13\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~12\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~11\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~10\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~9\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~8_resulta\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult0~30\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult0~29\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult0~28\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult0~27\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult0~26\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult0~25\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult0~24\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult0~23\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Mult0~22\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Add4~33_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Add2~33_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Add4~29_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Add4~25_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Add4~21_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Add4~17_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Add4~13_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Add4~9_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Add4~5_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~31\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~30\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~29\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~28\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~27\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~26\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~25\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~24\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~23\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~22\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~21\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~20\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~19\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~18\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~17\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~16\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~15\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~14\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~13\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~12\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~11\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~10\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~9\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~8_resulta\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~32\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~30\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~29\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~28\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~27\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~26\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~25\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~24\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~23\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~22\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~21\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~20\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~19\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~18\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~17\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~16\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~15\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~14\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~13\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~12\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~11\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~10\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~9\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~8_resulta\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Add4~1_sumout\ : std_logic;
SIGNAL \butterfly_stage1:0:stg1|mul|ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~32\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~30\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~29\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~28\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~27\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~26\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~25\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~24\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~23\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~22\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~21\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~20\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~19\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~18\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~17\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~16\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~15\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~14\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~13\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~12\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~11\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~10\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~9\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~8_resulta\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~32\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~30\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~29\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~28\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~27\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~26\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~25\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~24\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~23\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~22\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~21\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~20\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~19\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~18\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~17\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~16\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~15\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~14\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~13\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~12\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~11\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~10\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~9\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~8_resulta\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Add4~33_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Add4~29_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Add4~25_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Add4~21_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Add4~17_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Add4~13_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Add4~9_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Add4~5_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Add4~1_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Add4~33_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Add4~29_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Add4~25_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Add4~21_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Add4~17_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Add4~13_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Add4~9_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Add4~5_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Add4~1_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Add2~33_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~31\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~30\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~29\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~28\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~27\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~26\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~25\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~24\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~23\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~22\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~21\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~20\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~19\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~18\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~17\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~16\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~15\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~14\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~13\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~12\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~11\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~10\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~9\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~8_resulta\ : std_logic;
SIGNAL \butterfly_stage2:0:stg2|mul|ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Add2~33_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~31\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~30\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~29\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~28\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~27\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~26\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~25\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~24\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~23\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~22\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~21\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~20\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~19\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~18\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~17\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~16\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~15\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~14\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~13\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~12\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~11\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~10\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~9\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~8_resulta\ : std_logic;
SIGNAL \butterfly_stage2:1:stg2|mul|ALT_INV_Add2~1_sumout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_x_in <= x_in;
X_r_out <= ww_X_r_out;
X_i_out <= ww_X_i_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\butterfly_stage2:1:stg2|mul|Mult0~8_ACLR_bus\ <= (gnd & gnd);

\butterfly_stage2:1:stg2|mul|Mult0~8_CLK_bus\ <= (gnd & gnd & NOT \butterfly_stage1:1:stg1|clk_div2~q\);

\butterfly_stage2:1:stg2|mul|Mult0~8_ENA_bus\ <= (vcc & vcc & vcc);

\butterfly_stage2:1:stg2|mul|Mult0~8_AX_bus\ <= (\butterfly_stage1:1:stg1|Add3~29_sumout\ & \butterfly_stage1:1:stg1|Add3~29_sumout\ & \butterfly_stage1:1:stg1|Add3~29_sumout\ & \butterfly_stage1:1:stg1|Add3~29_sumout\ & 
\butterfly_stage1:1:stg1|Add3~29_sumout\ & \butterfly_stage1:1:stg1|Add3~29_sumout\ & \butterfly_stage1:1:stg1|Add3~29_sumout\ & \butterfly_stage1:1:stg1|Add3~29_sumout\ & \butterfly_stage1:1:stg1|Add3~29_sumout\ & \butterfly_stage1:1:stg1|Add3~29_sumout\
& \butterfly_stage1:1:stg1|Add3~25_sumout\ & \butterfly_stage1:1:stg1|Add3~21_sumout\ & \butterfly_stage1:1:stg1|Add3~17_sumout\ & \butterfly_stage1:1:stg1|Add3~13_sumout\ & \butterfly_stage1:1:stg1|Add3~9_sumout\ & \butterfly_stage1:1:stg1|Add3~5_sumout\
& \butterfly_stage1:1:stg1|Add3~1_sumout\ & \butterfly_stage1:1:stg1|mul|i\(0));

\butterfly_stage2:1:stg2|mul|Mult0~8_AY_bus\ <= (vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\butterfly_stage2:1:stg2|mul|Mult0~8_resulta\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(0);
\butterfly_stage2:1:stg2|mul|Mult0~9\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(1);
\butterfly_stage2:1:stg2|mul|Mult0~10\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(2);
\butterfly_stage2:1:stg2|mul|Mult0~11\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(3);
\butterfly_stage2:1:stg2|mul|Mult0~12\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(4);
\butterfly_stage2:1:stg2|mul|Mult0~13\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(5);
\butterfly_stage2:1:stg2|mul|Mult0~14\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(6);
\butterfly_stage2:1:stg2|mul|Mult0~15\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(7);
\butterfly_stage2:1:stg2|mul|Mult0~16\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(8);
\butterfly_stage2:1:stg2|mul|Mult0~17\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(9);
\butterfly_stage2:1:stg2|mul|Mult0~18\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(10);
\butterfly_stage2:1:stg2|mul|Mult0~19\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(11);
\butterfly_stage2:1:stg2|mul|Mult0~20\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(12);
\butterfly_stage2:1:stg2|mul|Mult0~21\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(13);
\butterfly_stage2:1:stg2|mul|Mult0~22\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(14);
\butterfly_stage2:1:stg2|mul|Mult0~23\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(15);
\butterfly_stage2:1:stg2|mul|Mult0~24\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(16);
\butterfly_stage2:1:stg2|mul|Mult0~25\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(17);
\butterfly_stage2:1:stg2|mul|Mult0~26\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(18);
\butterfly_stage2:1:stg2|mul|Mult0~27\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(19);
\butterfly_stage2:1:stg2|mul|Mult0~28\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(20);
\butterfly_stage2:1:stg2|mul|Mult0~29\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(21);
\butterfly_stage2:1:stg2|mul|Mult0~30\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(22);
\butterfly_stage2:1:stg2|mul|Mult0~31\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(23);
\butterfly_stage2:1:stg2|mul|Mult0~32\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(24);
\butterfly_stage2:1:stg2|mul|Mult0~33\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(25);
\butterfly_stage2:1:stg2|mul|Mult0~34\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(26);
\butterfly_stage2:1:stg2|mul|Mult0~35\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(27);
\butterfly_stage2:1:stg2|mul|Mult0~36\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(28);
\butterfly_stage2:1:stg2|mul|Mult0~37\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(29);
\butterfly_stage2:1:stg2|mul|Mult0~38\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(30);
\butterfly_stage2:1:stg2|mul|Mult0~39\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(31);
\butterfly_stage2:1:stg2|mul|Mult0~40\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(32);
\butterfly_stage2:1:stg2|mul|Mult0~41\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(33);
\butterfly_stage2:1:stg2|mul|Mult0~42\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(34);
\butterfly_stage2:1:stg2|mul|Mult0~43\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(35);
\butterfly_stage2:1:stg2|mul|Mult0~44\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(36);
\butterfly_stage2:1:stg2|mul|Mult0~45\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(37);
\butterfly_stage2:1:stg2|mul|Mult0~46\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(38);
\butterfly_stage2:1:stg2|mul|Mult0~47\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(39);
\butterfly_stage2:1:stg2|mul|Mult0~48\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(40);
\butterfly_stage2:1:stg2|mul|Mult0~49\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(41);
\butterfly_stage2:1:stg2|mul|Mult0~50\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(42);
\butterfly_stage2:1:stg2|mul|Mult0~51\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(43);
\butterfly_stage2:1:stg2|mul|Mult0~52\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(44);
\butterfly_stage2:1:stg2|mul|Mult0~53\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(45);
\butterfly_stage2:1:stg2|mul|Mult0~54\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(46);
\butterfly_stage2:1:stg2|mul|Mult0~55\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(47);
\butterfly_stage2:1:stg2|mul|Mult0~56\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(48);
\butterfly_stage2:1:stg2|mul|Mult0~57\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(49);
\butterfly_stage2:1:stg2|mul|Mult0~58\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(50);
\butterfly_stage2:1:stg2|mul|Mult0~59\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(51);
\butterfly_stage2:1:stg2|mul|Mult0~60\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(52);
\butterfly_stage2:1:stg2|mul|Mult0~61\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(53);
\butterfly_stage2:1:stg2|mul|Mult0~62\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(54);
\butterfly_stage2:1:stg2|mul|Mult0~63\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(55);
\butterfly_stage2:1:stg2|mul|Mult0~64\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(56);
\butterfly_stage2:1:stg2|mul|Mult0~65\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(57);
\butterfly_stage2:1:stg2|mul|Mult0~66\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(58);
\butterfly_stage2:1:stg2|mul|Mult0~67\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(59);
\butterfly_stage2:1:stg2|mul|Mult0~68\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(60);
\butterfly_stage2:1:stg2|mul|Mult0~69\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(61);
\butterfly_stage2:1:stg2|mul|Mult0~70\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(62);
\butterfly_stage2:1:stg2|mul|Mult0~71\ <= \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\(63);

\butterfly_stage2:0:stg2|mul|Mult0~8_ACLR_bus\ <= (gnd & gnd);

\butterfly_stage2:0:stg2|mul|Mult0~8_CLK_bus\ <= (gnd & gnd & NOT \butterfly_stage1:1:stg1|clk_div2~q\);

\butterfly_stage2:0:stg2|mul|Mult0~8_ENA_bus\ <= (vcc & vcc & vcc);

\butterfly_stage2:0:stg2|mul|Mult0~8_AX_bus\ <= (\butterfly_stage1:1:stg1|mul|i\(8) & \butterfly_stage1:1:stg1|mul|i\(8) & \butterfly_stage1:1:stg1|mul|i\(8) & \butterfly_stage1:1:stg1|mul|i\(8) & \butterfly_stage1:1:stg1|mul|i\(8) & 
\butterfly_stage1:1:stg1|mul|i\(8) & \butterfly_stage1:1:stg1|mul|i\(8) & \butterfly_stage1:1:stg1|mul|i\(8) & \butterfly_stage1:1:stg1|mul|i\(8) & \butterfly_stage1:1:stg1|mul|i\(8) & \butterfly_stage1:1:stg1|mul|i\(7) & 
\butterfly_stage1:1:stg1|mul|i\(6) & \butterfly_stage1:1:stg1|mul|i\(5) & \butterfly_stage1:1:stg1|mul|i\(4) & \butterfly_stage1:1:stg1|mul|i\(3) & \butterfly_stage1:1:stg1|mul|i[2]~DUPLICATE_q\ & \butterfly_stage1:1:stg1|mul|i\(1) & 
\butterfly_stage1:1:stg1|mul|i\(0));

\butterfly_stage2:0:stg2|mul|Mult0~8_AY_bus\ <= (vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\butterfly_stage2:0:stg2|mul|Mult0~8_resulta\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(0);
\butterfly_stage2:0:stg2|mul|Mult0~9\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(1);
\butterfly_stage2:0:stg2|mul|Mult0~10\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(2);
\butterfly_stage2:0:stg2|mul|Mult0~11\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(3);
\butterfly_stage2:0:stg2|mul|Mult0~12\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(4);
\butterfly_stage2:0:stg2|mul|Mult0~13\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(5);
\butterfly_stage2:0:stg2|mul|Mult0~14\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(6);
\butterfly_stage2:0:stg2|mul|Mult0~15\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(7);
\butterfly_stage2:0:stg2|mul|Mult0~16\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(8);
\butterfly_stage2:0:stg2|mul|Mult0~17\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(9);
\butterfly_stage2:0:stg2|mul|Mult0~18\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(10);
\butterfly_stage2:0:stg2|mul|Mult0~19\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(11);
\butterfly_stage2:0:stg2|mul|Mult0~20\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(12);
\butterfly_stage2:0:stg2|mul|Mult0~21\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(13);
\butterfly_stage2:0:stg2|mul|Mult0~22\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(14);
\butterfly_stage2:0:stg2|mul|Mult0~23\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(15);
\butterfly_stage2:0:stg2|mul|Mult0~24\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(16);
\butterfly_stage2:0:stg2|mul|Mult0~25\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(17);
\butterfly_stage2:0:stg2|mul|Mult0~26\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(18);
\butterfly_stage2:0:stg2|mul|Mult0~27\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(19);
\butterfly_stage2:0:stg2|mul|Mult0~28\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(20);
\butterfly_stage2:0:stg2|mul|Mult0~29\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(21);
\butterfly_stage2:0:stg2|mul|Mult0~30\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(22);
\butterfly_stage2:0:stg2|mul|Mult0~31\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(23);
\butterfly_stage2:0:stg2|mul|Mult0~32\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(24);
\butterfly_stage2:0:stg2|mul|Mult0~33\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(25);
\butterfly_stage2:0:stg2|mul|Mult0~34\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(26);
\butterfly_stage2:0:stg2|mul|Mult0~35\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(27);
\butterfly_stage2:0:stg2|mul|Mult0~36\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(28);
\butterfly_stage2:0:stg2|mul|Mult0~37\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(29);
\butterfly_stage2:0:stg2|mul|Mult0~38\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(30);
\butterfly_stage2:0:stg2|mul|Mult0~39\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(31);
\butterfly_stage2:0:stg2|mul|Mult0~40\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(32);
\butterfly_stage2:0:stg2|mul|Mult0~41\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(33);
\butterfly_stage2:0:stg2|mul|Mult0~42\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(34);
\butterfly_stage2:0:stg2|mul|Mult0~43\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(35);
\butterfly_stage2:0:stg2|mul|Mult0~44\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(36);
\butterfly_stage2:0:stg2|mul|Mult0~45\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(37);
\butterfly_stage2:0:stg2|mul|Mult0~46\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(38);
\butterfly_stage2:0:stg2|mul|Mult0~47\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(39);
\butterfly_stage2:0:stg2|mul|Mult0~48\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(40);
\butterfly_stage2:0:stg2|mul|Mult0~49\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(41);
\butterfly_stage2:0:stg2|mul|Mult0~50\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(42);
\butterfly_stage2:0:stg2|mul|Mult0~51\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(43);
\butterfly_stage2:0:stg2|mul|Mult0~52\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(44);
\butterfly_stage2:0:stg2|mul|Mult0~53\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(45);
\butterfly_stage2:0:stg2|mul|Mult0~54\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(46);
\butterfly_stage2:0:stg2|mul|Mult0~55\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(47);
\butterfly_stage2:0:stg2|mul|Mult0~56\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(48);
\butterfly_stage2:0:stg2|mul|Mult0~57\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(49);
\butterfly_stage2:0:stg2|mul|Mult0~58\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(50);
\butterfly_stage2:0:stg2|mul|Mult0~59\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(51);
\butterfly_stage2:0:stg2|mul|Mult0~60\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(52);
\butterfly_stage2:0:stg2|mul|Mult0~61\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(53);
\butterfly_stage2:0:stg2|mul|Mult0~62\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(54);
\butterfly_stage2:0:stg2|mul|Mult0~63\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(55);
\butterfly_stage2:0:stg2|mul|Mult0~64\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(56);
\butterfly_stage2:0:stg2|mul|Mult0~65\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(57);
\butterfly_stage2:0:stg2|mul|Mult0~66\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(58);
\butterfly_stage2:0:stg2|mul|Mult0~67\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(59);
\butterfly_stage2:0:stg2|mul|Mult0~68\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(60);
\butterfly_stage2:0:stg2|mul|Mult0~69\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(61);
\butterfly_stage2:0:stg2|mul|Mult0~70\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(62);
\butterfly_stage2:0:stg2|mul|Mult0~71\ <= \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\(63);

\butterfly_stage2:1:stg2|mul|Mult1~8_AX_bus\ <= (\butterfly_stage2:1:stg2|mul|Add1~37_sumout\ & \butterfly_stage2:1:stg2|mul|Add1~37_sumout\ & \butterfly_stage2:1:stg2|mul|Add1~37_sumout\ & \butterfly_stage2:1:stg2|mul|Add1~37_sumout\ & 
\butterfly_stage2:1:stg2|mul|Add1~37_sumout\ & \butterfly_stage2:1:stg2|mul|Add1~37_sumout\ & \butterfly_stage2:1:stg2|mul|Add1~37_sumout\ & \butterfly_stage2:1:stg2|mul|Add1~37_sumout\ & \butterfly_stage2:1:stg2|mul|Add1~37_sumout\ & 
\butterfly_stage2:1:stg2|mul|Add1~33_sumout\ & \butterfly_stage2:1:stg2|mul|Add1~29_sumout\ & \butterfly_stage2:1:stg2|mul|Add1~25_sumout\ & \butterfly_stage2:1:stg2|mul|Add1~21_sumout\ & \butterfly_stage2:1:stg2|mul|Add1~17_sumout\ & 
\butterfly_stage2:1:stg2|mul|Add1~13_sumout\ & \butterfly_stage2:1:stg2|mul|Add1~9_sumout\ & \butterfly_stage2:1:stg2|mul|Add1~5_sumout\ & \butterfly_stage2:1:stg2|mul|Add1~1_sumout\);

\butterfly_stage2:1:stg2|mul|Mult1~8_AY_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\butterfly_stage2:1:stg2|mul|Mult1~8_resulta\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(0);
\butterfly_stage2:1:stg2|mul|Mult1~9\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(1);
\butterfly_stage2:1:stg2|mul|Mult1~10\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(2);
\butterfly_stage2:1:stg2|mul|Mult1~11\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(3);
\butterfly_stage2:1:stg2|mul|Mult1~12\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(4);
\butterfly_stage2:1:stg2|mul|Mult1~13\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(5);
\butterfly_stage2:1:stg2|mul|Mult1~14\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(6);
\butterfly_stage2:1:stg2|mul|Mult1~15\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(7);
\butterfly_stage2:1:stg2|mul|Mult1~16\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(8);
\butterfly_stage2:1:stg2|mul|Mult1~17\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(9);
\butterfly_stage2:1:stg2|mul|Mult1~18\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(10);
\butterfly_stage2:1:stg2|mul|Mult1~19\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(11);
\butterfly_stage2:1:stg2|mul|Mult1~20\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(12);
\butterfly_stage2:1:stg2|mul|Mult1~21\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(13);
\butterfly_stage2:1:stg2|mul|Mult1~22\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(14);
\butterfly_stage2:1:stg2|mul|Mult1~23\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(15);
\butterfly_stage2:1:stg2|mul|Mult1~24\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(16);
\butterfly_stage2:1:stg2|mul|Mult1~25\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(17);
\butterfly_stage2:1:stg2|mul|Mult1~26\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(18);
\butterfly_stage2:1:stg2|mul|Mult1~27\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(19);
\butterfly_stage2:1:stg2|mul|Mult1~28\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(20);
\butterfly_stage2:1:stg2|mul|Mult1~29\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(21);
\butterfly_stage2:1:stg2|mul|Mult1~30\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(22);
\butterfly_stage2:1:stg2|mul|Mult1~31\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(23);
\butterfly_stage2:1:stg2|mul|Mult1~32\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(24);
\butterfly_stage2:1:stg2|mul|Mult1~33\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(25);
\butterfly_stage2:1:stg2|mul|Mult1~34\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(26);
\butterfly_stage2:1:stg2|mul|Mult1~35\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(27);
\butterfly_stage2:1:stg2|mul|Mult1~36\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(28);
\butterfly_stage2:1:stg2|mul|Mult1~37\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(29);
\butterfly_stage2:1:stg2|mul|Mult1~38\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(30);
\butterfly_stage2:1:stg2|mul|Mult1~39\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(31);
\butterfly_stage2:1:stg2|mul|Mult1~40\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(32);
\butterfly_stage2:1:stg2|mul|Mult1~41\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(33);
\butterfly_stage2:1:stg2|mul|Mult1~42\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(34);
\butterfly_stage2:1:stg2|mul|Mult1~43\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(35);
\butterfly_stage2:1:stg2|mul|Mult1~44\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(36);
\butterfly_stage2:1:stg2|mul|Mult1~45\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(37);
\butterfly_stage2:1:stg2|mul|Mult1~46\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(38);
\butterfly_stage2:1:stg2|mul|Mult1~47\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(39);
\butterfly_stage2:1:stg2|mul|Mult1~48\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(40);
\butterfly_stage2:1:stg2|mul|Mult1~49\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(41);
\butterfly_stage2:1:stg2|mul|Mult1~50\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(42);
\butterfly_stage2:1:stg2|mul|Mult1~51\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(43);
\butterfly_stage2:1:stg2|mul|Mult1~52\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(44);
\butterfly_stage2:1:stg2|mul|Mult1~53\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(45);
\butterfly_stage2:1:stg2|mul|Mult1~54\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(46);
\butterfly_stage2:1:stg2|mul|Mult1~55\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(47);
\butterfly_stage2:1:stg2|mul|Mult1~56\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(48);
\butterfly_stage2:1:stg2|mul|Mult1~57\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(49);
\butterfly_stage2:1:stg2|mul|Mult1~58\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(50);
\butterfly_stage2:1:stg2|mul|Mult1~59\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(51);
\butterfly_stage2:1:stg2|mul|Mult1~60\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(52);
\butterfly_stage2:1:stg2|mul|Mult1~61\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(53);
\butterfly_stage2:1:stg2|mul|Mult1~62\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(54);
\butterfly_stage2:1:stg2|mul|Mult1~63\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(55);
\butterfly_stage2:1:stg2|mul|Mult1~64\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(56);
\butterfly_stage2:1:stg2|mul|Mult1~65\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(57);
\butterfly_stage2:1:stg2|mul|Mult1~66\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(58);
\butterfly_stage2:1:stg2|mul|Mult1~67\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(59);
\butterfly_stage2:1:stg2|mul|Mult1~68\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(60);
\butterfly_stage2:1:stg2|mul|Mult1~69\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(61);
\butterfly_stage2:1:stg2|mul|Mult1~70\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(62);
\butterfly_stage2:1:stg2|mul|Mult1~71\ <= \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\(63);

\butterfly_stage2:0:stg2|mul|Mult1~8_AX_bus\ <= (\butterfly_stage2:0:stg2|mul|Add1~37_sumout\ & \butterfly_stage2:0:stg2|mul|Add1~37_sumout\ & \butterfly_stage2:0:stg2|mul|Add1~37_sumout\ & \butterfly_stage2:0:stg2|mul|Add1~37_sumout\ & 
\butterfly_stage2:0:stg2|mul|Add1~37_sumout\ & \butterfly_stage2:0:stg2|mul|Add1~37_sumout\ & \butterfly_stage2:0:stg2|mul|Add1~37_sumout\ & \butterfly_stage2:0:stg2|mul|Add1~37_sumout\ & \butterfly_stage2:0:stg2|mul|Add1~37_sumout\ & 
\butterfly_stage2:0:stg2|mul|Add1~33_sumout\ & \butterfly_stage2:0:stg2|mul|Add1~29_sumout\ & \butterfly_stage2:0:stg2|mul|Add1~25_sumout\ & \butterfly_stage2:0:stg2|mul|Add1~21_sumout\ & \butterfly_stage2:0:stg2|mul|Add1~17_sumout\ & 
\butterfly_stage2:0:stg2|mul|Add1~13_sumout\ & \butterfly_stage2:0:stg2|mul|Add1~9_sumout\ & \butterfly_stage2:0:stg2|mul|Add1~5_sumout\ & \butterfly_stage2:0:stg2|mul|Add1~1_sumout\);

\butterfly_stage2:0:stg2|mul|Mult1~8_AY_bus\ <= (vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\butterfly_stage2:0:stg2|mul|Mult1~8_resulta\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(0);
\butterfly_stage2:0:stg2|mul|Mult1~9\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(1);
\butterfly_stage2:0:stg2|mul|Mult1~10\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(2);
\butterfly_stage2:0:stg2|mul|Mult1~11\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(3);
\butterfly_stage2:0:stg2|mul|Mult1~12\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(4);
\butterfly_stage2:0:stg2|mul|Mult1~13\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(5);
\butterfly_stage2:0:stg2|mul|Mult1~14\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(6);
\butterfly_stage2:0:stg2|mul|Mult1~15\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(7);
\butterfly_stage2:0:stg2|mul|Mult1~16\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(8);
\butterfly_stage2:0:stg2|mul|Mult1~17\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(9);
\butterfly_stage2:0:stg2|mul|Mult1~18\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(10);
\butterfly_stage2:0:stg2|mul|Mult1~19\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(11);
\butterfly_stage2:0:stg2|mul|Mult1~20\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(12);
\butterfly_stage2:0:stg2|mul|Mult1~21\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(13);
\butterfly_stage2:0:stg2|mul|Mult1~22\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(14);
\butterfly_stage2:0:stg2|mul|Mult1~23\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(15);
\butterfly_stage2:0:stg2|mul|Mult1~24\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(16);
\butterfly_stage2:0:stg2|mul|Mult1~25\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(17);
\butterfly_stage2:0:stg2|mul|Mult1~26\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(18);
\butterfly_stage2:0:stg2|mul|Mult1~27\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(19);
\butterfly_stage2:0:stg2|mul|Mult1~28\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(20);
\butterfly_stage2:0:stg2|mul|Mult1~29\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(21);
\butterfly_stage2:0:stg2|mul|Mult1~30\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(22);
\butterfly_stage2:0:stg2|mul|Mult1~31\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(23);
\butterfly_stage2:0:stg2|mul|Mult1~32\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(24);
\butterfly_stage2:0:stg2|mul|Mult1~33\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(25);
\butterfly_stage2:0:stg2|mul|Mult1~34\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(26);
\butterfly_stage2:0:stg2|mul|Mult1~35\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(27);
\butterfly_stage2:0:stg2|mul|Mult1~36\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(28);
\butterfly_stage2:0:stg2|mul|Mult1~37\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(29);
\butterfly_stage2:0:stg2|mul|Mult1~38\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(30);
\butterfly_stage2:0:stg2|mul|Mult1~39\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(31);
\butterfly_stage2:0:stg2|mul|Mult1~40\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(32);
\butterfly_stage2:0:stg2|mul|Mult1~41\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(33);
\butterfly_stage2:0:stg2|mul|Mult1~42\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(34);
\butterfly_stage2:0:stg2|mul|Mult1~43\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(35);
\butterfly_stage2:0:stg2|mul|Mult1~44\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(36);
\butterfly_stage2:0:stg2|mul|Mult1~45\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(37);
\butterfly_stage2:0:stg2|mul|Mult1~46\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(38);
\butterfly_stage2:0:stg2|mul|Mult1~47\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(39);
\butterfly_stage2:0:stg2|mul|Mult1~48\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(40);
\butterfly_stage2:0:stg2|mul|Mult1~49\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(41);
\butterfly_stage2:0:stg2|mul|Mult1~50\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(42);
\butterfly_stage2:0:stg2|mul|Mult1~51\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(43);
\butterfly_stage2:0:stg2|mul|Mult1~52\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(44);
\butterfly_stage2:0:stg2|mul|Mult1~53\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(45);
\butterfly_stage2:0:stg2|mul|Mult1~54\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(46);
\butterfly_stage2:0:stg2|mul|Mult1~55\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(47);
\butterfly_stage2:0:stg2|mul|Mult1~56\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(48);
\butterfly_stage2:0:stg2|mul|Mult1~57\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(49);
\butterfly_stage2:0:stg2|mul|Mult1~58\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(50);
\butterfly_stage2:0:stg2|mul|Mult1~59\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(51);
\butterfly_stage2:0:stg2|mul|Mult1~60\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(52);
\butterfly_stage2:0:stg2|mul|Mult1~61\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(53);
\butterfly_stage2:0:stg2|mul|Mult1~62\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(54);
\butterfly_stage2:0:stg2|mul|Mult1~63\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(55);
\butterfly_stage2:0:stg2|mul|Mult1~64\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(56);
\butterfly_stage2:0:stg2|mul|Mult1~65\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(57);
\butterfly_stage2:0:stg2|mul|Mult1~66\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(58);
\butterfly_stage2:0:stg2|mul|Mult1~67\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(59);
\butterfly_stage2:0:stg2|mul|Mult1~68\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(60);
\butterfly_stage2:0:stg2|mul|Mult1~69\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(61);
\butterfly_stage2:0:stg2|mul|Mult1~70\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(62);
\butterfly_stage2:0:stg2|mul|Mult1~71\ <= \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\(63);

\butterfly_stage2:1:stg2|mul|Mult2~8_ACLR_bus\ <= (gnd & gnd);

\butterfly_stage2:1:stg2|mul|Mult2~8_CLK_bus\ <= (gnd & gnd & NOT \butterfly_stage1:1:stg1|clk_div2~q\);

\butterfly_stage2:1:stg2|mul|Mult2~8_ENA_bus\ <= (vcc & vcc & vcc);

\butterfly_stage2:1:stg2|mul|Mult2~8_AX_bus\ <= (\butterfly_stage1:1:stg1|Add2~33_sumout\ & \butterfly_stage1:1:stg1|Add2~33_sumout\ & \butterfly_stage1:1:stg1|Add2~33_sumout\ & \butterfly_stage1:1:stg1|Add2~33_sumout\ & 
\butterfly_stage1:1:stg1|Add2~33_sumout\ & \butterfly_stage1:1:stg1|Add2~33_sumout\ & \butterfly_stage1:1:stg1|Add2~33_sumout\ & \butterfly_stage1:1:stg1|Add2~33_sumout\ & \butterfly_stage1:1:stg1|Add2~33_sumout\ & \butterfly_stage1:1:stg1|Add2~33_sumout\
& \butterfly_stage1:1:stg1|Add2~29_sumout\ & \butterfly_stage1:1:stg1|Add2~25_sumout\ & \butterfly_stage1:1:stg1|Add2~21_sumout\ & \butterfly_stage1:1:stg1|Add2~17_sumout\ & \butterfly_stage1:1:stg1|Add2~13_sumout\ & 
\butterfly_stage1:1:stg1|Add2~9_sumout\ & \butterfly_stage1:1:stg1|Add2~5_sumout\ & \butterfly_stage1:1:stg1|Add2~1_sumout\);

\butterfly_stage2:1:stg2|mul|Mult2~8_AY_bus\ <= (vcc & vcc & vcc & vcc & vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\butterfly_stage2:1:stg2|mul|Mult2~8_resulta\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(0);
\butterfly_stage2:1:stg2|mul|Mult2~9\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(1);
\butterfly_stage2:1:stg2|mul|Mult2~10\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(2);
\butterfly_stage2:1:stg2|mul|Mult2~11\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(3);
\butterfly_stage2:1:stg2|mul|Mult2~12\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(4);
\butterfly_stage2:1:stg2|mul|Mult2~13\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(5);
\butterfly_stage2:1:stg2|mul|Mult2~14\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(6);
\butterfly_stage2:1:stg2|mul|Mult2~15\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(7);
\butterfly_stage2:1:stg2|mul|Mult2~16\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(8);
\butterfly_stage2:1:stg2|mul|Mult2~17\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(9);
\butterfly_stage2:1:stg2|mul|Mult2~18\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(10);
\butterfly_stage2:1:stg2|mul|Mult2~19\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(11);
\butterfly_stage2:1:stg2|mul|Mult2~20\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(12);
\butterfly_stage2:1:stg2|mul|Mult2~21\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(13);
\butterfly_stage2:1:stg2|mul|Mult2~22\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(14);
\butterfly_stage2:1:stg2|mul|Mult2~23\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(15);
\butterfly_stage2:1:stg2|mul|Mult2~24\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(16);
\butterfly_stage2:1:stg2|mul|Mult2~25\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(17);
\butterfly_stage2:1:stg2|mul|Mult2~26\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(18);
\butterfly_stage2:1:stg2|mul|Mult2~27\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(19);
\butterfly_stage2:1:stg2|mul|Mult2~28\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(20);
\butterfly_stage2:1:stg2|mul|Mult2~29\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(21);
\butterfly_stage2:1:stg2|mul|Mult2~30\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(22);
\butterfly_stage2:1:stg2|mul|Mult2~31\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(23);
\butterfly_stage2:1:stg2|mul|Mult2~32\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(24);
\butterfly_stage2:1:stg2|mul|Mult2~33\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(25);
\butterfly_stage2:1:stg2|mul|Mult2~34\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(26);
\butterfly_stage2:1:stg2|mul|Mult2~35\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(27);
\butterfly_stage2:1:stg2|mul|Mult2~36\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(28);
\butterfly_stage2:1:stg2|mul|Mult2~37\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(29);
\butterfly_stage2:1:stg2|mul|Mult2~38\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(30);
\butterfly_stage2:1:stg2|mul|Mult2~39\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(31);
\butterfly_stage2:1:stg2|mul|Mult2~40\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(32);
\butterfly_stage2:1:stg2|mul|Mult2~41\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(33);
\butterfly_stage2:1:stg2|mul|Mult2~42\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(34);
\butterfly_stage2:1:stg2|mul|Mult2~43\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(35);
\butterfly_stage2:1:stg2|mul|Mult2~44\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(36);
\butterfly_stage2:1:stg2|mul|Mult2~45\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(37);
\butterfly_stage2:1:stg2|mul|Mult2~46\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(38);
\butterfly_stage2:1:stg2|mul|Mult2~47\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(39);
\butterfly_stage2:1:stg2|mul|Mult2~48\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(40);
\butterfly_stage2:1:stg2|mul|Mult2~49\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(41);
\butterfly_stage2:1:stg2|mul|Mult2~50\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(42);
\butterfly_stage2:1:stg2|mul|Mult2~51\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(43);
\butterfly_stage2:1:stg2|mul|Mult2~52\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(44);
\butterfly_stage2:1:stg2|mul|Mult2~53\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(45);
\butterfly_stage2:1:stg2|mul|Mult2~54\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(46);
\butterfly_stage2:1:stg2|mul|Mult2~55\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(47);
\butterfly_stage2:1:stg2|mul|Mult2~56\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(48);
\butterfly_stage2:1:stg2|mul|Mult2~57\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(49);
\butterfly_stage2:1:stg2|mul|Mult2~58\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(50);
\butterfly_stage2:1:stg2|mul|Mult2~59\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(51);
\butterfly_stage2:1:stg2|mul|Mult2~60\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(52);
\butterfly_stage2:1:stg2|mul|Mult2~61\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(53);
\butterfly_stage2:1:stg2|mul|Mult2~62\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(54);
\butterfly_stage2:1:stg2|mul|Mult2~63\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(55);
\butterfly_stage2:1:stg2|mul|Mult2~64\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(56);
\butterfly_stage2:1:stg2|mul|Mult2~65\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(57);
\butterfly_stage2:1:stg2|mul|Mult2~66\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(58);
\butterfly_stage2:1:stg2|mul|Mult2~67\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(59);
\butterfly_stage2:1:stg2|mul|Mult2~68\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(60);
\butterfly_stage2:1:stg2|mul|Mult2~69\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(61);
\butterfly_stage2:1:stg2|mul|Mult2~70\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(62);
\butterfly_stage2:1:stg2|mul|Mult2~71\ <= \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\(63);

\butterfly_stage2:0:stg2|mul|Mult2~8_ACLR_bus\ <= (gnd & gnd);

\butterfly_stage2:0:stg2|mul|Mult2~8_CLK_bus\ <= (gnd & gnd & NOT \butterfly_stage1:1:stg1|clk_div2~q\);

\butterfly_stage2:0:stg2|mul|Mult2~8_ENA_bus\ <= (vcc & vcc & vcc);

\butterfly_stage2:0:stg2|mul|Mult2~8_AX_bus\ <= (\butterfly_stage1:1:stg1|Add0~33_sumout\ & \butterfly_stage1:1:stg1|Add0~33_sumout\ & \butterfly_stage1:1:stg1|Add0~33_sumout\ & \butterfly_stage1:1:stg1|Add0~33_sumout\ & 
\butterfly_stage1:1:stg1|Add0~33_sumout\ & \butterfly_stage1:1:stg1|Add0~33_sumout\ & \butterfly_stage1:1:stg1|Add0~33_sumout\ & \butterfly_stage1:1:stg1|Add0~33_sumout\ & \butterfly_stage1:1:stg1|Add0~33_sumout\ & \butterfly_stage1:1:stg1|Add0~33_sumout\
& \butterfly_stage1:1:stg1|Add0~29_sumout\ & \butterfly_stage1:1:stg1|Add0~25_sumout\ & \butterfly_stage1:1:stg1|Add0~21_sumout\ & \butterfly_stage1:1:stg1|Add0~17_sumout\ & \butterfly_stage1:1:stg1|Add0~13_sumout\ & 
\butterfly_stage1:1:stg1|Add0~9_sumout\ & \butterfly_stage1:1:stg1|Add0~5_sumout\ & \butterfly_stage1:1:stg1|Add0~1_sumout\);

\butterfly_stage2:0:stg2|mul|Mult2~8_AY_bus\ <= (vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\butterfly_stage2:0:stg2|mul|Mult2~8_resulta\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(0);
\butterfly_stage2:0:stg2|mul|Mult2~9\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(1);
\butterfly_stage2:0:stg2|mul|Mult2~10\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(2);
\butterfly_stage2:0:stg2|mul|Mult2~11\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(3);
\butterfly_stage2:0:stg2|mul|Mult2~12\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(4);
\butterfly_stage2:0:stg2|mul|Mult2~13\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(5);
\butterfly_stage2:0:stg2|mul|Mult2~14\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(6);
\butterfly_stage2:0:stg2|mul|Mult2~15\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(7);
\butterfly_stage2:0:stg2|mul|Mult2~16\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(8);
\butterfly_stage2:0:stg2|mul|Mult2~17\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(9);
\butterfly_stage2:0:stg2|mul|Mult2~18\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(10);
\butterfly_stage2:0:stg2|mul|Mult2~19\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(11);
\butterfly_stage2:0:stg2|mul|Mult2~20\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(12);
\butterfly_stage2:0:stg2|mul|Mult2~21\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(13);
\butterfly_stage2:0:stg2|mul|Mult2~22\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(14);
\butterfly_stage2:0:stg2|mul|Mult2~23\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(15);
\butterfly_stage2:0:stg2|mul|Mult2~24\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(16);
\butterfly_stage2:0:stg2|mul|Mult2~25\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(17);
\butterfly_stage2:0:stg2|mul|Mult2~26\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(18);
\butterfly_stage2:0:stg2|mul|Mult2~27\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(19);
\butterfly_stage2:0:stg2|mul|Mult2~28\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(20);
\butterfly_stage2:0:stg2|mul|Mult2~29\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(21);
\butterfly_stage2:0:stg2|mul|Mult2~30\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(22);
\butterfly_stage2:0:stg2|mul|Mult2~31\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(23);
\butterfly_stage2:0:stg2|mul|Mult2~32\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(24);
\butterfly_stage2:0:stg2|mul|Mult2~33\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(25);
\butterfly_stage2:0:stg2|mul|Mult2~34\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(26);
\butterfly_stage2:0:stg2|mul|Mult2~35\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(27);
\butterfly_stage2:0:stg2|mul|Mult2~36\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(28);
\butterfly_stage2:0:stg2|mul|Mult2~37\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(29);
\butterfly_stage2:0:stg2|mul|Mult2~38\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(30);
\butterfly_stage2:0:stg2|mul|Mult2~39\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(31);
\butterfly_stage2:0:stg2|mul|Mult2~40\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(32);
\butterfly_stage2:0:stg2|mul|Mult2~41\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(33);
\butterfly_stage2:0:stg2|mul|Mult2~42\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(34);
\butterfly_stage2:0:stg2|mul|Mult2~43\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(35);
\butterfly_stage2:0:stg2|mul|Mult2~44\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(36);
\butterfly_stage2:0:stg2|mul|Mult2~45\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(37);
\butterfly_stage2:0:stg2|mul|Mult2~46\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(38);
\butterfly_stage2:0:stg2|mul|Mult2~47\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(39);
\butterfly_stage2:0:stg2|mul|Mult2~48\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(40);
\butterfly_stage2:0:stg2|mul|Mult2~49\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(41);
\butterfly_stage2:0:stg2|mul|Mult2~50\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(42);
\butterfly_stage2:0:stg2|mul|Mult2~51\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(43);
\butterfly_stage2:0:stg2|mul|Mult2~52\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(44);
\butterfly_stage2:0:stg2|mul|Mult2~53\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(45);
\butterfly_stage2:0:stg2|mul|Mult2~54\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(46);
\butterfly_stage2:0:stg2|mul|Mult2~55\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(47);
\butterfly_stage2:0:stg2|mul|Mult2~56\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(48);
\butterfly_stage2:0:stg2|mul|Mult2~57\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(49);
\butterfly_stage2:0:stg2|mul|Mult2~58\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(50);
\butterfly_stage2:0:stg2|mul|Mult2~59\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(51);
\butterfly_stage2:0:stg2|mul|Mult2~60\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(52);
\butterfly_stage2:0:stg2|mul|Mult2~61\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(53);
\butterfly_stage2:0:stg2|mul|Mult2~62\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(54);
\butterfly_stage2:0:stg2|mul|Mult2~63\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(55);
\butterfly_stage2:0:stg2|mul|Mult2~64\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(56);
\butterfly_stage2:0:stg2|mul|Mult2~65\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(57);
\butterfly_stage2:0:stg2|mul|Mult2~66\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(58);
\butterfly_stage2:0:stg2|mul|Mult2~67\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(59);
\butterfly_stage2:0:stg2|mul|Mult2~68\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(60);
\butterfly_stage2:0:stg2|mul|Mult2~69\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(61);
\butterfly_stage2:0:stg2|mul|Mult2~70\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(62);
\butterfly_stage2:0:stg2|mul|Mult2~71\ <= \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\(63);

\butterfly_stage1:0:stg1|mul|Mult0~8_AX_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\butterfly_stage1:0:stg1|mul|Mult0~8_AY_bus\ <= (vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\butterfly_stage1:0:stg1|mul|Mult0~8_resulta\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(0);
\butterfly_stage1:0:stg1|mul|Mult0~9\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(1);
\butterfly_stage1:0:stg1|mul|Mult0~10\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(2);
\butterfly_stage1:0:stg1|mul|Mult0~11\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(3);
\butterfly_stage1:0:stg1|mul|Mult0~12\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(4);
\butterfly_stage1:0:stg1|mul|Mult0~13\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(5);
\butterfly_stage1:0:stg1|mul|Mult0~14\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(6);
\butterfly_stage1:0:stg1|mul|Mult0~15\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(7);
\butterfly_stage1:0:stg1|mul|Mult0~16\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(8);
\butterfly_stage1:0:stg1|mul|Mult0~17\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(9);
\butterfly_stage1:0:stg1|mul|Mult0~18\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(10);
\butterfly_stage1:0:stg1|mul|Mult0~19\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(11);
\butterfly_stage1:0:stg1|mul|Mult0~20\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(12);
\butterfly_stage1:0:stg1|mul|Mult0~21\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(13);
\butterfly_stage1:0:stg1|mul|Mult0~22\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(14);
\butterfly_stage1:0:stg1|mul|Mult0~23\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(15);
\butterfly_stage1:0:stg1|mul|Mult0~24\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(16);
\butterfly_stage1:0:stg1|mul|Mult0~25\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(17);
\butterfly_stage1:0:stg1|mul|Mult0~26\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(18);
\butterfly_stage1:0:stg1|mul|Mult0~27\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(19);
\butterfly_stage1:0:stg1|mul|Mult0~28\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(20);
\butterfly_stage1:0:stg1|mul|Mult0~29\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(21);
\butterfly_stage1:0:stg1|mul|Mult0~30\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(22);
\butterfly_stage1:0:stg1|mul|Mult0~31\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(23);
\butterfly_stage1:0:stg1|mul|Mult0~32\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(24);
\butterfly_stage1:0:stg1|mul|Mult0~33\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(25);
\butterfly_stage1:0:stg1|mul|Mult0~34\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(26);
\butterfly_stage1:0:stg1|mul|Mult0~35\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(27);
\butterfly_stage1:0:stg1|mul|Mult0~36\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(28);
\butterfly_stage1:0:stg1|mul|Mult0~37\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(29);
\butterfly_stage1:0:stg1|mul|Mult0~38\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(30);
\butterfly_stage1:0:stg1|mul|Mult0~39\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(31);
\butterfly_stage1:0:stg1|mul|Mult0~40\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(32);
\butterfly_stage1:0:stg1|mul|Mult0~41\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(33);
\butterfly_stage1:0:stg1|mul|Mult0~42\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(34);
\butterfly_stage1:0:stg1|mul|Mult0~43\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(35);
\butterfly_stage1:0:stg1|mul|Mult0~44\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(36);
\butterfly_stage1:0:stg1|mul|Mult0~45\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(37);
\butterfly_stage1:0:stg1|mul|Mult0~46\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(38);
\butterfly_stage1:0:stg1|mul|Mult0~47\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(39);
\butterfly_stage1:0:stg1|mul|Mult0~48\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(40);
\butterfly_stage1:0:stg1|mul|Mult0~49\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(41);
\butterfly_stage1:0:stg1|mul|Mult0~50\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(42);
\butterfly_stage1:0:stg1|mul|Mult0~51\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(43);
\butterfly_stage1:0:stg1|mul|Mult0~52\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(44);
\butterfly_stage1:0:stg1|mul|Mult0~53\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(45);
\butterfly_stage1:0:stg1|mul|Mult0~54\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(46);
\butterfly_stage1:0:stg1|mul|Mult0~55\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(47);
\butterfly_stage1:0:stg1|mul|Mult0~56\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(48);
\butterfly_stage1:0:stg1|mul|Mult0~57\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(49);
\butterfly_stage1:0:stg1|mul|Mult0~58\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(50);
\butterfly_stage1:0:stg1|mul|Mult0~59\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(51);
\butterfly_stage1:0:stg1|mul|Mult0~60\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(52);
\butterfly_stage1:0:stg1|mul|Mult0~61\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(53);
\butterfly_stage1:0:stg1|mul|Mult0~62\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(54);
\butterfly_stage1:0:stg1|mul|Mult0~63\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(55);
\butterfly_stage1:0:stg1|mul|Mult0~64\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(56);
\butterfly_stage1:0:stg1|mul|Mult0~65\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(57);
\butterfly_stage1:0:stg1|mul|Mult0~66\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(58);
\butterfly_stage1:0:stg1|mul|Mult0~67\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(59);
\butterfly_stage1:0:stg1|mul|Mult0~68\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(60);
\butterfly_stage1:0:stg1|mul|Mult0~69\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(61);
\butterfly_stage1:0:stg1|mul|Mult0~70\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(62);
\butterfly_stage1:0:stg1|mul|Mult0~71\ <= \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\(63);

\butterfly_stage1:0:stg1|mul|Mult1~8_ACLR_bus\ <= (gnd & \reset~input_o\);

\butterfly_stage1:0:stg1|mul|Mult1~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\butterfly_stage1:0:stg1|mul|Mult1~8_ENA_bus\ <= (vcc & vcc & NOT count(2));

\butterfly_stage1:0:stg1|mul|Mult1~8_AX_bus\ <= (\x[3][8]~_Duplicate_3_q\ & \x[3][8]~_Duplicate_3_q\ & \x[3][8]~_Duplicate_3_q\ & \x[3][8]~_Duplicate_3_q\ & \x[3][8]~_Duplicate_3_q\ & \x[3][8]~_Duplicate_3_q\ & \x[3][8]~_Duplicate_3_q\ & 
\x[3][8]~_Duplicate_3_q\ & \x[3][8]~_Duplicate_3_q\ & \x[3][8]~_Duplicate_3_q\ & \x[3][7]~_Duplicate_2_q\ & \x[3][6]~_Duplicate_2_q\ & \x[3][5]~_Duplicate_2_q\ & \x[3][4]~_Duplicate_2_q\ & \x[3][3]~_Duplicate_2_q\ & \x[3][2]~_Duplicate_2_q\ & 
\x[3][1]~_Duplicate_2_q\ & \x[3][0]~_Duplicate_2_q\);

\butterfly_stage1:0:stg1|mul|Mult1~8_AY_bus\ <= (vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\butterfly_stage1:0:stg1|mul|Mult1~8_resulta\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(0);
\butterfly_stage1:0:stg1|mul|Mult1~9\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(1);
\butterfly_stage1:0:stg1|mul|Mult1~10\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(2);
\butterfly_stage1:0:stg1|mul|Mult1~11\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(3);
\butterfly_stage1:0:stg1|mul|Mult1~12\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(4);
\butterfly_stage1:0:stg1|mul|Mult1~13\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(5);
\butterfly_stage1:0:stg1|mul|Mult1~14\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(6);
\butterfly_stage1:0:stg1|mul|Mult1~15\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(7);
\butterfly_stage1:0:stg1|mul|Mult1~16\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(8);
\butterfly_stage1:0:stg1|mul|Mult1~17\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(9);
\butterfly_stage1:0:stg1|mul|Mult1~18\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(10);
\butterfly_stage1:0:stg1|mul|Mult1~19\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(11);
\butterfly_stage1:0:stg1|mul|Mult1~20\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(12);
\butterfly_stage1:0:stg1|mul|Mult1~21\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(13);
\butterfly_stage1:0:stg1|mul|Mult1~22\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(14);
\butterfly_stage1:0:stg1|mul|Mult1~23\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(15);
\butterfly_stage1:0:stg1|mul|Mult1~24\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(16);
\butterfly_stage1:0:stg1|mul|Mult1~25\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(17);
\butterfly_stage1:0:stg1|mul|Mult1~26\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(18);
\butterfly_stage1:0:stg1|mul|Mult1~27\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(19);
\butterfly_stage1:0:stg1|mul|Mult1~28\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(20);
\butterfly_stage1:0:stg1|mul|Mult1~29\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(21);
\butterfly_stage1:0:stg1|mul|Mult1~30\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(22);
\butterfly_stage1:0:stg1|mul|Mult1~31\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(23);
\butterfly_stage1:0:stg1|mul|Mult1~32\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(24);
\butterfly_stage1:0:stg1|mul|Mult1~33\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(25);
\butterfly_stage1:0:stg1|mul|Mult1~34\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(26);
\butterfly_stage1:0:stg1|mul|Mult1~35\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(27);
\butterfly_stage1:0:stg1|mul|Mult1~36\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(28);
\butterfly_stage1:0:stg1|mul|Mult1~37\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(29);
\butterfly_stage1:0:stg1|mul|Mult1~38\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(30);
\butterfly_stage1:0:stg1|mul|Mult1~39\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(31);
\butterfly_stage1:0:stg1|mul|Mult1~40\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(32);
\butterfly_stage1:0:stg1|mul|Mult1~41\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(33);
\butterfly_stage1:0:stg1|mul|Mult1~42\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(34);
\butterfly_stage1:0:stg1|mul|Mult1~43\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(35);
\butterfly_stage1:0:stg1|mul|Mult1~44\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(36);
\butterfly_stage1:0:stg1|mul|Mult1~45\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(37);
\butterfly_stage1:0:stg1|mul|Mult1~46\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(38);
\butterfly_stage1:0:stg1|mul|Mult1~47\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(39);
\butterfly_stage1:0:stg1|mul|Mult1~48\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(40);
\butterfly_stage1:0:stg1|mul|Mult1~49\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(41);
\butterfly_stage1:0:stg1|mul|Mult1~50\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(42);
\butterfly_stage1:0:stg1|mul|Mult1~51\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(43);
\butterfly_stage1:0:stg1|mul|Mult1~52\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(44);
\butterfly_stage1:0:stg1|mul|Mult1~53\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(45);
\butterfly_stage1:0:stg1|mul|Mult1~54\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(46);
\butterfly_stage1:0:stg1|mul|Mult1~55\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(47);
\butterfly_stage1:0:stg1|mul|Mult1~56\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(48);
\butterfly_stage1:0:stg1|mul|Mult1~57\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(49);
\butterfly_stage1:0:stg1|mul|Mult1~58\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(50);
\butterfly_stage1:0:stg1|mul|Mult1~59\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(51);
\butterfly_stage1:0:stg1|mul|Mult1~60\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(52);
\butterfly_stage1:0:stg1|mul|Mult1~61\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(53);
\butterfly_stage1:0:stg1|mul|Mult1~62\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(54);
\butterfly_stage1:0:stg1|mul|Mult1~63\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(55);
\butterfly_stage1:0:stg1|mul|Mult1~64\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(56);
\butterfly_stage1:0:stg1|mul|Mult1~65\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(57);
\butterfly_stage1:0:stg1|mul|Mult1~66\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(58);
\butterfly_stage1:0:stg1|mul|Mult1~67\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(59);
\butterfly_stage1:0:stg1|mul|Mult1~68\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(60);
\butterfly_stage1:0:stg1|mul|Mult1~69\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(61);
\butterfly_stage1:0:stg1|mul|Mult1~70\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(62);
\butterfly_stage1:0:stg1|mul|Mult1~71\ <= \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\(63);

\butterfly_stage1:0:stg1|mul|Mult2~8_ACLR_bus\ <= (gnd & \reset~input_o\);

\butterfly_stage1:0:stg1|mul|Mult2~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\butterfly_stage1:0:stg1|mul|Mult2~8_ENA_bus\ <= (vcc & vcc & NOT count(2));

\butterfly_stage1:0:stg1|mul|Mult2~8_AX_bus\ <= (\x[3][8]~_Duplicate_3_q\ & \x[3][8]~_Duplicate_3_q\ & \x[3][8]~_Duplicate_3_q\ & \x[3][8]~_Duplicate_3_q\ & \x[3][8]~_Duplicate_3_q\ & \x[3][8]~_Duplicate_3_q\ & \x[3][8]~_Duplicate_3_q\ & 
\x[3][8]~_Duplicate_3_q\ & \x[3][8]~_Duplicate_3_q\ & \x[3][8]~_Duplicate_3_q\ & \x[3][7]~_Duplicate_2_q\ & \x[3][6]~_Duplicate_2_q\ & \x[3][5]~_Duplicate_2_q\ & \x[3][4]~_Duplicate_2_q\ & \x[3][3]~_Duplicate_2_q\ & \x[3][2]~_Duplicate_2_q\ & 
\x[3][1]~_Duplicate_2_q\ & \x[3][0]~_Duplicate_2_q\);

\butterfly_stage1:0:stg1|mul|Mult2~8_AY_bus\ <= (vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\butterfly_stage1:0:stg1|mul|Mult2~8_resulta\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(0);
\butterfly_stage1:0:stg1|mul|Mult2~9\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(1);
\butterfly_stage1:0:stg1|mul|Mult2~10\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(2);
\butterfly_stage1:0:stg1|mul|Mult2~11\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(3);
\butterfly_stage1:0:stg1|mul|Mult2~12\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(4);
\butterfly_stage1:0:stg1|mul|Mult2~13\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(5);
\butterfly_stage1:0:stg1|mul|Mult2~14\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(6);
\butterfly_stage1:0:stg1|mul|Mult2~15\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(7);
\butterfly_stage1:0:stg1|mul|Mult2~16\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(8);
\butterfly_stage1:0:stg1|mul|Mult2~17\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(9);
\butterfly_stage1:0:stg1|mul|Mult2~18\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(10);
\butterfly_stage1:0:stg1|mul|Mult2~19\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(11);
\butterfly_stage1:0:stg1|mul|Mult2~20\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(12);
\butterfly_stage1:0:stg1|mul|Mult2~21\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(13);
\butterfly_stage1:0:stg1|mul|Mult2~22\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(14);
\butterfly_stage1:0:stg1|mul|Mult2~23\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(15);
\butterfly_stage1:0:stg1|mul|Mult2~24\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(16);
\butterfly_stage1:0:stg1|mul|Mult2~25\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(17);
\butterfly_stage1:0:stg1|mul|Mult2~26\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(18);
\butterfly_stage1:0:stg1|mul|Mult2~27\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(19);
\butterfly_stage1:0:stg1|mul|Mult2~28\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(20);
\butterfly_stage1:0:stg1|mul|Mult2~29\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(21);
\butterfly_stage1:0:stg1|mul|Mult2~30\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(22);
\butterfly_stage1:0:stg1|mul|Mult2~31\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(23);
\butterfly_stage1:0:stg1|mul|Mult2~32\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(24);
\butterfly_stage1:0:stg1|mul|Mult2~33\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(25);
\butterfly_stage1:0:stg1|mul|Mult2~34\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(26);
\butterfly_stage1:0:stg1|mul|Mult2~35\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(27);
\butterfly_stage1:0:stg1|mul|Mult2~36\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(28);
\butterfly_stage1:0:stg1|mul|Mult2~37\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(29);
\butterfly_stage1:0:stg1|mul|Mult2~38\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(30);
\butterfly_stage1:0:stg1|mul|Mult2~39\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(31);
\butterfly_stage1:0:stg1|mul|Mult2~40\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(32);
\butterfly_stage1:0:stg1|mul|Mult2~41\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(33);
\butterfly_stage1:0:stg1|mul|Mult2~42\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(34);
\butterfly_stage1:0:stg1|mul|Mult2~43\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(35);
\butterfly_stage1:0:stg1|mul|Mult2~44\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(36);
\butterfly_stage1:0:stg1|mul|Mult2~45\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(37);
\butterfly_stage1:0:stg1|mul|Mult2~46\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(38);
\butterfly_stage1:0:stg1|mul|Mult2~47\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(39);
\butterfly_stage1:0:stg1|mul|Mult2~48\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(40);
\butterfly_stage1:0:stg1|mul|Mult2~49\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(41);
\butterfly_stage1:0:stg1|mul|Mult2~50\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(42);
\butterfly_stage1:0:stg1|mul|Mult2~51\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(43);
\butterfly_stage1:0:stg1|mul|Mult2~52\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(44);
\butterfly_stage1:0:stg1|mul|Mult2~53\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(45);
\butterfly_stage1:0:stg1|mul|Mult2~54\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(46);
\butterfly_stage1:0:stg1|mul|Mult2~55\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(47);
\butterfly_stage1:0:stg1|mul|Mult2~56\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(48);
\butterfly_stage1:0:stg1|mul|Mult2~57\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(49);
\butterfly_stage1:0:stg1|mul|Mult2~58\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(50);
\butterfly_stage1:0:stg1|mul|Mult2~59\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(51);
\butterfly_stage1:0:stg1|mul|Mult2~60\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(52);
\butterfly_stage1:0:stg1|mul|Mult2~61\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(53);
\butterfly_stage1:0:stg1|mul|Mult2~62\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(54);
\butterfly_stage1:0:stg1|mul|Mult2~63\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(55);
\butterfly_stage1:0:stg1|mul|Mult2~64\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(56);
\butterfly_stage1:0:stg1|mul|Mult2~65\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(57);
\butterfly_stage1:0:stg1|mul|Mult2~66\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(58);
\butterfly_stage1:0:stg1|mul|Mult2~67\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(59);
\butterfly_stage1:0:stg1|mul|Mult2~68\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(60);
\butterfly_stage1:0:stg1|mul|Mult2~69\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(61);
\butterfly_stage1:0:stg1|mul|Mult2~70\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(62);
\butterfly_stage1:0:stg1|mul|Mult2~71\ <= \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\(63);

\butterfly_stage1:1:stg1|mul|Mult1~8_ACLR_bus\ <= (gnd & \reset~input_o\);

\butterfly_stage1:1:stg1|mul|Mult1~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\butterfly_stage1:1:stg1|mul|Mult1~8_ENA_bus\ <= (vcc & vcc & NOT count(2));

\butterfly_stage1:1:stg1|mul|Mult1~8_AX_bus\ <= (\x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\ & 
\x_in[7]~input_o\ & \x_in[6]~input_o\ & \x_in[5]~input_o\ & \x_in[4]~input_o\ & \x_in[3]~input_o\ & \x_in[2]~input_o\ & \x_in[1]~input_o\ & \x_in[0]~input_o\);

\butterfly_stage1:1:stg1|mul|Mult1~8_AY_bus\ <= (vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\butterfly_stage1:1:stg1|mul|Mult1~8_resulta\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(0);
\butterfly_stage1:1:stg1|mul|Mult1~9\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(1);
\butterfly_stage1:1:stg1|mul|Mult1~10\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(2);
\butterfly_stage1:1:stg1|mul|Mult1~11\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(3);
\butterfly_stage1:1:stg1|mul|Mult1~12\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(4);
\butterfly_stage1:1:stg1|mul|Mult1~13\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(5);
\butterfly_stage1:1:stg1|mul|Mult1~14\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(6);
\butterfly_stage1:1:stg1|mul|Mult1~15\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(7);
\butterfly_stage1:1:stg1|mul|Mult1~16\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(8);
\butterfly_stage1:1:stg1|mul|Mult1~17\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(9);
\butterfly_stage1:1:stg1|mul|Mult1~18\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(10);
\butterfly_stage1:1:stg1|mul|Mult1~19\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(11);
\butterfly_stage1:1:stg1|mul|Mult1~20\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(12);
\butterfly_stage1:1:stg1|mul|Mult1~21\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(13);
\butterfly_stage1:1:stg1|mul|Mult1~22\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(14);
\butterfly_stage1:1:stg1|mul|Mult1~23\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(15);
\butterfly_stage1:1:stg1|mul|Mult1~24\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(16);
\butterfly_stage1:1:stg1|mul|Mult1~25\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(17);
\butterfly_stage1:1:stg1|mul|Mult1~26\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(18);
\butterfly_stage1:1:stg1|mul|Mult1~27\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(19);
\butterfly_stage1:1:stg1|mul|Mult1~28\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(20);
\butterfly_stage1:1:stg1|mul|Mult1~29\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(21);
\butterfly_stage1:1:stg1|mul|Mult1~30\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(22);
\butterfly_stage1:1:stg1|mul|Mult1~31\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(23);
\butterfly_stage1:1:stg1|mul|Mult1~32\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(24);
\butterfly_stage1:1:stg1|mul|Mult1~33\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(25);
\butterfly_stage1:1:stg1|mul|Mult1~34\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(26);
\butterfly_stage1:1:stg1|mul|Mult1~35\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(27);
\butterfly_stage1:1:stg1|mul|Mult1~36\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(28);
\butterfly_stage1:1:stg1|mul|Mult1~37\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(29);
\butterfly_stage1:1:stg1|mul|Mult1~38\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(30);
\butterfly_stage1:1:stg1|mul|Mult1~39\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(31);
\butterfly_stage1:1:stg1|mul|Mult1~40\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(32);
\butterfly_stage1:1:stg1|mul|Mult1~41\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(33);
\butterfly_stage1:1:stg1|mul|Mult1~42\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(34);
\butterfly_stage1:1:stg1|mul|Mult1~43\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(35);
\butterfly_stage1:1:stg1|mul|Mult1~44\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(36);
\butterfly_stage1:1:stg1|mul|Mult1~45\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(37);
\butterfly_stage1:1:stg1|mul|Mult1~46\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(38);
\butterfly_stage1:1:stg1|mul|Mult1~47\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(39);
\butterfly_stage1:1:stg1|mul|Mult1~48\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(40);
\butterfly_stage1:1:stg1|mul|Mult1~49\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(41);
\butterfly_stage1:1:stg1|mul|Mult1~50\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(42);
\butterfly_stage1:1:stg1|mul|Mult1~51\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(43);
\butterfly_stage1:1:stg1|mul|Mult1~52\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(44);
\butterfly_stage1:1:stg1|mul|Mult1~53\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(45);
\butterfly_stage1:1:stg1|mul|Mult1~54\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(46);
\butterfly_stage1:1:stg1|mul|Mult1~55\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(47);
\butterfly_stage1:1:stg1|mul|Mult1~56\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(48);
\butterfly_stage1:1:stg1|mul|Mult1~57\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(49);
\butterfly_stage1:1:stg1|mul|Mult1~58\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(50);
\butterfly_stage1:1:stg1|mul|Mult1~59\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(51);
\butterfly_stage1:1:stg1|mul|Mult1~60\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(52);
\butterfly_stage1:1:stg1|mul|Mult1~61\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(53);
\butterfly_stage1:1:stg1|mul|Mult1~62\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(54);
\butterfly_stage1:1:stg1|mul|Mult1~63\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(55);
\butterfly_stage1:1:stg1|mul|Mult1~64\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(56);
\butterfly_stage1:1:stg1|mul|Mult1~65\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(57);
\butterfly_stage1:1:stg1|mul|Mult1~66\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(58);
\butterfly_stage1:1:stg1|mul|Mult1~67\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(59);
\butterfly_stage1:1:stg1|mul|Mult1~68\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(60);
\butterfly_stage1:1:stg1|mul|Mult1~69\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(61);
\butterfly_stage1:1:stg1|mul|Mult1~70\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(62);
\butterfly_stage1:1:stg1|mul|Mult1~71\ <= \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\(63);

\butterfly_stage1:1:stg1|mul|Mult2~8_ACLR_bus\ <= (gnd & \reset~input_o\);

\butterfly_stage1:1:stg1|mul|Mult2~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\butterfly_stage1:1:stg1|mul|Mult2~8_ENA_bus\ <= (vcc & vcc & NOT count(2));

\butterfly_stage1:1:stg1|mul|Mult2~8_AX_bus\ <= (\x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\ & \x_in[8]~input_o\ & 
\x_in[7]~input_o\ & \x_in[6]~input_o\ & \x_in[5]~input_o\ & \x_in[4]~input_o\ & \x_in[3]~input_o\ & \x_in[2]~input_o\ & \x_in[1]~input_o\ & \x_in[0]~input_o\);

\butterfly_stage1:1:stg1|mul|Mult2~8_AY_bus\ <= (vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\butterfly_stage1:1:stg1|mul|Mult2~8_resulta\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(0);
\butterfly_stage1:1:stg1|mul|Mult2~9\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(1);
\butterfly_stage1:1:stg1|mul|Mult2~10\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(2);
\butterfly_stage1:1:stg1|mul|Mult2~11\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(3);
\butterfly_stage1:1:stg1|mul|Mult2~12\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(4);
\butterfly_stage1:1:stg1|mul|Mult2~13\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(5);
\butterfly_stage1:1:stg1|mul|Mult2~14\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(6);
\butterfly_stage1:1:stg1|mul|Mult2~15\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(7);
\butterfly_stage1:1:stg1|mul|Mult2~16\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(8);
\butterfly_stage1:1:stg1|mul|Mult2~17\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(9);
\butterfly_stage1:1:stg1|mul|Mult2~18\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(10);
\butterfly_stage1:1:stg1|mul|Mult2~19\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(11);
\butterfly_stage1:1:stg1|mul|Mult2~20\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(12);
\butterfly_stage1:1:stg1|mul|Mult2~21\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(13);
\butterfly_stage1:1:stg1|mul|Mult2~22\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(14);
\butterfly_stage1:1:stg1|mul|Mult2~23\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(15);
\butterfly_stage1:1:stg1|mul|Mult2~24\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(16);
\butterfly_stage1:1:stg1|mul|Mult2~25\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(17);
\butterfly_stage1:1:stg1|mul|Mult2~26\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(18);
\butterfly_stage1:1:stg1|mul|Mult2~27\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(19);
\butterfly_stage1:1:stg1|mul|Mult2~28\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(20);
\butterfly_stage1:1:stg1|mul|Mult2~29\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(21);
\butterfly_stage1:1:stg1|mul|Mult2~30\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(22);
\butterfly_stage1:1:stg1|mul|Mult2~31\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(23);
\butterfly_stage1:1:stg1|mul|Mult2~32\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(24);
\butterfly_stage1:1:stg1|mul|Mult2~33\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(25);
\butterfly_stage1:1:stg1|mul|Mult2~34\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(26);
\butterfly_stage1:1:stg1|mul|Mult2~35\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(27);
\butterfly_stage1:1:stg1|mul|Mult2~36\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(28);
\butterfly_stage1:1:stg1|mul|Mult2~37\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(29);
\butterfly_stage1:1:stg1|mul|Mult2~38\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(30);
\butterfly_stage1:1:stg1|mul|Mult2~39\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(31);
\butterfly_stage1:1:stg1|mul|Mult2~40\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(32);
\butterfly_stage1:1:stg1|mul|Mult2~41\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(33);
\butterfly_stage1:1:stg1|mul|Mult2~42\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(34);
\butterfly_stage1:1:stg1|mul|Mult2~43\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(35);
\butterfly_stage1:1:stg1|mul|Mult2~44\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(36);
\butterfly_stage1:1:stg1|mul|Mult2~45\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(37);
\butterfly_stage1:1:stg1|mul|Mult2~46\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(38);
\butterfly_stage1:1:stg1|mul|Mult2~47\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(39);
\butterfly_stage1:1:stg1|mul|Mult2~48\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(40);
\butterfly_stage1:1:stg1|mul|Mult2~49\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(41);
\butterfly_stage1:1:stg1|mul|Mult2~50\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(42);
\butterfly_stage1:1:stg1|mul|Mult2~51\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(43);
\butterfly_stage1:1:stg1|mul|Mult2~52\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(44);
\butterfly_stage1:1:stg1|mul|Mult2~53\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(45);
\butterfly_stage1:1:stg1|mul|Mult2~54\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(46);
\butterfly_stage1:1:stg1|mul|Mult2~55\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(47);
\butterfly_stage1:1:stg1|mul|Mult2~56\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(48);
\butterfly_stage1:1:stg1|mul|Mult2~57\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(49);
\butterfly_stage1:1:stg1|mul|Mult2~58\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(50);
\butterfly_stage1:1:stg1|mul|Mult2~59\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(51);
\butterfly_stage1:1:stg1|mul|Mult2~60\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(52);
\butterfly_stage1:1:stg1|mul|Mult2~61\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(53);
\butterfly_stage1:1:stg1|mul|Mult2~62\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(54);
\butterfly_stage1:1:stg1|mul|Mult2~63\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(55);
\butterfly_stage1:1:stg1|mul|Mult2~64\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(56);
\butterfly_stage1:1:stg1|mul|Mult2~65\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(57);
\butterfly_stage1:1:stg1|mul|Mult2~66\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(58);
\butterfly_stage1:1:stg1|mul|Mult2~67\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(59);
\butterfly_stage1:1:stg1|mul|Mult2~68\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(60);
\butterfly_stage1:1:stg1|mul|Mult2~69\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(61);
\butterfly_stage1:1:stg1|mul|Mult2~70\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(62);
\butterfly_stage1:1:stg1|mul|Mult2~71\ <= \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\(63);

\butterfly_stage1:1:stg1|mul|Mult0~8_AX_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\butterfly_stage1:1:stg1|mul|Mult0~8_AY_bus\ <= (vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\butterfly_stage1:1:stg1|mul|Mult0~8_resulta\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(0);
\butterfly_stage1:1:stg1|mul|Mult0~9\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(1);
\butterfly_stage1:1:stg1|mul|Mult0~10\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(2);
\butterfly_stage1:1:stg1|mul|Mult0~11\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(3);
\butterfly_stage1:1:stg1|mul|Mult0~12\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(4);
\butterfly_stage1:1:stg1|mul|Mult0~13\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(5);
\butterfly_stage1:1:stg1|mul|Mult0~14\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(6);
\butterfly_stage1:1:stg1|mul|Mult0~15\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(7);
\butterfly_stage1:1:stg1|mul|Mult0~16\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(8);
\butterfly_stage1:1:stg1|mul|Mult0~17\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(9);
\butterfly_stage1:1:stg1|mul|Mult0~18\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(10);
\butterfly_stage1:1:stg1|mul|Mult0~19\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(11);
\butterfly_stage1:1:stg1|mul|Mult0~20\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(12);
\butterfly_stage1:1:stg1|mul|Mult0~21\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(13);
\butterfly_stage1:1:stg1|mul|Mult0~22\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(14);
\butterfly_stage1:1:stg1|mul|Mult0~23\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(15);
\butterfly_stage1:1:stg1|mul|Mult0~24\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(16);
\butterfly_stage1:1:stg1|mul|Mult0~25\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(17);
\butterfly_stage1:1:stg1|mul|Mult0~26\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(18);
\butterfly_stage1:1:stg1|mul|Mult0~27\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(19);
\butterfly_stage1:1:stg1|mul|Mult0~28\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(20);
\butterfly_stage1:1:stg1|mul|Mult0~29\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(21);
\butterfly_stage1:1:stg1|mul|Mult0~30\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(22);
\butterfly_stage1:1:stg1|mul|Mult0~31\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(23);
\butterfly_stage1:1:stg1|mul|Mult0~32\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(24);
\butterfly_stage1:1:stg1|mul|Mult0~33\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(25);
\butterfly_stage1:1:stg1|mul|Mult0~34\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(26);
\butterfly_stage1:1:stg1|mul|Mult0~35\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(27);
\butterfly_stage1:1:stg1|mul|Mult0~36\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(28);
\butterfly_stage1:1:stg1|mul|Mult0~37\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(29);
\butterfly_stage1:1:stg1|mul|Mult0~38\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(30);
\butterfly_stage1:1:stg1|mul|Mult0~39\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(31);
\butterfly_stage1:1:stg1|mul|Mult0~40\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(32);
\butterfly_stage1:1:stg1|mul|Mult0~41\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(33);
\butterfly_stage1:1:stg1|mul|Mult0~42\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(34);
\butterfly_stage1:1:stg1|mul|Mult0~43\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(35);
\butterfly_stage1:1:stg1|mul|Mult0~44\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(36);
\butterfly_stage1:1:stg1|mul|Mult0~45\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(37);
\butterfly_stage1:1:stg1|mul|Mult0~46\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(38);
\butterfly_stage1:1:stg1|mul|Mult0~47\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(39);
\butterfly_stage1:1:stg1|mul|Mult0~48\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(40);
\butterfly_stage1:1:stg1|mul|Mult0~49\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(41);
\butterfly_stage1:1:stg1|mul|Mult0~50\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(42);
\butterfly_stage1:1:stg1|mul|Mult0~51\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(43);
\butterfly_stage1:1:stg1|mul|Mult0~52\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(44);
\butterfly_stage1:1:stg1|mul|Mult0~53\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(45);
\butterfly_stage1:1:stg1|mul|Mult0~54\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(46);
\butterfly_stage1:1:stg1|mul|Mult0~55\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(47);
\butterfly_stage1:1:stg1|mul|Mult0~56\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(48);
\butterfly_stage1:1:stg1|mul|Mult0~57\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(49);
\butterfly_stage1:1:stg1|mul|Mult0~58\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(50);
\butterfly_stage1:1:stg1|mul|Mult0~59\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(51);
\butterfly_stage1:1:stg1|mul|Mult0~60\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(52);
\butterfly_stage1:1:stg1|mul|Mult0~61\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(53);
\butterfly_stage1:1:stg1|mul|Mult0~62\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(54);
\butterfly_stage1:1:stg1|mul|Mult0~63\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(55);
\butterfly_stage1:1:stg1|mul|Mult0~64\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(56);
\butterfly_stage1:1:stg1|mul|Mult0~65\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(57);
\butterfly_stage1:1:stg1|mul|Mult0~66\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(58);
\butterfly_stage1:1:stg1|mul|Mult0~67\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(59);
\butterfly_stage1:1:stg1|mul|Mult0~68\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(60);
\butterfly_stage1:1:stg1|mul|Mult0~69\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(61);
\butterfly_stage1:1:stg1|mul|Mult0~70\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(62);
\butterfly_stage1:1:stg1|mul|Mult0~71\ <= \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\(63);
\butterfly_stage1:1:stg1|mul|ALT_INV_r[7]~DUPLICATE_q\ <= NOT \butterfly_stage1:1:stg1|mul|r[7]~DUPLICATE_q\;
\butterfly_stage1:1:stg1|mul|ALT_INV_r[6]~DUPLICATE_q\ <= NOT \butterfly_stage1:1:stg1|mul|r[6]~DUPLICATE_q\;
\butterfly_stage1:1:stg1|mul|ALT_INV_r[5]~DUPLICATE_q\ <= NOT \butterfly_stage1:1:stg1|mul|r[5]~DUPLICATE_q\;
\butterfly_stage1:1:stg1|mul|ALT_INV_r[4]~DUPLICATE_q\ <= NOT \butterfly_stage1:1:stg1|mul|r[4]~DUPLICATE_q\;
\butterfly_stage1:1:stg1|mul|ALT_INV_r[3]~DUPLICATE_q\ <= NOT \butterfly_stage1:1:stg1|mul|r[3]~DUPLICATE_q\;
\butterfly_stage1:1:stg1|mul|ALT_INV_r[2]~DUPLICATE_q\ <= NOT \butterfly_stage1:1:stg1|mul|r[2]~DUPLICATE_q\;
\butterfly_stage1:1:stg1|mul|ALT_INV_r[0]~DUPLICATE_q\ <= NOT \butterfly_stage1:1:stg1|mul|r[0]~DUPLICATE_q\;
\butterfly_stage1:1:stg1|mul|ALT_INV_i[3]~DUPLICATE_q\ <= NOT \butterfly_stage1:1:stg1|mul|i[3]~DUPLICATE_q\;
\ALT_INV_x[1][7]~DUPLICATE_q\ <= NOT \x[1][7]~DUPLICATE_q\;
\ALT_INV_x[1][3]~DUPLICATE_q\ <= NOT \x[1][3]~DUPLICATE_q\;
\ALT_INV_x[1][2]~DUPLICATE_q\ <= NOT \x[1][2]~DUPLICATE_q\;
\butterfly_stage1:0:stg1|mul|ALT_INV_r[4]~DUPLICATE_q\ <= NOT \butterfly_stage1:0:stg1|mul|r[4]~DUPLICATE_q\;
\ALT_INV_x[0][2]~DUPLICATE_q\ <= NOT \x[0][2]~DUPLICATE_q\;
\butterfly_stage1:0:stg1|mul|ALT_INV_r[1]~DUPLICATE_q\ <= NOT \butterfly_stage1:0:stg1|mul|r[1]~DUPLICATE_q\;
\butterfly_stage1:0:stg1|mul|ALT_INV_i[3]~DUPLICATE_q\ <= NOT \butterfly_stage1:0:stg1|mul|i[3]~DUPLICATE_q\;
\butterfly_stage1:0:stg1|mul|ALT_INV_i[2]~DUPLICATE_q\ <= NOT \butterfly_stage1:0:stg1|mul|i[2]~DUPLICATE_q\;
\ALT_INV_x_in[8]~input_o\ <= NOT \x_in[8]~input_o\;
\ALT_INV_x_in[6]~input_o\ <= NOT \x_in[6]~input_o\;
\ALT_INV_x_in[1]~input_o\ <= NOT \x_in[1]~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\butterfly_stage1:1:stg1|mul|ALT_INV_WideOr2~combout\ <= NOT \butterfly_stage1:1:stg1|mul|WideOr2~combout\;
\butterfly_stage1:1:stg1|mul|ALT_INV_WideOr2~1_combout\ <= NOT \butterfly_stage1:1:stg1|mul|WideOr2~1_combout\;
\butterfly_stage1:1:stg1|mul|ALT_INV_WideOr2~0_combout\ <= NOT \butterfly_stage1:1:stg1|mul|WideOr2~0_combout\;
\butterfly_stage1:1:stg1|mul|ALT_INV_WideOr1~combout\ <= NOT \butterfly_stage1:1:stg1|mul|WideOr1~combout\;
\butterfly_stage1:1:stg1|mul|ALT_INV_WideOr1~1_combout\ <= NOT \butterfly_stage1:1:stg1|mul|WideOr1~1_combout\;
\butterfly_stage1:1:stg1|mul|ALT_INV_WideOr1~0_combout\ <= NOT \butterfly_stage1:1:stg1|mul|WideOr1~0_combout\;
\butterfly_stage1:1:stg1|mul|ALT_INV_r\(8) <= NOT \butterfly_stage1:1:stg1|mul|r\(8);
\butterfly_stage1:1:stg1|mul|ALT_INV_r\(7) <= NOT \butterfly_stage1:1:stg1|mul|r\(7);
\butterfly_stage1:1:stg1|mul|ALT_INV_r\(6) <= NOT \butterfly_stage1:1:stg1|mul|r\(6);
\butterfly_stage1:1:stg1|mul|ALT_INV_r\(5) <= NOT \butterfly_stage1:1:stg1|mul|r\(5);
\butterfly_stage1:1:stg1|mul|ALT_INV_r\(4) <= NOT \butterfly_stage1:1:stg1|mul|r\(4);
\butterfly_stage1:1:stg1|mul|ALT_INV_r\(3) <= NOT \butterfly_stage1:1:stg1|mul|r\(3);
\butterfly_stage1:1:stg1|mul|ALT_INV_r\(2) <= NOT \butterfly_stage1:1:stg1|mul|r\(2);
\butterfly_stage1:1:stg1|mul|ALT_INV_r\(1) <= NOT \butterfly_stage1:1:stg1|mul|r\(1);
\butterfly_stage1:1:stg1|mul|ALT_INV_r\(0) <= NOT \butterfly_stage1:1:stg1|mul|r\(0);
\butterfly_stage1:0:stg1|mul|ALT_INV_WideOr2~combout\ <= NOT \butterfly_stage1:0:stg1|mul|WideOr2~combout\;
\butterfly_stage1:0:stg1|mul|ALT_INV_WideOr2~1_combout\ <= NOT \butterfly_stage1:0:stg1|mul|WideOr2~1_combout\;
\butterfly_stage1:0:stg1|mul|ALT_INV_WideOr2~0_combout\ <= NOT \butterfly_stage1:0:stg1|mul|WideOr2~0_combout\;
\butterfly_stage1:0:stg1|mul|ALT_INV_WideOr1~combout\ <= NOT \butterfly_stage1:0:stg1|mul|WideOr1~combout\;
\butterfly_stage1:0:stg1|mul|ALT_INV_WideOr1~1_combout\ <= NOT \butterfly_stage1:0:stg1|mul|WideOr1~1_combout\;
\butterfly_stage1:0:stg1|mul|ALT_INV_WideOr1~0_combout\ <= NOT \butterfly_stage1:0:stg1|mul|WideOr1~0_combout\;
\ALT_INV_x[3][7]~_Duplicate_2_q\ <= NOT \x[3][7]~_Duplicate_2_q\;
\ALT_INV_x[3][6]~_Duplicate_2_q\ <= NOT \x[3][6]~_Duplicate_2_q\;
\ALT_INV_x[3][5]~_Duplicate_2_q\ <= NOT \x[3][5]~_Duplicate_2_q\;
\ALT_INV_x[3][4]~_Duplicate_2_q\ <= NOT \x[3][4]~_Duplicate_2_q\;
\ALT_INV_x[3][2]~_Duplicate_2_q\ <= NOT \x[3][2]~_Duplicate_2_q\;
\ALT_INV_x[3][1]~_Duplicate_2_q\ <= NOT \x[3][1]~_Duplicate_2_q\;
\ALT_INV_x[3][0]~_Duplicate_2_q\ <= NOT \x[3][0]~_Duplicate_2_q\;
\butterfly_stage2:0:stg2|mul|ALT_INV_WideOr2~combout\ <= NOT \butterfly_stage2:0:stg2|mul|WideOr2~combout\;
\butterfly_stage2:0:stg2|mul|ALT_INV_WideOr2~1_combout\ <= NOT \butterfly_stage2:0:stg2|mul|WideOr2~1_combout\;
\butterfly_stage2:0:stg2|mul|ALT_INV_WideOr2~0_combout\ <= NOT \butterfly_stage2:0:stg2|mul|WideOr2~0_combout\;
\butterfly_stage1:1:stg1|ALT_INV_out1_r_ff[8]~_Duplicate_1_q\ <= NOT \butterfly_stage1:1:stg1|out1_r_ff[8]~_Duplicate_1_q\;
\butterfly_stage1:1:stg1|ALT_INV_out1_r_ff[7]~_Duplicate_1_q\ <= NOT \butterfly_stage1:1:stg1|out1_r_ff[7]~_Duplicate_1_q\;
\butterfly_stage1:1:stg1|ALT_INV_out1_r_ff[6]~_Duplicate_1_q\ <= NOT \butterfly_stage1:1:stg1|out1_r_ff[6]~_Duplicate_1_q\;
\butterfly_stage1:1:stg1|ALT_INV_out1_r_ff[5]~_Duplicate_1_q\ <= NOT \butterfly_stage1:1:stg1|out1_r_ff[5]~_Duplicate_1_q\;
\butterfly_stage1:1:stg1|ALT_INV_out1_r_ff[4]~_Duplicate_1_q\ <= NOT \butterfly_stage1:1:stg1|out1_r_ff[4]~_Duplicate_1_q\;
\butterfly_stage1:1:stg1|ALT_INV_out1_r_ff[3]~_Duplicate_1_q\ <= NOT \butterfly_stage1:1:stg1|out1_r_ff[3]~_Duplicate_1_q\;
\butterfly_stage1:1:stg1|ALT_INV_out1_r_ff[2]~_Duplicate_1_q\ <= NOT \butterfly_stage1:1:stg1|out1_r_ff[2]~_Duplicate_1_q\;
\butterfly_stage1:1:stg1|ALT_INV_out1_r_ff[1]~_Duplicate_1_q\ <= NOT \butterfly_stage1:1:stg1|out1_r_ff[1]~_Duplicate_1_q\;
\butterfly_stage1:1:stg1|ALT_INV_out1_r_ff[0]~_Duplicate_1_q\ <= NOT \butterfly_stage1:1:stg1|out1_r_ff[0]~_Duplicate_1_q\;
\butterfly_stage2:1:stg2|mul|ALT_INV_WideOr2~combout\ <= NOT \butterfly_stage2:1:stg2|mul|WideOr2~combout\;
\butterfly_stage2:1:stg2|mul|ALT_INV_WideOr2~1_combout\ <= NOT \butterfly_stage2:1:stg2|mul|WideOr2~1_combout\;
\butterfly_stage2:1:stg2|mul|ALT_INV_WideOr2~0_combout\ <= NOT \butterfly_stage2:1:stg2|mul|WideOr2~0_combout\;
\butterfly_stage1:1:stg1|ALT_INV_out2_r_ff[8]~_Duplicate_1_q\ <= NOT \butterfly_stage1:1:stg1|out2_r_ff[8]~_Duplicate_1_q\;
\butterfly_stage1:1:stg1|ALT_INV_out2_r_ff[7]~_Duplicate_1_q\ <= NOT \butterfly_stage1:1:stg1|out2_r_ff[7]~_Duplicate_1_q\;
\butterfly_stage1:1:stg1|ALT_INV_out2_r_ff[6]~_Duplicate_1_q\ <= NOT \butterfly_stage1:1:stg1|out2_r_ff[6]~_Duplicate_1_q\;
\butterfly_stage1:1:stg1|ALT_INV_out2_r_ff[5]~_Duplicate_1_q\ <= NOT \butterfly_stage1:1:stg1|out2_r_ff[5]~_Duplicate_1_q\;
\butterfly_stage1:1:stg1|ALT_INV_out2_r_ff[4]~_Duplicate_1_q\ <= NOT \butterfly_stage1:1:stg1|out2_r_ff[4]~_Duplicate_1_q\;
\butterfly_stage1:1:stg1|ALT_INV_out2_r_ff[3]~_Duplicate_1_q\ <= NOT \butterfly_stage1:1:stg1|out2_r_ff[3]~_Duplicate_1_q\;
\butterfly_stage1:1:stg1|ALT_INV_out2_r_ff[2]~_Duplicate_1_q\ <= NOT \butterfly_stage1:1:stg1|out2_r_ff[2]~_Duplicate_1_q\;
\butterfly_stage1:1:stg1|ALT_INV_out2_r_ff[1]~_Duplicate_1_q\ <= NOT \butterfly_stage1:1:stg1|out2_r_ff[1]~_Duplicate_1_q\;
\butterfly_stage1:1:stg1|ALT_INV_out2_r_ff[0]~_Duplicate_1_q\ <= NOT \butterfly_stage1:1:stg1|out2_r_ff[0]~_Duplicate_1_q\;
\butterfly_stage1:1:stg1|mul|ALT_INV_i\(8) <= NOT \butterfly_stage1:1:stg1|mul|i\(8);
\butterfly_stage1:1:stg1|mul|ALT_INV_i\(7) <= NOT \butterfly_stage1:1:stg1|mul|i\(7);
\butterfly_stage1:1:stg1|mul|ALT_INV_i\(6) <= NOT \butterfly_stage1:1:stg1|mul|i\(6);
\butterfly_stage1:1:stg1|mul|ALT_INV_i\(5) <= NOT \butterfly_stage1:1:stg1|mul|i\(5);
\butterfly_stage1:1:stg1|mul|ALT_INV_i\(4) <= NOT \butterfly_stage1:1:stg1|mul|i\(4);
\butterfly_stage1:1:stg1|mul|ALT_INV_i\(2) <= NOT \butterfly_stage1:1:stg1|mul|i\(2);
\butterfly_stage1:1:stg1|mul|ALT_INV_i\(1) <= NOT \butterfly_stage1:1:stg1|mul|i\(1);
\butterfly_stage2:0:stg2|mul|ALT_INV_WideOr1~combout\ <= NOT \butterfly_stage2:0:stg2|mul|WideOr1~combout\;
\butterfly_stage2:0:stg2|mul|ALT_INV_WideOr1~1_combout\ <= NOT \butterfly_stage2:0:stg2|mul|WideOr1~1_combout\;
\butterfly_stage2:0:stg2|mul|ALT_INV_WideOr1~0_combout\ <= NOT \butterfly_stage2:0:stg2|mul|WideOr1~0_combout\;
\ALT_INV_x[2][6]~_Duplicate_2_q\ <= NOT \x[2][6]~_Duplicate_2_q\;
\ALT_INV_x[2][4]~_Duplicate_2_q\ <= NOT \x[2][4]~_Duplicate_2_q\;
\butterfly_stage1:1:stg1|ALT_INV_clk_div2~q\ <= NOT \butterfly_stage1:1:stg1|clk_div2~q\;
\butterfly_stage1:1:stg1|mul|ALT_INV_i\(0) <= NOT \butterfly_stage1:1:stg1|mul|i\(0);
\butterfly_stage2:1:stg2|mul|ALT_INV_WideOr1~combout\ <= NOT \butterfly_stage2:1:stg2|mul|WideOr1~combout\;
\butterfly_stage2:1:stg2|mul|ALT_INV_WideOr1~1_combout\ <= NOT \butterfly_stage2:1:stg2|mul|WideOr1~1_combout\;
\butterfly_stage2:1:stg2|mul|ALT_INV_WideOr1~0_combout\ <= NOT \butterfly_stage2:1:stg2|mul|WideOr1~0_combout\;
ALT_INV_count(1) <= NOT count(1);
ALT_INV_count(0) <= NOT count(0);
\butterfly_stage2:0:stg2|mul|ALT_INV_WideOr0~combout\ <= NOT \butterfly_stage2:0:stg2|mul|WideOr0~combout\;
\butterfly_stage2:0:stg2|mul|ALT_INV_WideOr0~1_combout\ <= NOT \butterfly_stage2:0:stg2|mul|WideOr0~1_combout\;
\butterfly_stage2:0:stg2|mul|ALT_INV_WideOr0~0_combout\ <= NOT \butterfly_stage2:0:stg2|mul|WideOr0~0_combout\;
\butterfly_stage1:1:stg1|ALT_INV_out1_i_ff[8]~_Duplicate_1_q\ <= NOT \butterfly_stage1:1:stg1|out1_i_ff[8]~_Duplicate_1_q\;
\butterfly_stage1:1:stg1|ALT_INV_out1_i_ff[7]~_Duplicate_1_q\ <= NOT \butterfly_stage1:1:stg1|out1_i_ff[7]~_Duplicate_1_q\;
\butterfly_stage1:1:stg1|ALT_INV_out1_i_ff[6]~_Duplicate_1_q\ <= NOT \butterfly_stage1:1:stg1|out1_i_ff[6]~_Duplicate_1_q\;
\butterfly_stage1:1:stg1|ALT_INV_out1_i_ff[5]~_Duplicate_1_q\ <= NOT \butterfly_stage1:1:stg1|out1_i_ff[5]~_Duplicate_1_q\;
\butterfly_stage1:1:stg1|ALT_INV_out1_i_ff[4]~_Duplicate_1_q\ <= NOT \butterfly_stage1:1:stg1|out1_i_ff[4]~_Duplicate_1_q\;
\butterfly_stage1:1:stg1|ALT_INV_out1_i_ff[3]~_Duplicate_1_q\ <= NOT \butterfly_stage1:1:stg1|out1_i_ff[3]~_Duplicate_1_q\;
\butterfly_stage1:1:stg1|ALT_INV_out1_i_ff[2]~_Duplicate_1_q\ <= NOT \butterfly_stage1:1:stg1|out1_i_ff[2]~_Duplicate_1_q\;
\butterfly_stage1:1:stg1|ALT_INV_out1_i_ff[1]~_Duplicate_1_q\ <= NOT \butterfly_stage1:1:stg1|out1_i_ff[1]~_Duplicate_1_q\;
\ALT_INV_x[1][8]~q\ <= NOT \x[1][8]~q\;
\ALT_INV_x[1][7]~q\ <= NOT \x[1][7]~q\;
\ALT_INV_x[1][6]~q\ <= NOT \x[1][6]~q\;
\ALT_INV_x[1][5]~q\ <= NOT \x[1][5]~q\;
\ALT_INV_x[1][4]~q\ <= NOT \x[1][4]~q\;
\ALT_INV_x[1][3]~q\ <= NOT \x[1][3]~q\;
\ALT_INV_x[1][2]~q\ <= NOT \x[1][2]~q\;
\ALT_INV_x[1][1]~q\ <= NOT \x[1][1]~q\;
\butterfly_stage2:1:stg2|mul|ALT_INV_WideOr0~combout\ <= NOT \butterfly_stage2:1:stg2|mul|WideOr0~combout\;
\butterfly_stage2:1:stg2|mul|ALT_INV_WideOr0~1_combout\ <= NOT \butterfly_stage2:1:stg2|mul|WideOr0~1_combout\;
\butterfly_stage2:1:stg2|mul|ALT_INV_WideOr0~0_combout\ <= NOT \butterfly_stage2:1:stg2|mul|WideOr0~0_combout\;
\butterfly_stage1:1:stg1|ALT_INV_out2_i_ff[8]~_Duplicate_1_q\ <= NOT \butterfly_stage1:1:stg1|out2_i_ff[8]~_Duplicate_1_q\;
\butterfly_stage1:1:stg1|ALT_INV_out2_i_ff[7]~_Duplicate_1_q\ <= NOT \butterfly_stage1:1:stg1|out2_i_ff[7]~_Duplicate_1_q\;
\butterfly_stage1:1:stg1|ALT_INV_out2_i_ff[6]~_Duplicate_1_q\ <= NOT \butterfly_stage1:1:stg1|out2_i_ff[6]~_Duplicate_1_q\;
\butterfly_stage1:1:stg1|ALT_INV_out2_i_ff[5]~_Duplicate_1_q\ <= NOT \butterfly_stage1:1:stg1|out2_i_ff[5]~_Duplicate_1_q\;
\butterfly_stage1:1:stg1|ALT_INV_out2_i_ff[4]~_Duplicate_1_q\ <= NOT \butterfly_stage1:1:stg1|out2_i_ff[4]~_Duplicate_1_q\;
\butterfly_stage1:1:stg1|ALT_INV_out2_i_ff[3]~_Duplicate_1_q\ <= NOT \butterfly_stage1:1:stg1|out2_i_ff[3]~_Duplicate_1_q\;
\butterfly_stage1:1:stg1|ALT_INV_out2_i_ff[2]~_Duplicate_1_q\ <= NOT \butterfly_stage1:1:stg1|out2_i_ff[2]~_Duplicate_1_q\;
\butterfly_stage1:1:stg1|ALT_INV_out2_i_ff[1]~_Duplicate_1_q\ <= NOT \butterfly_stage1:1:stg1|out2_i_ff[1]~_Duplicate_1_q\;
\butterfly_stage1:1:stg1|ALT_INV_out1_i_ff[0]~_Duplicate_2_q\ <= NOT \butterfly_stage1:1:stg1|out1_i_ff[0]~_Duplicate_2_q\;
\ALT_INV_x[1][0]~q\ <= NOT \x[1][0]~q\;
\butterfly_stage1:0:stg1|mul|ALT_INV_r\(8) <= NOT \butterfly_stage1:0:stg1|mul|r\(8);
\ALT_INV_x[0][8]~q\ <= NOT \x[0][8]~q\;
\butterfly_stage1:0:stg1|mul|ALT_INV_r\(7) <= NOT \butterfly_stage1:0:stg1|mul|r\(7);
\ALT_INV_x[0][7]~q\ <= NOT \x[0][7]~q\;
\butterfly_stage1:0:stg1|mul|ALT_INV_r\(6) <= NOT \butterfly_stage1:0:stg1|mul|r\(6);
\ALT_INV_x[0][6]~q\ <= NOT \x[0][6]~q\;
\butterfly_stage1:0:stg1|mul|ALT_INV_r\(5) <= NOT \butterfly_stage1:0:stg1|mul|r\(5);
\ALT_INV_x[0][5]~q\ <= NOT \x[0][5]~q\;
\butterfly_stage1:0:stg1|mul|ALT_INV_r\(4) <= NOT \butterfly_stage1:0:stg1|mul|r\(4);
\ALT_INV_x[0][4]~q\ <= NOT \x[0][4]~q\;
\butterfly_stage1:0:stg1|mul|ALT_INV_r\(3) <= NOT \butterfly_stage1:0:stg1|mul|r\(3);
\ALT_INV_x[0][3]~q\ <= NOT \x[0][3]~q\;
\butterfly_stage1:0:stg1|mul|ALT_INV_r\(2) <= NOT \butterfly_stage1:0:stg1|mul|r\(2);
\ALT_INV_x[0][2]~q\ <= NOT \x[0][2]~q\;
\butterfly_stage1:0:stg1|mul|ALT_INV_r\(1) <= NOT \butterfly_stage1:0:stg1|mul|r\(1);
\ALT_INV_x[0][1]~q\ <= NOT \x[0][1]~q\;
\butterfly_stage1:0:stg1|mul|ALT_INV_r\(0) <= NOT \butterfly_stage1:0:stg1|mul|r\(0);
\ALT_INV_x[0][0]~q\ <= NOT \x[0][0]~q\;
\butterfly_stage1:0:stg1|mul|ALT_INV_i\(8) <= NOT \butterfly_stage1:0:stg1|mul|i\(8);
\butterfly_stage1:0:stg1|mul|ALT_INV_i\(7) <= NOT \butterfly_stage1:0:stg1|mul|i\(7);
\butterfly_stage1:0:stg1|mul|ALT_INV_i\(6) <= NOT \butterfly_stage1:0:stg1|mul|i\(6);
\butterfly_stage1:0:stg1|mul|ALT_INV_i\(5) <= NOT \butterfly_stage1:0:stg1|mul|i\(5);
\butterfly_stage1:0:stg1|mul|ALT_INV_i\(4) <= NOT \butterfly_stage1:0:stg1|mul|i\(4);
\butterfly_stage1:0:stg1|mul|ALT_INV_i\(3) <= NOT \butterfly_stage1:0:stg1|mul|i\(3);
\butterfly_stage1:0:stg1|mul|ALT_INV_i\(2) <= NOT \butterfly_stage1:0:stg1|mul|i\(2);
\butterfly_stage1:0:stg1|mul|ALT_INV_i\(1) <= NOT \butterfly_stage1:0:stg1|mul|i\(1);
\butterfly_stage1:0:stg1|mul|ALT_INV_i\(0) <= NOT \butterfly_stage1:0:stg1|mul|i\(0);
\butterfly_stage1:0:stg1|ALT_INV_clk_div2~q\ <= NOT \butterfly_stage1:0:stg1|clk_div2~q\;
\butterfly_stage2:0:stg2|mul|ALT_INV_i\(8) <= NOT \butterfly_stage2:0:stg2|mul|i\(8);
\butterfly_stage1:0:stg1|ALT_INV_out1_i_ff\(8) <= NOT \butterfly_stage1:0:stg1|out1_i_ff\(8);
\butterfly_stage2:0:stg2|mul|ALT_INV_i\(7) <= NOT \butterfly_stage2:0:stg2|mul|i\(7);
\butterfly_stage1:0:stg1|ALT_INV_out1_i_ff\(7) <= NOT \butterfly_stage1:0:stg1|out1_i_ff\(7);
\butterfly_stage2:0:stg2|mul|ALT_INV_i\(6) <= NOT \butterfly_stage2:0:stg2|mul|i\(6);
\butterfly_stage1:0:stg1|ALT_INV_out1_i_ff\(6) <= NOT \butterfly_stage1:0:stg1|out1_i_ff\(6);
\butterfly_stage2:0:stg2|mul|ALT_INV_i\(5) <= NOT \butterfly_stage2:0:stg2|mul|i\(5);
\butterfly_stage1:0:stg1|ALT_INV_out1_i_ff\(5) <= NOT \butterfly_stage1:0:stg1|out1_i_ff\(5);
\butterfly_stage2:0:stg2|mul|ALT_INV_i\(4) <= NOT \butterfly_stage2:0:stg2|mul|i\(4);
\butterfly_stage1:0:stg1|ALT_INV_out1_i_ff\(4) <= NOT \butterfly_stage1:0:stg1|out1_i_ff\(4);
\butterfly_stage2:0:stg2|mul|ALT_INV_i\(3) <= NOT \butterfly_stage2:0:stg2|mul|i\(3);
\butterfly_stage1:0:stg1|ALT_INV_out1_i_ff\(3) <= NOT \butterfly_stage1:0:stg1|out1_i_ff\(3);
\butterfly_stage2:0:stg2|mul|ALT_INV_i\(2) <= NOT \butterfly_stage2:0:stg2|mul|i\(2);
\butterfly_stage1:0:stg1|ALT_INV_out1_i_ff\(2) <= NOT \butterfly_stage1:0:stg1|out1_i_ff\(2);
\butterfly_stage2:0:stg2|mul|ALT_INV_i\(1) <= NOT \butterfly_stage2:0:stg2|mul|i\(1);
\butterfly_stage1:0:stg1|ALT_INV_out1_i_ff\(1) <= NOT \butterfly_stage1:0:stg1|out1_i_ff\(1);
\butterfly_stage2:0:stg2|mul|ALT_INV_i\(0) <= NOT \butterfly_stage2:0:stg2|mul|i\(0);
\butterfly_stage2:1:stg2|mul|ALT_INV_i\(8) <= NOT \butterfly_stage2:1:stg2|mul|i\(8);
\butterfly_stage1:0:stg1|ALT_INV_out2_i_ff\(8) <= NOT \butterfly_stage1:0:stg1|out2_i_ff\(8);
\butterfly_stage2:1:stg2|mul|ALT_INV_i\(7) <= NOT \butterfly_stage2:1:stg2|mul|i\(7);
\butterfly_stage1:0:stg1|ALT_INV_out2_i_ff\(7) <= NOT \butterfly_stage1:0:stg1|out2_i_ff\(7);
\butterfly_stage2:1:stg2|mul|ALT_INV_i\(6) <= NOT \butterfly_stage2:1:stg2|mul|i\(6);
\butterfly_stage1:0:stg1|ALT_INV_out2_i_ff\(6) <= NOT \butterfly_stage1:0:stg1|out2_i_ff\(6);
\butterfly_stage2:1:stg2|mul|ALT_INV_i\(5) <= NOT \butterfly_stage2:1:stg2|mul|i\(5);
\butterfly_stage1:0:stg1|ALT_INV_out2_i_ff\(5) <= NOT \butterfly_stage1:0:stg1|out2_i_ff\(5);
\butterfly_stage2:1:stg2|mul|ALT_INV_i\(4) <= NOT \butterfly_stage2:1:stg2|mul|i\(4);
\butterfly_stage1:0:stg1|ALT_INV_out2_i_ff\(4) <= NOT \butterfly_stage1:0:stg1|out2_i_ff\(4);
\butterfly_stage2:1:stg2|mul|ALT_INV_i\(3) <= NOT \butterfly_stage2:1:stg2|mul|i\(3);
\butterfly_stage1:0:stg1|ALT_INV_out2_i_ff\(3) <= NOT \butterfly_stage1:0:stg1|out2_i_ff\(3);
\butterfly_stage2:1:stg2|mul|ALT_INV_i\(2) <= NOT \butterfly_stage2:1:stg2|mul|i\(2);
\butterfly_stage1:0:stg1|ALT_INV_out2_i_ff\(2) <= NOT \butterfly_stage1:0:stg1|out2_i_ff\(2);
\butterfly_stage2:1:stg2|mul|ALT_INV_i\(1) <= NOT \butterfly_stage2:1:stg2|mul|i\(1);
\butterfly_stage1:0:stg1|ALT_INV_out2_i_ff\(1) <= NOT \butterfly_stage1:0:stg1|out2_i_ff\(1);
\butterfly_stage2:1:stg2|mul|ALT_INV_i\(0) <= NOT \butterfly_stage2:1:stg2|mul|i\(0);
\butterfly_stage1:0:stg1|ALT_INV_out1_i_ff\(0) <= NOT \butterfly_stage1:0:stg1|out1_i_ff\(0);
\butterfly_stage2:0:stg2|mul|ALT_INV_r\(8) <= NOT \butterfly_stage2:0:stg2|mul|r\(8);
\butterfly_stage1:0:stg1|ALT_INV_out1_r_ff\(8) <= NOT \butterfly_stage1:0:stg1|out1_r_ff\(8);
\butterfly_stage2:0:stg2|mul|ALT_INV_r\(7) <= NOT \butterfly_stage2:0:stg2|mul|r\(7);
\butterfly_stage1:0:stg1|ALT_INV_out1_r_ff\(7) <= NOT \butterfly_stage1:0:stg1|out1_r_ff\(7);
\butterfly_stage2:0:stg2|mul|ALT_INV_r\(6) <= NOT \butterfly_stage2:0:stg2|mul|r\(6);
\butterfly_stage1:0:stg1|ALT_INV_out1_r_ff\(6) <= NOT \butterfly_stage1:0:stg1|out1_r_ff\(6);
\butterfly_stage2:0:stg2|mul|ALT_INV_r\(5) <= NOT \butterfly_stage2:0:stg2|mul|r\(5);
\butterfly_stage1:0:stg1|ALT_INV_out1_r_ff\(5) <= NOT \butterfly_stage1:0:stg1|out1_r_ff\(5);
\butterfly_stage2:0:stg2|mul|ALT_INV_r\(4) <= NOT \butterfly_stage2:0:stg2|mul|r\(4);
\butterfly_stage1:0:stg1|ALT_INV_out1_r_ff\(4) <= NOT \butterfly_stage1:0:stg1|out1_r_ff\(4);
\butterfly_stage2:0:stg2|mul|ALT_INV_r\(3) <= NOT \butterfly_stage2:0:stg2|mul|r\(3);
\butterfly_stage1:0:stg1|ALT_INV_out1_r_ff\(3) <= NOT \butterfly_stage1:0:stg1|out1_r_ff\(3);
\butterfly_stage2:0:stg2|mul|ALT_INV_r\(2) <= NOT \butterfly_stage2:0:stg2|mul|r\(2);
\butterfly_stage1:0:stg1|ALT_INV_out1_r_ff\(2) <= NOT \butterfly_stage1:0:stg1|out1_r_ff\(2);
\butterfly_stage2:0:stg2|mul|ALT_INV_r\(1) <= NOT \butterfly_stage2:0:stg2|mul|r\(1);
\butterfly_stage1:0:stg1|ALT_INV_out1_r_ff\(1) <= NOT \butterfly_stage1:0:stg1|out1_r_ff\(1);
\butterfly_stage2:0:stg2|mul|ALT_INV_r\(0) <= NOT \butterfly_stage2:0:stg2|mul|r\(0);
\butterfly_stage1:0:stg1|ALT_INV_out1_r_ff\(0) <= NOT \butterfly_stage1:0:stg1|out1_r_ff\(0);
\butterfly_stage2:1:stg2|mul|ALT_INV_r\(8) <= NOT \butterfly_stage2:1:stg2|mul|r\(8);
\butterfly_stage1:0:stg1|ALT_INV_out2_r_ff\(8) <= NOT \butterfly_stage1:0:stg1|out2_r_ff\(8);
\butterfly_stage2:1:stg2|mul|ALT_INV_r\(7) <= NOT \butterfly_stage2:1:stg2|mul|r\(7);
\butterfly_stage1:0:stg1|ALT_INV_out2_r_ff\(7) <= NOT \butterfly_stage1:0:stg1|out2_r_ff\(7);
\butterfly_stage2:1:stg2|mul|ALT_INV_r\(6) <= NOT \butterfly_stage2:1:stg2|mul|r\(6);
\butterfly_stage1:0:stg1|ALT_INV_out2_r_ff\(6) <= NOT \butterfly_stage1:0:stg1|out2_r_ff\(6);
\butterfly_stage2:1:stg2|mul|ALT_INV_r\(5) <= NOT \butterfly_stage2:1:stg2|mul|r\(5);
\butterfly_stage1:0:stg1|ALT_INV_out2_r_ff\(5) <= NOT \butterfly_stage1:0:stg1|out2_r_ff\(5);
\butterfly_stage2:1:stg2|mul|ALT_INV_r\(4) <= NOT \butterfly_stage2:1:stg2|mul|r\(4);
\butterfly_stage1:0:stg1|ALT_INV_out2_r_ff\(4) <= NOT \butterfly_stage1:0:stg1|out2_r_ff\(4);
\butterfly_stage2:1:stg2|mul|ALT_INV_r\(3) <= NOT \butterfly_stage2:1:stg2|mul|r\(3);
\butterfly_stage1:0:stg1|ALT_INV_out2_r_ff\(3) <= NOT \butterfly_stage1:0:stg1|out2_r_ff\(3);
\butterfly_stage2:1:stg2|mul|ALT_INV_r\(2) <= NOT \butterfly_stage2:1:stg2|mul|r\(2);
\butterfly_stage1:0:stg1|ALT_INV_out2_r_ff\(2) <= NOT \butterfly_stage1:0:stg1|out2_r_ff\(2);
\butterfly_stage2:1:stg2|mul|ALT_INV_r\(1) <= NOT \butterfly_stage2:1:stg2|mul|r\(1);
\butterfly_stage1:0:stg1|ALT_INV_out2_r_ff\(1) <= NOT \butterfly_stage1:0:stg1|out2_r_ff\(1);
\butterfly_stage1:0:stg1|ALT_INV_state~q\ <= NOT \butterfly_stage1:0:stg1|state~q\;
\butterfly_stage2:1:stg2|mul|ALT_INV_r\(0) <= NOT \butterfly_stage2:1:stg2|mul|r\(0);
\butterfly_stage1:0:stg1|ALT_INV_out2_r_ff\(0) <= NOT \butterfly_stage1:0:stg1|out2_r_ff\(0);
\butterfly_stage2:0:stg2|ALT_INV_clk_div2~q\ <= NOT \butterfly_stage2:0:stg2|clk_div2~q\;
\butterfly_stage2:1:stg2|ALT_INV_clk_div2~q\ <= NOT \butterfly_stage2:1:stg2|clk_div2~q\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult0~30\ <= NOT \butterfly_stage1:1:stg1|mul|Mult0~30\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult0~29\ <= NOT \butterfly_stage1:1:stg1|mul|Mult0~29\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult0~28\ <= NOT \butterfly_stage1:1:stg1|mul|Mult0~28\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult0~27\ <= NOT \butterfly_stage1:1:stg1|mul|Mult0~27\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult0~26\ <= NOT \butterfly_stage1:1:stg1|mul|Mult0~26\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult0~25\ <= NOT \butterfly_stage1:1:stg1|mul|Mult0~25\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult0~24\ <= NOT \butterfly_stage1:1:stg1|mul|Mult0~24\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult0~23\ <= NOT \butterfly_stage1:1:stg1|mul|Mult0~23\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult0~22\ <= NOT \butterfly_stage1:1:stg1|mul|Mult0~22\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~31\ <= NOT \butterfly_stage1:1:stg1|mul|Mult2~31\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~30\ <= NOT \butterfly_stage1:1:stg1|mul|Mult2~30\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~29\ <= NOT \butterfly_stage1:1:stg1|mul|Mult2~29\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~28\ <= NOT \butterfly_stage1:1:stg1|mul|Mult2~28\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~27\ <= NOT \butterfly_stage1:1:stg1|mul|Mult2~27\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~26\ <= NOT \butterfly_stage1:1:stg1|mul|Mult2~26\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~25\ <= NOT \butterfly_stage1:1:stg1|mul|Mult2~25\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~24\ <= NOT \butterfly_stage1:1:stg1|mul|Mult2~24\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~23\ <= NOT \butterfly_stage1:1:stg1|mul|Mult2~23\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~22\ <= NOT \butterfly_stage1:1:stg1|mul|Mult2~22\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~21\ <= NOT \butterfly_stage1:1:stg1|mul|Mult2~21\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~20\ <= NOT \butterfly_stage1:1:stg1|mul|Mult2~20\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~19\ <= NOT \butterfly_stage1:1:stg1|mul|Mult2~19\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~18\ <= NOT \butterfly_stage1:1:stg1|mul|Mult2~18\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~17\ <= NOT \butterfly_stage1:1:stg1|mul|Mult2~17\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~16\ <= NOT \butterfly_stage1:1:stg1|mul|Mult2~16\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~15\ <= NOT \butterfly_stage1:1:stg1|mul|Mult2~15\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~14\ <= NOT \butterfly_stage1:1:stg1|mul|Mult2~14\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~13\ <= NOT \butterfly_stage1:1:stg1|mul|Mult2~13\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~12\ <= NOT \butterfly_stage1:1:stg1|mul|Mult2~12\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~11\ <= NOT \butterfly_stage1:1:stg1|mul|Mult2~11\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~10\ <= NOT \butterfly_stage1:1:stg1|mul|Mult2~10\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~9\ <= NOT \butterfly_stage1:1:stg1|mul|Mult2~9\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~8_resulta\ <= NOT \butterfly_stage1:1:stg1|mul|Mult2~8_resulta\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~32\ <= NOT \butterfly_stage1:1:stg1|mul|Mult1~32\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~30\ <= NOT \butterfly_stage1:1:stg1|mul|Mult1~30\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~29\ <= NOT \butterfly_stage1:1:stg1|mul|Mult1~29\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~28\ <= NOT \butterfly_stage1:1:stg1|mul|Mult1~28\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~27\ <= NOT \butterfly_stage1:1:stg1|mul|Mult1~27\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~26\ <= NOT \butterfly_stage1:1:stg1|mul|Mult1~26\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~25\ <= NOT \butterfly_stage1:1:stg1|mul|Mult1~25\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~24\ <= NOT \butterfly_stage1:1:stg1|mul|Mult1~24\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~23\ <= NOT \butterfly_stage1:1:stg1|mul|Mult1~23\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~22\ <= NOT \butterfly_stage1:1:stg1|mul|Mult1~22\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~21\ <= NOT \butterfly_stage1:1:stg1|mul|Mult1~21\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~20\ <= NOT \butterfly_stage1:1:stg1|mul|Mult1~20\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~19\ <= NOT \butterfly_stage1:1:stg1|mul|Mult1~19\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~18\ <= NOT \butterfly_stage1:1:stg1|mul|Mult1~18\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~17\ <= NOT \butterfly_stage1:1:stg1|mul|Mult1~17\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~16\ <= NOT \butterfly_stage1:1:stg1|mul|Mult1~16\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~15\ <= NOT \butterfly_stage1:1:stg1|mul|Mult1~15\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~14\ <= NOT \butterfly_stage1:1:stg1|mul|Mult1~14\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~13\ <= NOT \butterfly_stage1:1:stg1|mul|Mult1~13\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~12\ <= NOT \butterfly_stage1:1:stg1|mul|Mult1~12\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~11\ <= NOT \butterfly_stage1:1:stg1|mul|Mult1~11\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~10\ <= NOT \butterfly_stage1:1:stg1|mul|Mult1~10\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~9\ <= NOT \butterfly_stage1:1:stg1|mul|Mult1~9\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~8_resulta\ <= NOT \butterfly_stage1:1:stg1|mul|Mult1~8_resulta\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Add4~33_sumout\ <= NOT \butterfly_stage1:1:stg1|mul|Add4~33_sumout\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Add2~33_sumout\ <= NOT \butterfly_stage1:1:stg1|mul|Add2~33_sumout\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Add4~29_sumout\ <= NOT \butterfly_stage1:1:stg1|mul|Add4~29_sumout\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Add2~29_sumout\ <= NOT \butterfly_stage1:1:stg1|mul|Add2~29_sumout\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Add4~25_sumout\ <= NOT \butterfly_stage1:1:stg1|mul|Add4~25_sumout\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Add2~25_sumout\ <= NOT \butterfly_stage1:1:stg1|mul|Add2~25_sumout\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Add4~21_sumout\ <= NOT \butterfly_stage1:1:stg1|mul|Add4~21_sumout\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Add2~21_sumout\ <= NOT \butterfly_stage1:1:stg1|mul|Add2~21_sumout\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Add4~17_sumout\ <= NOT \butterfly_stage1:1:stg1|mul|Add4~17_sumout\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Add2~17_sumout\ <= NOT \butterfly_stage1:1:stg1|mul|Add2~17_sumout\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Add4~13_sumout\ <= NOT \butterfly_stage1:1:stg1|mul|Add4~13_sumout\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Add2~13_sumout\ <= NOT \butterfly_stage1:1:stg1|mul|Add2~13_sumout\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Add4~9_sumout\ <= NOT \butterfly_stage1:1:stg1|mul|Add4~9_sumout\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Add2~9_sumout\ <= NOT \butterfly_stage1:1:stg1|mul|Add2~9_sumout\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Add4~5_sumout\ <= NOT \butterfly_stage1:1:stg1|mul|Add4~5_sumout\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Add2~5_sumout\ <= NOT \butterfly_stage1:1:stg1|mul|Add2~5_sumout\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Add4~1_sumout\ <= NOT \butterfly_stage1:1:stg1|mul|Add4~1_sumout\;
\butterfly_stage1:1:stg1|mul|ALT_INV_Add2~1_sumout\ <= NOT \butterfly_stage1:1:stg1|mul|Add2~1_sumout\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~31\ <= NOT \butterfly_stage1:0:stg1|mul|Mult2~31\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~30\ <= NOT \butterfly_stage1:0:stg1|mul|Mult2~30\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~29\ <= NOT \butterfly_stage1:0:stg1|mul|Mult2~29\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~28\ <= NOT \butterfly_stage1:0:stg1|mul|Mult2~28\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~27\ <= NOT \butterfly_stage1:0:stg1|mul|Mult2~27\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~26\ <= NOT \butterfly_stage1:0:stg1|mul|Mult2~26\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~25\ <= NOT \butterfly_stage1:0:stg1|mul|Mult2~25\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~24\ <= NOT \butterfly_stage1:0:stg1|mul|Mult2~24\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~23\ <= NOT \butterfly_stage1:0:stg1|mul|Mult2~23\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~22\ <= NOT \butterfly_stage1:0:stg1|mul|Mult2~22\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~21\ <= NOT \butterfly_stage1:0:stg1|mul|Mult2~21\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~20\ <= NOT \butterfly_stage1:0:stg1|mul|Mult2~20\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~19\ <= NOT \butterfly_stage1:0:stg1|mul|Mult2~19\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~18\ <= NOT \butterfly_stage1:0:stg1|mul|Mult2~18\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~17\ <= NOT \butterfly_stage1:0:stg1|mul|Mult2~17\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~16\ <= NOT \butterfly_stage1:0:stg1|mul|Mult2~16\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~15\ <= NOT \butterfly_stage1:0:stg1|mul|Mult2~15\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~14\ <= NOT \butterfly_stage1:0:stg1|mul|Mult2~14\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~13\ <= NOT \butterfly_stage1:0:stg1|mul|Mult2~13\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~12\ <= NOT \butterfly_stage1:0:stg1|mul|Mult2~12\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~11\ <= NOT \butterfly_stage1:0:stg1|mul|Mult2~11\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~10\ <= NOT \butterfly_stage1:0:stg1|mul|Mult2~10\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~9\ <= NOT \butterfly_stage1:0:stg1|mul|Mult2~9\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~8_resulta\ <= NOT \butterfly_stage1:0:stg1|mul|Mult2~8_resulta\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~32\ <= NOT \butterfly_stage1:0:stg1|mul|Mult1~32\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~30\ <= NOT \butterfly_stage1:0:stg1|mul|Mult1~30\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~29\ <= NOT \butterfly_stage1:0:stg1|mul|Mult1~29\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~28\ <= NOT \butterfly_stage1:0:stg1|mul|Mult1~28\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~27\ <= NOT \butterfly_stage1:0:stg1|mul|Mult1~27\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~26\ <= NOT \butterfly_stage1:0:stg1|mul|Mult1~26\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~25\ <= NOT \butterfly_stage1:0:stg1|mul|Mult1~25\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~24\ <= NOT \butterfly_stage1:0:stg1|mul|Mult1~24\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~23\ <= NOT \butterfly_stage1:0:stg1|mul|Mult1~23\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~22\ <= NOT \butterfly_stage1:0:stg1|mul|Mult1~22\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~21\ <= NOT \butterfly_stage1:0:stg1|mul|Mult1~21\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~20\ <= NOT \butterfly_stage1:0:stg1|mul|Mult1~20\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~19\ <= NOT \butterfly_stage1:0:stg1|mul|Mult1~19\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~18\ <= NOT \butterfly_stage1:0:stg1|mul|Mult1~18\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~17\ <= NOT \butterfly_stage1:0:stg1|mul|Mult1~17\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~16\ <= NOT \butterfly_stage1:0:stg1|mul|Mult1~16\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~15\ <= NOT \butterfly_stage1:0:stg1|mul|Mult1~15\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~14\ <= NOT \butterfly_stage1:0:stg1|mul|Mult1~14\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~13\ <= NOT \butterfly_stage1:0:stg1|mul|Mult1~13\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~12\ <= NOT \butterfly_stage1:0:stg1|mul|Mult1~12\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~11\ <= NOT \butterfly_stage1:0:stg1|mul|Mult1~11\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~10\ <= NOT \butterfly_stage1:0:stg1|mul|Mult1~10\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~9\ <= NOT \butterfly_stage1:0:stg1|mul|Mult1~9\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~8_resulta\ <= NOT \butterfly_stage1:0:stg1|mul|Mult1~8_resulta\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult0~30\ <= NOT \butterfly_stage1:0:stg1|mul|Mult0~30\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult0~29\ <= NOT \butterfly_stage1:0:stg1|mul|Mult0~29\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult0~28\ <= NOT \butterfly_stage1:0:stg1|mul|Mult0~28\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult0~27\ <= NOT \butterfly_stage1:0:stg1|mul|Mult0~27\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult0~26\ <= NOT \butterfly_stage1:0:stg1|mul|Mult0~26\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult0~25\ <= NOT \butterfly_stage1:0:stg1|mul|Mult0~25\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult0~24\ <= NOT \butterfly_stage1:0:stg1|mul|Mult0~24\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult0~23\ <= NOT \butterfly_stage1:0:stg1|mul|Mult0~23\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Mult0~22\ <= NOT \butterfly_stage1:0:stg1|mul|Mult0~22\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Add4~33_sumout\ <= NOT \butterfly_stage1:0:stg1|mul|Add4~33_sumout\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Add2~33_sumout\ <= NOT \butterfly_stage1:0:stg1|mul|Add2~33_sumout\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Add4~29_sumout\ <= NOT \butterfly_stage1:0:stg1|mul|Add4~29_sumout\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Add2~29_sumout\ <= NOT \butterfly_stage1:0:stg1|mul|Add2~29_sumout\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Add4~25_sumout\ <= NOT \butterfly_stage1:0:stg1|mul|Add4~25_sumout\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Add2~25_sumout\ <= NOT \butterfly_stage1:0:stg1|mul|Add2~25_sumout\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Add4~21_sumout\ <= NOT \butterfly_stage1:0:stg1|mul|Add4~21_sumout\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Add2~21_sumout\ <= NOT \butterfly_stage1:0:stg1|mul|Add2~21_sumout\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Add4~17_sumout\ <= NOT \butterfly_stage1:0:stg1|mul|Add4~17_sumout\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Add2~17_sumout\ <= NOT \butterfly_stage1:0:stg1|mul|Add2~17_sumout\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Add4~13_sumout\ <= NOT \butterfly_stage1:0:stg1|mul|Add4~13_sumout\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Add2~13_sumout\ <= NOT \butterfly_stage1:0:stg1|mul|Add2~13_sumout\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Add4~9_sumout\ <= NOT \butterfly_stage1:0:stg1|mul|Add4~9_sumout\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Add2~9_sumout\ <= NOT \butterfly_stage1:0:stg1|mul|Add2~9_sumout\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Add4~5_sumout\ <= NOT \butterfly_stage1:0:stg1|mul|Add4~5_sumout\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Add2~5_sumout\ <= NOT \butterfly_stage1:0:stg1|mul|Add2~5_sumout\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~31\ <= NOT \butterfly_stage2:0:stg2|mul|Mult2~31\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~30\ <= NOT \butterfly_stage2:0:stg2|mul|Mult2~30\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~29\ <= NOT \butterfly_stage2:0:stg2|mul|Mult2~29\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~28\ <= NOT \butterfly_stage2:0:stg2|mul|Mult2~28\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~27\ <= NOT \butterfly_stage2:0:stg2|mul|Mult2~27\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~26\ <= NOT \butterfly_stage2:0:stg2|mul|Mult2~26\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~25\ <= NOT \butterfly_stage2:0:stg2|mul|Mult2~25\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~24\ <= NOT \butterfly_stage2:0:stg2|mul|Mult2~24\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~23\ <= NOT \butterfly_stage2:0:stg2|mul|Mult2~23\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~22\ <= NOT \butterfly_stage2:0:stg2|mul|Mult2~22\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~21\ <= NOT \butterfly_stage2:0:stg2|mul|Mult2~21\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~20\ <= NOT \butterfly_stage2:0:stg2|mul|Mult2~20\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~19\ <= NOT \butterfly_stage2:0:stg2|mul|Mult2~19\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~18\ <= NOT \butterfly_stage2:0:stg2|mul|Mult2~18\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~17\ <= NOT \butterfly_stage2:0:stg2|mul|Mult2~17\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~16\ <= NOT \butterfly_stage2:0:stg2|mul|Mult2~16\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~15\ <= NOT \butterfly_stage2:0:stg2|mul|Mult2~15\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~14\ <= NOT \butterfly_stage2:0:stg2|mul|Mult2~14\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~13\ <= NOT \butterfly_stage2:0:stg2|mul|Mult2~13\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~12\ <= NOT \butterfly_stage2:0:stg2|mul|Mult2~12\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~11\ <= NOT \butterfly_stage2:0:stg2|mul|Mult2~11\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~10\ <= NOT \butterfly_stage2:0:stg2|mul|Mult2~10\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~9\ <= NOT \butterfly_stage2:0:stg2|mul|Mult2~9\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~8_resulta\ <= NOT \butterfly_stage2:0:stg2|mul|Mult2~8_resulta\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~32\ <= NOT \butterfly_stage2:1:stg2|mul|Mult2~32\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~30\ <= NOT \butterfly_stage2:1:stg2|mul|Mult2~30\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~29\ <= NOT \butterfly_stage2:1:stg2|mul|Mult2~29\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~28\ <= NOT \butterfly_stage2:1:stg2|mul|Mult2~28\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~27\ <= NOT \butterfly_stage2:1:stg2|mul|Mult2~27\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~26\ <= NOT \butterfly_stage2:1:stg2|mul|Mult2~26\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~25\ <= NOT \butterfly_stage2:1:stg2|mul|Mult2~25\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~24\ <= NOT \butterfly_stage2:1:stg2|mul|Mult2~24\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~23\ <= NOT \butterfly_stage2:1:stg2|mul|Mult2~23\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~22\ <= NOT \butterfly_stage2:1:stg2|mul|Mult2~22\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~21\ <= NOT \butterfly_stage2:1:stg2|mul|Mult2~21\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~20\ <= NOT \butterfly_stage2:1:stg2|mul|Mult2~20\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~19\ <= NOT \butterfly_stage2:1:stg2|mul|Mult2~19\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~18\ <= NOT \butterfly_stage2:1:stg2|mul|Mult2~18\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~17\ <= NOT \butterfly_stage2:1:stg2|mul|Mult2~17\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~16\ <= NOT \butterfly_stage2:1:stg2|mul|Mult2~16\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~15\ <= NOT \butterfly_stage2:1:stg2|mul|Mult2~15\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~14\ <= NOT \butterfly_stage2:1:stg2|mul|Mult2~14\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~13\ <= NOT \butterfly_stage2:1:stg2|mul|Mult2~13\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~12\ <= NOT \butterfly_stage2:1:stg2|mul|Mult2~12\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~11\ <= NOT \butterfly_stage2:1:stg2|mul|Mult2~11\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~10\ <= NOT \butterfly_stage2:1:stg2|mul|Mult2~10\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~9\ <= NOT \butterfly_stage2:1:stg2|mul|Mult2~9\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~8_resulta\ <= NOT \butterfly_stage2:1:stg2|mul|Mult2~8_resulta\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Add4~1_sumout\ <= NOT \butterfly_stage1:0:stg1|mul|Add4~1_sumout\;
\butterfly_stage1:0:stg1|mul|ALT_INV_Add2~1_sumout\ <= NOT \butterfly_stage1:0:stg1|mul|Add2~1_sumout\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~32\ <= NOT \butterfly_stage2:0:stg2|mul|Mult1~32\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~30\ <= NOT \butterfly_stage2:0:stg2|mul|Mult1~30\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~29\ <= NOT \butterfly_stage2:0:stg2|mul|Mult1~29\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~28\ <= NOT \butterfly_stage2:0:stg2|mul|Mult1~28\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~27\ <= NOT \butterfly_stage2:0:stg2|mul|Mult1~27\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~26\ <= NOT \butterfly_stage2:0:stg2|mul|Mult1~26\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~25\ <= NOT \butterfly_stage2:0:stg2|mul|Mult1~25\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~24\ <= NOT \butterfly_stage2:0:stg2|mul|Mult1~24\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~23\ <= NOT \butterfly_stage2:0:stg2|mul|Mult1~23\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~22\ <= NOT \butterfly_stage2:0:stg2|mul|Mult1~22\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~21\ <= NOT \butterfly_stage2:0:stg2|mul|Mult1~21\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~20\ <= NOT \butterfly_stage2:0:stg2|mul|Mult1~20\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~19\ <= NOT \butterfly_stage2:0:stg2|mul|Mult1~19\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~18\ <= NOT \butterfly_stage2:0:stg2|mul|Mult1~18\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~17\ <= NOT \butterfly_stage2:0:stg2|mul|Mult1~17\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~16\ <= NOT \butterfly_stage2:0:stg2|mul|Mult1~16\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~15\ <= NOT \butterfly_stage2:0:stg2|mul|Mult1~15\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~14\ <= NOT \butterfly_stage2:0:stg2|mul|Mult1~14\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~13\ <= NOT \butterfly_stage2:0:stg2|mul|Mult1~13\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~12\ <= NOT \butterfly_stage2:0:stg2|mul|Mult1~12\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~11\ <= NOT \butterfly_stage2:0:stg2|mul|Mult1~11\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~10\ <= NOT \butterfly_stage2:0:stg2|mul|Mult1~10\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~9\ <= NOT \butterfly_stage2:0:stg2|mul|Mult1~9\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~8_resulta\ <= NOT \butterfly_stage2:0:stg2|mul|Mult1~8_resulta\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~32\ <= NOT \butterfly_stage2:1:stg2|mul|Mult1~32\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~30\ <= NOT \butterfly_stage2:1:stg2|mul|Mult1~30\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~29\ <= NOT \butterfly_stage2:1:stg2|mul|Mult1~29\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~28\ <= NOT \butterfly_stage2:1:stg2|mul|Mult1~28\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~27\ <= NOT \butterfly_stage2:1:stg2|mul|Mult1~27\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~26\ <= NOT \butterfly_stage2:1:stg2|mul|Mult1~26\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~25\ <= NOT \butterfly_stage2:1:stg2|mul|Mult1~25\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~24\ <= NOT \butterfly_stage2:1:stg2|mul|Mult1~24\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~23\ <= NOT \butterfly_stage2:1:stg2|mul|Mult1~23\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~22\ <= NOT \butterfly_stage2:1:stg2|mul|Mult1~22\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~21\ <= NOT \butterfly_stage2:1:stg2|mul|Mult1~21\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~20\ <= NOT \butterfly_stage2:1:stg2|mul|Mult1~20\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~19\ <= NOT \butterfly_stage2:1:stg2|mul|Mult1~19\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~18\ <= NOT \butterfly_stage2:1:stg2|mul|Mult1~18\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~17\ <= NOT \butterfly_stage2:1:stg2|mul|Mult1~17\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~16\ <= NOT \butterfly_stage2:1:stg2|mul|Mult1~16\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~15\ <= NOT \butterfly_stage2:1:stg2|mul|Mult1~15\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~14\ <= NOT \butterfly_stage2:1:stg2|mul|Mult1~14\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~13\ <= NOT \butterfly_stage2:1:stg2|mul|Mult1~13\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~12\ <= NOT \butterfly_stage2:1:stg2|mul|Mult1~12\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~11\ <= NOT \butterfly_stage2:1:stg2|mul|Mult1~11\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~10\ <= NOT \butterfly_stage2:1:stg2|mul|Mult1~10\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~9\ <= NOT \butterfly_stage2:1:stg2|mul|Mult1~9\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~8_resulta\ <= NOT \butterfly_stage2:1:stg2|mul|Mult1~8_resulta\;
ALT_INV_count(2) <= NOT count(2);
\butterfly_stage2:0:stg2|mul|ALT_INV_Add4~33_sumout\ <= NOT \butterfly_stage2:0:stg2|mul|Add4~33_sumout\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Add4~29_sumout\ <= NOT \butterfly_stage2:0:stg2|mul|Add4~29_sumout\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Add4~25_sumout\ <= NOT \butterfly_stage2:0:stg2|mul|Add4~25_sumout\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Add4~21_sumout\ <= NOT \butterfly_stage2:0:stg2|mul|Add4~21_sumout\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Add4~17_sumout\ <= NOT \butterfly_stage2:0:stg2|mul|Add4~17_sumout\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Add4~13_sumout\ <= NOT \butterfly_stage2:0:stg2|mul|Add4~13_sumout\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Add4~9_sumout\ <= NOT \butterfly_stage2:0:stg2|mul|Add4~9_sumout\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Add4~5_sumout\ <= NOT \butterfly_stage2:0:stg2|mul|Add4~5_sumout\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Add4~1_sumout\ <= NOT \butterfly_stage2:0:stg2|mul|Add4~1_sumout\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Add4~33_sumout\ <= NOT \butterfly_stage2:1:stg2|mul|Add4~33_sumout\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Add4~29_sumout\ <= NOT \butterfly_stage2:1:stg2|mul|Add4~29_sumout\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Add4~25_sumout\ <= NOT \butterfly_stage2:1:stg2|mul|Add4~25_sumout\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Add4~21_sumout\ <= NOT \butterfly_stage2:1:stg2|mul|Add4~21_sumout\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Add4~17_sumout\ <= NOT \butterfly_stage2:1:stg2|mul|Add4~17_sumout\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Add4~13_sumout\ <= NOT \butterfly_stage2:1:stg2|mul|Add4~13_sumout\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Add4~9_sumout\ <= NOT \butterfly_stage2:1:stg2|mul|Add4~9_sumout\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Add4~5_sumout\ <= NOT \butterfly_stage2:1:stg2|mul|Add4~5_sumout\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Add4~1_sumout\ <= NOT \butterfly_stage2:1:stg2|mul|Add4~1_sumout\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Add2~33_sumout\ <= NOT \butterfly_stage2:0:stg2|mul|Add2~33_sumout\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Add2~29_sumout\ <= NOT \butterfly_stage2:0:stg2|mul|Add2~29_sumout\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Add2~25_sumout\ <= NOT \butterfly_stage2:0:stg2|mul|Add2~25_sumout\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Add2~21_sumout\ <= NOT \butterfly_stage2:0:stg2|mul|Add2~21_sumout\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Add2~17_sumout\ <= NOT \butterfly_stage2:0:stg2|mul|Add2~17_sumout\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Add2~13_sumout\ <= NOT \butterfly_stage2:0:stg2|mul|Add2~13_sumout\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Add2~9_sumout\ <= NOT \butterfly_stage2:0:stg2|mul|Add2~9_sumout\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Add2~5_sumout\ <= NOT \butterfly_stage2:0:stg2|mul|Add2~5_sumout\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~31\ <= NOT \butterfly_stage2:0:stg2|mul|Mult0~31\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~30\ <= NOT \butterfly_stage2:0:stg2|mul|Mult0~30\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~29\ <= NOT \butterfly_stage2:0:stg2|mul|Mult0~29\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~28\ <= NOT \butterfly_stage2:0:stg2|mul|Mult0~28\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~27\ <= NOT \butterfly_stage2:0:stg2|mul|Mult0~27\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~26\ <= NOT \butterfly_stage2:0:stg2|mul|Mult0~26\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~25\ <= NOT \butterfly_stage2:0:stg2|mul|Mult0~25\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~24\ <= NOT \butterfly_stage2:0:stg2|mul|Mult0~24\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~23\ <= NOT \butterfly_stage2:0:stg2|mul|Mult0~23\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~22\ <= NOT \butterfly_stage2:0:stg2|mul|Mult0~22\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~21\ <= NOT \butterfly_stage2:0:stg2|mul|Mult0~21\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~20\ <= NOT \butterfly_stage2:0:stg2|mul|Mult0~20\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~19\ <= NOT \butterfly_stage2:0:stg2|mul|Mult0~19\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~18\ <= NOT \butterfly_stage2:0:stg2|mul|Mult0~18\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~17\ <= NOT \butterfly_stage2:0:stg2|mul|Mult0~17\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~16\ <= NOT \butterfly_stage2:0:stg2|mul|Mult0~16\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~15\ <= NOT \butterfly_stage2:0:stg2|mul|Mult0~15\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~14\ <= NOT \butterfly_stage2:0:stg2|mul|Mult0~14\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~13\ <= NOT \butterfly_stage2:0:stg2|mul|Mult0~13\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~12\ <= NOT \butterfly_stage2:0:stg2|mul|Mult0~12\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~11\ <= NOT \butterfly_stage2:0:stg2|mul|Mult0~11\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~10\ <= NOT \butterfly_stage2:0:stg2|mul|Mult0~10\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~9\ <= NOT \butterfly_stage2:0:stg2|mul|Mult0~9\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~8_resulta\ <= NOT \butterfly_stage2:0:stg2|mul|Mult0~8_resulta\;
\butterfly_stage2:0:stg2|mul|ALT_INV_Add2~1_sumout\ <= NOT \butterfly_stage2:0:stg2|mul|Add2~1_sumout\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Add2~33_sumout\ <= NOT \butterfly_stage2:1:stg2|mul|Add2~33_sumout\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Add2~29_sumout\ <= NOT \butterfly_stage2:1:stg2|mul|Add2~29_sumout\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Add2~25_sumout\ <= NOT \butterfly_stage2:1:stg2|mul|Add2~25_sumout\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Add2~21_sumout\ <= NOT \butterfly_stage2:1:stg2|mul|Add2~21_sumout\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Add2~17_sumout\ <= NOT \butterfly_stage2:1:stg2|mul|Add2~17_sumout\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Add2~13_sumout\ <= NOT \butterfly_stage2:1:stg2|mul|Add2~13_sumout\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Add2~9_sumout\ <= NOT \butterfly_stage2:1:stg2|mul|Add2~9_sumout\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Add2~5_sumout\ <= NOT \butterfly_stage2:1:stg2|mul|Add2~5_sumout\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~31\ <= NOT \butterfly_stage2:1:stg2|mul|Mult0~31\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~30\ <= NOT \butterfly_stage2:1:stg2|mul|Mult0~30\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~29\ <= NOT \butterfly_stage2:1:stg2|mul|Mult0~29\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~28\ <= NOT \butterfly_stage2:1:stg2|mul|Mult0~28\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~27\ <= NOT \butterfly_stage2:1:stg2|mul|Mult0~27\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~26\ <= NOT \butterfly_stage2:1:stg2|mul|Mult0~26\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~25\ <= NOT \butterfly_stage2:1:stg2|mul|Mult0~25\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~24\ <= NOT \butterfly_stage2:1:stg2|mul|Mult0~24\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~23\ <= NOT \butterfly_stage2:1:stg2|mul|Mult0~23\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~22\ <= NOT \butterfly_stage2:1:stg2|mul|Mult0~22\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~21\ <= NOT \butterfly_stage2:1:stg2|mul|Mult0~21\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~20\ <= NOT \butterfly_stage2:1:stg2|mul|Mult0~20\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~19\ <= NOT \butterfly_stage2:1:stg2|mul|Mult0~19\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~18\ <= NOT \butterfly_stage2:1:stg2|mul|Mult0~18\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~17\ <= NOT \butterfly_stage2:1:stg2|mul|Mult0~17\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~16\ <= NOT \butterfly_stage2:1:stg2|mul|Mult0~16\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~15\ <= NOT \butterfly_stage2:1:stg2|mul|Mult0~15\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~14\ <= NOT \butterfly_stage2:1:stg2|mul|Mult0~14\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~13\ <= NOT \butterfly_stage2:1:stg2|mul|Mult0~13\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~12\ <= NOT \butterfly_stage2:1:stg2|mul|Mult0~12\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~11\ <= NOT \butterfly_stage2:1:stg2|mul|Mult0~11\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~10\ <= NOT \butterfly_stage2:1:stg2|mul|Mult0~10\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~9\ <= NOT \butterfly_stage2:1:stg2|mul|Mult0~9\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~8_resulta\ <= NOT \butterfly_stage2:1:stg2|mul|Mult0~8_resulta\;
\butterfly_stage2:1:stg2|mul|ALT_INV_Add2~1_sumout\ <= NOT \butterfly_stage2:1:stg2|mul|Add2~1_sumout\;

-- Location: IOOBUF_X89_Y11_N45
\X_r_out[3][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:1:stg2|out2_r_ff\(0),
	devoe => ww_devoe,
	o => ww_X_r_out(3)(0));

-- Location: IOOBUF_X89_Y4_N45
\X_r_out[3][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:1:stg2|out2_r_ff\(1),
	devoe => ww_devoe,
	o => ww_X_r_out(3)(1));

-- Location: IOOBUF_X89_Y11_N62
\X_r_out[3][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:1:stg2|out2_r_ff\(2),
	devoe => ww_devoe,
	o => ww_X_r_out(3)(2));

-- Location: IOOBUF_X80_Y0_N36
\X_r_out[3][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:1:stg2|out2_r_ff\(3),
	devoe => ww_devoe,
	o => ww_X_r_out(3)(3));

-- Location: IOOBUF_X30_Y81_N53
\X_r_out[3][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:1:stg2|out2_r_ff\(4),
	devoe => ww_devoe,
	o => ww_X_r_out(3)(4));

-- Location: IOOBUF_X80_Y0_N19
\X_r_out[3][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:1:stg2|out2_r_ff\(5),
	devoe => ww_devoe,
	o => ww_X_r_out(3)(5));

-- Location: IOOBUF_X82_Y0_N42
\X_r_out[3][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:1:stg2|out2_r_ff\(6),
	devoe => ww_devoe,
	o => ww_X_r_out(3)(6));

-- Location: IOOBUF_X89_Y6_N56
\X_r_out[3][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:1:stg2|out2_r_ff\(7),
	devoe => ww_devoe,
	o => ww_X_r_out(3)(7));

-- Location: IOOBUF_X89_Y6_N22
\X_r_out[3][8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:1:stg2|out2_r_ff\(8),
	devoe => ww_devoe,
	o => ww_X_r_out(3)(8));

-- Location: IOOBUF_X86_Y0_N2
\X_r_out[2][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:0:stg2|out2_r_ff\(0),
	devoe => ww_devoe,
	o => ww_X_r_out(2)(0));

-- Location: IOOBUF_X89_Y9_N39
\X_r_out[2][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:0:stg2|out2_r_ff\(1),
	devoe => ww_devoe,
	o => ww_X_r_out(2)(1));

-- Location: IOOBUF_X89_Y4_N62
\X_r_out[2][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:0:stg2|out2_r_ff\(2),
	devoe => ww_devoe,
	o => ww_X_r_out(2)(2));

-- Location: IOOBUF_X89_Y8_N39
\X_r_out[2][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:0:stg2|out2_r_ff\(3),
	devoe => ww_devoe,
	o => ww_X_r_out(2)(3));

-- Location: IOOBUF_X89_Y9_N5
\X_r_out[2][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:0:stg2|out2_r_ff\(4),
	devoe => ww_devoe,
	o => ww_X_r_out(2)(4));

-- Location: IOOBUF_X78_Y0_N36
\X_r_out[2][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:0:stg2|out2_r_ff\(5),
	devoe => ww_devoe,
	o => ww_X_r_out(2)(5));

-- Location: IOOBUF_X78_Y0_N53
\X_r_out[2][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:0:stg2|out2_r_ff\(6),
	devoe => ww_devoe,
	o => ww_X_r_out(2)(6));

-- Location: IOOBUF_X34_Y81_N59
\X_r_out[2][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:0:stg2|out2_r_ff\(7),
	devoe => ww_devoe,
	o => ww_X_r_out(2)(7));

-- Location: IOOBUF_X82_Y0_N76
\X_r_out[2][8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:0:stg2|out2_r_ff\(8),
	devoe => ww_devoe,
	o => ww_X_r_out(2)(8));

-- Location: IOOBUF_X76_Y0_N2
\X_r_out[1][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:1:stg2|out1_r_ff\(0),
	devoe => ww_devoe,
	o => ww_X_r_out(1)(0));

-- Location: IOOBUF_X86_Y0_N53
\X_r_out[1][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:1:stg2|out1_r_ff\(1),
	devoe => ww_devoe,
	o => ww_X_r_out(1)(1));

-- Location: IOOBUF_X76_Y0_N36
\X_r_out[1][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:1:stg2|out1_r_ff\(2),
	devoe => ww_devoe,
	o => ww_X_r_out(1)(2));

-- Location: IOOBUF_X89_Y16_N22
\X_r_out[1][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:1:stg2|out1_r_ff\(3),
	devoe => ww_devoe,
	o => ww_X_r_out(1)(3));

-- Location: IOOBUF_X40_Y81_N19
\X_r_out[1][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:1:stg2|out1_r_ff\(4),
	devoe => ww_devoe,
	o => ww_X_r_out(1)(4));

-- Location: IOOBUF_X76_Y0_N53
\X_r_out[1][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:1:stg2|out1_r_ff\(5),
	devoe => ww_devoe,
	o => ww_X_r_out(1)(5));

-- Location: IOOBUF_X80_Y0_N2
\X_r_out[1][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:1:stg2|out1_r_ff\(6),
	devoe => ww_devoe,
	o => ww_X_r_out(1)(6));

-- Location: IOOBUF_X40_Y81_N53
\X_r_out[1][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:1:stg2|out1_r_ff\(7),
	devoe => ww_devoe,
	o => ww_X_r_out(1)(7));

-- Location: IOOBUF_X32_Y81_N36
\X_r_out[1][8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:1:stg2|out1_r_ff\(8),
	devoe => ww_devoe,
	o => ww_X_r_out(1)(8));

-- Location: IOOBUF_X84_Y0_N19
\X_r_out[0][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:0:stg2|out1_r_ff\(0),
	devoe => ww_devoe,
	o => ww_X_r_out(0)(0));

-- Location: IOOBUF_X80_Y0_N53
\X_r_out[0][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:0:stg2|out1_r_ff\(1),
	devoe => ww_devoe,
	o => ww_X_r_out(0)(1));

-- Location: IOOBUF_X78_Y0_N2
\X_r_out[0][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:0:stg2|out1_r_ff\(2),
	devoe => ww_devoe,
	o => ww_X_r_out(0)(2));

-- Location: IOOBUF_X89_Y8_N5
\X_r_out[0][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:0:stg2|out1_r_ff\(3),
	devoe => ww_devoe,
	o => ww_X_r_out(0)(3));

-- Location: IOOBUF_X78_Y0_N19
\X_r_out[0][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:0:stg2|out1_r_ff\(4),
	devoe => ww_devoe,
	o => ww_X_r_out(0)(4));

-- Location: IOOBUF_X89_Y8_N22
\X_r_out[0][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:0:stg2|out1_r_ff\(5),
	devoe => ww_devoe,
	o => ww_X_r_out(0)(5));

-- Location: IOOBUF_X82_Y0_N59
\X_r_out[0][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:0:stg2|out1_r_ff\(6),
	devoe => ww_devoe,
	o => ww_X_r_out(0)(6));

-- Location: IOOBUF_X89_Y8_N56
\X_r_out[0][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:0:stg2|out1_r_ff\(7),
	devoe => ww_devoe,
	o => ww_X_r_out(0)(7));

-- Location: IOOBUF_X82_Y0_N93
\X_r_out[0][8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:0:stg2|out1_r_ff\(8),
	devoe => ww_devoe,
	o => ww_X_r_out(0)(8));

-- Location: IOOBUF_X34_Y81_N42
\X_i_out[3][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:1:stg2|out2_i_ff\(0),
	devoe => ww_devoe,
	o => ww_X_i_out(3)(0));

-- Location: IOOBUF_X62_Y0_N2
\X_i_out[3][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:1:stg2|out2_i_ff\(1),
	devoe => ww_devoe,
	o => ww_X_i_out(3)(1));

-- Location: IOOBUF_X89_Y4_N79
\X_i_out[3][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:1:stg2|out2_i_ff\(2),
	devoe => ww_devoe,
	o => ww_X_i_out(3)(2));

-- Location: IOOBUF_X89_Y4_N96
\X_i_out[3][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:1:stg2|out2_i_ff\(3),
	devoe => ww_devoe,
	o => ww_X_i_out(3)(3));

-- Location: IOOBUF_X89_Y11_N96
\X_i_out[3][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:1:stg2|out2_i_ff\(4),
	devoe => ww_devoe,
	o => ww_X_i_out(3)(4));

-- Location: IOOBUF_X36_Y81_N2
\X_i_out[3][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:1:stg2|out2_i_ff\(5),
	devoe => ww_devoe,
	o => ww_X_i_out(3)(5));

-- Location: IOOBUF_X36_Y81_N36
\X_i_out[3][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:1:stg2|out2_i_ff\(6),
	devoe => ww_devoe,
	o => ww_X_i_out(3)(6));

-- Location: IOOBUF_X89_Y25_N22
\X_i_out[3][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:1:stg2|out2_i_ff\(7),
	devoe => ww_devoe,
	o => ww_X_i_out(3)(7));

-- Location: IOOBUF_X89_Y25_N5
\X_i_out[3][8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:1:stg2|out2_i_ff\(8),
	devoe => ww_devoe,
	o => ww_X_i_out(3)(8));

-- Location: IOOBUF_X89_Y9_N56
\X_i_out[2][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:0:stg2|out2_i_ff\(0),
	devoe => ww_devoe,
	o => ww_X_i_out(2)(0));

-- Location: IOOBUF_X40_Y81_N2
\X_i_out[2][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:0:stg2|out2_i_ff\(1),
	devoe => ww_devoe,
	o => ww_X_i_out(2)(1));

-- Location: IOOBUF_X89_Y9_N22
\X_i_out[2][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:0:stg2|out2_i_ff\(2),
	devoe => ww_devoe,
	o => ww_X_i_out(2)(2));

-- Location: IOOBUF_X32_Y81_N2
\X_i_out[2][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:0:stg2|out2_i_ff\(3),
	devoe => ww_devoe,
	o => ww_X_i_out(2)(3));

-- Location: IOOBUF_X89_Y11_N79
\X_i_out[2][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:0:stg2|out2_i_ff\(4),
	devoe => ww_devoe,
	o => ww_X_i_out(2)(4));

-- Location: IOOBUF_X89_Y13_N39
\X_i_out[2][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:0:stg2|out2_i_ff\(5),
	devoe => ww_devoe,
	o => ww_X_i_out(2)(5));

-- Location: IOOBUF_X84_Y0_N2
\X_i_out[2][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:0:stg2|out2_i_ff\(6),
	devoe => ww_devoe,
	o => ww_X_i_out(2)(6));

-- Location: IOOBUF_X89_Y13_N22
\X_i_out[2][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:0:stg2|out2_i_ff\(7),
	devoe => ww_devoe,
	o => ww_X_i_out(2)(7));

-- Location: IOOBUF_X34_Y81_N76
\X_i_out[2][8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:0:stg2|out2_i_ff\(8),
	devoe => ww_devoe,
	o => ww_X_i_out(2)(8));

-- Location: IOOBUF_X89_Y13_N56
\X_i_out[1][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:1:stg2|out1_i_ff\(0),
	devoe => ww_devoe,
	o => ww_X_i_out(1)(0));

-- Location: IOOBUF_X89_Y15_N5
\X_i_out[1][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:1:stg2|out1_i_ff\(1),
	devoe => ww_devoe,
	o => ww_X_i_out(1)(1));

-- Location: IOOBUF_X89_Y16_N5
\X_i_out[1][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:1:stg2|out1_i_ff\(2),
	devoe => ww_devoe,
	o => ww_X_i_out(1)(2));

-- Location: IOOBUF_X89_Y16_N56
\X_i_out[1][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:1:stg2|out1_i_ff\(3),
	devoe => ww_devoe,
	o => ww_X_i_out(1)(3));

-- Location: IOOBUF_X89_Y16_N39
\X_i_out[1][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:1:stg2|out1_i_ff\(4),
	devoe => ww_devoe,
	o => ww_X_i_out(1)(4));

-- Location: IOOBUF_X89_Y15_N39
\X_i_out[1][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:1:stg2|out1_i_ff\(5),
	devoe => ww_devoe,
	o => ww_X_i_out(1)(5));

-- Location: IOOBUF_X89_Y15_N56
\X_i_out[1][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:1:stg2|out1_i_ff\(6),
	devoe => ww_devoe,
	o => ww_X_i_out(1)(6));

-- Location: IOOBUF_X89_Y15_N22
\X_i_out[1][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:1:stg2|out1_i_ff\(7),
	devoe => ww_devoe,
	o => ww_X_i_out(1)(7));

-- Location: IOOBUF_X89_Y6_N39
\X_i_out[1][8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:1:stg2|out1_i_ff\(8),
	devoe => ww_devoe,
	o => ww_X_i_out(1)(8));

-- Location: IOOBUF_X89_Y23_N39
\X_i_out[0][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:0:stg2|out1_i_ff\(0),
	devoe => ww_devoe,
	o => ww_X_i_out(0)(0));

-- Location: IOOBUF_X89_Y20_N45
\X_i_out[0][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:0:stg2|out1_i_ff\(1),
	devoe => ww_devoe,
	o => ww_X_i_out(0)(1));

-- Location: IOOBUF_X34_Y81_N93
\X_i_out[0][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:0:stg2|out1_i_ff\(2),
	devoe => ww_devoe,
	o => ww_X_i_out(0)(2));

-- Location: IOOBUF_X89_Y20_N79
\X_i_out[0][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:0:stg2|out1_i_ff\(3),
	devoe => ww_devoe,
	o => ww_X_i_out(0)(3));

-- Location: IOOBUF_X38_Y81_N53
\X_i_out[0][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:0:stg2|out1_i_ff\(4),
	devoe => ww_devoe,
	o => ww_X_i_out(0)(4));

-- Location: IOOBUF_X89_Y21_N39
\X_i_out[0][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:0:stg2|out1_i_ff\(5),
	devoe => ww_devoe,
	o => ww_X_i_out(0)(5));

-- Location: IOOBUF_X89_Y23_N56
\X_i_out[0][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:0:stg2|out1_i_ff\(6),
	devoe => ww_devoe,
	o => ww_X_i_out(0)(6));

-- Location: IOOBUF_X38_Y81_N2
\X_i_out[0][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:0:stg2|out1_i_ff\(7),
	devoe => ww_devoe,
	o => ww_X_i_out(0)(7));

-- Location: IOOBUF_X89_Y23_N5
\X_i_out[0][8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \butterfly_stage2:0:stg2|out1_i_ff\(8),
	devoe => ww_devoe,
	o => ww_X_i_out(0)(8));

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

-- Location: IOIBUF_X89_Y13_N4
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LABCELL_X83_Y15_N15
\butterfly_stage1:0:stg1|state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|state~0_combout\ = ( \butterfly_stage1:0:stg1|state~q\ & ( \reset~input_o\ ) ) # ( !\butterfly_stage1:0:stg1|state~q\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \butterfly_stage1:0:stg1|ALT_INV_state~q\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \butterfly_stage1:0:stg1|state~0_combout\);

-- Location: FF_X83_Y15_N17
\butterfly_stage1:0:stg1|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:0:stg1|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|state~q\);

-- Location: LABCELL_X83_Y15_N51
\butterfly_stage2:1:stg2|clk_div2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|clk_div2~0_combout\ = ( !\butterfly_stage1:0:stg1|state~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \butterfly_stage1:0:stg1|ALT_INV_state~q\,
	combout => \butterfly_stage2:1:stg2|clk_div2~0_combout\);

-- Location: FF_X83_Y15_N53
\butterfly_stage2:1:stg2|clk_div2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \butterfly_stage2:1:stg2|clk_div2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|clk_div2~q\);

-- Location: LABCELL_X83_Y15_N57
\butterfly_stage1:1:stg1|clk_div2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|clk_div2~0_combout\ = ( !\butterfly_stage1:0:stg1|state~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \butterfly_stage1:0:stg1|ALT_INV_state~q\,
	combout => \butterfly_stage1:1:stg1|clk_div2~0_combout\);

-- Location: FF_X83_Y15_N59
\butterfly_stage1:1:stg1|clk_div2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \butterfly_stage1:1:stg1|clk_div2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|clk_div2~q\);

-- Location: MLABCELL_X87_Y16_N24
\count[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \count[0]~1_combout\ = ( !count(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_count(0),
	combout => \count[0]~1_combout\);

-- Location: FF_X87_Y16_N26
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \count[0]~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => ALT_INV_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: MLABCELL_X87_Y16_N54
\count[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \count[1]~0_combout\ = ( count(2) & ( count(1) ) ) # ( !count(2) & ( !count(0) $ (!count(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(0),
	datad => ALT_INV_count(1),
	dataf => ALT_INV_count(2),
	combout => \count[1]~0_combout\);

-- Location: FF_X87_Y16_N55
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \count[1]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: MLABCELL_X87_Y16_N57
\Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = ( count(1) & ( !count(0) $ (!count(2)) ) ) # ( !count(1) & ( count(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(0),
	datad => ALT_INV_count(2),
	dataf => ALT_INV_count(1),
	combout => \Add0~0_combout\);

-- Location: FF_X87_Y16_N59
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~0_combout\,
	asdata => VCC,
	clrn => \ALT_INV_reset~input_o\,
	sload => count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: IOIBUF_X89_Y21_N55
\x_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(0),
	o => \x_in[0]~input_o\);

-- Location: IOIBUF_X89_Y21_N4
\x_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(1),
	o => \x_in[1]~input_o\);

-- Location: IOIBUF_X26_Y81_N75
\x_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(2),
	o => \x_in[2]~input_o\);

-- Location: IOIBUF_X84_Y0_N52
\x_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(3),
	o => \x_in[3]~input_o\);

-- Location: IOIBUF_X89_Y6_N4
\x_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(4),
	o => \x_in[4]~input_o\);

-- Location: IOIBUF_X89_Y21_N21
\x_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(5),
	o => \x_in[5]~input_o\);

-- Location: IOIBUF_X86_Y0_N18
\x_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(6),
	o => \x_in[6]~input_o\);

-- Location: IOIBUF_X89_Y20_N95
\x_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(7),
	o => \x_in[7]~input_o\);

-- Location: IOIBUF_X89_Y20_N61
\x_in[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(8),
	o => \x_in[8]~input_o\);

-- Location: DSP_X86_Y22_N0
\butterfly_stage1:1:stg1|mul|Mult2~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "0",
	ax_width => 18,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 15,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
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
	operation_mode => "m18x18_full",
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
	aclr => \butterfly_stage1:1:stg1|mul|Mult2~8_ACLR_bus\,
	clk => \butterfly_stage1:1:stg1|mul|Mult2~8_CLK_bus\,
	ena => \butterfly_stage1:1:stg1|mul|Mult2~8_ENA_bus\,
	ax => \butterfly_stage1:1:stg1|mul|Mult2~8_AX_bus\,
	ay => \butterfly_stage1:1:stg1|mul|Mult2~8_AY_bus\,
	resulta => \butterfly_stage1:1:stg1|mul|Mult2~8_RESULTA_bus\);

-- Location: LABCELL_X85_Y18_N18
\butterfly_stage1:1:stg1|mul|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|WideOr2~0_combout\ = ( !\butterfly_stage1:1:stg1|mul|Mult2~11\ & ( !\butterfly_stage1:1:stg1|mul|Mult2~12\ & ( (!\butterfly_stage1:1:stg1|mul|Mult2~10\ & (!\butterfly_stage1:1:stg1|mul|Mult2~9\ & 
-- !\butterfly_stage1:1:stg1|mul|Mult2~8_resulta\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~10\,
	datac => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~9\,
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~8_resulta\,
	datae => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~11\,
	dataf => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~12\,
	combout => \butterfly_stage1:1:stg1|mul|WideOr2~0_combout\);

-- Location: LABCELL_X85_Y18_N12
\butterfly_stage1:1:stg1|mul|WideOr2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|WideOr2~1_combout\ = ( !\butterfly_stage1:1:stg1|mul|Mult2~15\ & ( !\butterfly_stage1:1:stg1|mul|Mult2~17\ & ( (!\butterfly_stage1:1:stg1|mul|Mult2~16\ & (!\butterfly_stage1:1:stg1|mul|Mult2~14\ & 
-- !\butterfly_stage1:1:stg1|mul|Mult2~18\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~16\,
	datac => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~14\,
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~18\,
	datae => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~15\,
	dataf => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~17\,
	combout => \butterfly_stage1:1:stg1|mul|WideOr2~1_combout\);

-- Location: LABCELL_X85_Y18_N24
\butterfly_stage1:1:stg1|mul|WideOr2\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|WideOr2~combout\ = ( \butterfly_stage1:1:stg1|mul|Mult2~21\ & ( \butterfly_stage1:1:stg1|mul|WideOr2~1_combout\ ) ) # ( !\butterfly_stage1:1:stg1|mul|Mult2~21\ & ( \butterfly_stage1:1:stg1|mul|WideOr2~1_combout\ & ( 
-- (((!\butterfly_stage1:1:stg1|mul|WideOr2~0_combout\) # (\butterfly_stage1:1:stg1|mul|Mult2~20\)) # (\butterfly_stage1:1:stg1|mul|Mult2~19\)) # (\butterfly_stage1:1:stg1|mul|Mult2~13\) ) ) ) # ( \butterfly_stage1:1:stg1|mul|Mult2~21\ & ( 
-- !\butterfly_stage1:1:stg1|mul|WideOr2~1_combout\ ) ) # ( !\butterfly_stage1:1:stg1|mul|Mult2~21\ & ( !\butterfly_stage1:1:stg1|mul|WideOr2~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~13\,
	datab => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~19\,
	datac => \butterfly_stage1:1:stg1|mul|ALT_INV_WideOr2~0_combout\,
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~20\,
	datae => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~21\,
	dataf => \butterfly_stage1:1:stg1|mul|ALT_INV_WideOr2~1_combout\,
	combout => \butterfly_stage1:1:stg1|mul|WideOr2~combout\);

-- Location: LABCELL_X85_Y18_N30
\butterfly_stage1:1:stg1|mul|Add4~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|Add4~38_cout\ = CARRY(( \butterfly_stage1:1:stg1|mul|Mult2~31\ ) + ( \butterfly_stage1:1:stg1|mul|WideOr2~combout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:1:stg1|mul|ALT_INV_WideOr2~combout\,
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~31\,
	cin => GND,
	cout => \butterfly_stage1:1:stg1|mul|Add4~38_cout\);

-- Location: LABCELL_X85_Y18_N33
\butterfly_stage1:1:stg1|mul|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|Add4~1_sumout\ = SUM(( \butterfly_stage1:1:stg1|mul|Mult2~22\ ) + ( GND ) + ( \butterfly_stage1:1:stg1|mul|Add4~38_cout\ ))
-- \butterfly_stage1:1:stg1|mul|Add4~2\ = CARRY(( \butterfly_stage1:1:stg1|mul|Mult2~22\ ) + ( GND ) + ( \butterfly_stage1:1:stg1|mul|Add4~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~22\,
	cin => \butterfly_stage1:1:stg1|mul|Add4~38_cout\,
	sumout => \butterfly_stage1:1:stg1|mul|Add4~1_sumout\,
	cout => \butterfly_stage1:1:stg1|mul|Add4~2\);

-- Location: DSP_X86_Y18_N0
\butterfly_stage1:1:stg1|mul|Mult1~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "0",
	ax_width => 18,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 15,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
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
	operation_mode => "m18x18_full",
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
	aclr => \butterfly_stage1:1:stg1|mul|Mult1~8_ACLR_bus\,
	clk => \butterfly_stage1:1:stg1|mul|Mult1~8_CLK_bus\,
	ena => \butterfly_stage1:1:stg1|mul|Mult1~8_ENA_bus\,
	ax => \butterfly_stage1:1:stg1|mul|Mult1~8_AX_bus\,
	ay => \butterfly_stage1:1:stg1|mul|Mult1~8_AY_bus\,
	resulta => \butterfly_stage1:1:stg1|mul|Mult1~8_RESULTA_bus\);

-- Location: LABCELL_X85_Y18_N0
\butterfly_stage1:1:stg1|mul|WideOr1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|WideOr1~1_combout\ = ( !\butterfly_stage1:1:stg1|mul|Mult1~14\ & ( !\butterfly_stage1:1:stg1|mul|Mult1~16\ & ( (!\butterfly_stage1:1:stg1|mul|Mult1~17\ & (!\butterfly_stage1:1:stg1|mul|Mult1~18\ & 
-- !\butterfly_stage1:1:stg1|mul|Mult1~15\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~17\,
	datac => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~18\,
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~15\,
	datae => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~14\,
	dataf => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~16\,
	combout => \butterfly_stage1:1:stg1|mul|WideOr1~1_combout\);

-- Location: MLABCELL_X87_Y18_N0
\butterfly_stage1:1:stg1|mul|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|WideOr1~0_combout\ = ( !\butterfly_stage1:1:stg1|mul|Mult1~10\ & ( !\butterfly_stage1:1:stg1|mul|Mult1~9\ & ( (!\butterfly_stage1:1:stg1|mul|Mult1~8_resulta\ & (!\butterfly_stage1:1:stg1|mul|Mult1~11\ & 
-- !\butterfly_stage1:1:stg1|mul|Mult1~12\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~8_resulta\,
	datac => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~11\,
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~12\,
	datae => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~10\,
	dataf => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~9\,
	combout => \butterfly_stage1:1:stg1|mul|WideOr1~0_combout\);

-- Location: LABCELL_X85_Y18_N6
\butterfly_stage1:1:stg1|mul|WideOr1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|WideOr1~combout\ = ( \butterfly_stage1:1:stg1|mul|WideOr1~1_combout\ & ( \butterfly_stage1:1:stg1|mul|WideOr1~0_combout\ & ( (((\butterfly_stage1:1:stg1|mul|Mult1~13\) # (\butterfly_stage1:1:stg1|mul|Mult1~19\)) # 
-- (\butterfly_stage1:1:stg1|mul|Mult1~20\)) # (\butterfly_stage1:1:stg1|mul|Mult1~21\) ) ) ) # ( !\butterfly_stage1:1:stg1|mul|WideOr1~1_combout\ & ( \butterfly_stage1:1:stg1|mul|WideOr1~0_combout\ ) ) # ( \butterfly_stage1:1:stg1|mul|WideOr1~1_combout\ & ( 
-- !\butterfly_stage1:1:stg1|mul|WideOr1~0_combout\ ) ) # ( !\butterfly_stage1:1:stg1|mul|WideOr1~1_combout\ & ( !\butterfly_stage1:1:stg1|mul|WideOr1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~21\,
	datab => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~20\,
	datac => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~19\,
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~13\,
	datae => \butterfly_stage1:1:stg1|mul|ALT_INV_WideOr1~1_combout\,
	dataf => \butterfly_stage1:1:stg1|mul|ALT_INV_WideOr1~0_combout\,
	combout => \butterfly_stage1:1:stg1|mul|WideOr1~combout\);

-- Location: MLABCELL_X84_Y18_N0
\butterfly_stage1:1:stg1|mul|Add2~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|Add2~38_cout\ = CARRY(( \butterfly_stage1:1:stg1|mul|WideOr1~combout\ ) + ( \butterfly_stage1:1:stg1|mul|Mult1~32\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~32\,
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_WideOr1~combout\,
	cin => GND,
	cout => \butterfly_stage1:1:stg1|mul|Add2~38_cout\);

-- Location: MLABCELL_X84_Y18_N3
\butterfly_stage1:1:stg1|mul|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|Add2~1_sumout\ = SUM(( \butterfly_stage1:1:stg1|mul|Mult1~22\ ) + ( GND ) + ( \butterfly_stage1:1:stg1|mul|Add2~38_cout\ ))
-- \butterfly_stage1:1:stg1|mul|Add2~2\ = CARRY(( \butterfly_stage1:1:stg1|mul|Mult1~22\ ) + ( GND ) + ( \butterfly_stage1:1:stg1|mul|Add2~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~22\,
	cin => \butterfly_stage1:1:stg1|mul|Add2~38_cout\,
	sumout => \butterfly_stage1:1:stg1|mul|Add2~1_sumout\,
	cout => \butterfly_stage1:1:stg1|mul|Add2~2\);

-- Location: MLABCELL_X84_Y18_N30
\butterfly_stage1:1:stg1|mul|Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|Add5~1_sumout\ = SUM(( !\butterfly_stage1:1:stg1|mul|Add4~1_sumout\ $ (!\butterfly_stage1:1:stg1|mul|Add2~1_sumout\) ) + ( !VCC ) + ( !VCC ))
-- \butterfly_stage1:1:stg1|mul|Add5~2\ = CARRY(( !\butterfly_stage1:1:stg1|mul|Add4~1_sumout\ $ (!\butterfly_stage1:1:stg1|mul|Add2~1_sumout\) ) + ( !VCC ) + ( !VCC ))
-- \butterfly_stage1:1:stg1|mul|Add5~3\ = SHARE((!\butterfly_stage1:1:stg1|mul|Add2~1_sumout\) # (\butterfly_stage1:1:stg1|mul|Add4~1_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:1:stg1|mul|ALT_INV_Add4~1_sumout\,
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_Add2~1_sumout\,
	cin => GND,
	sharein => GND,
	sumout => \butterfly_stage1:1:stg1|mul|Add5~1_sumout\,
	cout => \butterfly_stage1:1:stg1|mul|Add5~2\,
	shareout => \butterfly_stage1:1:stg1|mul|Add5~3\);

-- Location: FF_X84_Y18_N31
\butterfly_stage1:1:stg1|mul|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:1:stg1|mul|Add5~1_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|mul|i\(0));

-- Location: MLABCELL_X84_Y18_N6
\butterfly_stage1:1:stg1|mul|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|Add2~5_sumout\ = SUM(( \butterfly_stage1:1:stg1|mul|Mult1~23\ ) + ( GND ) + ( \butterfly_stage1:1:stg1|mul|Add2~2\ ))
-- \butterfly_stage1:1:stg1|mul|Add2~6\ = CARRY(( \butterfly_stage1:1:stg1|mul|Mult1~23\ ) + ( GND ) + ( \butterfly_stage1:1:stg1|mul|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~23\,
	cin => \butterfly_stage1:1:stg1|mul|Add2~2\,
	sumout => \butterfly_stage1:1:stg1|mul|Add2~5_sumout\,
	cout => \butterfly_stage1:1:stg1|mul|Add2~6\);

-- Location: LABCELL_X85_Y18_N36
\butterfly_stage1:1:stg1|mul|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|Add4~5_sumout\ = SUM(( \butterfly_stage1:1:stg1|mul|Mult2~23\ ) + ( GND ) + ( \butterfly_stage1:1:stg1|mul|Add4~2\ ))
-- \butterfly_stage1:1:stg1|mul|Add4~6\ = CARRY(( \butterfly_stage1:1:stg1|mul|Mult2~23\ ) + ( GND ) + ( \butterfly_stage1:1:stg1|mul|Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~23\,
	cin => \butterfly_stage1:1:stg1|mul|Add4~2\,
	sumout => \butterfly_stage1:1:stg1|mul|Add4~5_sumout\,
	cout => \butterfly_stage1:1:stg1|mul|Add4~6\);

-- Location: MLABCELL_X84_Y18_N33
\butterfly_stage1:1:stg1|mul|Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|Add5~5_sumout\ = SUM(( !\butterfly_stage1:1:stg1|mul|Add2~5_sumout\ $ (\butterfly_stage1:1:stg1|mul|Add4~5_sumout\) ) + ( \butterfly_stage1:1:stg1|mul|Add5~3\ ) + ( \butterfly_stage1:1:stg1|mul|Add5~2\ ))
-- \butterfly_stage1:1:stg1|mul|Add5~6\ = CARRY(( !\butterfly_stage1:1:stg1|mul|Add2~5_sumout\ $ (\butterfly_stage1:1:stg1|mul|Add4~5_sumout\) ) + ( \butterfly_stage1:1:stg1|mul|Add5~3\ ) + ( \butterfly_stage1:1:stg1|mul|Add5~2\ ))
-- \butterfly_stage1:1:stg1|mul|Add5~7\ = SHARE((!\butterfly_stage1:1:stg1|mul|Add2~5_sumout\ & \butterfly_stage1:1:stg1|mul|Add4~5_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:1:stg1|mul|ALT_INV_Add2~5_sumout\,
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_Add4~5_sumout\,
	cin => \butterfly_stage1:1:stg1|mul|Add5~2\,
	sharein => \butterfly_stage1:1:stg1|mul|Add5~3\,
	sumout => \butterfly_stage1:1:stg1|mul|Add5~5_sumout\,
	cout => \butterfly_stage1:1:stg1|mul|Add5~6\,
	shareout => \butterfly_stage1:1:stg1|mul|Add5~7\);

-- Location: FF_X84_Y18_N34
\butterfly_stage1:1:stg1|mul|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:1:stg1|mul|Add5~5_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|mul|i\(1));

-- Location: LABCELL_X85_Y16_N0
\butterfly_stage1:1:stg1|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|Add3~1_sumout\ = SUM(( !\butterfly_stage1:1:stg1|mul|i\(0) ) + ( !\butterfly_stage1:1:stg1|mul|i\(1) ) + ( !VCC ))
-- \butterfly_stage1:1:stg1|Add3~2\ = CARRY(( !\butterfly_stage1:1:stg1|mul|i\(0) ) + ( !\butterfly_stage1:1:stg1|mul|i\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:1:stg1|mul|ALT_INV_i\(1),
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_i\(0),
	cin => GND,
	sumout => \butterfly_stage1:1:stg1|Add3~1_sumout\,
	cout => \butterfly_stage1:1:stg1|Add3~2\);

-- Location: MLABCELL_X84_Y18_N9
\butterfly_stage1:1:stg1|mul|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|Add2~9_sumout\ = SUM(( \butterfly_stage1:1:stg1|mul|Mult1~24\ ) + ( GND ) + ( \butterfly_stage1:1:stg1|mul|Add2~6\ ))
-- \butterfly_stage1:1:stg1|mul|Add2~10\ = CARRY(( \butterfly_stage1:1:stg1|mul|Mult1~24\ ) + ( GND ) + ( \butterfly_stage1:1:stg1|mul|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~24\,
	cin => \butterfly_stage1:1:stg1|mul|Add2~6\,
	sumout => \butterfly_stage1:1:stg1|mul|Add2~9_sumout\,
	cout => \butterfly_stage1:1:stg1|mul|Add2~10\);

-- Location: LABCELL_X85_Y18_N39
\butterfly_stage1:1:stg1|mul|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|Add4~9_sumout\ = SUM(( \butterfly_stage1:1:stg1|mul|Mult2~24\ ) + ( GND ) + ( \butterfly_stage1:1:stg1|mul|Add4~6\ ))
-- \butterfly_stage1:1:stg1|mul|Add4~10\ = CARRY(( \butterfly_stage1:1:stg1|mul|Mult2~24\ ) + ( GND ) + ( \butterfly_stage1:1:stg1|mul|Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~24\,
	cin => \butterfly_stage1:1:stg1|mul|Add4~6\,
	sumout => \butterfly_stage1:1:stg1|mul|Add4~9_sumout\,
	cout => \butterfly_stage1:1:stg1|mul|Add4~10\);

-- Location: MLABCELL_X84_Y18_N36
\butterfly_stage1:1:stg1|mul|Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|Add5~9_sumout\ = SUM(( !\butterfly_stage1:1:stg1|mul|Add2~9_sumout\ $ (\butterfly_stage1:1:stg1|mul|Add4~9_sumout\) ) + ( \butterfly_stage1:1:stg1|mul|Add5~7\ ) + ( \butterfly_stage1:1:stg1|mul|Add5~6\ ))
-- \butterfly_stage1:1:stg1|mul|Add5~10\ = CARRY(( !\butterfly_stage1:1:stg1|mul|Add2~9_sumout\ $ (\butterfly_stage1:1:stg1|mul|Add4~9_sumout\) ) + ( \butterfly_stage1:1:stg1|mul|Add5~7\ ) + ( \butterfly_stage1:1:stg1|mul|Add5~6\ ))
-- \butterfly_stage1:1:stg1|mul|Add5~11\ = SHARE((!\butterfly_stage1:1:stg1|mul|Add2~9_sumout\ & \butterfly_stage1:1:stg1|mul|Add4~9_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage1:1:stg1|mul|ALT_INV_Add2~9_sumout\,
	datac => \butterfly_stage1:1:stg1|mul|ALT_INV_Add4~9_sumout\,
	cin => \butterfly_stage1:1:stg1|mul|Add5~6\,
	sharein => \butterfly_stage1:1:stg1|mul|Add5~7\,
	sumout => \butterfly_stage1:1:stg1|mul|Add5~9_sumout\,
	cout => \butterfly_stage1:1:stg1|mul|Add5~10\,
	shareout => \butterfly_stage1:1:stg1|mul|Add5~11\);

-- Location: FF_X84_Y18_N37
\butterfly_stage1:1:stg1|mul|i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:1:stg1|mul|Add5~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|mul|i\(2));

-- Location: LABCELL_X85_Y16_N3
\butterfly_stage1:1:stg1|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|Add3~5_sumout\ = SUM(( !\butterfly_stage1:1:stg1|mul|i\(2) ) + ( GND ) + ( \butterfly_stage1:1:stg1|Add3~2\ ))
-- \butterfly_stage1:1:stg1|Add3~6\ = CARRY(( !\butterfly_stage1:1:stg1|mul|i\(2) ) + ( GND ) + ( \butterfly_stage1:1:stg1|Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_i\(2),
	cin => \butterfly_stage1:1:stg1|Add3~2\,
	sumout => \butterfly_stage1:1:stg1|Add3~5_sumout\,
	cout => \butterfly_stage1:1:stg1|Add3~6\);

-- Location: MLABCELL_X84_Y18_N12
\butterfly_stage1:1:stg1|mul|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|Add2~13_sumout\ = SUM(( \butterfly_stage1:1:stg1|mul|Mult1~25\ ) + ( GND ) + ( \butterfly_stage1:1:stg1|mul|Add2~10\ ))
-- \butterfly_stage1:1:stg1|mul|Add2~14\ = CARRY(( \butterfly_stage1:1:stg1|mul|Mult1~25\ ) + ( GND ) + ( \butterfly_stage1:1:stg1|mul|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~25\,
	cin => \butterfly_stage1:1:stg1|mul|Add2~10\,
	sumout => \butterfly_stage1:1:stg1|mul|Add2~13_sumout\,
	cout => \butterfly_stage1:1:stg1|mul|Add2~14\);

-- Location: LABCELL_X85_Y18_N42
\butterfly_stage1:1:stg1|mul|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|Add4~13_sumout\ = SUM(( \butterfly_stage1:1:stg1|mul|Mult2~25\ ) + ( GND ) + ( \butterfly_stage1:1:stg1|mul|Add4~10\ ))
-- \butterfly_stage1:1:stg1|mul|Add4~14\ = CARRY(( \butterfly_stage1:1:stg1|mul|Mult2~25\ ) + ( GND ) + ( \butterfly_stage1:1:stg1|mul|Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~25\,
	cin => \butterfly_stage1:1:stg1|mul|Add4~10\,
	sumout => \butterfly_stage1:1:stg1|mul|Add4~13_sumout\,
	cout => \butterfly_stage1:1:stg1|mul|Add4~14\);

-- Location: MLABCELL_X84_Y18_N39
\butterfly_stage1:1:stg1|mul|Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|Add5~13_sumout\ = SUM(( !\butterfly_stage1:1:stg1|mul|Add2~13_sumout\ $ (\butterfly_stage1:1:stg1|mul|Add4~13_sumout\) ) + ( \butterfly_stage1:1:stg1|mul|Add5~11\ ) + ( \butterfly_stage1:1:stg1|mul|Add5~10\ ))
-- \butterfly_stage1:1:stg1|mul|Add5~14\ = CARRY(( !\butterfly_stage1:1:stg1|mul|Add2~13_sumout\ $ (\butterfly_stage1:1:stg1|mul|Add4~13_sumout\) ) + ( \butterfly_stage1:1:stg1|mul|Add5~11\ ) + ( \butterfly_stage1:1:stg1|mul|Add5~10\ ))
-- \butterfly_stage1:1:stg1|mul|Add5~15\ = SHARE((!\butterfly_stage1:1:stg1|mul|Add2~13_sumout\ & \butterfly_stage1:1:stg1|mul|Add4~13_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:1:stg1|mul|ALT_INV_Add2~13_sumout\,
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_Add4~13_sumout\,
	cin => \butterfly_stage1:1:stg1|mul|Add5~10\,
	sharein => \butterfly_stage1:1:stg1|mul|Add5~11\,
	sumout => \butterfly_stage1:1:stg1|mul|Add5~13_sumout\,
	cout => \butterfly_stage1:1:stg1|mul|Add5~14\,
	shareout => \butterfly_stage1:1:stg1|mul|Add5~15\);

-- Location: FF_X84_Y18_N41
\butterfly_stage1:1:stg1|mul|i[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:1:stg1|mul|Add5~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|mul|i[3]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y16_N6
\butterfly_stage1:1:stg1|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|Add3~9_sumout\ = SUM(( !\butterfly_stage1:1:stg1|mul|i[3]~DUPLICATE_q\ ) + ( GND ) + ( \butterfly_stage1:1:stg1|Add3~6\ ))
-- \butterfly_stage1:1:stg1|Add3~10\ = CARRY(( !\butterfly_stage1:1:stg1|mul|i[3]~DUPLICATE_q\ ) + ( GND ) + ( \butterfly_stage1:1:stg1|Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:1:stg1|mul|ALT_INV_i[3]~DUPLICATE_q\,
	cin => \butterfly_stage1:1:stg1|Add3~6\,
	sumout => \butterfly_stage1:1:stg1|Add3~9_sumout\,
	cout => \butterfly_stage1:1:stg1|Add3~10\);

-- Location: MLABCELL_X84_Y18_N15
\butterfly_stage1:1:stg1|mul|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|Add2~17_sumout\ = SUM(( \butterfly_stage1:1:stg1|mul|Mult1~26\ ) + ( GND ) + ( \butterfly_stage1:1:stg1|mul|Add2~14\ ))
-- \butterfly_stage1:1:stg1|mul|Add2~18\ = CARRY(( \butterfly_stage1:1:stg1|mul|Mult1~26\ ) + ( GND ) + ( \butterfly_stage1:1:stg1|mul|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~26\,
	cin => \butterfly_stage1:1:stg1|mul|Add2~14\,
	sumout => \butterfly_stage1:1:stg1|mul|Add2~17_sumout\,
	cout => \butterfly_stage1:1:stg1|mul|Add2~18\);

-- Location: LABCELL_X85_Y18_N45
\butterfly_stage1:1:stg1|mul|Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|Add4~17_sumout\ = SUM(( \butterfly_stage1:1:stg1|mul|Mult2~26\ ) + ( GND ) + ( \butterfly_stage1:1:stg1|mul|Add4~14\ ))
-- \butterfly_stage1:1:stg1|mul|Add4~18\ = CARRY(( \butterfly_stage1:1:stg1|mul|Mult2~26\ ) + ( GND ) + ( \butterfly_stage1:1:stg1|mul|Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~26\,
	cin => \butterfly_stage1:1:stg1|mul|Add4~14\,
	sumout => \butterfly_stage1:1:stg1|mul|Add4~17_sumout\,
	cout => \butterfly_stage1:1:stg1|mul|Add4~18\);

-- Location: MLABCELL_X84_Y18_N42
\butterfly_stage1:1:stg1|mul|Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|Add5~17_sumout\ = SUM(( !\butterfly_stage1:1:stg1|mul|Add2~17_sumout\ $ (\butterfly_stage1:1:stg1|mul|Add4~17_sumout\) ) + ( \butterfly_stage1:1:stg1|mul|Add5~15\ ) + ( \butterfly_stage1:1:stg1|mul|Add5~14\ ))
-- \butterfly_stage1:1:stg1|mul|Add5~18\ = CARRY(( !\butterfly_stage1:1:stg1|mul|Add2~17_sumout\ $ (\butterfly_stage1:1:stg1|mul|Add4~17_sumout\) ) + ( \butterfly_stage1:1:stg1|mul|Add5~15\ ) + ( \butterfly_stage1:1:stg1|mul|Add5~14\ ))
-- \butterfly_stage1:1:stg1|mul|Add5~19\ = SHARE((!\butterfly_stage1:1:stg1|mul|Add2~17_sumout\ & \butterfly_stage1:1:stg1|mul|Add4~17_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage1:1:stg1|mul|ALT_INV_Add2~17_sumout\,
	datac => \butterfly_stage1:1:stg1|mul|ALT_INV_Add4~17_sumout\,
	cin => \butterfly_stage1:1:stg1|mul|Add5~14\,
	sharein => \butterfly_stage1:1:stg1|mul|Add5~15\,
	sumout => \butterfly_stage1:1:stg1|mul|Add5~17_sumout\,
	cout => \butterfly_stage1:1:stg1|mul|Add5~18\,
	shareout => \butterfly_stage1:1:stg1|mul|Add5~19\);

-- Location: FF_X84_Y18_N43
\butterfly_stage1:1:stg1|mul|i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:1:stg1|mul|Add5~17_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|mul|i\(4));

-- Location: LABCELL_X85_Y16_N9
\butterfly_stage1:1:stg1|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|Add3~13_sumout\ = SUM(( !\butterfly_stage1:1:stg1|mul|i\(4) ) + ( GND ) + ( \butterfly_stage1:1:stg1|Add3~10\ ))
-- \butterfly_stage1:1:stg1|Add3~14\ = CARRY(( !\butterfly_stage1:1:stg1|mul|i\(4) ) + ( GND ) + ( \butterfly_stage1:1:stg1|Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_i\(4),
	cin => \butterfly_stage1:1:stg1|Add3~10\,
	sumout => \butterfly_stage1:1:stg1|Add3~13_sumout\,
	cout => \butterfly_stage1:1:stg1|Add3~14\);

-- Location: MLABCELL_X84_Y18_N18
\butterfly_stage1:1:stg1|mul|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|Add2~21_sumout\ = SUM(( \butterfly_stage1:1:stg1|mul|Mult1~27\ ) + ( GND ) + ( \butterfly_stage1:1:stg1|mul|Add2~18\ ))
-- \butterfly_stage1:1:stg1|mul|Add2~22\ = CARRY(( \butterfly_stage1:1:stg1|mul|Mult1~27\ ) + ( GND ) + ( \butterfly_stage1:1:stg1|mul|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~27\,
	cin => \butterfly_stage1:1:stg1|mul|Add2~18\,
	sumout => \butterfly_stage1:1:stg1|mul|Add2~21_sumout\,
	cout => \butterfly_stage1:1:stg1|mul|Add2~22\);

-- Location: LABCELL_X85_Y18_N48
\butterfly_stage1:1:stg1|mul|Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|Add4~21_sumout\ = SUM(( \butterfly_stage1:1:stg1|mul|Mult2~27\ ) + ( GND ) + ( \butterfly_stage1:1:stg1|mul|Add4~18\ ))
-- \butterfly_stage1:1:stg1|mul|Add4~22\ = CARRY(( \butterfly_stage1:1:stg1|mul|Mult2~27\ ) + ( GND ) + ( \butterfly_stage1:1:stg1|mul|Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~27\,
	cin => \butterfly_stage1:1:stg1|mul|Add4~18\,
	sumout => \butterfly_stage1:1:stg1|mul|Add4~21_sumout\,
	cout => \butterfly_stage1:1:stg1|mul|Add4~22\);

-- Location: MLABCELL_X84_Y18_N45
\butterfly_stage1:1:stg1|mul|Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|Add5~21_sumout\ = SUM(( !\butterfly_stage1:1:stg1|mul|Add2~21_sumout\ $ (\butterfly_stage1:1:stg1|mul|Add4~21_sumout\) ) + ( \butterfly_stage1:1:stg1|mul|Add5~19\ ) + ( \butterfly_stage1:1:stg1|mul|Add5~18\ ))
-- \butterfly_stage1:1:stg1|mul|Add5~22\ = CARRY(( !\butterfly_stage1:1:stg1|mul|Add2~21_sumout\ $ (\butterfly_stage1:1:stg1|mul|Add4~21_sumout\) ) + ( \butterfly_stage1:1:stg1|mul|Add5~19\ ) + ( \butterfly_stage1:1:stg1|mul|Add5~18\ ))
-- \butterfly_stage1:1:stg1|mul|Add5~23\ = SHARE((!\butterfly_stage1:1:stg1|mul|Add2~21_sumout\ & \butterfly_stage1:1:stg1|mul|Add4~21_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage1:1:stg1|mul|ALT_INV_Add2~21_sumout\,
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_Add4~21_sumout\,
	cin => \butterfly_stage1:1:stg1|mul|Add5~18\,
	sharein => \butterfly_stage1:1:stg1|mul|Add5~19\,
	sumout => \butterfly_stage1:1:stg1|mul|Add5~21_sumout\,
	cout => \butterfly_stage1:1:stg1|mul|Add5~22\,
	shareout => \butterfly_stage1:1:stg1|mul|Add5~23\);

-- Location: FF_X84_Y18_N46
\butterfly_stage1:1:stg1|mul|i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:1:stg1|mul|Add5~21_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|mul|i\(5));

-- Location: LABCELL_X85_Y16_N12
\butterfly_stage1:1:stg1|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|Add3~17_sumout\ = SUM(( !\butterfly_stage1:1:stg1|mul|i\(5) ) + ( GND ) + ( \butterfly_stage1:1:stg1|Add3~14\ ))
-- \butterfly_stage1:1:stg1|Add3~18\ = CARRY(( !\butterfly_stage1:1:stg1|mul|i\(5) ) + ( GND ) + ( \butterfly_stage1:1:stg1|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:1:stg1|mul|ALT_INV_i\(5),
	cin => \butterfly_stage1:1:stg1|Add3~14\,
	sumout => \butterfly_stage1:1:stg1|Add3~17_sumout\,
	cout => \butterfly_stage1:1:stg1|Add3~18\);

-- Location: LABCELL_X85_Y18_N51
\butterfly_stage1:1:stg1|mul|Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|Add4~25_sumout\ = SUM(( \butterfly_stage1:1:stg1|mul|Mult2~28\ ) + ( GND ) + ( \butterfly_stage1:1:stg1|mul|Add4~22\ ))
-- \butterfly_stage1:1:stg1|mul|Add4~26\ = CARRY(( \butterfly_stage1:1:stg1|mul|Mult2~28\ ) + ( GND ) + ( \butterfly_stage1:1:stg1|mul|Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~28\,
	cin => \butterfly_stage1:1:stg1|mul|Add4~22\,
	sumout => \butterfly_stage1:1:stg1|mul|Add4~25_sumout\,
	cout => \butterfly_stage1:1:stg1|mul|Add4~26\);

-- Location: MLABCELL_X84_Y18_N21
\butterfly_stage1:1:stg1|mul|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|Add2~25_sumout\ = SUM(( \butterfly_stage1:1:stg1|mul|Mult1~28\ ) + ( GND ) + ( \butterfly_stage1:1:stg1|mul|Add2~22\ ))
-- \butterfly_stage1:1:stg1|mul|Add2~26\ = CARRY(( \butterfly_stage1:1:stg1|mul|Mult1~28\ ) + ( GND ) + ( \butterfly_stage1:1:stg1|mul|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~28\,
	cin => \butterfly_stage1:1:stg1|mul|Add2~22\,
	sumout => \butterfly_stage1:1:stg1|mul|Add2~25_sumout\,
	cout => \butterfly_stage1:1:stg1|mul|Add2~26\);

-- Location: MLABCELL_X84_Y18_N48
\butterfly_stage1:1:stg1|mul|Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|Add5~25_sumout\ = SUM(( !\butterfly_stage1:1:stg1|mul|Add4~25_sumout\ $ (\butterfly_stage1:1:stg1|mul|Add2~25_sumout\) ) + ( \butterfly_stage1:1:stg1|mul|Add5~23\ ) + ( \butterfly_stage1:1:stg1|mul|Add5~22\ ))
-- \butterfly_stage1:1:stg1|mul|Add5~26\ = CARRY(( !\butterfly_stage1:1:stg1|mul|Add4~25_sumout\ $ (\butterfly_stage1:1:stg1|mul|Add2~25_sumout\) ) + ( \butterfly_stage1:1:stg1|mul|Add5~23\ ) + ( \butterfly_stage1:1:stg1|mul|Add5~22\ ))
-- \butterfly_stage1:1:stg1|mul|Add5~27\ = SHARE((\butterfly_stage1:1:stg1|mul|Add4~25_sumout\ & !\butterfly_stage1:1:stg1|mul|Add2~25_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:1:stg1|mul|ALT_INV_Add4~25_sumout\,
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_Add2~25_sumout\,
	cin => \butterfly_stage1:1:stg1|mul|Add5~22\,
	sharein => \butterfly_stage1:1:stg1|mul|Add5~23\,
	sumout => \butterfly_stage1:1:stg1|mul|Add5~25_sumout\,
	cout => \butterfly_stage1:1:stg1|mul|Add5~26\,
	shareout => \butterfly_stage1:1:stg1|mul|Add5~27\);

-- Location: FF_X84_Y18_N49
\butterfly_stage1:1:stg1|mul|i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:1:stg1|mul|Add5~25_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|mul|i\(6));

-- Location: LABCELL_X85_Y16_N15
\butterfly_stage1:1:stg1|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|Add3~21_sumout\ = SUM(( !\butterfly_stage1:1:stg1|mul|i\(6) ) + ( GND ) + ( \butterfly_stage1:1:stg1|Add3~18\ ))
-- \butterfly_stage1:1:stg1|Add3~22\ = CARRY(( !\butterfly_stage1:1:stg1|mul|i\(6) ) + ( GND ) + ( \butterfly_stage1:1:stg1|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_i\(6),
	cin => \butterfly_stage1:1:stg1|Add3~18\,
	sumout => \butterfly_stage1:1:stg1|Add3~21_sumout\,
	cout => \butterfly_stage1:1:stg1|Add3~22\);

-- Location: MLABCELL_X84_Y18_N24
\butterfly_stage1:1:stg1|mul|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|Add2~29_sumout\ = SUM(( \butterfly_stage1:1:stg1|mul|Mult1~29\ ) + ( GND ) + ( \butterfly_stage1:1:stg1|mul|Add2~26\ ))
-- \butterfly_stage1:1:stg1|mul|Add2~30\ = CARRY(( \butterfly_stage1:1:stg1|mul|Mult1~29\ ) + ( GND ) + ( \butterfly_stage1:1:stg1|mul|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~29\,
	cin => \butterfly_stage1:1:stg1|mul|Add2~26\,
	sumout => \butterfly_stage1:1:stg1|mul|Add2~29_sumout\,
	cout => \butterfly_stage1:1:stg1|mul|Add2~30\);

-- Location: LABCELL_X85_Y18_N54
\butterfly_stage1:1:stg1|mul|Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|Add4~29_sumout\ = SUM(( \butterfly_stage1:1:stg1|mul|Mult2~29\ ) + ( GND ) + ( \butterfly_stage1:1:stg1|mul|Add4~26\ ))
-- \butterfly_stage1:1:stg1|mul|Add4~30\ = CARRY(( \butterfly_stage1:1:stg1|mul|Mult2~29\ ) + ( GND ) + ( \butterfly_stage1:1:stg1|mul|Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~29\,
	cin => \butterfly_stage1:1:stg1|mul|Add4~26\,
	sumout => \butterfly_stage1:1:stg1|mul|Add4~29_sumout\,
	cout => \butterfly_stage1:1:stg1|mul|Add4~30\);

-- Location: MLABCELL_X84_Y18_N51
\butterfly_stage1:1:stg1|mul|Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|Add5~29_sumout\ = SUM(( !\butterfly_stage1:1:stg1|mul|Add2~29_sumout\ $ (\butterfly_stage1:1:stg1|mul|Add4~29_sumout\) ) + ( \butterfly_stage1:1:stg1|mul|Add5~27\ ) + ( \butterfly_stage1:1:stg1|mul|Add5~26\ ))
-- \butterfly_stage1:1:stg1|mul|Add5~30\ = CARRY(( !\butterfly_stage1:1:stg1|mul|Add2~29_sumout\ $ (\butterfly_stage1:1:stg1|mul|Add4~29_sumout\) ) + ( \butterfly_stage1:1:stg1|mul|Add5~27\ ) + ( \butterfly_stage1:1:stg1|mul|Add5~26\ ))
-- \butterfly_stage1:1:stg1|mul|Add5~31\ = SHARE((!\butterfly_stage1:1:stg1|mul|Add2~29_sumout\ & \butterfly_stage1:1:stg1|mul|Add4~29_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:1:stg1|mul|ALT_INV_Add2~29_sumout\,
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_Add4~29_sumout\,
	cin => \butterfly_stage1:1:stg1|mul|Add5~26\,
	sharein => \butterfly_stage1:1:stg1|mul|Add5~27\,
	sumout => \butterfly_stage1:1:stg1|mul|Add5~29_sumout\,
	cout => \butterfly_stage1:1:stg1|mul|Add5~30\,
	shareout => \butterfly_stage1:1:stg1|mul|Add5~31\);

-- Location: FF_X84_Y18_N52
\butterfly_stage1:1:stg1|mul|i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:1:stg1|mul|Add5~29_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|mul|i\(7));

-- Location: LABCELL_X85_Y16_N18
\butterfly_stage1:1:stg1|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|Add3~25_sumout\ = SUM(( !\butterfly_stage1:1:stg1|mul|i\(7) ) + ( GND ) + ( \butterfly_stage1:1:stg1|Add3~22\ ))
-- \butterfly_stage1:1:stg1|Add3~26\ = CARRY(( !\butterfly_stage1:1:stg1|mul|i\(7) ) + ( GND ) + ( \butterfly_stage1:1:stg1|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_i\(7),
	cin => \butterfly_stage1:1:stg1|Add3~22\,
	sumout => \butterfly_stage1:1:stg1|Add3~25_sumout\,
	cout => \butterfly_stage1:1:stg1|Add3~26\);

-- Location: MLABCELL_X84_Y18_N27
\butterfly_stage1:1:stg1|mul|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|Add2~33_sumout\ = SUM(( \butterfly_stage1:1:stg1|mul|Mult1~30\ ) + ( GND ) + ( \butterfly_stage1:1:stg1|mul|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult1~30\,
	cin => \butterfly_stage1:1:stg1|mul|Add2~30\,
	sumout => \butterfly_stage1:1:stg1|mul|Add2~33_sumout\);

-- Location: LABCELL_X85_Y18_N57
\butterfly_stage1:1:stg1|mul|Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|Add4~33_sumout\ = SUM(( \butterfly_stage1:1:stg1|mul|Mult2~30\ ) + ( GND ) + ( \butterfly_stage1:1:stg1|mul|Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult2~30\,
	cin => \butterfly_stage1:1:stg1|mul|Add4~30\,
	sumout => \butterfly_stage1:1:stg1|mul|Add4~33_sumout\);

-- Location: MLABCELL_X84_Y18_N54
\butterfly_stage1:1:stg1|mul|Add5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|Add5~33_sumout\ = SUM(( !\butterfly_stage1:1:stg1|mul|Add2~33_sumout\ $ (\butterfly_stage1:1:stg1|mul|Add4~33_sumout\) ) + ( \butterfly_stage1:1:stg1|mul|Add5~31\ ) + ( \butterfly_stage1:1:stg1|mul|Add5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:1:stg1|mul|ALT_INV_Add2~33_sumout\,
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_Add4~33_sumout\,
	cin => \butterfly_stage1:1:stg1|mul|Add5~30\,
	sharein => \butterfly_stage1:1:stg1|mul|Add5~31\,
	sumout => \butterfly_stage1:1:stg1|mul|Add5~33_sumout\);

-- Location: FF_X84_Y18_N55
\butterfly_stage1:1:stg1|mul|i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:1:stg1|mul|Add5~33_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|mul|i\(8));

-- Location: LABCELL_X85_Y16_N21
\butterfly_stage1:1:stg1|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|Add3~29_sumout\ = SUM(( !\butterfly_stage1:1:stg1|mul|i\(8) ) + ( GND ) + ( \butterfly_stage1:1:stg1|Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_i\(8),
	cin => \butterfly_stage1:1:stg1|Add3~26\,
	sumout => \butterfly_stage1:1:stg1|Add3~29_sumout\);

-- Location: DSP_X86_Y16_N0
\butterfly_stage2:1:stg2|mul|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "0",
	ax_width => 18,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 15,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
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
	operation_mode => "m18x18_full",
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
	aclr => \butterfly_stage2:1:stg2|mul|Mult0~8_ACLR_bus\,
	clk => \butterfly_stage2:1:stg2|mul|Mult0~8_CLK_bus\,
	ena => \butterfly_stage2:1:stg2|mul|Mult0~8_ENA_bus\,
	ax => \butterfly_stage2:1:stg2|mul|Mult0~8_AX_bus\,
	ay => \butterfly_stage2:1:stg2|mul|Mult0~8_AY_bus\,
	resulta => \butterfly_stage2:1:stg2|mul|Mult0~8_RESULTA_bus\);

-- Location: FF_X87_Y18_N8
\x[3][0]~_Duplicate_2\ : dffeas
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
	ena => ALT_INV_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[3][0]~_Duplicate_2_q\);

-- Location: MLABCELL_X87_Y18_N30
\x[2][0]~_Duplicate_2feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[2][0]~_Duplicate_2feeder_combout\ = \x[3][0]~_Duplicate_2_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x[3][0]~_Duplicate_2_q\,
	combout => \x[2][0]~_Duplicate_2feeder_combout\);

-- Location: FF_X87_Y18_N31
\x[2][0]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x[2][0]~_Duplicate_2feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => ALT_INV_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[2][0]~_Duplicate_2_q\);

-- Location: FF_X83_Y16_N37
\x[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[2][0]~_Duplicate_2_q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => ALT_INV_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[1][0]~q\);

-- Location: DSP_X54_Y16_N0
\butterfly_stage1:1:stg1|mul|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 15,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
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
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \butterfly_stage1:1:stg1|mul|Mult0~8_AX_bus\,
	ay => \butterfly_stage1:1:stg1|mul|Mult0~8_AY_bus\,
	resulta => \butterfly_stage1:1:stg1|mul|Mult0~8_RESULTA_bus\);

-- Location: MLABCELL_X84_Y16_N0
\butterfly_stage1:1:stg1|mul|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|Add3~1_sumout\ = SUM(( \butterfly_stage1:1:stg1|mul|Add2~1_sumout\ ) + ( \butterfly_stage1:1:stg1|mul|Mult0~22\ ) + ( !VCC ))
-- \butterfly_stage1:1:stg1|mul|Add3~2\ = CARRY(( \butterfly_stage1:1:stg1|mul|Add2~1_sumout\ ) + ( \butterfly_stage1:1:stg1|mul|Mult0~22\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult0~22\,
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_Add2~1_sumout\,
	cin => GND,
	sumout => \butterfly_stage1:1:stg1|mul|Add3~1_sumout\,
	cout => \butterfly_stage1:1:stg1|mul|Add3~2\);

-- Location: FF_X84_Y16_N2
\butterfly_stage1:1:stg1|mul|r[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:1:stg1|mul|Add3~1_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|mul|r[0]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y16_N30
\butterfly_stage1:1:stg1|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|Add2~1_sumout\ = SUM(( !\x[1][0]~q\ $ (!\butterfly_stage1:1:stg1|mul|r[0]~DUPLICATE_q\) ) + ( !VCC ) + ( !VCC ))
-- \butterfly_stage1:1:stg1|Add2~2\ = CARRY(( !\x[1][0]~q\ $ (!\butterfly_stage1:1:stg1|mul|r[0]~DUPLICATE_q\) ) + ( !VCC ) + ( !VCC ))
-- \butterfly_stage1:1:stg1|Add2~3\ = SHARE((!\butterfly_stage1:1:stg1|mul|r[0]~DUPLICATE_q\) # (\x[1][0]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x[1][0]~q\,
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_r[0]~DUPLICATE_q\,
	cin => GND,
	sharein => GND,
	sumout => \butterfly_stage1:1:stg1|Add2~1_sumout\,
	cout => \butterfly_stage1:1:stg1|Add2~2\,
	shareout => \butterfly_stage1:1:stg1|Add2~3\);

-- Location: FF_X84_Y16_N31
\butterfly_stage1:1:stg1|out2_r_ff[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:1:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:1:stg1|Add2~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|out2_r_ff[0]~_Duplicate_1_q\);

-- Location: FF_X85_Y16_N31
\butterfly_stage1:1:stg1|out1_i_ff[0]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:1:stg1|ALT_INV_clk_div2~q\,
	asdata => \butterfly_stage1:1:stg1|mul|i\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|out1_i_ff[0]~_Duplicate_2_q\);

-- Location: LABCELL_X85_Y16_N30
\butterfly_stage2:1:stg2|mul|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add1~1_sumout\ = SUM(( !\butterfly_stage1:1:stg1|out2_r_ff[0]~_Duplicate_1_q\ $ (!\butterfly_stage1:1:stg1|out1_i_ff[0]~_Duplicate_2_q\) ) + ( !VCC ) + ( !VCC ))
-- \butterfly_stage2:1:stg2|mul|Add1~2\ = CARRY(( !\butterfly_stage1:1:stg1|out2_r_ff[0]~_Duplicate_1_q\ $ (!\butterfly_stage1:1:stg1|out1_i_ff[0]~_Duplicate_2_q\) ) + ( !VCC ) + ( !VCC ))
-- \butterfly_stage2:1:stg2|mul|Add1~3\ = SHARE((!\butterfly_stage1:1:stg1|out1_i_ff[0]~_Duplicate_2_q\) # (\butterfly_stage1:1:stg1|out2_r_ff[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:1:stg1|ALT_INV_out2_r_ff[0]~_Duplicate_1_q\,
	datad => \butterfly_stage1:1:stg1|ALT_INV_out1_i_ff[0]~_Duplicate_2_q\,
	cin => GND,
	sharein => GND,
	sumout => \butterfly_stage2:1:stg2|mul|Add1~1_sumout\,
	cout => \butterfly_stage2:1:stg2|mul|Add1~2\,
	shareout => \butterfly_stage2:1:stg2|mul|Add1~3\);

-- Location: MLABCELL_X84_Y16_N3
\butterfly_stage1:1:stg1|mul|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|Add3~5_sumout\ = SUM(( \butterfly_stage1:1:stg1|mul|Add2~5_sumout\ ) + ( \butterfly_stage1:1:stg1|mul|Mult0~23\ ) + ( \butterfly_stage1:1:stg1|mul|Add3~2\ ))
-- \butterfly_stage1:1:stg1|mul|Add3~6\ = CARRY(( \butterfly_stage1:1:stg1|mul|Add2~5_sumout\ ) + ( \butterfly_stage1:1:stg1|mul|Mult0~23\ ) + ( \butterfly_stage1:1:stg1|mul|Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult0~23\,
	datac => \butterfly_stage1:1:stg1|mul|ALT_INV_Add2~5_sumout\,
	cin => \butterfly_stage1:1:stg1|mul|Add3~2\,
	sumout => \butterfly_stage1:1:stg1|mul|Add3~5_sumout\,
	cout => \butterfly_stage1:1:stg1|mul|Add3~6\);

-- Location: FF_X84_Y16_N5
\butterfly_stage1:1:stg1|mul|r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:1:stg1|mul|Add3~5_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|mul|r\(1));

-- Location: MLABCELL_X87_Y18_N24
\x[3][1]~_Duplicate_2feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[3][1]~_Duplicate_2feeder_combout\ = ( \x_in[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_x_in[1]~input_o\,
	combout => \x[3][1]~_Duplicate_2feeder_combout\);

-- Location: FF_X87_Y18_N26
\x[3][1]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x[3][1]~_Duplicate_2feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => ALT_INV_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[3][1]~_Duplicate_2_q\);

-- Location: MLABCELL_X87_Y18_N15
\x[2][1]~_Duplicate_2feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[2][1]~_Duplicate_2feeder_combout\ = \x[3][1]~_Duplicate_2_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[3][1]~_Duplicate_2_q\,
	combout => \x[2][1]~_Duplicate_2feeder_combout\);

-- Location: FF_X87_Y18_N16
\x[2][1]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x[2][1]~_Duplicate_2feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => ALT_INV_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[2][1]~_Duplicate_2_q\);

-- Location: FF_X85_Y16_N28
\x[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[2][1]~_Duplicate_2_q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => ALT_INV_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[1][1]~q\);

-- Location: MLABCELL_X84_Y16_N33
\butterfly_stage1:1:stg1|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|Add2~5_sumout\ = SUM(( !\butterfly_stage1:1:stg1|mul|r\(1) $ (\x[1][1]~q\) ) + ( \butterfly_stage1:1:stg1|Add2~3\ ) + ( \butterfly_stage1:1:stg1|Add2~2\ ))
-- \butterfly_stage1:1:stg1|Add2~6\ = CARRY(( !\butterfly_stage1:1:stg1|mul|r\(1) $ (\x[1][1]~q\) ) + ( \butterfly_stage1:1:stg1|Add2~3\ ) + ( \butterfly_stage1:1:stg1|Add2~2\ ))
-- \butterfly_stage1:1:stg1|Add2~7\ = SHARE((!\butterfly_stage1:1:stg1|mul|r\(1) & \x[1][1]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage1:1:stg1|mul|ALT_INV_r\(1),
	datad => \ALT_INV_x[1][1]~q\,
	cin => \butterfly_stage1:1:stg1|Add2~2\,
	sharein => \butterfly_stage1:1:stg1|Add2~3\,
	sumout => \butterfly_stage1:1:stg1|Add2~5_sumout\,
	cout => \butterfly_stage1:1:stg1|Add2~6\,
	shareout => \butterfly_stage1:1:stg1|Add2~7\);

-- Location: FF_X84_Y16_N34
\butterfly_stage1:1:stg1|out2_r_ff[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:1:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:1:stg1|Add2~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|out2_r_ff[1]~_Duplicate_1_q\);

-- Location: FF_X85_Y16_N1
\butterfly_stage1:1:stg1|out2_i_ff[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:1:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:1:stg1|Add3~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|out2_i_ff[1]~_Duplicate_1_q\);

-- Location: LABCELL_X85_Y16_N33
\butterfly_stage2:1:stg2|mul|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add1~5_sumout\ = SUM(( !\butterfly_stage1:1:stg1|out2_r_ff[1]~_Duplicate_1_q\ $ (\butterfly_stage1:1:stg1|out2_i_ff[1]~_Duplicate_1_q\) ) + ( \butterfly_stage2:1:stg2|mul|Add1~3\ ) + ( \butterfly_stage2:1:stg2|mul|Add1~2\ ))
-- \butterfly_stage2:1:stg2|mul|Add1~6\ = CARRY(( !\butterfly_stage1:1:stg1|out2_r_ff[1]~_Duplicate_1_q\ $ (\butterfly_stage1:1:stg1|out2_i_ff[1]~_Duplicate_1_q\) ) + ( \butterfly_stage2:1:stg2|mul|Add1~3\ ) + ( \butterfly_stage2:1:stg2|mul|Add1~2\ ))
-- \butterfly_stage2:1:stg2|mul|Add1~7\ = SHARE((\butterfly_stage1:1:stg1|out2_r_ff[1]~_Duplicate_1_q\ & !\butterfly_stage1:1:stg1|out2_i_ff[1]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:1:stg1|ALT_INV_out2_r_ff[1]~_Duplicate_1_q\,
	datad => \butterfly_stage1:1:stg1|ALT_INV_out2_i_ff[1]~_Duplicate_1_q\,
	cin => \butterfly_stage2:1:stg2|mul|Add1~2\,
	sharein => \butterfly_stage2:1:stg2|mul|Add1~3\,
	sumout => \butterfly_stage2:1:stg2|mul|Add1~5_sumout\,
	cout => \butterfly_stage2:1:stg2|mul|Add1~6\,
	shareout => \butterfly_stage2:1:stg2|mul|Add1~7\);

-- Location: MLABCELL_X84_Y16_N6
\butterfly_stage1:1:stg1|mul|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|Add3~9_sumout\ = SUM(( \butterfly_stage1:1:stg1|mul|Add2~9_sumout\ ) + ( \butterfly_stage1:1:stg1|mul|Mult0~24\ ) + ( \butterfly_stage1:1:stg1|mul|Add3~6\ ))
-- \butterfly_stage1:1:stg1|mul|Add3~10\ = CARRY(( \butterfly_stage1:1:stg1|mul|Add2~9_sumout\ ) + ( \butterfly_stage1:1:stg1|mul|Mult0~24\ ) + ( \butterfly_stage1:1:stg1|mul|Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult0~24\,
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_Add2~9_sumout\,
	cin => \butterfly_stage1:1:stg1|mul|Add3~6\,
	sumout => \butterfly_stage1:1:stg1|mul|Add3~9_sumout\,
	cout => \butterfly_stage1:1:stg1|mul|Add3~10\);

-- Location: FF_X84_Y16_N7
\butterfly_stage1:1:stg1|mul|r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:1:stg1|mul|Add3~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|mul|r\(2));

-- Location: FF_X85_Y18_N23
\x[3][2]~_Duplicate_2\ : dffeas
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
	ena => ALT_INV_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[3][2]~_Duplicate_2_q\);

-- Location: MLABCELL_X87_Y18_N42
\x[2][2]~_Duplicate_2feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[2][2]~_Duplicate_2feeder_combout\ = ( \x[3][2]~_Duplicate_2_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_x[3][2]~_Duplicate_2_q\,
	combout => \x[2][2]~_Duplicate_2feeder_combout\);

-- Location: FF_X87_Y18_N43
\x[2][2]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x[2][2]~_Duplicate_2feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => ALT_INV_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[2][2]~_Duplicate_2_q\);

-- Location: FF_X87_Y16_N16
\x[1][2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[2][2]~_Duplicate_2_q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => ALT_INV_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[1][2]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y16_N36
\butterfly_stage1:1:stg1|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|Add2~9_sumout\ = SUM(( !\butterfly_stage1:1:stg1|mul|r\(2) $ (\x[1][2]~DUPLICATE_q\) ) + ( \butterfly_stage1:1:stg1|Add2~7\ ) + ( \butterfly_stage1:1:stg1|Add2~6\ ))
-- \butterfly_stage1:1:stg1|Add2~10\ = CARRY(( !\butterfly_stage1:1:stg1|mul|r\(2) $ (\x[1][2]~DUPLICATE_q\) ) + ( \butterfly_stage1:1:stg1|Add2~7\ ) + ( \butterfly_stage1:1:stg1|Add2~6\ ))
-- \butterfly_stage1:1:stg1|Add2~11\ = SHARE((!\butterfly_stage1:1:stg1|mul|r\(2) & \x[1][2]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:1:stg1|mul|ALT_INV_r\(2),
	datad => \ALT_INV_x[1][2]~DUPLICATE_q\,
	cin => \butterfly_stage1:1:stg1|Add2~6\,
	sharein => \butterfly_stage1:1:stg1|Add2~7\,
	sumout => \butterfly_stage1:1:stg1|Add2~9_sumout\,
	cout => \butterfly_stage1:1:stg1|Add2~10\,
	shareout => \butterfly_stage1:1:stg1|Add2~11\);

-- Location: FF_X84_Y16_N37
\butterfly_stage1:1:stg1|out2_r_ff[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:1:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:1:stg1|Add2~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|out2_r_ff[2]~_Duplicate_1_q\);

-- Location: FF_X85_Y16_N5
\butterfly_stage1:1:stg1|out2_i_ff[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:1:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:1:stg1|Add3~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|out2_i_ff[2]~_Duplicate_1_q\);

-- Location: LABCELL_X85_Y16_N36
\butterfly_stage2:1:stg2|mul|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add1~9_sumout\ = SUM(( !\butterfly_stage1:1:stg1|out2_r_ff[2]~_Duplicate_1_q\ $ (\butterfly_stage1:1:stg1|out2_i_ff[2]~_Duplicate_1_q\) ) + ( \butterfly_stage2:1:stg2|mul|Add1~7\ ) + ( \butterfly_stage2:1:stg2|mul|Add1~6\ ))
-- \butterfly_stage2:1:stg2|mul|Add1~10\ = CARRY(( !\butterfly_stage1:1:stg1|out2_r_ff[2]~_Duplicate_1_q\ $ (\butterfly_stage1:1:stg1|out2_i_ff[2]~_Duplicate_1_q\) ) + ( \butterfly_stage2:1:stg2|mul|Add1~7\ ) + ( \butterfly_stage2:1:stg2|mul|Add1~6\ ))
-- \butterfly_stage2:1:stg2|mul|Add1~11\ = SHARE((\butterfly_stage1:1:stg1|out2_r_ff[2]~_Duplicate_1_q\ & !\butterfly_stage1:1:stg1|out2_i_ff[2]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:1:stg1|ALT_INV_out2_r_ff[2]~_Duplicate_1_q\,
	datad => \butterfly_stage1:1:stg1|ALT_INV_out2_i_ff[2]~_Duplicate_1_q\,
	cin => \butterfly_stage2:1:stg2|mul|Add1~6\,
	sharein => \butterfly_stage2:1:stg2|mul|Add1~7\,
	sumout => \butterfly_stage2:1:stg2|mul|Add1~9_sumout\,
	cout => \butterfly_stage2:1:stg2|mul|Add1~10\,
	shareout => \butterfly_stage2:1:stg2|mul|Add1~11\);

-- Location: FF_X85_Y16_N8
\butterfly_stage1:1:stg1|out2_i_ff[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:1:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:1:stg1|Add3~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|out2_i_ff[3]~_Duplicate_1_q\);

-- Location: MLABCELL_X84_Y16_N9
\butterfly_stage1:1:stg1|mul|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|Add3~13_sumout\ = SUM(( \butterfly_stage1:1:stg1|mul|Add2~13_sumout\ ) + ( \butterfly_stage1:1:stg1|mul|Mult0~25\ ) + ( \butterfly_stage1:1:stg1|mul|Add3~10\ ))
-- \butterfly_stage1:1:stg1|mul|Add3~14\ = CARRY(( \butterfly_stage1:1:stg1|mul|Add2~13_sumout\ ) + ( \butterfly_stage1:1:stg1|mul|Mult0~25\ ) + ( \butterfly_stage1:1:stg1|mul|Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult0~25\,
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_Add2~13_sumout\,
	cin => \butterfly_stage1:1:stg1|mul|Add3~10\,
	sumout => \butterfly_stage1:1:stg1|mul|Add3~13_sumout\,
	cout => \butterfly_stage1:1:stg1|mul|Add3~14\);

-- Location: FF_X84_Y16_N11
\butterfly_stage1:1:stg1|mul|r[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:1:stg1|mul|Add3~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|mul|r[3]~DUPLICATE_q\);

-- Location: FF_X87_Y16_N8
\x[3][3]~_Duplicate_2\ : dffeas
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
	ena => ALT_INV_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[3][3]~_Duplicate_2_q\);

-- Location: FF_X87_Y16_N5
\x[2][3]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[3][3]~_Duplicate_2_q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => ALT_INV_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[2][3]~_Duplicate_2_q\);

-- Location: FF_X87_Y16_N29
\x[1][3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[2][3]~_Duplicate_2_q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => ALT_INV_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[1][3]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y16_N39
\butterfly_stage1:1:stg1|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|Add2~13_sumout\ = SUM(( !\butterfly_stage1:1:stg1|mul|r[3]~DUPLICATE_q\ $ (\x[1][3]~DUPLICATE_q\) ) + ( \butterfly_stage1:1:stg1|Add2~11\ ) + ( \butterfly_stage1:1:stg1|Add2~10\ ))
-- \butterfly_stage1:1:stg1|Add2~14\ = CARRY(( !\butterfly_stage1:1:stg1|mul|r[3]~DUPLICATE_q\ $ (\x[1][3]~DUPLICATE_q\) ) + ( \butterfly_stage1:1:stg1|Add2~11\ ) + ( \butterfly_stage1:1:stg1|Add2~10\ ))
-- \butterfly_stage1:1:stg1|Add2~15\ = SHARE((!\butterfly_stage1:1:stg1|mul|r[3]~DUPLICATE_q\ & \x[1][3]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:1:stg1|mul|ALT_INV_r[3]~DUPLICATE_q\,
	datad => \ALT_INV_x[1][3]~DUPLICATE_q\,
	cin => \butterfly_stage1:1:stg1|Add2~10\,
	sharein => \butterfly_stage1:1:stg1|Add2~11\,
	sumout => \butterfly_stage1:1:stg1|Add2~13_sumout\,
	cout => \butterfly_stage1:1:stg1|Add2~14\,
	shareout => \butterfly_stage1:1:stg1|Add2~15\);

-- Location: FF_X84_Y16_N41
\butterfly_stage1:1:stg1|out2_r_ff[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:1:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:1:stg1|Add2~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|out2_r_ff[3]~_Duplicate_1_q\);

-- Location: LABCELL_X85_Y16_N39
\butterfly_stage2:1:stg2|mul|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add1~13_sumout\ = SUM(( !\butterfly_stage1:1:stg1|out2_i_ff[3]~_Duplicate_1_q\ $ (\butterfly_stage1:1:stg1|out2_r_ff[3]~_Duplicate_1_q\) ) + ( \butterfly_stage2:1:stg2|mul|Add1~11\ ) + ( \butterfly_stage2:1:stg2|mul|Add1~10\ 
-- ))
-- \butterfly_stage2:1:stg2|mul|Add1~14\ = CARRY(( !\butterfly_stage1:1:stg1|out2_i_ff[3]~_Duplicate_1_q\ $ (\butterfly_stage1:1:stg1|out2_r_ff[3]~_Duplicate_1_q\) ) + ( \butterfly_stage2:1:stg2|mul|Add1~11\ ) + ( \butterfly_stage2:1:stg2|mul|Add1~10\ ))
-- \butterfly_stage2:1:stg2|mul|Add1~15\ = SHARE((!\butterfly_stage1:1:stg1|out2_i_ff[3]~_Duplicate_1_q\ & \butterfly_stage1:1:stg1|out2_r_ff[3]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage1:1:stg1|ALT_INV_out2_i_ff[3]~_Duplicate_1_q\,
	datad => \butterfly_stage1:1:stg1|ALT_INV_out2_r_ff[3]~_Duplicate_1_q\,
	cin => \butterfly_stage2:1:stg2|mul|Add1~10\,
	sharein => \butterfly_stage2:1:stg2|mul|Add1~11\,
	sumout => \butterfly_stage2:1:stg2|mul|Add1~13_sumout\,
	cout => \butterfly_stage2:1:stg2|mul|Add1~14\,
	shareout => \butterfly_stage2:1:stg2|mul|Add1~15\);

-- Location: FF_X85_Y16_N11
\butterfly_stage1:1:stg1|out2_i_ff[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:1:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:1:stg1|Add3~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|out2_i_ff[4]~_Duplicate_1_q\);

-- Location: MLABCELL_X84_Y16_N12
\butterfly_stage1:1:stg1|mul|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|Add3~17_sumout\ = SUM(( \butterfly_stage1:1:stg1|mul|Add2~17_sumout\ ) + ( \butterfly_stage1:1:stg1|mul|Mult0~26\ ) + ( \butterfly_stage1:1:stg1|mul|Add3~14\ ))
-- \butterfly_stage1:1:stg1|mul|Add3~18\ = CARRY(( \butterfly_stage1:1:stg1|mul|Add2~17_sumout\ ) + ( \butterfly_stage1:1:stg1|mul|Mult0~26\ ) + ( \butterfly_stage1:1:stg1|mul|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult0~26\,
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_Add2~17_sumout\,
	cin => \butterfly_stage1:1:stg1|mul|Add3~14\,
	sumout => \butterfly_stage1:1:stg1|mul|Add3~17_sumout\,
	cout => \butterfly_stage1:1:stg1|mul|Add3~18\);

-- Location: FF_X84_Y16_N14
\butterfly_stage1:1:stg1|mul|r[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:1:stg1|mul|Add3~17_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|mul|r[4]~DUPLICATE_q\);

-- Location: FF_X87_Y16_N35
\x[3][4]~_Duplicate_2\ : dffeas
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
	ena => ALT_INV_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[3][4]~_Duplicate_2_q\);

-- Location: MLABCELL_X87_Y16_N36
\x[2][4]~_Duplicate_2feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[2][4]~_Duplicate_2feeder_combout\ = \x[3][4]~_Duplicate_2_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x[3][4]~_Duplicate_2_q\,
	combout => \x[2][4]~_Duplicate_2feeder_combout\);

-- Location: FF_X87_Y16_N37
\x[2][4]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x[2][4]~_Duplicate_2feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => ALT_INV_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[2][4]~_Duplicate_2_q\);

-- Location: LABCELL_X85_Y16_N24
\x[1][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[1][4]~feeder_combout\ = ( \x[2][4]~_Duplicate_2_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_x[2][4]~_Duplicate_2_q\,
	combout => \x[1][4]~feeder_combout\);

-- Location: FF_X85_Y16_N25
\x[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x[1][4]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => ALT_INV_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[1][4]~q\);

-- Location: MLABCELL_X84_Y16_N42
\butterfly_stage1:1:stg1|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|Add2~17_sumout\ = SUM(( !\butterfly_stage1:1:stg1|mul|r[4]~DUPLICATE_q\ $ (\x[1][4]~q\) ) + ( \butterfly_stage1:1:stg1|Add2~15\ ) + ( \butterfly_stage1:1:stg1|Add2~14\ ))
-- \butterfly_stage1:1:stg1|Add2~18\ = CARRY(( !\butterfly_stage1:1:stg1|mul|r[4]~DUPLICATE_q\ $ (\x[1][4]~q\) ) + ( \butterfly_stage1:1:stg1|Add2~15\ ) + ( \butterfly_stage1:1:stg1|Add2~14\ ))
-- \butterfly_stage1:1:stg1|Add2~19\ = SHARE((!\butterfly_stage1:1:stg1|mul|r[4]~DUPLICATE_q\ & \x[1][4]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage1:1:stg1|mul|ALT_INV_r[4]~DUPLICATE_q\,
	datac => \ALT_INV_x[1][4]~q\,
	cin => \butterfly_stage1:1:stg1|Add2~14\,
	sharein => \butterfly_stage1:1:stg1|Add2~15\,
	sumout => \butterfly_stage1:1:stg1|Add2~17_sumout\,
	cout => \butterfly_stage1:1:stg1|Add2~18\,
	shareout => \butterfly_stage1:1:stg1|Add2~19\);

-- Location: FF_X84_Y16_N43
\butterfly_stage1:1:stg1|out2_r_ff[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:1:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:1:stg1|Add2~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|out2_r_ff[4]~_Duplicate_1_q\);

-- Location: LABCELL_X85_Y16_N42
\butterfly_stage2:1:stg2|mul|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add1~17_sumout\ = SUM(( !\butterfly_stage1:1:stg1|out2_i_ff[4]~_Duplicate_1_q\ $ (\butterfly_stage1:1:stg1|out2_r_ff[4]~_Duplicate_1_q\) ) + ( \butterfly_stage2:1:stg2|mul|Add1~15\ ) + ( \butterfly_stage2:1:stg2|mul|Add1~14\ 
-- ))
-- \butterfly_stage2:1:stg2|mul|Add1~18\ = CARRY(( !\butterfly_stage1:1:stg1|out2_i_ff[4]~_Duplicate_1_q\ $ (\butterfly_stage1:1:stg1|out2_r_ff[4]~_Duplicate_1_q\) ) + ( \butterfly_stage2:1:stg2|mul|Add1~15\ ) + ( \butterfly_stage2:1:stg2|mul|Add1~14\ ))
-- \butterfly_stage2:1:stg2|mul|Add1~19\ = SHARE((!\butterfly_stage1:1:stg1|out2_i_ff[4]~_Duplicate_1_q\ & \butterfly_stage1:1:stg1|out2_r_ff[4]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage1:1:stg1|ALT_INV_out2_i_ff[4]~_Duplicate_1_q\,
	datad => \butterfly_stage1:1:stg1|ALT_INV_out2_r_ff[4]~_Duplicate_1_q\,
	cin => \butterfly_stage2:1:stg2|mul|Add1~14\,
	sharein => \butterfly_stage2:1:stg2|mul|Add1~15\,
	sumout => \butterfly_stage2:1:stg2|mul|Add1~17_sumout\,
	cout => \butterfly_stage2:1:stg2|mul|Add1~18\,
	shareout => \butterfly_stage2:1:stg2|mul|Add1~19\);

-- Location: MLABCELL_X84_Y16_N15
\butterfly_stage1:1:stg1|mul|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|Add3~21_sumout\ = SUM(( \butterfly_stage1:1:stg1|mul|Add2~21_sumout\ ) + ( \butterfly_stage1:1:stg1|mul|Mult0~27\ ) + ( \butterfly_stage1:1:stg1|mul|Add3~18\ ))
-- \butterfly_stage1:1:stg1|mul|Add3~22\ = CARRY(( \butterfly_stage1:1:stg1|mul|Add2~21_sumout\ ) + ( \butterfly_stage1:1:stg1|mul|Mult0~27\ ) + ( \butterfly_stage1:1:stg1|mul|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult0~27\,
	datac => \butterfly_stage1:1:stg1|mul|ALT_INV_Add2~21_sumout\,
	cin => \butterfly_stage1:1:stg1|mul|Add3~18\,
	sumout => \butterfly_stage1:1:stg1|mul|Add3~21_sumout\,
	cout => \butterfly_stage1:1:stg1|mul|Add3~22\);

-- Location: FF_X84_Y16_N17
\butterfly_stage1:1:stg1|mul|r[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:1:stg1|mul|Add3~21_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|mul|r[5]~DUPLICATE_q\);

-- Location: FF_X87_Y16_N44
\x[3][5]~_Duplicate_2\ : dffeas
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
	ena => ALT_INV_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[3][5]~_Duplicate_2_q\);

-- Location: MLABCELL_X87_Y16_N51
\x[2][5]~_Duplicate_2feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[2][5]~_Duplicate_2feeder_combout\ = \x[3][5]~_Duplicate_2_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x[3][5]~_Duplicate_2_q\,
	combout => \x[2][5]~_Duplicate_2feeder_combout\);

-- Location: FF_X87_Y16_N52
\x[2][5]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x[2][5]~_Duplicate_2feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => ALT_INV_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[2][5]~_Duplicate_2_q\);

-- Location: FF_X85_Y16_N56
\x[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[2][5]~_Duplicate_2_q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => ALT_INV_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[1][5]~q\);

-- Location: MLABCELL_X84_Y16_N45
\butterfly_stage1:1:stg1|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|Add2~21_sumout\ = SUM(( !\butterfly_stage1:1:stg1|mul|r[5]~DUPLICATE_q\ $ (\x[1][5]~q\) ) + ( \butterfly_stage1:1:stg1|Add2~19\ ) + ( \butterfly_stage1:1:stg1|Add2~18\ ))
-- \butterfly_stage1:1:stg1|Add2~22\ = CARRY(( !\butterfly_stage1:1:stg1|mul|r[5]~DUPLICATE_q\ $ (\x[1][5]~q\) ) + ( \butterfly_stage1:1:stg1|Add2~19\ ) + ( \butterfly_stage1:1:stg1|Add2~18\ ))
-- \butterfly_stage1:1:stg1|Add2~23\ = SHARE((!\butterfly_stage1:1:stg1|mul|r[5]~DUPLICATE_q\ & \x[1][5]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:1:stg1|mul|ALT_INV_r[5]~DUPLICATE_q\,
	datad => \ALT_INV_x[1][5]~q\,
	cin => \butterfly_stage1:1:stg1|Add2~18\,
	sharein => \butterfly_stage1:1:stg1|Add2~19\,
	sumout => \butterfly_stage1:1:stg1|Add2~21_sumout\,
	cout => \butterfly_stage1:1:stg1|Add2~22\,
	shareout => \butterfly_stage1:1:stg1|Add2~23\);

-- Location: FF_X84_Y16_N46
\butterfly_stage1:1:stg1|out2_r_ff[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:1:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:1:stg1|Add2~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|out2_r_ff[5]~_Duplicate_1_q\);

-- Location: FF_X85_Y16_N13
\butterfly_stage1:1:stg1|out2_i_ff[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:1:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:1:stg1|Add3~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|out2_i_ff[5]~_Duplicate_1_q\);

-- Location: LABCELL_X85_Y16_N45
\butterfly_stage2:1:stg2|mul|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add1~21_sumout\ = SUM(( !\butterfly_stage1:1:stg1|out2_r_ff[5]~_Duplicate_1_q\ $ (\butterfly_stage1:1:stg1|out2_i_ff[5]~_Duplicate_1_q\) ) + ( \butterfly_stage2:1:stg2|mul|Add1~19\ ) + ( \butterfly_stage2:1:stg2|mul|Add1~18\ 
-- ))
-- \butterfly_stage2:1:stg2|mul|Add1~22\ = CARRY(( !\butterfly_stage1:1:stg1|out2_r_ff[5]~_Duplicate_1_q\ $ (\butterfly_stage1:1:stg1|out2_i_ff[5]~_Duplicate_1_q\) ) + ( \butterfly_stage2:1:stg2|mul|Add1~19\ ) + ( \butterfly_stage2:1:stg2|mul|Add1~18\ ))
-- \butterfly_stage2:1:stg2|mul|Add1~23\ = SHARE((\butterfly_stage1:1:stg1|out2_r_ff[5]~_Duplicate_1_q\ & !\butterfly_stage1:1:stg1|out2_i_ff[5]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage1:1:stg1|ALT_INV_out2_r_ff[5]~_Duplicate_1_q\,
	datac => \butterfly_stage1:1:stg1|ALT_INV_out2_i_ff[5]~_Duplicate_1_q\,
	cin => \butterfly_stage2:1:stg2|mul|Add1~18\,
	sharein => \butterfly_stage2:1:stg2|mul|Add1~19\,
	sumout => \butterfly_stage2:1:stg2|mul|Add1~21_sumout\,
	cout => \butterfly_stage2:1:stg2|mul|Add1~22\,
	shareout => \butterfly_stage2:1:stg2|mul|Add1~23\);

-- Location: FF_X85_Y16_N17
\butterfly_stage1:1:stg1|out2_i_ff[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:1:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:1:stg1|Add3~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|out2_i_ff[6]~_Duplicate_1_q\);

-- Location: MLABCELL_X84_Y16_N18
\butterfly_stage1:1:stg1|mul|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|Add3~25_sumout\ = SUM(( \butterfly_stage1:1:stg1|mul|Add2~25_sumout\ ) + ( \butterfly_stage1:1:stg1|mul|Mult0~28\ ) + ( \butterfly_stage1:1:stg1|mul|Add3~22\ ))
-- \butterfly_stage1:1:stg1|mul|Add3~26\ = CARRY(( \butterfly_stage1:1:stg1|mul|Add2~25_sumout\ ) + ( \butterfly_stage1:1:stg1|mul|Mult0~28\ ) + ( \butterfly_stage1:1:stg1|mul|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult0~28\,
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_Add2~25_sumout\,
	cin => \butterfly_stage1:1:stg1|mul|Add3~22\,
	sumout => \butterfly_stage1:1:stg1|mul|Add3~25_sumout\,
	cout => \butterfly_stage1:1:stg1|mul|Add3~26\);

-- Location: FF_X84_Y16_N20
\butterfly_stage1:1:stg1|mul|r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:1:stg1|mul|Add3~25_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|mul|r\(6));

-- Location: MLABCELL_X87_Y16_N45
\x[3][6]~_Duplicate_2feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[3][6]~_Duplicate_2feeder_combout\ = ( \x_in[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_x_in[6]~input_o\,
	combout => \x[3][6]~_Duplicate_2feeder_combout\);

-- Location: FF_X87_Y16_N47
\x[3][6]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x[3][6]~_Duplicate_2feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => ALT_INV_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[3][6]~_Duplicate_2_q\);

-- Location: MLABCELL_X82_Y16_N12
\x[2][6]~_Duplicate_2feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[2][6]~_Duplicate_2feeder_combout\ = ( \x[3][6]~_Duplicate_2_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_x[3][6]~_Duplicate_2_q\,
	combout => \x[2][6]~_Duplicate_2feeder_combout\);

-- Location: FF_X82_Y16_N13
\x[2][6]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x[2][6]~_Duplicate_2feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => ALT_INV_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[2][6]~_Duplicate_2_q\);

-- Location: MLABCELL_X87_Y16_N30
\x[1][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[1][6]~feeder_combout\ = ( \x[2][6]~_Duplicate_2_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_x[2][6]~_Duplicate_2_q\,
	combout => \x[1][6]~feeder_combout\);

-- Location: FF_X87_Y16_N31
\x[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x[1][6]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => ALT_INV_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[1][6]~q\);

-- Location: MLABCELL_X84_Y16_N48
\butterfly_stage1:1:stg1|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|Add2~25_sumout\ = SUM(( !\butterfly_stage1:1:stg1|mul|r\(6) $ (\x[1][6]~q\) ) + ( \butterfly_stage1:1:stg1|Add2~23\ ) + ( \butterfly_stage1:1:stg1|Add2~22\ ))
-- \butterfly_stage1:1:stg1|Add2~26\ = CARRY(( !\butterfly_stage1:1:stg1|mul|r\(6) $ (\x[1][6]~q\) ) + ( \butterfly_stage1:1:stg1|Add2~23\ ) + ( \butterfly_stage1:1:stg1|Add2~22\ ))
-- \butterfly_stage1:1:stg1|Add2~27\ = SHARE((!\butterfly_stage1:1:stg1|mul|r\(6) & \x[1][6]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:1:stg1|mul|ALT_INV_r\(6),
	datad => \ALT_INV_x[1][6]~q\,
	cin => \butterfly_stage1:1:stg1|Add2~22\,
	sharein => \butterfly_stage1:1:stg1|Add2~23\,
	sumout => \butterfly_stage1:1:stg1|Add2~25_sumout\,
	cout => \butterfly_stage1:1:stg1|Add2~26\,
	shareout => \butterfly_stage1:1:stg1|Add2~27\);

-- Location: FF_X84_Y16_N50
\butterfly_stage1:1:stg1|out2_r_ff[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:1:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:1:stg1|Add2~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|out2_r_ff[6]~_Duplicate_1_q\);

-- Location: LABCELL_X85_Y16_N48
\butterfly_stage2:1:stg2|mul|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add1~25_sumout\ = SUM(( !\butterfly_stage1:1:stg1|out2_i_ff[6]~_Duplicate_1_q\ $ (\butterfly_stage1:1:stg1|out2_r_ff[6]~_Duplicate_1_q\) ) + ( \butterfly_stage2:1:stg2|mul|Add1~23\ ) + ( \butterfly_stage2:1:stg2|mul|Add1~22\ 
-- ))
-- \butterfly_stage2:1:stg2|mul|Add1~26\ = CARRY(( !\butterfly_stage1:1:stg1|out2_i_ff[6]~_Duplicate_1_q\ $ (\butterfly_stage1:1:stg1|out2_r_ff[6]~_Duplicate_1_q\) ) + ( \butterfly_stage2:1:stg2|mul|Add1~23\ ) + ( \butterfly_stage2:1:stg2|mul|Add1~22\ ))
-- \butterfly_stage2:1:stg2|mul|Add1~27\ = SHARE((!\butterfly_stage1:1:stg1|out2_i_ff[6]~_Duplicate_1_q\ & \butterfly_stage1:1:stg1|out2_r_ff[6]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage1:1:stg1|ALT_INV_out2_i_ff[6]~_Duplicate_1_q\,
	datac => \butterfly_stage1:1:stg1|ALT_INV_out2_r_ff[6]~_Duplicate_1_q\,
	cin => \butterfly_stage2:1:stg2|mul|Add1~22\,
	sharein => \butterfly_stage2:1:stg2|mul|Add1~23\,
	sumout => \butterfly_stage2:1:stg2|mul|Add1~25_sumout\,
	cout => \butterfly_stage2:1:stg2|mul|Add1~26\,
	shareout => \butterfly_stage2:1:stg2|mul|Add1~27\);

-- Location: FF_X85_Y16_N20
\butterfly_stage1:1:stg1|out2_i_ff[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:1:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:1:stg1|Add3~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|out2_i_ff[7]~_Duplicate_1_q\);

-- Location: FF_X87_Y18_N50
\x[3][7]~_Duplicate_2\ : dffeas
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
	ena => ALT_INV_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[3][7]~_Duplicate_2_q\);

-- Location: MLABCELL_X87_Y18_N36
\x[2][7]~_Duplicate_2feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[2][7]~_Duplicate_2feeder_combout\ = \x[3][7]~_Duplicate_2_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x[3][7]~_Duplicate_2_q\,
	combout => \x[2][7]~_Duplicate_2feeder_combout\);

-- Location: FF_X87_Y18_N37
\x[2][7]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x[2][7]~_Duplicate_2feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => ALT_INV_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[2][7]~_Duplicate_2_q\);

-- Location: FF_X84_Y16_N59
\x[1][7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[2][7]~_Duplicate_2_q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => ALT_INV_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[1][7]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y16_N21
\butterfly_stage1:1:stg1|mul|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|Add3~29_sumout\ = SUM(( \butterfly_stage1:1:stg1|mul|Add2~29_sumout\ ) + ( \butterfly_stage1:1:stg1|mul|Mult0~29\ ) + ( \butterfly_stage1:1:stg1|mul|Add3~26\ ))
-- \butterfly_stage1:1:stg1|mul|Add3~30\ = CARRY(( \butterfly_stage1:1:stg1|mul|Add2~29_sumout\ ) + ( \butterfly_stage1:1:stg1|mul|Mult0~29\ ) + ( \butterfly_stage1:1:stg1|mul|Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult0~29\,
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_Add2~29_sumout\,
	cin => \butterfly_stage1:1:stg1|mul|Add3~26\,
	sumout => \butterfly_stage1:1:stg1|mul|Add3~29_sumout\,
	cout => \butterfly_stage1:1:stg1|mul|Add3~30\);

-- Location: FF_X84_Y16_N23
\butterfly_stage1:1:stg1|mul|r[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:1:stg1|mul|Add3~29_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|mul|r[7]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y16_N51
\butterfly_stage1:1:stg1|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|Add2~29_sumout\ = SUM(( !\x[1][7]~DUPLICATE_q\ $ (\butterfly_stage1:1:stg1|mul|r[7]~DUPLICATE_q\) ) + ( \butterfly_stage1:1:stg1|Add2~27\ ) + ( \butterfly_stage1:1:stg1|Add2~26\ ))
-- \butterfly_stage1:1:stg1|Add2~30\ = CARRY(( !\x[1][7]~DUPLICATE_q\ $ (\butterfly_stage1:1:stg1|mul|r[7]~DUPLICATE_q\) ) + ( \butterfly_stage1:1:stg1|Add2~27\ ) + ( \butterfly_stage1:1:stg1|Add2~26\ ))
-- \butterfly_stage1:1:stg1|Add2~31\ = SHARE((\x[1][7]~DUPLICATE_q\ & !\butterfly_stage1:1:stg1|mul|r[7]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x[1][7]~DUPLICATE_q\,
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_r[7]~DUPLICATE_q\,
	cin => \butterfly_stage1:1:stg1|Add2~26\,
	sharein => \butterfly_stage1:1:stg1|Add2~27\,
	sumout => \butterfly_stage1:1:stg1|Add2~29_sumout\,
	cout => \butterfly_stage1:1:stg1|Add2~30\,
	shareout => \butterfly_stage1:1:stg1|Add2~31\);

-- Location: FF_X84_Y16_N53
\butterfly_stage1:1:stg1|out2_r_ff[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:1:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:1:stg1|Add2~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|out2_r_ff[7]~_Duplicate_1_q\);

-- Location: LABCELL_X85_Y16_N51
\butterfly_stage2:1:stg2|mul|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add1~29_sumout\ = SUM(( !\butterfly_stage1:1:stg1|out2_i_ff[7]~_Duplicate_1_q\ $ (\butterfly_stage1:1:stg1|out2_r_ff[7]~_Duplicate_1_q\) ) + ( \butterfly_stage2:1:stg2|mul|Add1~27\ ) + ( \butterfly_stage2:1:stg2|mul|Add1~26\ 
-- ))
-- \butterfly_stage2:1:stg2|mul|Add1~30\ = CARRY(( !\butterfly_stage1:1:stg1|out2_i_ff[7]~_Duplicate_1_q\ $ (\butterfly_stage1:1:stg1|out2_r_ff[7]~_Duplicate_1_q\) ) + ( \butterfly_stage2:1:stg2|mul|Add1~27\ ) + ( \butterfly_stage2:1:stg2|mul|Add1~26\ ))
-- \butterfly_stage2:1:stg2|mul|Add1~31\ = SHARE((!\butterfly_stage1:1:stg1|out2_i_ff[7]~_Duplicate_1_q\ & \butterfly_stage1:1:stg1|out2_r_ff[7]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage1:1:stg1|ALT_INV_out2_i_ff[7]~_Duplicate_1_q\,
	datad => \butterfly_stage1:1:stg1|ALT_INV_out2_r_ff[7]~_Duplicate_1_q\,
	cin => \butterfly_stage2:1:stg2|mul|Add1~26\,
	sharein => \butterfly_stage2:1:stg2|mul|Add1~27\,
	sumout => \butterfly_stage2:1:stg2|mul|Add1~29_sumout\,
	cout => \butterfly_stage2:1:stg2|mul|Add1~30\,
	shareout => \butterfly_stage2:1:stg2|mul|Add1~31\);

-- Location: MLABCELL_X84_Y16_N24
\butterfly_stage1:1:stg1|mul|Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|mul|Add3~33_sumout\ = SUM(( \butterfly_stage1:1:stg1|mul|Add2~33_sumout\ ) + ( \butterfly_stage1:1:stg1|mul|Mult0~30\ ) + ( \butterfly_stage1:1:stg1|mul|Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage1:1:stg1|mul|ALT_INV_Mult0~30\,
	datac => \butterfly_stage1:1:stg1|mul|ALT_INV_Add2~33_sumout\,
	cin => \butterfly_stage1:1:stg1|mul|Add3~30\,
	sumout => \butterfly_stage1:1:stg1|mul|Add3~33_sumout\);

-- Location: FF_X84_Y16_N26
\butterfly_stage1:1:stg1|mul|r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:1:stg1|mul|Add3~33_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|mul|r\(8));

-- Location: LABCELL_X83_Y18_N3
\x[3][8]~_Duplicate_3feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[3][8]~_Duplicate_3feeder_combout\ = ( \x_in[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_x_in[8]~input_o\,
	combout => \x[3][8]~_Duplicate_3feeder_combout\);

-- Location: FF_X83_Y18_N5
\x[3][8]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x[3][8]~_Duplicate_3feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => ALT_INV_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[3][8]~_Duplicate_3_q\);

-- Location: FF_X85_Y18_N4
\x[2][8]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[3][8]~_Duplicate_3_q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => ALT_INV_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[2][8]~_Duplicate_3_q\);

-- Location: FF_X83_Y15_N22
\x[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[2][8]~_Duplicate_3_q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => ALT_INV_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[1][8]~q\);

-- Location: MLABCELL_X84_Y16_N54
\butterfly_stage1:1:stg1|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|Add2~33_sumout\ = SUM(( !\butterfly_stage1:1:stg1|mul|r\(8) $ (\x[1][8]~q\) ) + ( \butterfly_stage1:1:stg1|Add2~31\ ) + ( \butterfly_stage1:1:stg1|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage1:1:stg1|mul|ALT_INV_r\(8),
	datac => \ALT_INV_x[1][8]~q\,
	cin => \butterfly_stage1:1:stg1|Add2~30\,
	sharein => \butterfly_stage1:1:stg1|Add2~31\,
	sumout => \butterfly_stage1:1:stg1|Add2~33_sumout\);

-- Location: FF_X85_Y16_N50
\butterfly_stage1:1:stg1|out2_r_ff[8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:1:stg1|ALT_INV_clk_div2~q\,
	asdata => \butterfly_stage1:1:stg1|Add2~33_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|out2_r_ff[8]~_Duplicate_1_q\);

-- Location: FF_X85_Y16_N23
\butterfly_stage1:1:stg1|out2_i_ff[8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:1:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:1:stg1|Add3~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|out2_i_ff[8]~_Duplicate_1_q\);

-- Location: LABCELL_X85_Y16_N54
\butterfly_stage2:1:stg2|mul|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add1~33_sumout\ = SUM(( !\butterfly_stage1:1:stg1|out2_r_ff[8]~_Duplicate_1_q\ $ (\butterfly_stage1:1:stg1|out2_i_ff[8]~_Duplicate_1_q\) ) + ( \butterfly_stage2:1:stg2|mul|Add1~31\ ) + ( \butterfly_stage2:1:stg2|mul|Add1~30\ 
-- ))
-- \butterfly_stage2:1:stg2|mul|Add1~34\ = CARRY(( !\butterfly_stage1:1:stg1|out2_r_ff[8]~_Duplicate_1_q\ $ (\butterfly_stage1:1:stg1|out2_i_ff[8]~_Duplicate_1_q\) ) + ( \butterfly_stage2:1:stg2|mul|Add1~31\ ) + ( \butterfly_stage2:1:stg2|mul|Add1~30\ ))
-- \butterfly_stage2:1:stg2|mul|Add1~35\ = SHARE((\butterfly_stage1:1:stg1|out2_r_ff[8]~_Duplicate_1_q\ & !\butterfly_stage1:1:stg1|out2_i_ff[8]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage1:1:stg1|ALT_INV_out2_r_ff[8]~_Duplicate_1_q\,
	datad => \butterfly_stage1:1:stg1|ALT_INV_out2_i_ff[8]~_Duplicate_1_q\,
	cin => \butterfly_stage2:1:stg2|mul|Add1~30\,
	sharein => \butterfly_stage2:1:stg2|mul|Add1~31\,
	sumout => \butterfly_stage2:1:stg2|mul|Add1~33_sumout\,
	cout => \butterfly_stage2:1:stg2|mul|Add1~34\,
	shareout => \butterfly_stage2:1:stg2|mul|Add1~35\);

-- Location: LABCELL_X85_Y16_N57
\butterfly_stage2:1:stg2|mul|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add1~37_sumout\ = SUM(( !\butterfly_stage1:1:stg1|out2_r_ff[8]~_Duplicate_1_q\ $ (\butterfly_stage1:1:stg1|out2_i_ff[8]~_Duplicate_1_q\) ) + ( \butterfly_stage2:1:stg2|mul|Add1~35\ ) + ( \butterfly_stage2:1:stg2|mul|Add1~34\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage1:1:stg1|ALT_INV_out2_r_ff[8]~_Duplicate_1_q\,
	datad => \butterfly_stage1:1:stg1|ALT_INV_out2_i_ff[8]~_Duplicate_1_q\,
	cin => \butterfly_stage2:1:stg2|mul|Add1~34\,
	sharein => \butterfly_stage2:1:stg2|mul|Add1~35\,
	sumout => \butterfly_stage2:1:stg2|mul|Add1~37_sumout\);

-- Location: DSP_X86_Y14_N0
\butterfly_stage2:1:stg2|mul|Mult1~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 15,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
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
	operation_mode => "m18x18_full",
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
	ax => \butterfly_stage2:1:stg2|mul|Mult1~8_AX_bus\,
	ay => \butterfly_stage2:1:stg2|mul|Mult1~8_AY_bus\,
	resulta => \butterfly_stage2:1:stg2|mul|Mult1~8_RESULTA_bus\);

-- Location: LABCELL_X85_Y14_N54
\butterfly_stage2:1:stg2|mul|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|WideOr1~0_combout\ = ( !\butterfly_stage2:1:stg2|mul|Mult1~9\ & ( !\butterfly_stage2:1:stg2|mul|Mult1~12\ & ( (!\butterfly_stage2:1:stg2|mul|Mult1~11\ & (!\butterfly_stage2:1:stg2|mul|Mult1~10\ & 
-- !\butterfly_stage2:1:stg2|mul|Mult1~8_resulta\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~11\,
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~10\,
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~8_resulta\,
	datae => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~9\,
	dataf => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~12\,
	combout => \butterfly_stage2:1:stg2|mul|WideOr1~0_combout\);

-- Location: LABCELL_X85_Y14_N42
\butterfly_stage2:1:stg2|mul|WideOr1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|WideOr1~1_combout\ = ( !\butterfly_stage2:1:stg2|mul|Mult1~15\ & ( !\butterfly_stage2:1:stg2|mul|Mult1~16\ & ( (!\butterfly_stage2:1:stg2|mul|Mult1~18\ & (!\butterfly_stage2:1:stg2|mul|Mult1~17\ & 
-- !\butterfly_stage2:1:stg2|mul|Mult1~14\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~18\,
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~17\,
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~14\,
	datae => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~15\,
	dataf => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~16\,
	combout => \butterfly_stage2:1:stg2|mul|WideOr1~1_combout\);

-- Location: LABCELL_X85_Y14_N48
\butterfly_stage2:1:stg2|mul|WideOr1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|WideOr1~combout\ = ( \butterfly_stage2:1:stg2|mul|WideOr1~0_combout\ & ( \butterfly_stage2:1:stg2|mul|WideOr1~1_combout\ & ( (((\butterfly_stage2:1:stg2|mul|Mult1~20\) # (\butterfly_stage2:1:stg2|mul|Mult1~21\)) # 
-- (\butterfly_stage2:1:stg2|mul|Mult1~13\)) # (\butterfly_stage2:1:stg2|mul|Mult1~19\) ) ) ) # ( !\butterfly_stage2:1:stg2|mul|WideOr1~0_combout\ & ( \butterfly_stage2:1:stg2|mul|WideOr1~1_combout\ ) ) # ( \butterfly_stage2:1:stg2|mul|WideOr1~0_combout\ & ( 
-- !\butterfly_stage2:1:stg2|mul|WideOr1~1_combout\ ) ) # ( !\butterfly_stage2:1:stg2|mul|WideOr1~0_combout\ & ( !\butterfly_stage2:1:stg2|mul|WideOr1~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~19\,
	datab => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~13\,
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~21\,
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~20\,
	datae => \butterfly_stage2:1:stg2|mul|ALT_INV_WideOr1~0_combout\,
	dataf => \butterfly_stage2:1:stg2|mul|ALT_INV_WideOr1~1_combout\,
	combout => \butterfly_stage2:1:stg2|mul|WideOr1~combout\);

-- Location: LABCELL_X85_Y14_N0
\butterfly_stage2:1:stg2|mul|Add2~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add2~38_cout\ = CARRY(( \butterfly_stage2:1:stg2|mul|Mult1~32\ ) + ( \butterfly_stage2:1:stg2|mul|WideOr1~combout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~32\,
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_WideOr1~combout\,
	cin => GND,
	cout => \butterfly_stage2:1:stg2|mul|Add2~38_cout\);

-- Location: LABCELL_X85_Y14_N3
\butterfly_stage2:1:stg2|mul|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add2~1_sumout\ = SUM(( \butterfly_stage2:1:stg2|mul|Mult1~22\ ) + ( GND ) + ( \butterfly_stage2:1:stg2|mul|Add2~38_cout\ ))
-- \butterfly_stage2:1:stg2|mul|Add2~2\ = CARRY(( \butterfly_stage2:1:stg2|mul|Mult1~22\ ) + ( GND ) + ( \butterfly_stage2:1:stg2|mul|Add2~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~22\,
	cin => \butterfly_stage2:1:stg2|mul|Add2~38_cout\,
	sumout => \butterfly_stage2:1:stg2|mul|Add2~1_sumout\,
	cout => \butterfly_stage2:1:stg2|mul|Add2~2\);

-- Location: LABCELL_X83_Y16_N57
\butterfly_stage2:1:stg2|mul|WideOr0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|WideOr0~1_combout\ = ( !\butterfly_stage2:1:stg2|mul|Mult0~15\ & ( !\butterfly_stage2:1:stg2|mul|Mult0~14\ & ( (!\butterfly_stage2:1:stg2|mul|Mult0~16\ & (!\butterfly_stage2:1:stg2|mul|Mult0~18\ & 
-- !\butterfly_stage2:1:stg2|mul|Mult0~17\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~16\,
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~18\,
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~17\,
	datae => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~15\,
	dataf => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~14\,
	combout => \butterfly_stage2:1:stg2|mul|WideOr0~1_combout\);

-- Location: MLABCELL_X87_Y16_N6
\butterfly_stage2:1:stg2|mul|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|WideOr0~0_combout\ = ( !\butterfly_stage2:1:stg2|mul|Mult0~8_resulta\ & ( !\butterfly_stage2:1:stg2|mul|Mult0~9\ & ( (!\butterfly_stage2:1:stg2|mul|Mult0~12\ & (!\butterfly_stage2:1:stg2|mul|Mult0~10\ & 
-- !\butterfly_stage2:1:stg2|mul|Mult0~11\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~12\,
	datab => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~10\,
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~11\,
	datae => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~8_resulta\,
	dataf => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~9\,
	combout => \butterfly_stage2:1:stg2|mul|WideOr0~0_combout\);

-- Location: MLABCELL_X87_Y16_N21
\butterfly_stage2:1:stg2|mul|WideOr0\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|WideOr0~combout\ = ( \butterfly_stage2:1:stg2|mul|Mult0~13\ & ( \butterfly_stage2:1:stg2|mul|WideOr0~0_combout\ ) ) # ( !\butterfly_stage2:1:stg2|mul|Mult0~13\ & ( \butterfly_stage2:1:stg2|mul|WideOr0~0_combout\ & ( 
-- ((!\butterfly_stage2:1:stg2|mul|WideOr0~1_combout\) # ((\butterfly_stage2:1:stg2|mul|Mult0~21\) # (\butterfly_stage2:1:stg2|mul|Mult0~20\))) # (\butterfly_stage2:1:stg2|mul|Mult0~19\) ) ) ) # ( \butterfly_stage2:1:stg2|mul|Mult0~13\ & ( 
-- !\butterfly_stage2:1:stg2|mul|WideOr0~0_combout\ ) ) # ( !\butterfly_stage2:1:stg2|mul|Mult0~13\ & ( !\butterfly_stage2:1:stg2|mul|WideOr0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111011111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~19\,
	datab => \butterfly_stage2:1:stg2|mul|ALT_INV_WideOr0~1_combout\,
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~20\,
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~21\,
	datae => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~13\,
	dataf => \butterfly_stage2:1:stg2|mul|ALT_INV_WideOr0~0_combout\,
	combout => \butterfly_stage2:1:stg2|mul|WideOr0~combout\);

-- Location: MLABCELL_X84_Y14_N30
\butterfly_stage2:1:stg2|mul|Add0~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add0~38_cout\ = CARRY(( !\butterfly_stage2:1:stg2|mul|Mult0~31\ $ (!\butterfly_stage2:1:stg2|mul|WideOr0~combout\) ) + ( !VCC ) + ( !VCC ))
-- \butterfly_stage2:1:stg2|mul|Add0~39\ = SHARE((\butterfly_stage2:1:stg2|mul|Mult0~31\ & \butterfly_stage2:1:stg2|mul|WideOr0~combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~31\,
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_WideOr0~combout\,
	cin => GND,
	sharein => GND,
	cout => \butterfly_stage2:1:stg2|mul|Add0~38_cout\,
	shareout => \butterfly_stage2:1:stg2|mul|Add0~39\);

-- Location: MLABCELL_X84_Y14_N33
\butterfly_stage2:1:stg2|mul|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add0~1_sumout\ = SUM(( !\butterfly_stage2:1:stg2|mul|Mult0~22\ $ (!\butterfly_stage2:1:stg2|mul|Add2~1_sumout\) ) + ( \butterfly_stage2:1:stg2|mul|Add0~39\ ) + ( \butterfly_stage2:1:stg2|mul|Add0~38_cout\ ))
-- \butterfly_stage2:1:stg2|mul|Add0~2\ = CARRY(( !\butterfly_stage2:1:stg2|mul|Mult0~22\ $ (!\butterfly_stage2:1:stg2|mul|Add2~1_sumout\) ) + ( \butterfly_stage2:1:stg2|mul|Add0~39\ ) + ( \butterfly_stage2:1:stg2|mul|Add0~38_cout\ ))
-- \butterfly_stage2:1:stg2|mul|Add0~3\ = SHARE((\butterfly_stage2:1:stg2|mul|Mult0~22\ & \butterfly_stage2:1:stg2|mul|Add2~1_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~22\,
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_Add2~1_sumout\,
	cin => \butterfly_stage2:1:stg2|mul|Add0~38_cout\,
	sharein => \butterfly_stage2:1:stg2|mul|Add0~39\,
	sumout => \butterfly_stage2:1:stg2|mul|Add0~1_sumout\,
	cout => \butterfly_stage2:1:stg2|mul|Add0~2\,
	shareout => \butterfly_stage2:1:stg2|mul|Add0~3\);

-- Location: FF_X84_Y14_N35
\butterfly_stage2:1:stg2|mul|r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage2:1:stg2|mul|Add0~1_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|mul|r\(0));

-- Location: LABCELL_X83_Y15_N33
\butterfly_stage1:0:stg1|clk_div2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|clk_div2~0_combout\ = ( !\butterfly_stage1:0:stg1|state~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \butterfly_stage1:0:stg1|ALT_INV_state~q\,
	combout => \butterfly_stage1:0:stg1|clk_div2~0_combout\);

-- Location: FF_X83_Y15_N35
\butterfly_stage1:0:stg1|clk_div2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \butterfly_stage1:0:stg1|clk_div2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|clk_div2~q\);

-- Location: DSP_X54_Y20_N0
\butterfly_stage1:0:stg1|mul|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 15,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
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
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \butterfly_stage1:0:stg1|mul|Mult0~8_AX_bus\,
	ay => \butterfly_stage1:0:stg1|mul|Mult0~8_AY_bus\,
	resulta => \butterfly_stage1:0:stg1|mul|Mult0~8_RESULTA_bus\);

-- Location: DSP_X86_Y24_N0
\butterfly_stage1:0:stg1|mul|Mult1~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "0",
	ax_width => 18,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 15,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
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
	operation_mode => "m18x18_full",
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
	aclr => \butterfly_stage1:0:stg1|mul|Mult1~8_ACLR_bus\,
	clk => \butterfly_stage1:0:stg1|mul|Mult1~8_CLK_bus\,
	ena => \butterfly_stage1:0:stg1|mul|Mult1~8_ENA_bus\,
	ax => \butterfly_stage1:0:stg1|mul|Mult1~8_AX_bus\,
	ay => \butterfly_stage1:0:stg1|mul|Mult1~8_AY_bus\,
	resulta => \butterfly_stage1:0:stg1|mul|Mult1~8_RESULTA_bus\);

-- Location: LABCELL_X85_Y20_N54
\butterfly_stage1:0:stg1|mul|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|WideOr1~0_combout\ = ( !\butterfly_stage1:0:stg1|mul|Mult1~8_resulta\ & ( !\butterfly_stage1:0:stg1|mul|Mult1~11\ & ( (!\butterfly_stage1:0:stg1|mul|Mult1~10\ & (!\butterfly_stage1:0:stg1|mul|Mult1~12\ & 
-- !\butterfly_stage1:0:stg1|mul|Mult1~9\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~10\,
	datac => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~12\,
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~9\,
	datae => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~8_resulta\,
	dataf => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~11\,
	combout => \butterfly_stage1:0:stg1|mul|WideOr1~0_combout\);

-- Location: LABCELL_X85_Y20_N6
\butterfly_stage1:0:stg1|mul|WideOr1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|WideOr1~1_combout\ = ( !\butterfly_stage1:0:stg1|mul|Mult1~15\ & ( !\butterfly_stage1:0:stg1|mul|Mult1~17\ & ( (!\butterfly_stage1:0:stg1|mul|Mult1~16\ & (!\butterfly_stage1:0:stg1|mul|Mult1~18\ & 
-- !\butterfly_stage1:0:stg1|mul|Mult1~14\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~16\,
	datac => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~18\,
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~14\,
	datae => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~15\,
	dataf => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~17\,
	combout => \butterfly_stage1:0:stg1|mul|WideOr1~1_combout\);

-- Location: LABCELL_X85_Y20_N42
\butterfly_stage1:0:stg1|mul|WideOr1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|WideOr1~combout\ = ( \butterfly_stage1:0:stg1|mul|WideOr1~0_combout\ & ( \butterfly_stage1:0:stg1|mul|WideOr1~1_combout\ & ( (((\butterfly_stage1:0:stg1|mul|Mult1~20\) # (\butterfly_stage1:0:stg1|mul|Mult1~19\)) # 
-- (\butterfly_stage1:0:stg1|mul|Mult1~21\)) # (\butterfly_stage1:0:stg1|mul|Mult1~13\) ) ) ) # ( !\butterfly_stage1:0:stg1|mul|WideOr1~0_combout\ & ( \butterfly_stage1:0:stg1|mul|WideOr1~1_combout\ ) ) # ( \butterfly_stage1:0:stg1|mul|WideOr1~0_combout\ & ( 
-- !\butterfly_stage1:0:stg1|mul|WideOr1~1_combout\ ) ) # ( !\butterfly_stage1:0:stg1|mul|WideOr1~0_combout\ & ( !\butterfly_stage1:0:stg1|mul|WideOr1~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~13\,
	datab => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~21\,
	datac => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~19\,
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~20\,
	datae => \butterfly_stage1:0:stg1|mul|ALT_INV_WideOr1~0_combout\,
	dataf => \butterfly_stage1:0:stg1|mul|ALT_INV_WideOr1~1_combout\,
	combout => \butterfly_stage1:0:stg1|mul|WideOr1~combout\);

-- Location: MLABCELL_X84_Y20_N0
\butterfly_stage1:0:stg1|mul|Add2~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|Add2~38_cout\ = CARRY(( \butterfly_stage1:0:stg1|mul|WideOr1~combout\ ) + ( \butterfly_stage1:0:stg1|mul|Mult1~32\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~32\,
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_WideOr1~combout\,
	cin => GND,
	cout => \butterfly_stage1:0:stg1|mul|Add2~38_cout\);

-- Location: MLABCELL_X84_Y20_N3
\butterfly_stage1:0:stg1|mul|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|Add2~1_sumout\ = SUM(( \butterfly_stage1:0:stg1|mul|Mult1~22\ ) + ( GND ) + ( \butterfly_stage1:0:stg1|mul|Add2~38_cout\ ))
-- \butterfly_stage1:0:stg1|mul|Add2~2\ = CARRY(( \butterfly_stage1:0:stg1|mul|Mult1~22\ ) + ( GND ) + ( \butterfly_stage1:0:stg1|mul|Add2~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~22\,
	cin => \butterfly_stage1:0:stg1|mul|Add2~38_cout\,
	sumout => \butterfly_stage1:0:stg1|mul|Add2~1_sumout\,
	cout => \butterfly_stage1:0:stg1|mul|Add2~2\);

-- Location: LABCELL_X83_Y20_N30
\butterfly_stage1:0:stg1|mul|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|Add3~1_sumout\ = SUM(( \butterfly_stage1:0:stg1|mul|Add2~1_sumout\ ) + ( \butterfly_stage1:0:stg1|mul|Mult0~22\ ) + ( !VCC ))
-- \butterfly_stage1:0:stg1|mul|Add3~2\ = CARRY(( \butterfly_stage1:0:stg1|mul|Add2~1_sumout\ ) + ( \butterfly_stage1:0:stg1|mul|Mult0~22\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult0~22\,
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_Add2~1_sumout\,
	cin => GND,
	sumout => \butterfly_stage1:0:stg1|mul|Add3~1_sumout\,
	cout => \butterfly_stage1:0:stg1|mul|Add3~2\);

-- Location: FF_X83_Y20_N32
\butterfly_stage1:0:stg1|mul|r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:0:stg1|mul|Add3~1_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|mul|r\(0));

-- Location: MLABCELL_X82_Y14_N0
\x[0][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[0][0]~feeder_combout\ = ( \x[1][0]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_x[1][0]~q\,
	combout => \x[0][0]~feeder_combout\);

-- Location: FF_X82_Y14_N1
\x[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x[0][0]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => ALT_INV_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[0][0]~q\);

-- Location: LABCELL_X83_Y14_N0
\butterfly_stage1:0:stg1|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|Add2~1_sumout\ = SUM(( !\butterfly_stage1:0:stg1|mul|r\(0) $ (!\x[0][0]~q\) ) + ( !VCC ) + ( !VCC ))
-- \butterfly_stage1:0:stg1|Add2~2\ = CARRY(( !\butterfly_stage1:0:stg1|mul|r\(0) $ (!\x[0][0]~q\) ) + ( !VCC ) + ( !VCC ))
-- \butterfly_stage1:0:stg1|Add2~3\ = SHARE((!\butterfly_stage1:0:stg1|mul|r\(0)) # (\x[0][0]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:0:stg1|mul|ALT_INV_r\(0),
	datad => \ALT_INV_x[0][0]~q\,
	cin => GND,
	sharein => GND,
	sumout => \butterfly_stage1:0:stg1|Add2~1_sumout\,
	cout => \butterfly_stage1:0:stg1|Add2~2\,
	shareout => \butterfly_stage1:0:stg1|Add2~3\);

-- Location: FF_X83_Y14_N2
\butterfly_stage1:0:stg1|out2_r_ff[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:0:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:0:stg1|Add2~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|out2_r_ff\(0));

-- Location: MLABCELL_X84_Y14_N0
\butterfly_stage2:1:stg2|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|Add2~1_sumout\ = SUM(( !\butterfly_stage2:1:stg2|mul|r\(0) $ (!\butterfly_stage1:0:stg1|out2_r_ff\(0)) ) + ( !VCC ) + ( !VCC ))
-- \butterfly_stage2:1:stg2|Add2~2\ = CARRY(( !\butterfly_stage2:1:stg2|mul|r\(0) $ (!\butterfly_stage1:0:stg1|out2_r_ff\(0)) ) + ( !VCC ) + ( !VCC ))
-- \butterfly_stage2:1:stg2|Add2~3\ = SHARE((!\butterfly_stage2:1:stg2|mul|r\(0)) # (\butterfly_stage1:0:stg1|out2_r_ff\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_r\(0),
	datad => \butterfly_stage1:0:stg1|ALT_INV_out2_r_ff\(0),
	cin => GND,
	sharein => GND,
	sumout => \butterfly_stage2:1:stg2|Add2~1_sumout\,
	cout => \butterfly_stage2:1:stg2|Add2~2\,
	shareout => \butterfly_stage2:1:stg2|Add2~3\);

-- Location: FF_X84_Y14_N1
\butterfly_stage2:1:stg2|out2_r_ff[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:1:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:1:stg2|Add2~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|out2_r_ff\(0));

-- Location: LABCELL_X83_Y13_N0
\x[0][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[0][1]~feeder_combout\ = ( \x[1][1]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_x[1][1]~q\,
	combout => \x[0][1]~feeder_combout\);

-- Location: FF_X83_Y13_N1
\x[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x[0][1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => ALT_INV_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[0][1]~q\);

-- Location: MLABCELL_X84_Y20_N6
\butterfly_stage1:0:stg1|mul|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|Add2~5_sumout\ = SUM(( \butterfly_stage1:0:stg1|mul|Mult1~23\ ) + ( GND ) + ( \butterfly_stage1:0:stg1|mul|Add2~2\ ))
-- \butterfly_stage1:0:stg1|mul|Add2~6\ = CARRY(( \butterfly_stage1:0:stg1|mul|Mult1~23\ ) + ( GND ) + ( \butterfly_stage1:0:stg1|mul|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~23\,
	cin => \butterfly_stage1:0:stg1|mul|Add2~2\,
	sumout => \butterfly_stage1:0:stg1|mul|Add2~5_sumout\,
	cout => \butterfly_stage1:0:stg1|mul|Add2~6\);

-- Location: LABCELL_X83_Y20_N33
\butterfly_stage1:0:stg1|mul|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|Add3~5_sumout\ = SUM(( \butterfly_stage1:0:stg1|mul|Add2~5_sumout\ ) + ( \butterfly_stage1:0:stg1|mul|Mult0~23\ ) + ( \butterfly_stage1:0:stg1|mul|Add3~2\ ))
-- \butterfly_stage1:0:stg1|mul|Add3~6\ = CARRY(( \butterfly_stage1:0:stg1|mul|Add2~5_sumout\ ) + ( \butterfly_stage1:0:stg1|mul|Mult0~23\ ) + ( \butterfly_stage1:0:stg1|mul|Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult0~23\,
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_Add2~5_sumout\,
	cin => \butterfly_stage1:0:stg1|mul|Add3~2\,
	sumout => \butterfly_stage1:0:stg1|mul|Add3~5_sumout\,
	cout => \butterfly_stage1:0:stg1|mul|Add3~6\);

-- Location: FF_X83_Y20_N34
\butterfly_stage1:0:stg1|mul|r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:0:stg1|mul|Add3~5_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|mul|r\(1));

-- Location: LABCELL_X83_Y14_N3
\butterfly_stage1:0:stg1|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|Add2~5_sumout\ = SUM(( !\x[0][1]~q\ $ (\butterfly_stage1:0:stg1|mul|r\(1)) ) + ( \butterfly_stage1:0:stg1|Add2~3\ ) + ( \butterfly_stage1:0:stg1|Add2~2\ ))
-- \butterfly_stage1:0:stg1|Add2~6\ = CARRY(( !\x[0][1]~q\ $ (\butterfly_stage1:0:stg1|mul|r\(1)) ) + ( \butterfly_stage1:0:stg1|Add2~3\ ) + ( \butterfly_stage1:0:stg1|Add2~2\ ))
-- \butterfly_stage1:0:stg1|Add2~7\ = SHARE((\x[0][1]~q\ & !\butterfly_stage1:0:stg1|mul|r\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x[0][1]~q\,
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_r\(1),
	cin => \butterfly_stage1:0:stg1|Add2~2\,
	sharein => \butterfly_stage1:0:stg1|Add2~3\,
	sumout => \butterfly_stage1:0:stg1|Add2~5_sumout\,
	cout => \butterfly_stage1:0:stg1|Add2~6\,
	shareout => \butterfly_stage1:0:stg1|Add2~7\);

-- Location: FF_X83_Y14_N5
\butterfly_stage1:0:stg1|out2_r_ff[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:0:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:0:stg1|Add2~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|out2_r_ff\(1));

-- Location: LABCELL_X85_Y14_N6
\butterfly_stage2:1:stg2|mul|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add2~5_sumout\ = SUM(( \butterfly_stage2:1:stg2|mul|Mult1~23\ ) + ( GND ) + ( \butterfly_stage2:1:stg2|mul|Add2~2\ ))
-- \butterfly_stage2:1:stg2|mul|Add2~6\ = CARRY(( \butterfly_stage2:1:stg2|mul|Mult1~23\ ) + ( GND ) + ( \butterfly_stage2:1:stg2|mul|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~23\,
	cin => \butterfly_stage2:1:stg2|mul|Add2~2\,
	sumout => \butterfly_stage2:1:stg2|mul|Add2~5_sumout\,
	cout => \butterfly_stage2:1:stg2|mul|Add2~6\);

-- Location: MLABCELL_X84_Y14_N36
\butterfly_stage2:1:stg2|mul|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add0~5_sumout\ = SUM(( !\butterfly_stage2:1:stg2|mul|Mult0~23\ $ (!\butterfly_stage2:1:stg2|mul|Add2~5_sumout\) ) + ( \butterfly_stage2:1:stg2|mul|Add0~3\ ) + ( \butterfly_stage2:1:stg2|mul|Add0~2\ ))
-- \butterfly_stage2:1:stg2|mul|Add0~6\ = CARRY(( !\butterfly_stage2:1:stg2|mul|Mult0~23\ $ (!\butterfly_stage2:1:stg2|mul|Add2~5_sumout\) ) + ( \butterfly_stage2:1:stg2|mul|Add0~3\ ) + ( \butterfly_stage2:1:stg2|mul|Add0~2\ ))
-- \butterfly_stage2:1:stg2|mul|Add0~7\ = SHARE((\butterfly_stage2:1:stg2|mul|Mult0~23\ & \butterfly_stage2:1:stg2|mul|Add2~5_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~23\,
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_Add2~5_sumout\,
	cin => \butterfly_stage2:1:stg2|mul|Add0~2\,
	sharein => \butterfly_stage2:1:stg2|mul|Add0~3\,
	sumout => \butterfly_stage2:1:stg2|mul|Add0~5_sumout\,
	cout => \butterfly_stage2:1:stg2|mul|Add0~6\,
	shareout => \butterfly_stage2:1:stg2|mul|Add0~7\);

-- Location: FF_X84_Y14_N38
\butterfly_stage2:1:stg2|mul|r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage2:1:stg2|mul|Add0~5_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|mul|r\(1));

-- Location: MLABCELL_X84_Y14_N3
\butterfly_stage2:1:stg2|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|Add2~5_sumout\ = SUM(( !\butterfly_stage1:0:stg1|out2_r_ff\(1) $ (\butterfly_stage2:1:stg2|mul|r\(1)) ) + ( \butterfly_stage2:1:stg2|Add2~3\ ) + ( \butterfly_stage2:1:stg2|Add2~2\ ))
-- \butterfly_stage2:1:stg2|Add2~6\ = CARRY(( !\butterfly_stage1:0:stg1|out2_r_ff\(1) $ (\butterfly_stage2:1:stg2|mul|r\(1)) ) + ( \butterfly_stage2:1:stg2|Add2~3\ ) + ( \butterfly_stage2:1:stg2|Add2~2\ ))
-- \butterfly_stage2:1:stg2|Add2~7\ = SHARE((\butterfly_stage1:0:stg1|out2_r_ff\(1) & !\butterfly_stage2:1:stg2|mul|r\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage1:0:stg1|ALT_INV_out2_r_ff\(1),
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_r\(1),
	cin => \butterfly_stage2:1:stg2|Add2~2\,
	sharein => \butterfly_stage2:1:stg2|Add2~3\,
	sumout => \butterfly_stage2:1:stg2|Add2~5_sumout\,
	cout => \butterfly_stage2:1:stg2|Add2~6\,
	shareout => \butterfly_stage2:1:stg2|Add2~7\);

-- Location: FF_X84_Y14_N4
\butterfly_stage2:1:stg2|out2_r_ff[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:1:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:1:stg2|Add2~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|out2_r_ff\(1));

-- Location: LABCELL_X85_Y14_N9
\butterfly_stage2:1:stg2|mul|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add2~9_sumout\ = SUM(( \butterfly_stage2:1:stg2|mul|Mult1~24\ ) + ( GND ) + ( \butterfly_stage2:1:stg2|mul|Add2~6\ ))
-- \butterfly_stage2:1:stg2|mul|Add2~10\ = CARRY(( \butterfly_stage2:1:stg2|mul|Mult1~24\ ) + ( GND ) + ( \butterfly_stage2:1:stg2|mul|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~24\,
	cin => \butterfly_stage2:1:stg2|mul|Add2~6\,
	sumout => \butterfly_stage2:1:stg2|mul|Add2~9_sumout\,
	cout => \butterfly_stage2:1:stg2|mul|Add2~10\);

-- Location: MLABCELL_X84_Y14_N39
\butterfly_stage2:1:stg2|mul|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add0~9_sumout\ = SUM(( !\butterfly_stage2:1:stg2|mul|Mult0~24\ $ (!\butterfly_stage2:1:stg2|mul|Add2~9_sumout\) ) + ( \butterfly_stage2:1:stg2|mul|Add0~7\ ) + ( \butterfly_stage2:1:stg2|mul|Add0~6\ ))
-- \butterfly_stage2:1:stg2|mul|Add0~10\ = CARRY(( !\butterfly_stage2:1:stg2|mul|Mult0~24\ $ (!\butterfly_stage2:1:stg2|mul|Add2~9_sumout\) ) + ( \butterfly_stage2:1:stg2|mul|Add0~7\ ) + ( \butterfly_stage2:1:stg2|mul|Add0~6\ ))
-- \butterfly_stage2:1:stg2|mul|Add0~11\ = SHARE((\butterfly_stage2:1:stg2|mul|Mult0~24\ & \butterfly_stage2:1:stg2|mul|Add2~9_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~24\,
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_Add2~9_sumout\,
	cin => \butterfly_stage2:1:stg2|mul|Add0~6\,
	sharein => \butterfly_stage2:1:stg2|mul|Add0~7\,
	sumout => \butterfly_stage2:1:stg2|mul|Add0~9_sumout\,
	cout => \butterfly_stage2:1:stg2|mul|Add0~10\,
	shareout => \butterfly_stage2:1:stg2|mul|Add0~11\);

-- Location: FF_X84_Y14_N41
\butterfly_stage2:1:stg2|mul|r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage2:1:stg2|mul|Add0~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|mul|r\(2));

-- Location: FF_X87_Y16_N17
\x[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[2][2]~_Duplicate_2_q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => ALT_INV_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[1][2]~q\);

-- Location: MLABCELL_X82_Y12_N54
\x[0][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[0][2]~feeder_combout\ = ( \x[1][2]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_x[1][2]~q\,
	combout => \x[0][2]~feeder_combout\);

-- Location: FF_X82_Y12_N55
\x[0][2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x[0][2]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => ALT_INV_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[0][2]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y20_N9
\butterfly_stage1:0:stg1|mul|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|Add2~9_sumout\ = SUM(( \butterfly_stage1:0:stg1|mul|Mult1~24\ ) + ( GND ) + ( \butterfly_stage1:0:stg1|mul|Add2~6\ ))
-- \butterfly_stage1:0:stg1|mul|Add2~10\ = CARRY(( \butterfly_stage1:0:stg1|mul|Mult1~24\ ) + ( GND ) + ( \butterfly_stage1:0:stg1|mul|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~24\,
	cin => \butterfly_stage1:0:stg1|mul|Add2~6\,
	sumout => \butterfly_stage1:0:stg1|mul|Add2~9_sumout\,
	cout => \butterfly_stage1:0:stg1|mul|Add2~10\);

-- Location: LABCELL_X83_Y20_N36
\butterfly_stage1:0:stg1|mul|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|Add3~9_sumout\ = SUM(( \butterfly_stage1:0:stg1|mul|Add2~9_sumout\ ) + ( \butterfly_stage1:0:stg1|mul|Mult0~24\ ) + ( \butterfly_stage1:0:stg1|mul|Add3~6\ ))
-- \butterfly_stage1:0:stg1|mul|Add3~10\ = CARRY(( \butterfly_stage1:0:stg1|mul|Add2~9_sumout\ ) + ( \butterfly_stage1:0:stg1|mul|Mult0~24\ ) + ( \butterfly_stage1:0:stg1|mul|Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult0~24\,
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_Add2~9_sumout\,
	cin => \butterfly_stage1:0:stg1|mul|Add3~6\,
	sumout => \butterfly_stage1:0:stg1|mul|Add3~9_sumout\,
	cout => \butterfly_stage1:0:stg1|mul|Add3~10\);

-- Location: FF_X83_Y20_N38
\butterfly_stage1:0:stg1|mul|r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:0:stg1|mul|Add3~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|mul|r\(2));

-- Location: LABCELL_X83_Y14_N6
\butterfly_stage1:0:stg1|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|Add2~9_sumout\ = SUM(( !\x[0][2]~DUPLICATE_q\ $ (\butterfly_stage1:0:stg1|mul|r\(2)) ) + ( \butterfly_stage1:0:stg1|Add2~7\ ) + ( \butterfly_stage1:0:stg1|Add2~6\ ))
-- \butterfly_stage1:0:stg1|Add2~10\ = CARRY(( !\x[0][2]~DUPLICATE_q\ $ (\butterfly_stage1:0:stg1|mul|r\(2)) ) + ( \butterfly_stage1:0:stg1|Add2~7\ ) + ( \butterfly_stage1:0:stg1|Add2~6\ ))
-- \butterfly_stage1:0:stg1|Add2~11\ = SHARE((\x[0][2]~DUPLICATE_q\ & !\butterfly_stage1:0:stg1|mul|r\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[0][2]~DUPLICATE_q\,
	datac => \butterfly_stage1:0:stg1|mul|ALT_INV_r\(2),
	cin => \butterfly_stage1:0:stg1|Add2~6\,
	sharein => \butterfly_stage1:0:stg1|Add2~7\,
	sumout => \butterfly_stage1:0:stg1|Add2~9_sumout\,
	cout => \butterfly_stage1:0:stg1|Add2~10\,
	shareout => \butterfly_stage1:0:stg1|Add2~11\);

-- Location: FF_X83_Y14_N8
\butterfly_stage1:0:stg1|out2_r_ff[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:0:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:0:stg1|Add2~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|out2_r_ff\(2));

-- Location: MLABCELL_X84_Y14_N6
\butterfly_stage2:1:stg2|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|Add2~9_sumout\ = SUM(( !\butterfly_stage2:1:stg2|mul|r\(2) $ (\butterfly_stage1:0:stg1|out2_r_ff\(2)) ) + ( \butterfly_stage2:1:stg2|Add2~7\ ) + ( \butterfly_stage2:1:stg2|Add2~6\ ))
-- \butterfly_stage2:1:stg2|Add2~10\ = CARRY(( !\butterfly_stage2:1:stg2|mul|r\(2) $ (\butterfly_stage1:0:stg1|out2_r_ff\(2)) ) + ( \butterfly_stage2:1:stg2|Add2~7\ ) + ( \butterfly_stage2:1:stg2|Add2~6\ ))
-- \butterfly_stage2:1:stg2|Add2~11\ = SHARE((!\butterfly_stage2:1:stg2|mul|r\(2) & \butterfly_stage1:0:stg1|out2_r_ff\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage2:1:stg2|mul|ALT_INV_r\(2),
	datac => \butterfly_stage1:0:stg1|ALT_INV_out2_r_ff\(2),
	cin => \butterfly_stage2:1:stg2|Add2~6\,
	sharein => \butterfly_stage2:1:stg2|Add2~7\,
	sumout => \butterfly_stage2:1:stg2|Add2~9_sumout\,
	cout => \butterfly_stage2:1:stg2|Add2~10\,
	shareout => \butterfly_stage2:1:stg2|Add2~11\);

-- Location: FF_X84_Y14_N7
\butterfly_stage2:1:stg2|out2_r_ff[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:1:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:1:stg2|Add2~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|out2_r_ff\(2));

-- Location: LABCELL_X85_Y14_N12
\butterfly_stage2:1:stg2|mul|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add2~13_sumout\ = SUM(( \butterfly_stage2:1:stg2|mul|Mult1~25\ ) + ( GND ) + ( \butterfly_stage2:1:stg2|mul|Add2~10\ ))
-- \butterfly_stage2:1:stg2|mul|Add2~14\ = CARRY(( \butterfly_stage2:1:stg2|mul|Mult1~25\ ) + ( GND ) + ( \butterfly_stage2:1:stg2|mul|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~25\,
	cin => \butterfly_stage2:1:stg2|mul|Add2~10\,
	sumout => \butterfly_stage2:1:stg2|mul|Add2~13_sumout\,
	cout => \butterfly_stage2:1:stg2|mul|Add2~14\);

-- Location: MLABCELL_X84_Y14_N42
\butterfly_stage2:1:stg2|mul|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add0~13_sumout\ = SUM(( !\butterfly_stage2:1:stg2|mul|Mult0~25\ $ (!\butterfly_stage2:1:stg2|mul|Add2~13_sumout\) ) + ( \butterfly_stage2:1:stg2|mul|Add0~11\ ) + ( \butterfly_stage2:1:stg2|mul|Add0~10\ ))
-- \butterfly_stage2:1:stg2|mul|Add0~14\ = CARRY(( !\butterfly_stage2:1:stg2|mul|Mult0~25\ $ (!\butterfly_stage2:1:stg2|mul|Add2~13_sumout\) ) + ( \butterfly_stage2:1:stg2|mul|Add0~11\ ) + ( \butterfly_stage2:1:stg2|mul|Add0~10\ ))
-- \butterfly_stage2:1:stg2|mul|Add0~15\ = SHARE((\butterfly_stage2:1:stg2|mul|Mult0~25\ & \butterfly_stage2:1:stg2|mul|Add2~13_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010001000100000000000000000110011001100110",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~25\,
	datab => \butterfly_stage2:1:stg2|mul|ALT_INV_Add2~13_sumout\,
	cin => \butterfly_stage2:1:stg2|mul|Add0~10\,
	sharein => \butterfly_stage2:1:stg2|mul|Add0~11\,
	sumout => \butterfly_stage2:1:stg2|mul|Add0~13_sumout\,
	cout => \butterfly_stage2:1:stg2|mul|Add0~14\,
	shareout => \butterfly_stage2:1:stg2|mul|Add0~15\);

-- Location: FF_X84_Y14_N44
\butterfly_stage2:1:stg2|mul|r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage2:1:stg2|mul|Add0~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|mul|r\(3));

-- Location: FF_X87_Y16_N28
\x[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[2][3]~_Duplicate_2_q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => ALT_INV_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[1][3]~q\);

-- Location: MLABCELL_X82_Y12_N51
\x[0][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[0][3]~feeder_combout\ = ( \x[1][3]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_x[1][3]~q\,
	combout => \x[0][3]~feeder_combout\);

-- Location: FF_X82_Y12_N52
\x[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x[0][3]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => ALT_INV_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[0][3]~q\);

-- Location: MLABCELL_X84_Y20_N12
\butterfly_stage1:0:stg1|mul|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|Add2~13_sumout\ = SUM(( \butterfly_stage1:0:stg1|mul|Mult1~25\ ) + ( GND ) + ( \butterfly_stage1:0:stg1|mul|Add2~10\ ))
-- \butterfly_stage1:0:stg1|mul|Add2~14\ = CARRY(( \butterfly_stage1:0:stg1|mul|Mult1~25\ ) + ( GND ) + ( \butterfly_stage1:0:stg1|mul|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~25\,
	cin => \butterfly_stage1:0:stg1|mul|Add2~10\,
	sumout => \butterfly_stage1:0:stg1|mul|Add2~13_sumout\,
	cout => \butterfly_stage1:0:stg1|mul|Add2~14\);

-- Location: LABCELL_X83_Y20_N39
\butterfly_stage1:0:stg1|mul|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|Add3~13_sumout\ = SUM(( \butterfly_stage1:0:stg1|mul|Add2~13_sumout\ ) + ( \butterfly_stage1:0:stg1|mul|Mult0~25\ ) + ( \butterfly_stage1:0:stg1|mul|Add3~10\ ))
-- \butterfly_stage1:0:stg1|mul|Add3~14\ = CARRY(( \butterfly_stage1:0:stg1|mul|Add2~13_sumout\ ) + ( \butterfly_stage1:0:stg1|mul|Mult0~25\ ) + ( \butterfly_stage1:0:stg1|mul|Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult0~25\,
	datac => \butterfly_stage1:0:stg1|mul|ALT_INV_Add2~13_sumout\,
	cin => \butterfly_stage1:0:stg1|mul|Add3~10\,
	sumout => \butterfly_stage1:0:stg1|mul|Add3~13_sumout\,
	cout => \butterfly_stage1:0:stg1|mul|Add3~14\);

-- Location: FF_X83_Y20_N41
\butterfly_stage1:0:stg1|mul|r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:0:stg1|mul|Add3~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|mul|r\(3));

-- Location: LABCELL_X83_Y14_N9
\butterfly_stage1:0:stg1|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|Add2~13_sumout\ = SUM(( !\x[0][3]~q\ $ (\butterfly_stage1:0:stg1|mul|r\(3)) ) + ( \butterfly_stage1:0:stg1|Add2~11\ ) + ( \butterfly_stage1:0:stg1|Add2~10\ ))
-- \butterfly_stage1:0:stg1|Add2~14\ = CARRY(( !\x[0][3]~q\ $ (\butterfly_stage1:0:stg1|mul|r\(3)) ) + ( \butterfly_stage1:0:stg1|Add2~11\ ) + ( \butterfly_stage1:0:stg1|Add2~10\ ))
-- \butterfly_stage1:0:stg1|Add2~15\ = SHARE((\x[0][3]~q\ & !\butterfly_stage1:0:stg1|mul|r\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x[0][3]~q\,
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_r\(3),
	cin => \butterfly_stage1:0:stg1|Add2~10\,
	sharein => \butterfly_stage1:0:stg1|Add2~11\,
	sumout => \butterfly_stage1:0:stg1|Add2~13_sumout\,
	cout => \butterfly_stage1:0:stg1|Add2~14\,
	shareout => \butterfly_stage1:0:stg1|Add2~15\);

-- Location: FF_X83_Y14_N11
\butterfly_stage1:0:stg1|out2_r_ff[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:0:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:0:stg1|Add2~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|out2_r_ff\(3));

-- Location: MLABCELL_X84_Y14_N9
\butterfly_stage2:1:stg2|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|Add2~13_sumout\ = SUM(( !\butterfly_stage2:1:stg2|mul|r\(3) $ (\butterfly_stage1:0:stg1|out2_r_ff\(3)) ) + ( \butterfly_stage2:1:stg2|Add2~11\ ) + ( \butterfly_stage2:1:stg2|Add2~10\ ))
-- \butterfly_stage2:1:stg2|Add2~14\ = CARRY(( !\butterfly_stage2:1:stg2|mul|r\(3) $ (\butterfly_stage1:0:stg1|out2_r_ff\(3)) ) + ( \butterfly_stage2:1:stg2|Add2~11\ ) + ( \butterfly_stage2:1:stg2|Add2~10\ ))
-- \butterfly_stage2:1:stg2|Add2~15\ = SHARE((!\butterfly_stage2:1:stg2|mul|r\(3) & \butterfly_stage1:0:stg1|out2_r_ff\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_r\(3),
	datad => \butterfly_stage1:0:stg1|ALT_INV_out2_r_ff\(3),
	cin => \butterfly_stage2:1:stg2|Add2~10\,
	sharein => \butterfly_stage2:1:stg2|Add2~11\,
	sumout => \butterfly_stage2:1:stg2|Add2~13_sumout\,
	cout => \butterfly_stage2:1:stg2|Add2~14\,
	shareout => \butterfly_stage2:1:stg2|Add2~15\);

-- Location: FF_X84_Y14_N10
\butterfly_stage2:1:stg2|out2_r_ff[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:1:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:1:stg2|Add2~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|out2_r_ff\(3));

-- Location: MLABCELL_X84_Y20_N15
\butterfly_stage1:0:stg1|mul|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|Add2~17_sumout\ = SUM(( \butterfly_stage1:0:stg1|mul|Mult1~26\ ) + ( GND ) + ( \butterfly_stage1:0:stg1|mul|Add2~14\ ))
-- \butterfly_stage1:0:stg1|mul|Add2~18\ = CARRY(( \butterfly_stage1:0:stg1|mul|Mult1~26\ ) + ( GND ) + ( \butterfly_stage1:0:stg1|mul|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~26\,
	cin => \butterfly_stage1:0:stg1|mul|Add2~14\,
	sumout => \butterfly_stage1:0:stg1|mul|Add2~17_sumout\,
	cout => \butterfly_stage1:0:stg1|mul|Add2~18\);

-- Location: LABCELL_X83_Y20_N42
\butterfly_stage1:0:stg1|mul|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|Add3~17_sumout\ = SUM(( \butterfly_stage1:0:stg1|mul|Add2~17_sumout\ ) + ( \butterfly_stage1:0:stg1|mul|Mult0~26\ ) + ( \butterfly_stage1:0:stg1|mul|Add3~14\ ))
-- \butterfly_stage1:0:stg1|mul|Add3~18\ = CARRY(( \butterfly_stage1:0:stg1|mul|Add2~17_sumout\ ) + ( \butterfly_stage1:0:stg1|mul|Mult0~26\ ) + ( \butterfly_stage1:0:stg1|mul|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult0~26\,
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_Add2~17_sumout\,
	cin => \butterfly_stage1:0:stg1|mul|Add3~14\,
	sumout => \butterfly_stage1:0:stg1|mul|Add3~17_sumout\,
	cout => \butterfly_stage1:0:stg1|mul|Add3~18\);

-- Location: FF_X83_Y20_N44
\butterfly_stage1:0:stg1|mul|r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:0:stg1|mul|Add3~17_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|mul|r\(4));

-- Location: FF_X82_Y12_N31
\x[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[1][4]~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => ALT_INV_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[0][4]~q\);

-- Location: LABCELL_X83_Y14_N12
\butterfly_stage1:0:stg1|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|Add2~17_sumout\ = SUM(( !\butterfly_stage1:0:stg1|mul|r\(4) $ (\x[0][4]~q\) ) + ( \butterfly_stage1:0:stg1|Add2~15\ ) + ( \butterfly_stage1:0:stg1|Add2~14\ ))
-- \butterfly_stage1:0:stg1|Add2~18\ = CARRY(( !\butterfly_stage1:0:stg1|mul|r\(4) $ (\x[0][4]~q\) ) + ( \butterfly_stage1:0:stg1|Add2~15\ ) + ( \butterfly_stage1:0:stg1|Add2~14\ ))
-- \butterfly_stage1:0:stg1|Add2~19\ = SHARE((!\butterfly_stage1:0:stg1|mul|r\(4) & \x[0][4]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:0:stg1|mul|ALT_INV_r\(4),
	datad => \ALT_INV_x[0][4]~q\,
	cin => \butterfly_stage1:0:stg1|Add2~14\,
	sharein => \butterfly_stage1:0:stg1|Add2~15\,
	sumout => \butterfly_stage1:0:stg1|Add2~17_sumout\,
	cout => \butterfly_stage1:0:stg1|Add2~18\,
	shareout => \butterfly_stage1:0:stg1|Add2~19\);

-- Location: FF_X83_Y14_N14
\butterfly_stage1:0:stg1|out2_r_ff[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:0:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:0:stg1|Add2~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|out2_r_ff\(4));

-- Location: LABCELL_X85_Y14_N15
\butterfly_stage2:1:stg2|mul|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add2~17_sumout\ = SUM(( \butterfly_stage2:1:stg2|mul|Mult1~26\ ) + ( GND ) + ( \butterfly_stage2:1:stg2|mul|Add2~14\ ))
-- \butterfly_stage2:1:stg2|mul|Add2~18\ = CARRY(( \butterfly_stage2:1:stg2|mul|Mult1~26\ ) + ( GND ) + ( \butterfly_stage2:1:stg2|mul|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~26\,
	cin => \butterfly_stage2:1:stg2|mul|Add2~14\,
	sumout => \butterfly_stage2:1:stg2|mul|Add2~17_sumout\,
	cout => \butterfly_stage2:1:stg2|mul|Add2~18\);

-- Location: MLABCELL_X84_Y14_N45
\butterfly_stage2:1:stg2|mul|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add0~17_sumout\ = SUM(( !\butterfly_stage2:1:stg2|mul|Add2~17_sumout\ $ (!\butterfly_stage2:1:stg2|mul|Mult0~26\) ) + ( \butterfly_stage2:1:stg2|mul|Add0~15\ ) + ( \butterfly_stage2:1:stg2|mul|Add0~14\ ))
-- \butterfly_stage2:1:stg2|mul|Add0~18\ = CARRY(( !\butterfly_stage2:1:stg2|mul|Add2~17_sumout\ $ (!\butterfly_stage2:1:stg2|mul|Mult0~26\) ) + ( \butterfly_stage2:1:stg2|mul|Add0~15\ ) + ( \butterfly_stage2:1:stg2|mul|Add0~14\ ))
-- \butterfly_stage2:1:stg2|mul|Add0~19\ = SHARE((\butterfly_stage2:1:stg2|mul|Add2~17_sumout\ & \butterfly_stage2:1:stg2|mul|Mult0~26\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_Add2~17_sumout\,
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~26\,
	cin => \butterfly_stage2:1:stg2|mul|Add0~14\,
	sharein => \butterfly_stage2:1:stg2|mul|Add0~15\,
	sumout => \butterfly_stage2:1:stg2|mul|Add0~17_sumout\,
	cout => \butterfly_stage2:1:stg2|mul|Add0~18\,
	shareout => \butterfly_stage2:1:stg2|mul|Add0~19\);

-- Location: FF_X84_Y14_N47
\butterfly_stage2:1:stg2|mul|r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage2:1:stg2|mul|Add0~17_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|mul|r\(4));

-- Location: MLABCELL_X84_Y14_N12
\butterfly_stage2:1:stg2|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|Add2~17_sumout\ = SUM(( !\butterfly_stage1:0:stg1|out2_r_ff\(4) $ (\butterfly_stage2:1:stg2|mul|r\(4)) ) + ( \butterfly_stage2:1:stg2|Add2~15\ ) + ( \butterfly_stage2:1:stg2|Add2~14\ ))
-- \butterfly_stage2:1:stg2|Add2~18\ = CARRY(( !\butterfly_stage1:0:stg1|out2_r_ff\(4) $ (\butterfly_stage2:1:stg2|mul|r\(4)) ) + ( \butterfly_stage2:1:stg2|Add2~15\ ) + ( \butterfly_stage2:1:stg2|Add2~14\ ))
-- \butterfly_stage2:1:stg2|Add2~19\ = SHARE((\butterfly_stage1:0:stg1|out2_r_ff\(4) & !\butterfly_stage2:1:stg2|mul|r\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage1:0:stg1|ALT_INV_out2_r_ff\(4),
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_r\(4),
	cin => \butterfly_stage2:1:stg2|Add2~14\,
	sharein => \butterfly_stage2:1:stg2|Add2~15\,
	sumout => \butterfly_stage2:1:stg2|Add2~17_sumout\,
	cout => \butterfly_stage2:1:stg2|Add2~18\,
	shareout => \butterfly_stage2:1:stg2|Add2~19\);

-- Location: FF_X84_Y14_N14
\butterfly_stage2:1:stg2|out2_r_ff[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:1:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:1:stg2|Add2~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|out2_r_ff\(4));

-- Location: LABCELL_X85_Y14_N18
\butterfly_stage2:1:stg2|mul|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add2~21_sumout\ = SUM(( \butterfly_stage2:1:stg2|mul|Mult1~27\ ) + ( GND ) + ( \butterfly_stage2:1:stg2|mul|Add2~18\ ))
-- \butterfly_stage2:1:stg2|mul|Add2~22\ = CARRY(( \butterfly_stage2:1:stg2|mul|Mult1~27\ ) + ( GND ) + ( \butterfly_stage2:1:stg2|mul|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~27\,
	cin => \butterfly_stage2:1:stg2|mul|Add2~18\,
	sumout => \butterfly_stage2:1:stg2|mul|Add2~21_sumout\,
	cout => \butterfly_stage2:1:stg2|mul|Add2~22\);

-- Location: MLABCELL_X84_Y14_N48
\butterfly_stage2:1:stg2|mul|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add0~21_sumout\ = SUM(( !\butterfly_stage2:1:stg2|mul|Mult0~27\ $ (!\butterfly_stage2:1:stg2|mul|Add2~21_sumout\) ) + ( \butterfly_stage2:1:stg2|mul|Add0~19\ ) + ( \butterfly_stage2:1:stg2|mul|Add0~18\ ))
-- \butterfly_stage2:1:stg2|mul|Add0~22\ = CARRY(( !\butterfly_stage2:1:stg2|mul|Mult0~27\ $ (!\butterfly_stage2:1:stg2|mul|Add2~21_sumout\) ) + ( \butterfly_stage2:1:stg2|mul|Add0~19\ ) + ( \butterfly_stage2:1:stg2|mul|Add0~18\ ))
-- \butterfly_stage2:1:stg2|mul|Add0~23\ = SHARE((\butterfly_stage2:1:stg2|mul|Mult0~27\ & \butterfly_stage2:1:stg2|mul|Add2~21_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~27\,
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_Add2~21_sumout\,
	cin => \butterfly_stage2:1:stg2|mul|Add0~18\,
	sharein => \butterfly_stage2:1:stg2|mul|Add0~19\,
	sumout => \butterfly_stage2:1:stg2|mul|Add0~21_sumout\,
	cout => \butterfly_stage2:1:stg2|mul|Add0~22\,
	shareout => \butterfly_stage2:1:stg2|mul|Add0~23\);

-- Location: FF_X84_Y14_N50
\butterfly_stage2:1:stg2|mul|r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage2:1:stg2|mul|Add0~21_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|mul|r\(5));

-- Location: MLABCELL_X84_Y20_N18
\butterfly_stage1:0:stg1|mul|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|Add2~21_sumout\ = SUM(( \butterfly_stage1:0:stg1|mul|Mult1~27\ ) + ( GND ) + ( \butterfly_stage1:0:stg1|mul|Add2~18\ ))
-- \butterfly_stage1:0:stg1|mul|Add2~22\ = CARRY(( \butterfly_stage1:0:stg1|mul|Mult1~27\ ) + ( GND ) + ( \butterfly_stage1:0:stg1|mul|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~27\,
	cin => \butterfly_stage1:0:stg1|mul|Add2~18\,
	sumout => \butterfly_stage1:0:stg1|mul|Add2~21_sumout\,
	cout => \butterfly_stage1:0:stg1|mul|Add2~22\);

-- Location: LABCELL_X83_Y20_N45
\butterfly_stage1:0:stg1|mul|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|Add3~21_sumout\ = SUM(( \butterfly_stage1:0:stg1|mul|Add2~21_sumout\ ) + ( \butterfly_stage1:0:stg1|mul|Mult0~27\ ) + ( \butterfly_stage1:0:stg1|mul|Add3~18\ ))
-- \butterfly_stage1:0:stg1|mul|Add3~22\ = CARRY(( \butterfly_stage1:0:stg1|mul|Add2~21_sumout\ ) + ( \butterfly_stage1:0:stg1|mul|Mult0~27\ ) + ( \butterfly_stage1:0:stg1|mul|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult0~27\,
	datac => \butterfly_stage1:0:stg1|mul|ALT_INV_Add2~21_sumout\,
	cin => \butterfly_stage1:0:stg1|mul|Add3~18\,
	sumout => \butterfly_stage1:0:stg1|mul|Add3~21_sumout\,
	cout => \butterfly_stage1:0:stg1|mul|Add3~22\);

-- Location: FF_X83_Y20_N47
\butterfly_stage1:0:stg1|mul|r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:0:stg1|mul|Add3~21_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|mul|r\(5));

-- Location: LABCELL_X83_Y13_N6
\x[0][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[0][5]~feeder_combout\ = ( \x[1][5]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_x[1][5]~q\,
	combout => \x[0][5]~feeder_combout\);

-- Location: FF_X83_Y13_N7
\x[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x[0][5]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => ALT_INV_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[0][5]~q\);

-- Location: LABCELL_X83_Y14_N15
\butterfly_stage1:0:stg1|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|Add2~21_sumout\ = SUM(( !\butterfly_stage1:0:stg1|mul|r\(5) $ (\x[0][5]~q\) ) + ( \butterfly_stage1:0:stg1|Add2~19\ ) + ( \butterfly_stage1:0:stg1|Add2~18\ ))
-- \butterfly_stage1:0:stg1|Add2~22\ = CARRY(( !\butterfly_stage1:0:stg1|mul|r\(5) $ (\x[0][5]~q\) ) + ( \butterfly_stage1:0:stg1|Add2~19\ ) + ( \butterfly_stage1:0:stg1|Add2~18\ ))
-- \butterfly_stage1:0:stg1|Add2~23\ = SHARE((!\butterfly_stage1:0:stg1|mul|r\(5) & \x[0][5]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:0:stg1|mul|ALT_INV_r\(5),
	datad => \ALT_INV_x[0][5]~q\,
	cin => \butterfly_stage1:0:stg1|Add2~18\,
	sharein => \butterfly_stage1:0:stg1|Add2~19\,
	sumout => \butterfly_stage1:0:stg1|Add2~21_sumout\,
	cout => \butterfly_stage1:0:stg1|Add2~22\,
	shareout => \butterfly_stage1:0:stg1|Add2~23\);

-- Location: FF_X83_Y14_N17
\butterfly_stage1:0:stg1|out2_r_ff[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:0:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:0:stg1|Add2~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|out2_r_ff\(5));

-- Location: MLABCELL_X84_Y14_N15
\butterfly_stage2:1:stg2|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|Add2~21_sumout\ = SUM(( !\butterfly_stage2:1:stg2|mul|r\(5) $ (\butterfly_stage1:0:stg1|out2_r_ff\(5)) ) + ( \butterfly_stage2:1:stg2|Add2~19\ ) + ( \butterfly_stage2:1:stg2|Add2~18\ ))
-- \butterfly_stage2:1:stg2|Add2~22\ = CARRY(( !\butterfly_stage2:1:stg2|mul|r\(5) $ (\butterfly_stage1:0:stg1|out2_r_ff\(5)) ) + ( \butterfly_stage2:1:stg2|Add2~19\ ) + ( \butterfly_stage2:1:stg2|Add2~18\ ))
-- \butterfly_stage2:1:stg2|Add2~23\ = SHARE((!\butterfly_stage2:1:stg2|mul|r\(5) & \butterfly_stage1:0:stg1|out2_r_ff\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage2:1:stg2|mul|ALT_INV_r\(5),
	datad => \butterfly_stage1:0:stg1|ALT_INV_out2_r_ff\(5),
	cin => \butterfly_stage2:1:stg2|Add2~18\,
	sharein => \butterfly_stage2:1:stg2|Add2~19\,
	sumout => \butterfly_stage2:1:stg2|Add2~21_sumout\,
	cout => \butterfly_stage2:1:stg2|Add2~22\,
	shareout => \butterfly_stage2:1:stg2|Add2~23\);

-- Location: FF_X84_Y14_N17
\butterfly_stage2:1:stg2|out2_r_ff[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:1:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:1:stg2|Add2~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|out2_r_ff\(5));

-- Location: LABCELL_X85_Y14_N21
\butterfly_stage2:1:stg2|mul|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add2~25_sumout\ = SUM(( \butterfly_stage2:1:stg2|mul|Mult1~28\ ) + ( GND ) + ( \butterfly_stage2:1:stg2|mul|Add2~22\ ))
-- \butterfly_stage2:1:stg2|mul|Add2~26\ = CARRY(( \butterfly_stage2:1:stg2|mul|Mult1~28\ ) + ( GND ) + ( \butterfly_stage2:1:stg2|mul|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~28\,
	cin => \butterfly_stage2:1:stg2|mul|Add2~22\,
	sumout => \butterfly_stage2:1:stg2|mul|Add2~25_sumout\,
	cout => \butterfly_stage2:1:stg2|mul|Add2~26\);

-- Location: MLABCELL_X84_Y14_N51
\butterfly_stage2:1:stg2|mul|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add0~25_sumout\ = SUM(( !\butterfly_stage2:1:stg2|mul|Mult0~28\ $ (!\butterfly_stage2:1:stg2|mul|Add2~25_sumout\) ) + ( \butterfly_stage2:1:stg2|mul|Add0~23\ ) + ( \butterfly_stage2:1:stg2|mul|Add0~22\ ))
-- \butterfly_stage2:1:stg2|mul|Add0~26\ = CARRY(( !\butterfly_stage2:1:stg2|mul|Mult0~28\ $ (!\butterfly_stage2:1:stg2|mul|Add2~25_sumout\) ) + ( \butterfly_stage2:1:stg2|mul|Add0~23\ ) + ( \butterfly_stage2:1:stg2|mul|Add0~22\ ))
-- \butterfly_stage2:1:stg2|mul|Add0~27\ = SHARE((\butterfly_stage2:1:stg2|mul|Mult0~28\ & \butterfly_stage2:1:stg2|mul|Add2~25_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~28\,
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_Add2~25_sumout\,
	cin => \butterfly_stage2:1:stg2|mul|Add0~22\,
	sharein => \butterfly_stage2:1:stg2|mul|Add0~23\,
	sumout => \butterfly_stage2:1:stg2|mul|Add0~25_sumout\,
	cout => \butterfly_stage2:1:stg2|mul|Add0~26\,
	shareout => \butterfly_stage2:1:stg2|mul|Add0~27\);

-- Location: FF_X84_Y14_N53
\butterfly_stage2:1:stg2|mul|r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage2:1:stg2|mul|Add0~25_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|mul|r\(6));

-- Location: MLABCELL_X84_Y20_N21
\butterfly_stage1:0:stg1|mul|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|Add2~25_sumout\ = SUM(( \butterfly_stage1:0:stg1|mul|Mult1~28\ ) + ( GND ) + ( \butterfly_stage1:0:stg1|mul|Add2~22\ ))
-- \butterfly_stage1:0:stg1|mul|Add2~26\ = CARRY(( \butterfly_stage1:0:stg1|mul|Mult1~28\ ) + ( GND ) + ( \butterfly_stage1:0:stg1|mul|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~28\,
	cin => \butterfly_stage1:0:stg1|mul|Add2~22\,
	sumout => \butterfly_stage1:0:stg1|mul|Add2~25_sumout\,
	cout => \butterfly_stage1:0:stg1|mul|Add2~26\);

-- Location: LABCELL_X83_Y20_N48
\butterfly_stage1:0:stg1|mul|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|Add3~25_sumout\ = SUM(( \butterfly_stage1:0:stg1|mul|Add2~25_sumout\ ) + ( \butterfly_stage1:0:stg1|mul|Mult0~28\ ) + ( \butterfly_stage1:0:stg1|mul|Add3~22\ ))
-- \butterfly_stage1:0:stg1|mul|Add3~26\ = CARRY(( \butterfly_stage1:0:stg1|mul|Add2~25_sumout\ ) + ( \butterfly_stage1:0:stg1|mul|Mult0~28\ ) + ( \butterfly_stage1:0:stg1|mul|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_Add2~25_sumout\,
	dataf => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult0~28\,
	cin => \butterfly_stage1:0:stg1|mul|Add3~22\,
	sumout => \butterfly_stage1:0:stg1|mul|Add3~25_sumout\,
	cout => \butterfly_stage1:0:stg1|mul|Add3~26\);

-- Location: FF_X83_Y20_N49
\butterfly_stage1:0:stg1|mul|r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:0:stg1|mul|Add3~25_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|mul|r\(6));

-- Location: MLABCELL_X82_Y14_N6
\x[0][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[0][6]~feeder_combout\ = ( \x[1][6]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_x[1][6]~q\,
	combout => \x[0][6]~feeder_combout\);

-- Location: FF_X82_Y14_N8
\x[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x[0][6]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => ALT_INV_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[0][6]~q\);

-- Location: LABCELL_X83_Y14_N18
\butterfly_stage1:0:stg1|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|Add2~25_sumout\ = SUM(( !\butterfly_stage1:0:stg1|mul|r\(6) $ (\x[0][6]~q\) ) + ( \butterfly_stage1:0:stg1|Add2~23\ ) + ( \butterfly_stage1:0:stg1|Add2~22\ ))
-- \butterfly_stage1:0:stg1|Add2~26\ = CARRY(( !\butterfly_stage1:0:stg1|mul|r\(6) $ (\x[0][6]~q\) ) + ( \butterfly_stage1:0:stg1|Add2~23\ ) + ( \butterfly_stage1:0:stg1|Add2~22\ ))
-- \butterfly_stage1:0:stg1|Add2~27\ = SHARE((!\butterfly_stage1:0:stg1|mul|r\(6) & \x[0][6]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:0:stg1|mul|ALT_INV_r\(6),
	datad => \ALT_INV_x[0][6]~q\,
	cin => \butterfly_stage1:0:stg1|Add2~22\,
	sharein => \butterfly_stage1:0:stg1|Add2~23\,
	sumout => \butterfly_stage1:0:stg1|Add2~25_sumout\,
	cout => \butterfly_stage1:0:stg1|Add2~26\,
	shareout => \butterfly_stage1:0:stg1|Add2~27\);

-- Location: FF_X83_Y14_N20
\butterfly_stage1:0:stg1|out2_r_ff[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:0:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:0:stg1|Add2~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|out2_r_ff\(6));

-- Location: MLABCELL_X84_Y14_N18
\butterfly_stage2:1:stg2|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|Add2~25_sumout\ = SUM(( !\butterfly_stage2:1:stg2|mul|r\(6) $ (\butterfly_stage1:0:stg1|out2_r_ff\(6)) ) + ( \butterfly_stage2:1:stg2|Add2~23\ ) + ( \butterfly_stage2:1:stg2|Add2~22\ ))
-- \butterfly_stage2:1:stg2|Add2~26\ = CARRY(( !\butterfly_stage2:1:stg2|mul|r\(6) $ (\butterfly_stage1:0:stg1|out2_r_ff\(6)) ) + ( \butterfly_stage2:1:stg2|Add2~23\ ) + ( \butterfly_stage2:1:stg2|Add2~22\ ))
-- \butterfly_stage2:1:stg2|Add2~27\ = SHARE((!\butterfly_stage2:1:stg2|mul|r\(6) & \butterfly_stage1:0:stg1|out2_r_ff\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_r\(6),
	datad => \butterfly_stage1:0:stg1|ALT_INV_out2_r_ff\(6),
	cin => \butterfly_stage2:1:stg2|Add2~22\,
	sharein => \butterfly_stage2:1:stg2|Add2~23\,
	sumout => \butterfly_stage2:1:stg2|Add2~25_sumout\,
	cout => \butterfly_stage2:1:stg2|Add2~26\,
	shareout => \butterfly_stage2:1:stg2|Add2~27\);

-- Location: FF_X84_Y14_N20
\butterfly_stage2:1:stg2|out2_r_ff[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:1:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:1:stg2|Add2~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|out2_r_ff\(6));

-- Location: FF_X84_Y16_N58
\x[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[2][7]~_Duplicate_2_q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => ALT_INV_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[1][7]~q\);

-- Location: MLABCELL_X82_Y12_N39
\x[0][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[0][7]~feeder_combout\ = ( \x[1][7]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_x[1][7]~q\,
	combout => \x[0][7]~feeder_combout\);

-- Location: FF_X82_Y12_N41
\x[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x[0][7]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => ALT_INV_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[0][7]~q\);

-- Location: MLABCELL_X84_Y20_N24
\butterfly_stage1:0:stg1|mul|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|Add2~29_sumout\ = SUM(( \butterfly_stage1:0:stg1|mul|Mult1~29\ ) + ( GND ) + ( \butterfly_stage1:0:stg1|mul|Add2~26\ ))
-- \butterfly_stage1:0:stg1|mul|Add2~30\ = CARRY(( \butterfly_stage1:0:stg1|mul|Mult1~29\ ) + ( GND ) + ( \butterfly_stage1:0:stg1|mul|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~29\,
	cin => \butterfly_stage1:0:stg1|mul|Add2~26\,
	sumout => \butterfly_stage1:0:stg1|mul|Add2~29_sumout\,
	cout => \butterfly_stage1:0:stg1|mul|Add2~30\);

-- Location: LABCELL_X83_Y20_N51
\butterfly_stage1:0:stg1|mul|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|Add3~29_sumout\ = SUM(( \butterfly_stage1:0:stg1|mul|Add2~29_sumout\ ) + ( \butterfly_stage1:0:stg1|mul|Mult0~29\ ) + ( \butterfly_stage1:0:stg1|mul|Add3~26\ ))
-- \butterfly_stage1:0:stg1|mul|Add3~30\ = CARRY(( \butterfly_stage1:0:stg1|mul|Add2~29_sumout\ ) + ( \butterfly_stage1:0:stg1|mul|Mult0~29\ ) + ( \butterfly_stage1:0:stg1|mul|Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult0~29\,
	datac => \butterfly_stage1:0:stg1|mul|ALT_INV_Add2~29_sumout\,
	cin => \butterfly_stage1:0:stg1|mul|Add3~26\,
	sumout => \butterfly_stage1:0:stg1|mul|Add3~29_sumout\,
	cout => \butterfly_stage1:0:stg1|mul|Add3~30\);

-- Location: FF_X83_Y20_N53
\butterfly_stage1:0:stg1|mul|r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:0:stg1|mul|Add3~29_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|mul|r\(7));

-- Location: LABCELL_X83_Y14_N21
\butterfly_stage1:0:stg1|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|Add2~29_sumout\ = SUM(( !\x[0][7]~q\ $ (\butterfly_stage1:0:stg1|mul|r\(7)) ) + ( \butterfly_stage1:0:stg1|Add2~27\ ) + ( \butterfly_stage1:0:stg1|Add2~26\ ))
-- \butterfly_stage1:0:stg1|Add2~30\ = CARRY(( !\x[0][7]~q\ $ (\butterfly_stage1:0:stg1|mul|r\(7)) ) + ( \butterfly_stage1:0:stg1|Add2~27\ ) + ( \butterfly_stage1:0:stg1|Add2~26\ ))
-- \butterfly_stage1:0:stg1|Add2~31\ = SHARE((\x[0][7]~q\ & !\butterfly_stage1:0:stg1|mul|r\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x[0][7]~q\,
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_r\(7),
	cin => \butterfly_stage1:0:stg1|Add2~26\,
	sharein => \butterfly_stage1:0:stg1|Add2~27\,
	sumout => \butterfly_stage1:0:stg1|Add2~29_sumout\,
	cout => \butterfly_stage1:0:stg1|Add2~30\,
	shareout => \butterfly_stage1:0:stg1|Add2~31\);

-- Location: FF_X83_Y14_N23
\butterfly_stage1:0:stg1|out2_r_ff[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:0:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:0:stg1|Add2~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|out2_r_ff\(7));

-- Location: LABCELL_X85_Y14_N24
\butterfly_stage2:1:stg2|mul|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add2~29_sumout\ = SUM(( \butterfly_stage2:1:stg2|mul|Mult1~29\ ) + ( GND ) + ( \butterfly_stage2:1:stg2|mul|Add2~26\ ))
-- \butterfly_stage2:1:stg2|mul|Add2~30\ = CARRY(( \butterfly_stage2:1:stg2|mul|Mult1~29\ ) + ( GND ) + ( \butterfly_stage2:1:stg2|mul|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~29\,
	cin => \butterfly_stage2:1:stg2|mul|Add2~26\,
	sumout => \butterfly_stage2:1:stg2|mul|Add2~29_sumout\,
	cout => \butterfly_stage2:1:stg2|mul|Add2~30\);

-- Location: MLABCELL_X84_Y14_N54
\butterfly_stage2:1:stg2|mul|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add0~29_sumout\ = SUM(( !\butterfly_stage2:1:stg2|mul|Mult0~29\ $ (!\butterfly_stage2:1:stg2|mul|Add2~29_sumout\) ) + ( \butterfly_stage2:1:stg2|mul|Add0~27\ ) + ( \butterfly_stage2:1:stg2|mul|Add0~26\ ))
-- \butterfly_stage2:1:stg2|mul|Add0~30\ = CARRY(( !\butterfly_stage2:1:stg2|mul|Mult0~29\ $ (!\butterfly_stage2:1:stg2|mul|Add2~29_sumout\) ) + ( \butterfly_stage2:1:stg2|mul|Add0~27\ ) + ( \butterfly_stage2:1:stg2|mul|Add0~26\ ))
-- \butterfly_stage2:1:stg2|mul|Add0~31\ = SHARE((\butterfly_stage2:1:stg2|mul|Mult0~29\ & \butterfly_stage2:1:stg2|mul|Add2~29_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~29\,
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_Add2~29_sumout\,
	cin => \butterfly_stage2:1:stg2|mul|Add0~26\,
	sharein => \butterfly_stage2:1:stg2|mul|Add0~27\,
	sumout => \butterfly_stage2:1:stg2|mul|Add0~29_sumout\,
	cout => \butterfly_stage2:1:stg2|mul|Add0~30\,
	shareout => \butterfly_stage2:1:stg2|mul|Add0~31\);

-- Location: FF_X84_Y14_N56
\butterfly_stage2:1:stg2|mul|r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage2:1:stg2|mul|Add0~29_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|mul|r\(7));

-- Location: MLABCELL_X84_Y14_N21
\butterfly_stage2:1:stg2|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|Add2~29_sumout\ = SUM(( !\butterfly_stage1:0:stg1|out2_r_ff\(7) $ (\butterfly_stage2:1:stg2|mul|r\(7)) ) + ( \butterfly_stage2:1:stg2|Add2~27\ ) + ( \butterfly_stage2:1:stg2|Add2~26\ ))
-- \butterfly_stage2:1:stg2|Add2~30\ = CARRY(( !\butterfly_stage1:0:stg1|out2_r_ff\(7) $ (\butterfly_stage2:1:stg2|mul|r\(7)) ) + ( \butterfly_stage2:1:stg2|Add2~27\ ) + ( \butterfly_stage2:1:stg2|Add2~26\ ))
-- \butterfly_stage2:1:stg2|Add2~31\ = SHARE((\butterfly_stage1:0:stg1|out2_r_ff\(7) & !\butterfly_stage2:1:stg2|mul|r\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage1:0:stg1|ALT_INV_out2_r_ff\(7),
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_r\(7),
	cin => \butterfly_stage2:1:stg2|Add2~26\,
	sharein => \butterfly_stage2:1:stg2|Add2~27\,
	sumout => \butterfly_stage2:1:stg2|Add2~29_sumout\,
	cout => \butterfly_stage2:1:stg2|Add2~30\,
	shareout => \butterfly_stage2:1:stg2|Add2~31\);

-- Location: FF_X84_Y14_N22
\butterfly_stage2:1:stg2|out2_r_ff[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:1:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:1:stg2|Add2~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|out2_r_ff\(7));

-- Location: MLABCELL_X84_Y20_N27
\butterfly_stage1:0:stg1|mul|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|Add2~33_sumout\ = SUM(( \butterfly_stage1:0:stg1|mul|Mult1~30\ ) + ( GND ) + ( \butterfly_stage1:0:stg1|mul|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult1~30\,
	cin => \butterfly_stage1:0:stg1|mul|Add2~30\,
	sumout => \butterfly_stage1:0:stg1|mul|Add2~33_sumout\);

-- Location: LABCELL_X83_Y20_N54
\butterfly_stage1:0:stg1|mul|Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|Add3~33_sumout\ = SUM(( \butterfly_stage1:0:stg1|mul|Add2~33_sumout\ ) + ( \butterfly_stage1:0:stg1|mul|Mult0~30\ ) + ( \butterfly_stage1:0:stg1|mul|Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult0~30\,
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_Add2~33_sumout\,
	cin => \butterfly_stage1:0:stg1|mul|Add3~30\,
	sumout => \butterfly_stage1:0:stg1|mul|Add3~33_sumout\);

-- Location: FF_X83_Y20_N55
\butterfly_stage1:0:stg1|mul|r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:0:stg1|mul|Add3~33_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|mul|r\(8));

-- Location: MLABCELL_X87_Y13_N15
\x[0][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[0][8]~feeder_combout\ = ( \x[1][8]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_x[1][8]~q\,
	combout => \x[0][8]~feeder_combout\);

-- Location: FF_X87_Y13_N17
\x[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x[0][8]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => ALT_INV_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[0][8]~q\);

-- Location: LABCELL_X83_Y14_N24
\butterfly_stage1:0:stg1|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|Add2~33_sumout\ = SUM(( !\butterfly_stage1:0:stg1|mul|r\(8) $ (\x[0][8]~q\) ) + ( \butterfly_stage1:0:stg1|Add2~31\ ) + ( \butterfly_stage1:0:stg1|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:0:stg1|mul|ALT_INV_r\(8),
	datad => \ALT_INV_x[0][8]~q\,
	cin => \butterfly_stage1:0:stg1|Add2~30\,
	sharein => \butterfly_stage1:0:stg1|Add2~31\,
	sumout => \butterfly_stage1:0:stg1|Add2~33_sumout\);

-- Location: FF_X83_Y14_N26
\butterfly_stage1:0:stg1|out2_r_ff[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:0:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:0:stg1|Add2~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|out2_r_ff\(8));

-- Location: LABCELL_X85_Y14_N27
\butterfly_stage2:1:stg2|mul|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add2~33_sumout\ = SUM(( \butterfly_stage2:1:stg2|mul|Mult1~30\ ) + ( GND ) + ( \butterfly_stage2:1:stg2|mul|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult1~30\,
	cin => \butterfly_stage2:1:stg2|mul|Add2~30\,
	sumout => \butterfly_stage2:1:stg2|mul|Add2~33_sumout\);

-- Location: MLABCELL_X84_Y14_N57
\butterfly_stage2:1:stg2|mul|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add0~33_sumout\ = SUM(( !\butterfly_stage2:1:stg2|mul|Mult0~30\ $ (!\butterfly_stage2:1:stg2|mul|Add2~33_sumout\) ) + ( \butterfly_stage2:1:stg2|mul|Add0~31\ ) + ( \butterfly_stage2:1:stg2|mul|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult0~30\,
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_Add2~33_sumout\,
	cin => \butterfly_stage2:1:stg2|mul|Add0~30\,
	sharein => \butterfly_stage2:1:stg2|mul|Add0~31\,
	sumout => \butterfly_stage2:1:stg2|mul|Add0~33_sumout\);

-- Location: FF_X84_Y14_N59
\butterfly_stage2:1:stg2|mul|r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage2:1:stg2|mul|Add0~33_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|mul|r\(8));

-- Location: MLABCELL_X84_Y14_N24
\butterfly_stage2:1:stg2|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|Add2~33_sumout\ = SUM(( !\butterfly_stage1:0:stg1|out2_r_ff\(8) $ (\butterfly_stage2:1:stg2|mul|r\(8)) ) + ( \butterfly_stage2:1:stg2|Add2~31\ ) + ( \butterfly_stage2:1:stg2|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:0:stg1|ALT_INV_out2_r_ff\(8),
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_r\(8),
	cin => \butterfly_stage2:1:stg2|Add2~30\,
	sharein => \butterfly_stage2:1:stg2|Add2~31\,
	sumout => \butterfly_stage2:1:stg2|Add2~33_sumout\);

-- Location: FF_X84_Y14_N25
\butterfly_stage2:1:stg2|out2_r_ff[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:1:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:1:stg2|Add2~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|out2_r_ff\(8));

-- Location: LABCELL_X83_Y15_N39
\butterfly_stage2:0:stg2|clk_div2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|clk_div2~0_combout\ = ( !\butterfly_stage1:0:stg1|state~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \butterfly_stage1:0:stg1|ALT_INV_state~q\,
	combout => \butterfly_stage2:0:stg2|clk_div2~0_combout\);

-- Location: FF_X83_Y15_N41
\butterfly_stage2:0:stg2|clk_div2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \butterfly_stage2:0:stg2|clk_div2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|clk_div2~q\);

-- Location: MLABCELL_X82_Y12_N0
\butterfly_stage1:0:stg1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|Add0~1_sumout\ = SUM(( \x[0][0]~q\ ) + ( \butterfly_stage1:0:stg1|mul|r\(0) ) + ( !VCC ))
-- \butterfly_stage1:0:stg1|Add0~2\ = CARRY(( \x[0][0]~q\ ) + ( \butterfly_stage1:0:stg1|mul|r\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:0:stg1|mul|ALT_INV_r\(0),
	datad => \ALT_INV_x[0][0]~q\,
	cin => GND,
	sumout => \butterfly_stage1:0:stg1|Add0~1_sumout\,
	cout => \butterfly_stage1:0:stg1|Add0~2\);

-- Location: FF_X82_Y12_N2
\butterfly_stage1:0:stg1|out1_r_ff[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:0:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:0:stg1|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|out1_r_ff\(0));

-- Location: FF_X84_Y18_N38
\butterfly_stage1:1:stg1|mul|i[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:1:stg1|mul|Add5~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|mul|i[2]~DUPLICATE_q\);

-- Location: FF_X84_Y18_N40
\butterfly_stage1:1:stg1|mul|i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:1:stg1|mul|Add5~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|mul|i\(3));

-- Location: DSP_X86_Y6_N0
\butterfly_stage2:0:stg2|mul|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "0",
	ax_width => 18,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 15,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
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
	operation_mode => "m18x18_full",
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
	aclr => \butterfly_stage2:0:stg2|mul|Mult0~8_ACLR_bus\,
	clk => \butterfly_stage2:0:stg2|mul|Mult0~8_CLK_bus\,
	ena => \butterfly_stage2:0:stg2|mul|Mult0~8_ENA_bus\,
	ax => \butterfly_stage2:0:stg2|mul|Mult0~8_AX_bus\,
	ay => \butterfly_stage2:0:stg2|mul|Mult0~8_AY_bus\,
	resulta => \butterfly_stage2:0:stg2|mul|Mult0~8_RESULTA_bus\);

-- Location: FF_X84_Y16_N1
\butterfly_stage1:1:stg1|mul|r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:1:stg1|mul|Add3~1_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|mul|r\(0));

-- Location: MLABCELL_X87_Y12_N0
\butterfly_stage1:1:stg1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|Add0~1_sumout\ = SUM(( \x[1][0]~q\ ) + ( \butterfly_stage1:1:stg1|mul|r\(0) ) + ( !VCC ))
-- \butterfly_stage1:1:stg1|Add0~2\ = CARRY(( \x[1][0]~q\ ) + ( \butterfly_stage1:1:stg1|mul|r\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:1:stg1|mul|ALT_INV_r\(0),
	datad => \ALT_INV_x[1][0]~q\,
	cin => GND,
	sumout => \butterfly_stage1:1:stg1|Add0~1_sumout\,
	cout => \butterfly_stage1:1:stg1|Add0~2\);

-- Location: FF_X87_Y12_N2
\butterfly_stage1:1:stg1|out1_r_ff[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:1:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:1:stg1|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|out1_r_ff[0]~_Duplicate_1_q\);

-- Location: MLABCELL_X87_Y12_N30
\butterfly_stage2:0:stg2|mul|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add1~1_sumout\ = SUM(( !\butterfly_stage1:1:stg1|out1_r_ff[0]~_Duplicate_1_q\ $ (!\butterfly_stage1:1:stg1|out1_i_ff[0]~_Duplicate_2_q\) ) + ( !VCC ) + ( !VCC ))
-- \butterfly_stage2:0:stg2|mul|Add1~2\ = CARRY(( !\butterfly_stage1:1:stg1|out1_r_ff[0]~_Duplicate_1_q\ $ (!\butterfly_stage1:1:stg1|out1_i_ff[0]~_Duplicate_2_q\) ) + ( !VCC ) + ( !VCC ))
-- \butterfly_stage2:0:stg2|mul|Add1~3\ = SHARE((!\butterfly_stage1:1:stg1|out1_i_ff[0]~_Duplicate_2_q\) # (\butterfly_stage1:1:stg1|out1_r_ff[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:1:stg1|ALT_INV_out1_r_ff[0]~_Duplicate_1_q\,
	datad => \butterfly_stage1:1:stg1|ALT_INV_out1_i_ff[0]~_Duplicate_2_q\,
	cin => GND,
	sharein => GND,
	sumout => \butterfly_stage2:0:stg2|mul|Add1~1_sumout\,
	cout => \butterfly_stage2:0:stg2|mul|Add1~2\,
	shareout => \butterfly_stage2:0:stg2|mul|Add1~3\);

-- Location: MLABCELL_X87_Y12_N3
\butterfly_stage1:1:stg1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|Add0~5_sumout\ = SUM(( \x[1][1]~q\ ) + ( \butterfly_stage1:1:stg1|mul|r\(1) ) + ( \butterfly_stage1:1:stg1|Add0~2\ ))
-- \butterfly_stage1:1:stg1|Add0~6\ = CARRY(( \x[1][1]~q\ ) + ( \butterfly_stage1:1:stg1|mul|r\(1) ) + ( \butterfly_stage1:1:stg1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:1:stg1|mul|ALT_INV_r\(1),
	datad => \ALT_INV_x[1][1]~q\,
	cin => \butterfly_stage1:1:stg1|Add0~2\,
	sumout => \butterfly_stage1:1:stg1|Add0~5_sumout\,
	cout => \butterfly_stage1:1:stg1|Add0~6\);

-- Location: FF_X87_Y12_N5
\butterfly_stage1:1:stg1|out1_r_ff[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:1:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:1:stg1|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|out1_r_ff[1]~_Duplicate_1_q\);

-- Location: FF_X87_Y12_N35
\butterfly_stage1:1:stg1|out1_i_ff[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:1:stg1|ALT_INV_clk_div2~q\,
	asdata => \butterfly_stage1:1:stg1|mul|i\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|out1_i_ff[1]~_Duplicate_1_q\);

-- Location: MLABCELL_X87_Y12_N33
\butterfly_stage2:0:stg2|mul|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add1~5_sumout\ = SUM(( !\butterfly_stage1:1:stg1|out1_r_ff[1]~_Duplicate_1_q\ $ (\butterfly_stage1:1:stg1|out1_i_ff[1]~_Duplicate_1_q\) ) + ( \butterfly_stage2:0:stg2|mul|Add1~3\ ) + ( \butterfly_stage2:0:stg2|mul|Add1~2\ ))
-- \butterfly_stage2:0:stg2|mul|Add1~6\ = CARRY(( !\butterfly_stage1:1:stg1|out1_r_ff[1]~_Duplicate_1_q\ $ (\butterfly_stage1:1:stg1|out1_i_ff[1]~_Duplicate_1_q\) ) + ( \butterfly_stage2:0:stg2|mul|Add1~3\ ) + ( \butterfly_stage2:0:stg2|mul|Add1~2\ ))
-- \butterfly_stage2:0:stg2|mul|Add1~7\ = SHARE((\butterfly_stage1:1:stg1|out1_r_ff[1]~_Duplicate_1_q\ & !\butterfly_stage1:1:stg1|out1_i_ff[1]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage1:1:stg1|ALT_INV_out1_r_ff[1]~_Duplicate_1_q\,
	datad => \butterfly_stage1:1:stg1|ALT_INV_out1_i_ff[1]~_Duplicate_1_q\,
	cin => \butterfly_stage2:0:stg2|mul|Add1~2\,
	sharein => \butterfly_stage2:0:stg2|mul|Add1~3\,
	sumout => \butterfly_stage2:0:stg2|mul|Add1~5_sumout\,
	cout => \butterfly_stage2:0:stg2|mul|Add1~6\,
	shareout => \butterfly_stage2:0:stg2|mul|Add1~7\);

-- Location: FF_X84_Y16_N8
\butterfly_stage1:1:stg1|mul|r[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:1:stg1|mul|Add3~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|mul|r[2]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y12_N6
\butterfly_stage1:1:stg1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|Add0~9_sumout\ = SUM(( \butterfly_stage1:1:stg1|mul|r[2]~DUPLICATE_q\ ) + ( \x[1][2]~q\ ) + ( \butterfly_stage1:1:stg1|Add0~6\ ))
-- \butterfly_stage1:1:stg1|Add0~10\ = CARRY(( \butterfly_stage1:1:stg1|mul|r[2]~DUPLICATE_q\ ) + ( \x[1][2]~q\ ) + ( \butterfly_stage1:1:stg1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x[1][2]~q\,
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_r[2]~DUPLICATE_q\,
	cin => \butterfly_stage1:1:stg1|Add0~6\,
	sumout => \butterfly_stage1:1:stg1|Add0~9_sumout\,
	cout => \butterfly_stage1:1:stg1|Add0~10\);

-- Location: FF_X87_Y12_N7
\butterfly_stage1:1:stg1|out1_r_ff[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:1:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:1:stg1|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|out1_r_ff[2]~_Duplicate_1_q\);

-- Location: FF_X87_Y12_N38
\butterfly_stage1:1:stg1|out1_i_ff[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:1:stg1|ALT_INV_clk_div2~q\,
	asdata => \butterfly_stage1:1:stg1|mul|i[2]~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|out1_i_ff[2]~_Duplicate_1_q\);

-- Location: MLABCELL_X87_Y12_N36
\butterfly_stage2:0:stg2|mul|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add1~9_sumout\ = SUM(( !\butterfly_stage1:1:stg1|out1_r_ff[2]~_Duplicate_1_q\ $ (\butterfly_stage1:1:stg1|out1_i_ff[2]~_Duplicate_1_q\) ) + ( \butterfly_stage2:0:stg2|mul|Add1~7\ ) + ( \butterfly_stage2:0:stg2|mul|Add1~6\ ))
-- \butterfly_stage2:0:stg2|mul|Add1~10\ = CARRY(( !\butterfly_stage1:1:stg1|out1_r_ff[2]~_Duplicate_1_q\ $ (\butterfly_stage1:1:stg1|out1_i_ff[2]~_Duplicate_1_q\) ) + ( \butterfly_stage2:0:stg2|mul|Add1~7\ ) + ( \butterfly_stage2:0:stg2|mul|Add1~6\ ))
-- \butterfly_stage2:0:stg2|mul|Add1~11\ = SHARE((\butterfly_stage1:1:stg1|out1_r_ff[2]~_Duplicate_1_q\ & !\butterfly_stage1:1:stg1|out1_i_ff[2]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:1:stg1|ALT_INV_out1_r_ff[2]~_Duplicate_1_q\,
	datad => \butterfly_stage1:1:stg1|ALT_INV_out1_i_ff[2]~_Duplicate_1_q\,
	cin => \butterfly_stage2:0:stg2|mul|Add1~6\,
	sharein => \butterfly_stage2:0:stg2|mul|Add1~7\,
	sumout => \butterfly_stage2:0:stg2|mul|Add1~9_sumout\,
	cout => \butterfly_stage2:0:stg2|mul|Add1~10\,
	shareout => \butterfly_stage2:0:stg2|mul|Add1~11\);

-- Location: FF_X84_Y16_N10
\butterfly_stage1:1:stg1|mul|r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:1:stg1|mul|Add3~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|mul|r\(3));

-- Location: MLABCELL_X87_Y12_N9
\butterfly_stage1:1:stg1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|Add0~13_sumout\ = SUM(( \x[1][3]~q\ ) + ( \butterfly_stage1:1:stg1|mul|r\(3) ) + ( \butterfly_stage1:1:stg1|Add0~10\ ))
-- \butterfly_stage1:1:stg1|Add0~14\ = CARRY(( \x[1][3]~q\ ) + ( \butterfly_stage1:1:stg1|mul|r\(3) ) + ( \butterfly_stage1:1:stg1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:1:stg1|mul|ALT_INV_r\(3),
	datad => \ALT_INV_x[1][3]~q\,
	cin => \butterfly_stage1:1:stg1|Add0~10\,
	sumout => \butterfly_stage1:1:stg1|Add0~13_sumout\,
	cout => \butterfly_stage1:1:stg1|Add0~14\);

-- Location: FF_X87_Y12_N11
\butterfly_stage1:1:stg1|out1_r_ff[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:1:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:1:stg1|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|out1_r_ff[3]~_Duplicate_1_q\);

-- Location: FF_X87_Y12_N41
\butterfly_stage1:1:stg1|out1_i_ff[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:1:stg1|ALT_INV_clk_div2~q\,
	asdata => \butterfly_stage1:1:stg1|mul|i\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|out1_i_ff[3]~_Duplicate_1_q\);

-- Location: MLABCELL_X87_Y12_N39
\butterfly_stage2:0:stg2|mul|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add1~13_sumout\ = SUM(( !\butterfly_stage1:1:stg1|out1_r_ff[3]~_Duplicate_1_q\ $ (\butterfly_stage1:1:stg1|out1_i_ff[3]~_Duplicate_1_q\) ) + ( \butterfly_stage2:0:stg2|mul|Add1~11\ ) + ( \butterfly_stage2:0:stg2|mul|Add1~10\ 
-- ))
-- \butterfly_stage2:0:stg2|mul|Add1~14\ = CARRY(( !\butterfly_stage1:1:stg1|out1_r_ff[3]~_Duplicate_1_q\ $ (\butterfly_stage1:1:stg1|out1_i_ff[3]~_Duplicate_1_q\) ) + ( \butterfly_stage2:0:stg2|mul|Add1~11\ ) + ( \butterfly_stage2:0:stg2|mul|Add1~10\ ))
-- \butterfly_stage2:0:stg2|mul|Add1~15\ = SHARE((\butterfly_stage1:1:stg1|out1_r_ff[3]~_Duplicate_1_q\ & !\butterfly_stage1:1:stg1|out1_i_ff[3]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:1:stg1|ALT_INV_out1_r_ff[3]~_Duplicate_1_q\,
	datad => \butterfly_stage1:1:stg1|ALT_INV_out1_i_ff[3]~_Duplicate_1_q\,
	cin => \butterfly_stage2:0:stg2|mul|Add1~10\,
	sharein => \butterfly_stage2:0:stg2|mul|Add1~11\,
	sumout => \butterfly_stage2:0:stg2|mul|Add1~13_sumout\,
	cout => \butterfly_stage2:0:stg2|mul|Add1~14\,
	shareout => \butterfly_stage2:0:stg2|mul|Add1~15\);

-- Location: FF_X84_Y16_N13
\butterfly_stage1:1:stg1|mul|r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:1:stg1|mul|Add3~17_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|mul|r\(4));

-- Location: MLABCELL_X87_Y12_N12
\butterfly_stage1:1:stg1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|Add0~17_sumout\ = SUM(( \butterfly_stage1:1:stg1|mul|r\(4) ) + ( \x[1][4]~q\ ) + ( \butterfly_stage1:1:stg1|Add0~14\ ))
-- \butterfly_stage1:1:stg1|Add0~18\ = CARRY(( \butterfly_stage1:1:stg1|mul|r\(4) ) + ( \x[1][4]~q\ ) + ( \butterfly_stage1:1:stg1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x[1][4]~q\,
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_r\(4),
	cin => \butterfly_stage1:1:stg1|Add0~14\,
	sumout => \butterfly_stage1:1:stg1|Add0~17_sumout\,
	cout => \butterfly_stage1:1:stg1|Add0~18\);

-- Location: FF_X87_Y12_N14
\butterfly_stage1:1:stg1|out1_r_ff[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:1:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:1:stg1|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|out1_r_ff[4]~_Duplicate_1_q\);

-- Location: FF_X87_Y12_N44
\butterfly_stage1:1:stg1|out1_i_ff[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:1:stg1|ALT_INV_clk_div2~q\,
	asdata => \butterfly_stage1:1:stg1|mul|i\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|out1_i_ff[4]~_Duplicate_1_q\);

-- Location: MLABCELL_X87_Y12_N42
\butterfly_stage2:0:stg2|mul|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add1~17_sumout\ = SUM(( !\butterfly_stage1:1:stg1|out1_r_ff[4]~_Duplicate_1_q\ $ (\butterfly_stage1:1:stg1|out1_i_ff[4]~_Duplicate_1_q\) ) + ( \butterfly_stage2:0:stg2|mul|Add1~15\ ) + ( \butterfly_stage2:0:stg2|mul|Add1~14\ 
-- ))
-- \butterfly_stage2:0:stg2|mul|Add1~18\ = CARRY(( !\butterfly_stage1:1:stg1|out1_r_ff[4]~_Duplicate_1_q\ $ (\butterfly_stage1:1:stg1|out1_i_ff[4]~_Duplicate_1_q\) ) + ( \butterfly_stage2:0:stg2|mul|Add1~15\ ) + ( \butterfly_stage2:0:stg2|mul|Add1~14\ ))
-- \butterfly_stage2:0:stg2|mul|Add1~19\ = SHARE((\butterfly_stage1:1:stg1|out1_r_ff[4]~_Duplicate_1_q\ & !\butterfly_stage1:1:stg1|out1_i_ff[4]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage1:1:stg1|ALT_INV_out1_r_ff[4]~_Duplicate_1_q\,
	datad => \butterfly_stage1:1:stg1|ALT_INV_out1_i_ff[4]~_Duplicate_1_q\,
	cin => \butterfly_stage2:0:stg2|mul|Add1~14\,
	sharein => \butterfly_stage2:0:stg2|mul|Add1~15\,
	sumout => \butterfly_stage2:0:stg2|mul|Add1~17_sumout\,
	cout => \butterfly_stage2:0:stg2|mul|Add1~18\,
	shareout => \butterfly_stage2:0:stg2|mul|Add1~19\);

-- Location: FF_X84_Y16_N16
\butterfly_stage1:1:stg1|mul|r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:1:stg1|mul|Add3~21_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|mul|r\(5));

-- Location: MLABCELL_X87_Y12_N15
\butterfly_stage1:1:stg1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|Add0~21_sumout\ = SUM(( \x[1][5]~q\ ) + ( \butterfly_stage1:1:stg1|mul|r\(5) ) + ( \butterfly_stage1:1:stg1|Add0~18\ ))
-- \butterfly_stage1:1:stg1|Add0~22\ = CARRY(( \x[1][5]~q\ ) + ( \butterfly_stage1:1:stg1|mul|r\(5) ) + ( \butterfly_stage1:1:stg1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:1:stg1|mul|ALT_INV_r\(5),
	datad => \ALT_INV_x[1][5]~q\,
	cin => \butterfly_stage1:1:stg1|Add0~18\,
	sumout => \butterfly_stage1:1:stg1|Add0~21_sumout\,
	cout => \butterfly_stage1:1:stg1|Add0~22\);

-- Location: FF_X87_Y12_N17
\butterfly_stage1:1:stg1|out1_r_ff[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:1:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:1:stg1|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|out1_r_ff[5]~_Duplicate_1_q\);

-- Location: FF_X87_Y12_N47
\butterfly_stage1:1:stg1|out1_i_ff[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:1:stg1|ALT_INV_clk_div2~q\,
	asdata => \butterfly_stage1:1:stg1|mul|i\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|out1_i_ff[5]~_Duplicate_1_q\);

-- Location: MLABCELL_X87_Y12_N45
\butterfly_stage2:0:stg2|mul|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add1~21_sumout\ = SUM(( !\butterfly_stage1:1:stg1|out1_r_ff[5]~_Duplicate_1_q\ $ (\butterfly_stage1:1:stg1|out1_i_ff[5]~_Duplicate_1_q\) ) + ( \butterfly_stage2:0:stg2|mul|Add1~19\ ) + ( \butterfly_stage2:0:stg2|mul|Add1~18\ 
-- ))
-- \butterfly_stage2:0:stg2|mul|Add1~22\ = CARRY(( !\butterfly_stage1:1:stg1|out1_r_ff[5]~_Duplicate_1_q\ $ (\butterfly_stage1:1:stg1|out1_i_ff[5]~_Duplicate_1_q\) ) + ( \butterfly_stage2:0:stg2|mul|Add1~19\ ) + ( \butterfly_stage2:0:stg2|mul|Add1~18\ ))
-- \butterfly_stage2:0:stg2|mul|Add1~23\ = SHARE((\butterfly_stage1:1:stg1|out1_r_ff[5]~_Duplicate_1_q\ & !\butterfly_stage1:1:stg1|out1_i_ff[5]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:1:stg1|ALT_INV_out1_r_ff[5]~_Duplicate_1_q\,
	datad => \butterfly_stage1:1:stg1|ALT_INV_out1_i_ff[5]~_Duplicate_1_q\,
	cin => \butterfly_stage2:0:stg2|mul|Add1~18\,
	sharein => \butterfly_stage2:0:stg2|mul|Add1~19\,
	sumout => \butterfly_stage2:0:stg2|mul|Add1~21_sumout\,
	cout => \butterfly_stage2:0:stg2|mul|Add1~22\,
	shareout => \butterfly_stage2:0:stg2|mul|Add1~23\);

-- Location: FF_X84_Y16_N19
\butterfly_stage1:1:stg1|mul|r[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:1:stg1|mul|Add3~25_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|mul|r[6]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y12_N18
\butterfly_stage1:1:stg1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|Add0~25_sumout\ = SUM(( \x[1][6]~q\ ) + ( \butterfly_stage1:1:stg1|mul|r[6]~DUPLICATE_q\ ) + ( \butterfly_stage1:1:stg1|Add0~22\ ))
-- \butterfly_stage1:1:stg1|Add0~26\ = CARRY(( \x[1][6]~q\ ) + ( \butterfly_stage1:1:stg1|mul|r[6]~DUPLICATE_q\ ) + ( \butterfly_stage1:1:stg1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:1:stg1|mul|ALT_INV_r[6]~DUPLICATE_q\,
	datad => \ALT_INV_x[1][6]~q\,
	cin => \butterfly_stage1:1:stg1|Add0~22\,
	sumout => \butterfly_stage1:1:stg1|Add0~25_sumout\,
	cout => \butterfly_stage1:1:stg1|Add0~26\);

-- Location: FF_X87_Y12_N20
\butterfly_stage1:1:stg1|out1_r_ff[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:1:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:1:stg1|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|out1_r_ff[6]~_Duplicate_1_q\);

-- Location: FF_X87_Y12_N50
\butterfly_stage1:1:stg1|out1_i_ff[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:1:stg1|ALT_INV_clk_div2~q\,
	asdata => \butterfly_stage1:1:stg1|mul|i\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|out1_i_ff[6]~_Duplicate_1_q\);

-- Location: MLABCELL_X87_Y12_N48
\butterfly_stage2:0:stg2|mul|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add1~25_sumout\ = SUM(( !\butterfly_stage1:1:stg1|out1_r_ff[6]~_Duplicate_1_q\ $ (\butterfly_stage1:1:stg1|out1_i_ff[6]~_Duplicate_1_q\) ) + ( \butterfly_stage2:0:stg2|mul|Add1~23\ ) + ( \butterfly_stage2:0:stg2|mul|Add1~22\ 
-- ))
-- \butterfly_stage2:0:stg2|mul|Add1~26\ = CARRY(( !\butterfly_stage1:1:stg1|out1_r_ff[6]~_Duplicate_1_q\ $ (\butterfly_stage1:1:stg1|out1_i_ff[6]~_Duplicate_1_q\) ) + ( \butterfly_stage2:0:stg2|mul|Add1~23\ ) + ( \butterfly_stage2:0:stg2|mul|Add1~22\ ))
-- \butterfly_stage2:0:stg2|mul|Add1~27\ = SHARE((\butterfly_stage1:1:stg1|out1_r_ff[6]~_Duplicate_1_q\ & !\butterfly_stage1:1:stg1|out1_i_ff[6]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:1:stg1|ALT_INV_out1_r_ff[6]~_Duplicate_1_q\,
	datad => \butterfly_stage1:1:stg1|ALT_INV_out1_i_ff[6]~_Duplicate_1_q\,
	cin => \butterfly_stage2:0:stg2|mul|Add1~22\,
	sharein => \butterfly_stage2:0:stg2|mul|Add1~23\,
	sumout => \butterfly_stage2:0:stg2|mul|Add1~25_sumout\,
	cout => \butterfly_stage2:0:stg2|mul|Add1~26\,
	shareout => \butterfly_stage2:0:stg2|mul|Add1~27\);

-- Location: FF_X84_Y16_N22
\butterfly_stage1:1:stg1|mul|r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:1:stg1|mul|Add3~29_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|mul|r\(7));

-- Location: MLABCELL_X87_Y12_N21
\butterfly_stage1:1:stg1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|Add0~29_sumout\ = SUM(( \butterfly_stage1:1:stg1|mul|r\(7) ) + ( \x[1][7]~q\ ) + ( \butterfly_stage1:1:stg1|Add0~26\ ))
-- \butterfly_stage1:1:stg1|Add0~30\ = CARRY(( \butterfly_stage1:1:stg1|mul|r\(7) ) + ( \x[1][7]~q\ ) + ( \butterfly_stage1:1:stg1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x[1][7]~q\,
	datad => \butterfly_stage1:1:stg1|mul|ALT_INV_r\(7),
	cin => \butterfly_stage1:1:stg1|Add0~26\,
	sumout => \butterfly_stage1:1:stg1|Add0~29_sumout\,
	cout => \butterfly_stage1:1:stg1|Add0~30\);

-- Location: FF_X87_Y12_N22
\butterfly_stage1:1:stg1|out1_r_ff[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:1:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:1:stg1|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|out1_r_ff[7]~_Duplicate_1_q\);

-- Location: FF_X87_Y12_N53
\butterfly_stage1:1:stg1|out1_i_ff[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:1:stg1|ALT_INV_clk_div2~q\,
	asdata => \butterfly_stage1:1:stg1|mul|i\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|out1_i_ff[7]~_Duplicate_1_q\);

-- Location: MLABCELL_X87_Y12_N51
\butterfly_stage2:0:stg2|mul|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add1~29_sumout\ = SUM(( !\butterfly_stage1:1:stg1|out1_r_ff[7]~_Duplicate_1_q\ $ (\butterfly_stage1:1:stg1|out1_i_ff[7]~_Duplicate_1_q\) ) + ( \butterfly_stage2:0:stg2|mul|Add1~27\ ) + ( \butterfly_stage2:0:stg2|mul|Add1~26\ 
-- ))
-- \butterfly_stage2:0:stg2|mul|Add1~30\ = CARRY(( !\butterfly_stage1:1:stg1|out1_r_ff[7]~_Duplicate_1_q\ $ (\butterfly_stage1:1:stg1|out1_i_ff[7]~_Duplicate_1_q\) ) + ( \butterfly_stage2:0:stg2|mul|Add1~27\ ) + ( \butterfly_stage2:0:stg2|mul|Add1~26\ ))
-- \butterfly_stage2:0:stg2|mul|Add1~31\ = SHARE((\butterfly_stage1:1:stg1|out1_r_ff[7]~_Duplicate_1_q\ & !\butterfly_stage1:1:stg1|out1_i_ff[7]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:1:stg1|ALT_INV_out1_r_ff[7]~_Duplicate_1_q\,
	datad => \butterfly_stage1:1:stg1|ALT_INV_out1_i_ff[7]~_Duplicate_1_q\,
	cin => \butterfly_stage2:0:stg2|mul|Add1~26\,
	sharein => \butterfly_stage2:0:stg2|mul|Add1~27\,
	sumout => \butterfly_stage2:0:stg2|mul|Add1~29_sumout\,
	cout => \butterfly_stage2:0:stg2|mul|Add1~30\,
	shareout => \butterfly_stage2:0:stg2|mul|Add1~31\);

-- Location: MLABCELL_X87_Y12_N24
\butterfly_stage1:1:stg1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:1:stg1|Add0~33_sumout\ = SUM(( \butterfly_stage1:1:stg1|mul|r\(8) ) + ( \x[1][8]~q\ ) + ( \butterfly_stage1:1:stg1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[1][8]~q\,
	datac => \butterfly_stage1:1:stg1|mul|ALT_INV_r\(8),
	cin => \butterfly_stage1:1:stg1|Add0~30\,
	sumout => \butterfly_stage1:1:stg1|Add0~33_sumout\);

-- Location: FF_X87_Y12_N26
\butterfly_stage1:1:stg1|out1_r_ff[8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:1:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:1:stg1|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|out1_r_ff[8]~_Duplicate_1_q\);

-- Location: FF_X87_Y12_N56
\butterfly_stage1:1:stg1|out1_i_ff[8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:1:stg1|ALT_INV_clk_div2~q\,
	asdata => \butterfly_stage1:1:stg1|mul|i\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:1:stg1|out1_i_ff[8]~_Duplicate_1_q\);

-- Location: MLABCELL_X87_Y12_N54
\butterfly_stage2:0:stg2|mul|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add1~33_sumout\ = SUM(( !\butterfly_stage1:1:stg1|out1_r_ff[8]~_Duplicate_1_q\ $ (\butterfly_stage1:1:stg1|out1_i_ff[8]~_Duplicate_1_q\) ) + ( \butterfly_stage2:0:stg2|mul|Add1~31\ ) + ( \butterfly_stage2:0:stg2|mul|Add1~30\ 
-- ))
-- \butterfly_stage2:0:stg2|mul|Add1~34\ = CARRY(( !\butterfly_stage1:1:stg1|out1_r_ff[8]~_Duplicate_1_q\ $ (\butterfly_stage1:1:stg1|out1_i_ff[8]~_Duplicate_1_q\) ) + ( \butterfly_stage2:0:stg2|mul|Add1~31\ ) + ( \butterfly_stage2:0:stg2|mul|Add1~30\ ))
-- \butterfly_stage2:0:stg2|mul|Add1~35\ = SHARE((\butterfly_stage1:1:stg1|out1_r_ff[8]~_Duplicate_1_q\ & !\butterfly_stage1:1:stg1|out1_i_ff[8]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage1:1:stg1|ALT_INV_out1_r_ff[8]~_Duplicate_1_q\,
	datad => \butterfly_stage1:1:stg1|ALT_INV_out1_i_ff[8]~_Duplicate_1_q\,
	cin => \butterfly_stage2:0:stg2|mul|Add1~30\,
	sharein => \butterfly_stage2:0:stg2|mul|Add1~31\,
	sumout => \butterfly_stage2:0:stg2|mul|Add1~33_sumout\,
	cout => \butterfly_stage2:0:stg2|mul|Add1~34\,
	shareout => \butterfly_stage2:0:stg2|mul|Add1~35\);

-- Location: MLABCELL_X87_Y12_N57
\butterfly_stage2:0:stg2|mul|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add1~37_sumout\ = SUM(( !\butterfly_stage1:1:stg1|out1_r_ff[8]~_Duplicate_1_q\ $ (\butterfly_stage1:1:stg1|out1_i_ff[8]~_Duplicate_1_q\) ) + ( \butterfly_stage2:0:stg2|mul|Add1~35\ ) + ( \butterfly_stage2:0:stg2|mul|Add1~34\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage1:1:stg1|ALT_INV_out1_r_ff[8]~_Duplicate_1_q\,
	datad => \butterfly_stage1:1:stg1|ALT_INV_out1_i_ff[8]~_Duplicate_1_q\,
	cin => \butterfly_stage2:0:stg2|mul|Add1~34\,
	sharein => \butterfly_stage2:0:stg2|mul|Add1~35\,
	sumout => \butterfly_stage2:0:stg2|mul|Add1~37_sumout\);

-- Location: DSP_X86_Y12_N0
\butterfly_stage2:0:stg2|mul|Mult1~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 15,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
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
	operation_mode => "m18x18_full",
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
	ax => \butterfly_stage2:0:stg2|mul|Mult1~8_AX_bus\,
	ay => \butterfly_stage2:0:stg2|mul|Mult1~8_AY_bus\,
	resulta => \butterfly_stage2:0:stg2|mul|Mult1~8_RESULTA_bus\);

-- Location: LABCELL_X85_Y12_N54
\butterfly_stage2:0:stg2|mul|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|WideOr1~0_combout\ = ( !\butterfly_stage2:0:stg2|mul|Mult1~12\ & ( !\butterfly_stage2:0:stg2|mul|Mult1~9\ & ( (!\butterfly_stage2:0:stg2|mul|Mult1~8_resulta\ & (!\butterfly_stage2:0:stg2|mul|Mult1~10\ & 
-- !\butterfly_stage2:0:stg2|mul|Mult1~11\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~8_resulta\,
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~10\,
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~11\,
	datae => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~12\,
	dataf => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~9\,
	combout => \butterfly_stage2:0:stg2|mul|WideOr1~0_combout\);

-- Location: LABCELL_X85_Y12_N42
\butterfly_stage2:0:stg2|mul|WideOr1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|WideOr1~1_combout\ = ( !\butterfly_stage2:0:stg2|mul|Mult1~18\ & ( !\butterfly_stage2:0:stg2|mul|Mult1~14\ & ( (!\butterfly_stage2:0:stg2|mul|Mult1~16\ & (!\butterfly_stage2:0:stg2|mul|Mult1~17\ & 
-- !\butterfly_stage2:0:stg2|mul|Mult1~15\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~16\,
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~17\,
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~15\,
	datae => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~18\,
	dataf => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~14\,
	combout => \butterfly_stage2:0:stg2|mul|WideOr1~1_combout\);

-- Location: LABCELL_X85_Y12_N36
\butterfly_stage2:0:stg2|mul|WideOr1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|WideOr1~combout\ = ( \butterfly_stage2:0:stg2|mul|WideOr1~0_combout\ & ( \butterfly_stage2:0:stg2|mul|WideOr1~1_combout\ & ( (((\butterfly_stage2:0:stg2|mul|Mult1~20\) # (\butterfly_stage2:0:stg2|mul|Mult1~13\)) # 
-- (\butterfly_stage2:0:stg2|mul|Mult1~21\)) # (\butterfly_stage2:0:stg2|mul|Mult1~19\) ) ) ) # ( !\butterfly_stage2:0:stg2|mul|WideOr1~0_combout\ & ( \butterfly_stage2:0:stg2|mul|WideOr1~1_combout\ ) ) # ( \butterfly_stage2:0:stg2|mul|WideOr1~0_combout\ & ( 
-- !\butterfly_stage2:0:stg2|mul|WideOr1~1_combout\ ) ) # ( !\butterfly_stage2:0:stg2|mul|WideOr1~0_combout\ & ( !\butterfly_stage2:0:stg2|mul|WideOr1~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~19\,
	datab => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~21\,
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~13\,
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~20\,
	datae => \butterfly_stage2:0:stg2|mul|ALT_INV_WideOr1~0_combout\,
	dataf => \butterfly_stage2:0:stg2|mul|ALT_INV_WideOr1~1_combout\,
	combout => \butterfly_stage2:0:stg2|mul|WideOr1~combout\);

-- Location: LABCELL_X85_Y12_N0
\butterfly_stage2:0:stg2|mul|Add2~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add2~38_cout\ = CARRY(( \butterfly_stage2:0:stg2|mul|WideOr1~combout\ ) + ( \butterfly_stage2:0:stg2|mul|Mult1~32\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~32\,
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_WideOr1~combout\,
	cin => GND,
	cout => \butterfly_stage2:0:stg2|mul|Add2~38_cout\);

-- Location: LABCELL_X85_Y12_N3
\butterfly_stage2:0:stg2|mul|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add2~1_sumout\ = SUM(( \butterfly_stage2:0:stg2|mul|Mult1~22\ ) + ( GND ) + ( \butterfly_stage2:0:stg2|mul|Add2~38_cout\ ))
-- \butterfly_stage2:0:stg2|mul|Add2~2\ = CARRY(( \butterfly_stage2:0:stg2|mul|Mult1~22\ ) + ( GND ) + ( \butterfly_stage2:0:stg2|mul|Add2~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~22\,
	cin => \butterfly_stage2:0:stg2|mul|Add2~38_cout\,
	sumout => \butterfly_stage2:0:stg2|mul|Add2~1_sumout\,
	cout => \butterfly_stage2:0:stg2|mul|Add2~2\);

-- Location: MLABCELL_X87_Y6_N51
\butterfly_stage2:0:stg2|mul|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|WideOr0~0_combout\ = ( !\butterfly_stage2:0:stg2|mul|Mult0~10\ & ( !\butterfly_stage2:0:stg2|mul|Mult0~9\ & ( (!\butterfly_stage2:0:stg2|mul|Mult0~12\ & (!\butterfly_stage2:0:stg2|mul|Mult0~11\ & 
-- !\butterfly_stage2:0:stg2|mul|Mult0~8_resulta\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~12\,
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~11\,
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~8_resulta\,
	datae => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~10\,
	dataf => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~9\,
	combout => \butterfly_stage2:0:stg2|mul|WideOr0~0_combout\);

-- Location: MLABCELL_X87_Y6_N6
\butterfly_stage2:0:stg2|mul|WideOr0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|WideOr0~1_combout\ = ( !\butterfly_stage2:0:stg2|mul|Mult0~17\ & ( !\butterfly_stage2:0:stg2|mul|Mult0~15\ & ( (!\butterfly_stage2:0:stg2|mul|Mult0~18\ & (!\butterfly_stage2:0:stg2|mul|Mult0~14\ & 
-- !\butterfly_stage2:0:stg2|mul|Mult0~16\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~18\,
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~14\,
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~16\,
	datae => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~17\,
	dataf => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~15\,
	combout => \butterfly_stage2:0:stg2|mul|WideOr0~1_combout\);

-- Location: MLABCELL_X87_Y6_N12
\butterfly_stage2:0:stg2|mul|WideOr0\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|WideOr0~combout\ = ( \butterfly_stage2:0:stg2|mul|Mult0~19\ & ( \butterfly_stage2:0:stg2|mul|WideOr0~1_combout\ ) ) # ( !\butterfly_stage2:0:stg2|mul|Mult0~19\ & ( \butterfly_stage2:0:stg2|mul|WideOr0~1_combout\ & ( 
-- (!\butterfly_stage2:0:stg2|mul|WideOr0~0_combout\) # (((\butterfly_stage2:0:stg2|mul|Mult0~13\) # (\butterfly_stage2:0:stg2|mul|Mult0~20\)) # (\butterfly_stage2:0:stg2|mul|Mult0~21\)) ) ) ) # ( \butterfly_stage2:0:stg2|mul|Mult0~19\ & ( 
-- !\butterfly_stage2:0:stg2|mul|WideOr0~1_combout\ ) ) # ( !\butterfly_stage2:0:stg2|mul|Mult0~19\ & ( !\butterfly_stage2:0:stg2|mul|WideOr0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage2:0:stg2|mul|ALT_INV_WideOr0~0_combout\,
	datab => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~21\,
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~20\,
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~13\,
	datae => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~19\,
	dataf => \butterfly_stage2:0:stg2|mul|ALT_INV_WideOr0~1_combout\,
	combout => \butterfly_stage2:0:stg2|mul|WideOr0~combout\);

-- Location: MLABCELL_X84_Y12_N0
\butterfly_stage2:0:stg2|mul|Add0~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add0~38_cout\ = CARRY(( !\butterfly_stage2:0:stg2|mul|Mult0~31\ $ (!\butterfly_stage2:0:stg2|mul|WideOr0~combout\) ) + ( !VCC ) + ( !VCC ))
-- \butterfly_stage2:0:stg2|mul|Add0~39\ = SHARE((\butterfly_stage2:0:stg2|mul|Mult0~31\ & \butterfly_stage2:0:stg2|mul|WideOr0~combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~31\,
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_WideOr0~combout\,
	cin => GND,
	sharein => GND,
	cout => \butterfly_stage2:0:stg2|mul|Add0~38_cout\,
	shareout => \butterfly_stage2:0:stg2|mul|Add0~39\);

-- Location: MLABCELL_X84_Y12_N3
\butterfly_stage2:0:stg2|mul|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add0~1_sumout\ = SUM(( !\butterfly_stage2:0:stg2|mul|Mult0~22\ $ (!\butterfly_stage2:0:stg2|mul|Add2~1_sumout\) ) + ( \butterfly_stage2:0:stg2|mul|Add0~39\ ) + ( \butterfly_stage2:0:stg2|mul|Add0~38_cout\ ))
-- \butterfly_stage2:0:stg2|mul|Add0~2\ = CARRY(( !\butterfly_stage2:0:stg2|mul|Mult0~22\ $ (!\butterfly_stage2:0:stg2|mul|Add2~1_sumout\) ) + ( \butterfly_stage2:0:stg2|mul|Add0~39\ ) + ( \butterfly_stage2:0:stg2|mul|Add0~38_cout\ ))
-- \butterfly_stage2:0:stg2|mul|Add0~3\ = SHARE((\butterfly_stage2:0:stg2|mul|Mult0~22\ & \butterfly_stage2:0:stg2|mul|Add2~1_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~22\,
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_Add2~1_sumout\,
	cin => \butterfly_stage2:0:stg2|mul|Add0~38_cout\,
	sharein => \butterfly_stage2:0:stg2|mul|Add0~39\,
	sumout => \butterfly_stage2:0:stg2|mul|Add0~1_sumout\,
	cout => \butterfly_stage2:0:stg2|mul|Add0~2\,
	shareout => \butterfly_stage2:0:stg2|mul|Add0~3\);

-- Location: FF_X84_Y12_N5
\butterfly_stage2:0:stg2|mul|r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage2:0:stg2|mul|Add0~1_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|mul|r\(0));

-- Location: LABCELL_X83_Y12_N0
\butterfly_stage2:0:stg2|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|Add2~1_sumout\ = SUM(( !\butterfly_stage1:0:stg1|out1_r_ff\(0) $ (!\butterfly_stage2:0:stg2|mul|r\(0)) ) + ( !VCC ) + ( !VCC ))
-- \butterfly_stage2:0:stg2|Add2~2\ = CARRY(( !\butterfly_stage1:0:stg1|out1_r_ff\(0) $ (!\butterfly_stage2:0:stg2|mul|r\(0)) ) + ( !VCC ) + ( !VCC ))
-- \butterfly_stage2:0:stg2|Add2~3\ = SHARE((!\butterfly_stage2:0:stg2|mul|r\(0)) # (\butterfly_stage1:0:stg1|out1_r_ff\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage1:0:stg1|ALT_INV_out1_r_ff\(0),
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_r\(0),
	cin => GND,
	sharein => GND,
	sumout => \butterfly_stage2:0:stg2|Add2~1_sumout\,
	cout => \butterfly_stage2:0:stg2|Add2~2\,
	shareout => \butterfly_stage2:0:stg2|Add2~3\);

-- Location: FF_X83_Y12_N1
\butterfly_stage2:0:stg2|out2_r_ff[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:0:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:0:stg2|Add2~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|out2_r_ff\(0));

-- Location: FF_X83_Y20_N35
\butterfly_stage1:0:stg1|mul|r[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:0:stg1|mul|Add3~5_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|mul|r[1]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y12_N3
\butterfly_stage1:0:stg1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|Add0~5_sumout\ = SUM(( \butterfly_stage1:0:stg1|mul|r[1]~DUPLICATE_q\ ) + ( \x[0][1]~q\ ) + ( \butterfly_stage1:0:stg1|Add0~2\ ))
-- \butterfly_stage1:0:stg1|Add0~6\ = CARRY(( \butterfly_stage1:0:stg1|mul|r[1]~DUPLICATE_q\ ) + ( \x[0][1]~q\ ) + ( \butterfly_stage1:0:stg1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[0][1]~q\,
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_r[1]~DUPLICATE_q\,
	cin => \butterfly_stage1:0:stg1|Add0~2\,
	sumout => \butterfly_stage1:0:stg1|Add0~5_sumout\,
	cout => \butterfly_stage1:0:stg1|Add0~6\);

-- Location: FF_X82_Y12_N5
\butterfly_stage1:0:stg1|out1_r_ff[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:0:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:0:stg1|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|out1_r_ff\(1));

-- Location: LABCELL_X85_Y12_N6
\butterfly_stage2:0:stg2|mul|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add2~5_sumout\ = SUM(( \butterfly_stage2:0:stg2|mul|Mult1~23\ ) + ( GND ) + ( \butterfly_stage2:0:stg2|mul|Add2~2\ ))
-- \butterfly_stage2:0:stg2|mul|Add2~6\ = CARRY(( \butterfly_stage2:0:stg2|mul|Mult1~23\ ) + ( GND ) + ( \butterfly_stage2:0:stg2|mul|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~23\,
	cin => \butterfly_stage2:0:stg2|mul|Add2~2\,
	sumout => \butterfly_stage2:0:stg2|mul|Add2~5_sumout\,
	cout => \butterfly_stage2:0:stg2|mul|Add2~6\);

-- Location: MLABCELL_X84_Y12_N6
\butterfly_stage2:0:stg2|mul|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add0~5_sumout\ = SUM(( !\butterfly_stage2:0:stg2|mul|Mult0~23\ $ (!\butterfly_stage2:0:stg2|mul|Add2~5_sumout\) ) + ( \butterfly_stage2:0:stg2|mul|Add0~3\ ) + ( \butterfly_stage2:0:stg2|mul|Add0~2\ ))
-- \butterfly_stage2:0:stg2|mul|Add0~6\ = CARRY(( !\butterfly_stage2:0:stg2|mul|Mult0~23\ $ (!\butterfly_stage2:0:stg2|mul|Add2~5_sumout\) ) + ( \butterfly_stage2:0:stg2|mul|Add0~3\ ) + ( \butterfly_stage2:0:stg2|mul|Add0~2\ ))
-- \butterfly_stage2:0:stg2|mul|Add0~7\ = SHARE((\butterfly_stage2:0:stg2|mul|Mult0~23\ & \butterfly_stage2:0:stg2|mul|Add2~5_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~23\,
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_Add2~5_sumout\,
	cin => \butterfly_stage2:0:stg2|mul|Add0~2\,
	sharein => \butterfly_stage2:0:stg2|mul|Add0~3\,
	sumout => \butterfly_stage2:0:stg2|mul|Add0~5_sumout\,
	cout => \butterfly_stage2:0:stg2|mul|Add0~6\,
	shareout => \butterfly_stage2:0:stg2|mul|Add0~7\);

-- Location: FF_X84_Y12_N8
\butterfly_stage2:0:stg2|mul|r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage2:0:stg2|mul|Add0~5_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|mul|r\(1));

-- Location: LABCELL_X83_Y12_N3
\butterfly_stage2:0:stg2|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|Add2~5_sumout\ = SUM(( !\butterfly_stage1:0:stg1|out1_r_ff\(1) $ (\butterfly_stage2:0:stg2|mul|r\(1)) ) + ( \butterfly_stage2:0:stg2|Add2~3\ ) + ( \butterfly_stage2:0:stg2|Add2~2\ ))
-- \butterfly_stage2:0:stg2|Add2~6\ = CARRY(( !\butterfly_stage1:0:stg1|out1_r_ff\(1) $ (\butterfly_stage2:0:stg2|mul|r\(1)) ) + ( \butterfly_stage2:0:stg2|Add2~3\ ) + ( \butterfly_stage2:0:stg2|Add2~2\ ))
-- \butterfly_stage2:0:stg2|Add2~7\ = SHARE((\butterfly_stage1:0:stg1|out1_r_ff\(1) & !\butterfly_stage2:0:stg2|mul|r\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage1:0:stg1|ALT_INV_out1_r_ff\(1),
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_r\(1),
	cin => \butterfly_stage2:0:stg2|Add2~2\,
	sharein => \butterfly_stage2:0:stg2|Add2~3\,
	sumout => \butterfly_stage2:0:stg2|Add2~5_sumout\,
	cout => \butterfly_stage2:0:stg2|Add2~6\,
	shareout => \butterfly_stage2:0:stg2|Add2~7\);

-- Location: FF_X83_Y12_N4
\butterfly_stage2:0:stg2|out2_r_ff[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:0:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:0:stg2|Add2~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|out2_r_ff\(1));

-- Location: LABCELL_X85_Y12_N9
\butterfly_stage2:0:stg2|mul|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add2~9_sumout\ = SUM(( \butterfly_stage2:0:stg2|mul|Mult1~24\ ) + ( GND ) + ( \butterfly_stage2:0:stg2|mul|Add2~6\ ))
-- \butterfly_stage2:0:stg2|mul|Add2~10\ = CARRY(( \butterfly_stage2:0:stg2|mul|Mult1~24\ ) + ( GND ) + ( \butterfly_stage2:0:stg2|mul|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~24\,
	cin => \butterfly_stage2:0:stg2|mul|Add2~6\,
	sumout => \butterfly_stage2:0:stg2|mul|Add2~9_sumout\,
	cout => \butterfly_stage2:0:stg2|mul|Add2~10\);

-- Location: MLABCELL_X84_Y12_N9
\butterfly_stage2:0:stg2|mul|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add0~9_sumout\ = SUM(( !\butterfly_stage2:0:stg2|mul|Mult0~24\ $ (!\butterfly_stage2:0:stg2|mul|Add2~9_sumout\) ) + ( \butterfly_stage2:0:stg2|mul|Add0~7\ ) + ( \butterfly_stage2:0:stg2|mul|Add0~6\ ))
-- \butterfly_stage2:0:stg2|mul|Add0~10\ = CARRY(( !\butterfly_stage2:0:stg2|mul|Mult0~24\ $ (!\butterfly_stage2:0:stg2|mul|Add2~9_sumout\) ) + ( \butterfly_stage2:0:stg2|mul|Add0~7\ ) + ( \butterfly_stage2:0:stg2|mul|Add0~6\ ))
-- \butterfly_stage2:0:stg2|mul|Add0~11\ = SHARE((\butterfly_stage2:0:stg2|mul|Mult0~24\ & \butterfly_stage2:0:stg2|mul|Add2~9_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~24\,
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_Add2~9_sumout\,
	cin => \butterfly_stage2:0:stg2|mul|Add0~6\,
	sharein => \butterfly_stage2:0:stg2|mul|Add0~7\,
	sumout => \butterfly_stage2:0:stg2|mul|Add0~9_sumout\,
	cout => \butterfly_stage2:0:stg2|mul|Add0~10\,
	shareout => \butterfly_stage2:0:stg2|mul|Add0~11\);

-- Location: FF_X84_Y12_N11
\butterfly_stage2:0:stg2|mul|r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage2:0:stg2|mul|Add0~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|mul|r\(2));

-- Location: FF_X82_Y12_N56
\x[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x[0][2]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => ALT_INV_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[0][2]~q\);

-- Location: MLABCELL_X82_Y12_N6
\butterfly_stage1:0:stg1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|Add0~9_sumout\ = SUM(( \x[0][2]~q\ ) + ( \butterfly_stage1:0:stg1|mul|r\(2) ) + ( \butterfly_stage1:0:stg1|Add0~6\ ))
-- \butterfly_stage1:0:stg1|Add0~10\ = CARRY(( \x[0][2]~q\ ) + ( \butterfly_stage1:0:stg1|mul|r\(2) ) + ( \butterfly_stage1:0:stg1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:0:stg1|mul|ALT_INV_r\(2),
	datad => \ALT_INV_x[0][2]~q\,
	cin => \butterfly_stage1:0:stg1|Add0~6\,
	sumout => \butterfly_stage1:0:stg1|Add0~9_sumout\,
	cout => \butterfly_stage1:0:stg1|Add0~10\);

-- Location: FF_X82_Y12_N8
\butterfly_stage1:0:stg1|out1_r_ff[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:0:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:0:stg1|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|out1_r_ff\(2));

-- Location: LABCELL_X83_Y12_N6
\butterfly_stage2:0:stg2|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|Add2~9_sumout\ = SUM(( !\butterfly_stage2:0:stg2|mul|r\(2) $ (\butterfly_stage1:0:stg1|out1_r_ff\(2)) ) + ( \butterfly_stage2:0:stg2|Add2~7\ ) + ( \butterfly_stage2:0:stg2|Add2~6\ ))
-- \butterfly_stage2:0:stg2|Add2~10\ = CARRY(( !\butterfly_stage2:0:stg2|mul|r\(2) $ (\butterfly_stage1:0:stg1|out1_r_ff\(2)) ) + ( \butterfly_stage2:0:stg2|Add2~7\ ) + ( \butterfly_stage2:0:stg2|Add2~6\ ))
-- \butterfly_stage2:0:stg2|Add2~11\ = SHARE((!\butterfly_stage2:0:stg2|mul|r\(2) & \butterfly_stage1:0:stg1|out1_r_ff\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_r\(2),
	datad => \butterfly_stage1:0:stg1|ALT_INV_out1_r_ff\(2),
	cin => \butterfly_stage2:0:stg2|Add2~6\,
	sharein => \butterfly_stage2:0:stg2|Add2~7\,
	sumout => \butterfly_stage2:0:stg2|Add2~9_sumout\,
	cout => \butterfly_stage2:0:stg2|Add2~10\,
	shareout => \butterfly_stage2:0:stg2|Add2~11\);

-- Location: FF_X83_Y12_N8
\butterfly_stage2:0:stg2|out2_r_ff[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:0:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:0:stg2|Add2~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|out2_r_ff\(2));

-- Location: LABCELL_X85_Y12_N12
\butterfly_stage2:0:stg2|mul|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add2~13_sumout\ = SUM(( \butterfly_stage2:0:stg2|mul|Mult1~25\ ) + ( GND ) + ( \butterfly_stage2:0:stg2|mul|Add2~10\ ))
-- \butterfly_stage2:0:stg2|mul|Add2~14\ = CARRY(( \butterfly_stage2:0:stg2|mul|Mult1~25\ ) + ( GND ) + ( \butterfly_stage2:0:stg2|mul|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~25\,
	cin => \butterfly_stage2:0:stg2|mul|Add2~10\,
	sumout => \butterfly_stage2:0:stg2|mul|Add2~13_sumout\,
	cout => \butterfly_stage2:0:stg2|mul|Add2~14\);

-- Location: MLABCELL_X84_Y12_N12
\butterfly_stage2:0:stg2|mul|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add0~13_sumout\ = SUM(( !\butterfly_stage2:0:stg2|mul|Mult0~25\ $ (!\butterfly_stage2:0:stg2|mul|Add2~13_sumout\) ) + ( \butterfly_stage2:0:stg2|mul|Add0~11\ ) + ( \butterfly_stage2:0:stg2|mul|Add0~10\ ))
-- \butterfly_stage2:0:stg2|mul|Add0~14\ = CARRY(( !\butterfly_stage2:0:stg2|mul|Mult0~25\ $ (!\butterfly_stage2:0:stg2|mul|Add2~13_sumout\) ) + ( \butterfly_stage2:0:stg2|mul|Add0~11\ ) + ( \butterfly_stage2:0:stg2|mul|Add0~10\ ))
-- \butterfly_stage2:0:stg2|mul|Add0~15\ = SHARE((\butterfly_stage2:0:stg2|mul|Mult0~25\ & \butterfly_stage2:0:stg2|mul|Add2~13_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010001000100000000000000000110011001100110",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~25\,
	datab => \butterfly_stage2:0:stg2|mul|ALT_INV_Add2~13_sumout\,
	cin => \butterfly_stage2:0:stg2|mul|Add0~10\,
	sharein => \butterfly_stage2:0:stg2|mul|Add0~11\,
	sumout => \butterfly_stage2:0:stg2|mul|Add0~13_sumout\,
	cout => \butterfly_stage2:0:stg2|mul|Add0~14\,
	shareout => \butterfly_stage2:0:stg2|mul|Add0~15\);

-- Location: FF_X84_Y12_N14
\butterfly_stage2:0:stg2|mul|r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage2:0:stg2|mul|Add0~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|mul|r\(3));

-- Location: MLABCELL_X82_Y12_N9
\butterfly_stage1:0:stg1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|Add0~13_sumout\ = SUM(( \butterfly_stage1:0:stg1|mul|r\(3) ) + ( \x[0][3]~q\ ) + ( \butterfly_stage1:0:stg1|Add0~10\ ))
-- \butterfly_stage1:0:stg1|Add0~14\ = CARRY(( \butterfly_stage1:0:stg1|mul|r\(3) ) + ( \x[0][3]~q\ ) + ( \butterfly_stage1:0:stg1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x[0][3]~q\,
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_r\(3),
	cin => \butterfly_stage1:0:stg1|Add0~10\,
	sumout => \butterfly_stage1:0:stg1|Add0~13_sumout\,
	cout => \butterfly_stage1:0:stg1|Add0~14\);

-- Location: FF_X82_Y12_N11
\butterfly_stage1:0:stg1|out1_r_ff[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:0:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:0:stg1|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|out1_r_ff\(3));

-- Location: LABCELL_X83_Y12_N9
\butterfly_stage2:0:stg2|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|Add2~13_sumout\ = SUM(( !\butterfly_stage2:0:stg2|mul|r\(3) $ (\butterfly_stage1:0:stg1|out1_r_ff\(3)) ) + ( \butterfly_stage2:0:stg2|Add2~11\ ) + ( \butterfly_stage2:0:stg2|Add2~10\ ))
-- \butterfly_stage2:0:stg2|Add2~14\ = CARRY(( !\butterfly_stage2:0:stg2|mul|r\(3) $ (\butterfly_stage1:0:stg1|out1_r_ff\(3)) ) + ( \butterfly_stage2:0:stg2|Add2~11\ ) + ( \butterfly_stage2:0:stg2|Add2~10\ ))
-- \butterfly_stage2:0:stg2|Add2~15\ = SHARE((!\butterfly_stage2:0:stg2|mul|r\(3) & \butterfly_stage1:0:stg1|out1_r_ff\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_r\(3),
	datad => \butterfly_stage1:0:stg1|ALT_INV_out1_r_ff\(3),
	cin => \butterfly_stage2:0:stg2|Add2~10\,
	sharein => \butterfly_stage2:0:stg2|Add2~11\,
	sumout => \butterfly_stage2:0:stg2|Add2~13_sumout\,
	cout => \butterfly_stage2:0:stg2|Add2~14\,
	shareout => \butterfly_stage2:0:stg2|Add2~15\);

-- Location: FF_X83_Y12_N10
\butterfly_stage2:0:stg2|out2_r_ff[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:0:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:0:stg2|Add2~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|out2_r_ff\(3));

-- Location: LABCELL_X85_Y12_N15
\butterfly_stage2:0:stg2|mul|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add2~17_sumout\ = SUM(( \butterfly_stage2:0:stg2|mul|Mult1~26\ ) + ( GND ) + ( \butterfly_stage2:0:stg2|mul|Add2~14\ ))
-- \butterfly_stage2:0:stg2|mul|Add2~18\ = CARRY(( \butterfly_stage2:0:stg2|mul|Mult1~26\ ) + ( GND ) + ( \butterfly_stage2:0:stg2|mul|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~26\,
	cin => \butterfly_stage2:0:stg2|mul|Add2~14\,
	sumout => \butterfly_stage2:0:stg2|mul|Add2~17_sumout\,
	cout => \butterfly_stage2:0:stg2|mul|Add2~18\);

-- Location: MLABCELL_X84_Y12_N15
\butterfly_stage2:0:stg2|mul|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add0~17_sumout\ = SUM(( !\butterfly_stage2:0:stg2|mul|Mult0~26\ $ (!\butterfly_stage2:0:stg2|mul|Add2~17_sumout\) ) + ( \butterfly_stage2:0:stg2|mul|Add0~15\ ) + ( \butterfly_stage2:0:stg2|mul|Add0~14\ ))
-- \butterfly_stage2:0:stg2|mul|Add0~18\ = CARRY(( !\butterfly_stage2:0:stg2|mul|Mult0~26\ $ (!\butterfly_stage2:0:stg2|mul|Add2~17_sumout\) ) + ( \butterfly_stage2:0:stg2|mul|Add0~15\ ) + ( \butterfly_stage2:0:stg2|mul|Add0~14\ ))
-- \butterfly_stage2:0:stg2|mul|Add0~19\ = SHARE((\butterfly_stage2:0:stg2|mul|Mult0~26\ & \butterfly_stage2:0:stg2|mul|Add2~17_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~26\,
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_Add2~17_sumout\,
	cin => \butterfly_stage2:0:stg2|mul|Add0~14\,
	sharein => \butterfly_stage2:0:stg2|mul|Add0~15\,
	sumout => \butterfly_stage2:0:stg2|mul|Add0~17_sumout\,
	cout => \butterfly_stage2:0:stg2|mul|Add0~18\,
	shareout => \butterfly_stage2:0:stg2|mul|Add0~19\);

-- Location: FF_X84_Y12_N17
\butterfly_stage2:0:stg2|mul|r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage2:0:stg2|mul|Add0~17_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|mul|r\(4));

-- Location: FF_X83_Y20_N43
\butterfly_stage1:0:stg1|mul|r[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:0:stg1|mul|Add3~17_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|mul|r[4]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y12_N12
\butterfly_stage1:0:stg1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|Add0~17_sumout\ = SUM(( \butterfly_stage1:0:stg1|mul|r[4]~DUPLICATE_q\ ) + ( \x[0][4]~q\ ) + ( \butterfly_stage1:0:stg1|Add0~14\ ))
-- \butterfly_stage1:0:stg1|Add0~18\ = CARRY(( \butterfly_stage1:0:stg1|mul|r[4]~DUPLICATE_q\ ) + ( \x[0][4]~q\ ) + ( \butterfly_stage1:0:stg1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[0][4]~q\,
	datac => \butterfly_stage1:0:stg1|mul|ALT_INV_r[4]~DUPLICATE_q\,
	cin => \butterfly_stage1:0:stg1|Add0~14\,
	sumout => \butterfly_stage1:0:stg1|Add0~17_sumout\,
	cout => \butterfly_stage1:0:stg1|Add0~18\);

-- Location: FF_X82_Y12_N14
\butterfly_stage1:0:stg1|out1_r_ff[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:0:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:0:stg1|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|out1_r_ff\(4));

-- Location: LABCELL_X83_Y12_N12
\butterfly_stage2:0:stg2|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|Add2~17_sumout\ = SUM(( !\butterfly_stage2:0:stg2|mul|r\(4) $ (\butterfly_stage1:0:stg1|out1_r_ff\(4)) ) + ( \butterfly_stage2:0:stg2|Add2~15\ ) + ( \butterfly_stage2:0:stg2|Add2~14\ ))
-- \butterfly_stage2:0:stg2|Add2~18\ = CARRY(( !\butterfly_stage2:0:stg2|mul|r\(4) $ (\butterfly_stage1:0:stg1|out1_r_ff\(4)) ) + ( \butterfly_stage2:0:stg2|Add2~15\ ) + ( \butterfly_stage2:0:stg2|Add2~14\ ))
-- \butterfly_stage2:0:stg2|Add2~19\ = SHARE((!\butterfly_stage2:0:stg2|mul|r\(4) & \butterfly_stage1:0:stg1|out1_r_ff\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_r\(4),
	datad => \butterfly_stage1:0:stg1|ALT_INV_out1_r_ff\(4),
	cin => \butterfly_stage2:0:stg2|Add2~14\,
	sharein => \butterfly_stage2:0:stg2|Add2~15\,
	sumout => \butterfly_stage2:0:stg2|Add2~17_sumout\,
	cout => \butterfly_stage2:0:stg2|Add2~18\,
	shareout => \butterfly_stage2:0:stg2|Add2~19\);

-- Location: FF_X83_Y12_N13
\butterfly_stage2:0:stg2|out2_r_ff[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:0:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:0:stg2|Add2~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|out2_r_ff\(4));

-- Location: LABCELL_X85_Y12_N18
\butterfly_stage2:0:stg2|mul|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add2~21_sumout\ = SUM(( \butterfly_stage2:0:stg2|mul|Mult1~27\ ) + ( GND ) + ( \butterfly_stage2:0:stg2|mul|Add2~18\ ))
-- \butterfly_stage2:0:stg2|mul|Add2~22\ = CARRY(( \butterfly_stage2:0:stg2|mul|Mult1~27\ ) + ( GND ) + ( \butterfly_stage2:0:stg2|mul|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~27\,
	cin => \butterfly_stage2:0:stg2|mul|Add2~18\,
	sumout => \butterfly_stage2:0:stg2|mul|Add2~21_sumout\,
	cout => \butterfly_stage2:0:stg2|mul|Add2~22\);

-- Location: MLABCELL_X84_Y12_N18
\butterfly_stage2:0:stg2|mul|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add0~21_sumout\ = SUM(( !\butterfly_stage2:0:stg2|mul|Mult0~27\ $ (!\butterfly_stage2:0:stg2|mul|Add2~21_sumout\) ) + ( \butterfly_stage2:0:stg2|mul|Add0~19\ ) + ( \butterfly_stage2:0:stg2|mul|Add0~18\ ))
-- \butterfly_stage2:0:stg2|mul|Add0~22\ = CARRY(( !\butterfly_stage2:0:stg2|mul|Mult0~27\ $ (!\butterfly_stage2:0:stg2|mul|Add2~21_sumout\) ) + ( \butterfly_stage2:0:stg2|mul|Add0~19\ ) + ( \butterfly_stage2:0:stg2|mul|Add0~18\ ))
-- \butterfly_stage2:0:stg2|mul|Add0~23\ = SHARE((\butterfly_stage2:0:stg2|mul|Mult0~27\ & \butterfly_stage2:0:stg2|mul|Add2~21_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~27\,
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_Add2~21_sumout\,
	cin => \butterfly_stage2:0:stg2|mul|Add0~18\,
	sharein => \butterfly_stage2:0:stg2|mul|Add0~19\,
	sumout => \butterfly_stage2:0:stg2|mul|Add0~21_sumout\,
	cout => \butterfly_stage2:0:stg2|mul|Add0~22\,
	shareout => \butterfly_stage2:0:stg2|mul|Add0~23\);

-- Location: FF_X84_Y12_N20
\butterfly_stage2:0:stg2|mul|r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage2:0:stg2|mul|Add0~21_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|mul|r\(5));

-- Location: MLABCELL_X82_Y12_N15
\butterfly_stage1:0:stg1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|Add0~21_sumout\ = SUM(( \butterfly_stage1:0:stg1|mul|r\(5) ) + ( \x[0][5]~q\ ) + ( \butterfly_stage1:0:stg1|Add0~18\ ))
-- \butterfly_stage1:0:stg1|Add0~22\ = CARRY(( \butterfly_stage1:0:stg1|mul|r\(5) ) + ( \x[0][5]~q\ ) + ( \butterfly_stage1:0:stg1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x[0][5]~q\,
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_r\(5),
	cin => \butterfly_stage1:0:stg1|Add0~18\,
	sumout => \butterfly_stage1:0:stg1|Add0~21_sumout\,
	cout => \butterfly_stage1:0:stg1|Add0~22\);

-- Location: FF_X82_Y12_N17
\butterfly_stage1:0:stg1|out1_r_ff[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:0:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:0:stg1|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|out1_r_ff\(5));

-- Location: LABCELL_X83_Y12_N15
\butterfly_stage2:0:stg2|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|Add2~21_sumout\ = SUM(( !\butterfly_stage2:0:stg2|mul|r\(5) $ (\butterfly_stage1:0:stg1|out1_r_ff\(5)) ) + ( \butterfly_stage2:0:stg2|Add2~19\ ) + ( \butterfly_stage2:0:stg2|Add2~18\ ))
-- \butterfly_stage2:0:stg2|Add2~22\ = CARRY(( !\butterfly_stage2:0:stg2|mul|r\(5) $ (\butterfly_stage1:0:stg1|out1_r_ff\(5)) ) + ( \butterfly_stage2:0:stg2|Add2~19\ ) + ( \butterfly_stage2:0:stg2|Add2~18\ ))
-- \butterfly_stage2:0:stg2|Add2~23\ = SHARE((!\butterfly_stage2:0:stg2|mul|r\(5) & \butterfly_stage1:0:stg1|out1_r_ff\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_r\(5),
	datad => \butterfly_stage1:0:stg1|ALT_INV_out1_r_ff\(5),
	cin => \butterfly_stage2:0:stg2|Add2~18\,
	sharein => \butterfly_stage2:0:stg2|Add2~19\,
	sumout => \butterfly_stage2:0:stg2|Add2~21_sumout\,
	cout => \butterfly_stage2:0:stg2|Add2~22\,
	shareout => \butterfly_stage2:0:stg2|Add2~23\);

-- Location: FF_X83_Y12_N17
\butterfly_stage2:0:stg2|out2_r_ff[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:0:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:0:stg2|Add2~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|out2_r_ff\(5));

-- Location: MLABCELL_X82_Y12_N18
\butterfly_stage1:0:stg1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|Add0~25_sumout\ = SUM(( \butterfly_stage1:0:stg1|mul|r\(6) ) + ( \x[0][6]~q\ ) + ( \butterfly_stage1:0:stg1|Add0~22\ ))
-- \butterfly_stage1:0:stg1|Add0~26\ = CARRY(( \butterfly_stage1:0:stg1|mul|r\(6) ) + ( \x[0][6]~q\ ) + ( \butterfly_stage1:0:stg1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x[0][6]~q\,
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_r\(6),
	cin => \butterfly_stage1:0:stg1|Add0~22\,
	sumout => \butterfly_stage1:0:stg1|Add0~25_sumout\,
	cout => \butterfly_stage1:0:stg1|Add0~26\);

-- Location: FF_X82_Y12_N20
\butterfly_stage1:0:stg1|out1_r_ff[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:0:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:0:stg1|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|out1_r_ff\(6));

-- Location: LABCELL_X85_Y12_N21
\butterfly_stage2:0:stg2|mul|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add2~25_sumout\ = SUM(( \butterfly_stage2:0:stg2|mul|Mult1~28\ ) + ( GND ) + ( \butterfly_stage2:0:stg2|mul|Add2~22\ ))
-- \butterfly_stage2:0:stg2|mul|Add2~26\ = CARRY(( \butterfly_stage2:0:stg2|mul|Mult1~28\ ) + ( GND ) + ( \butterfly_stage2:0:stg2|mul|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~28\,
	cin => \butterfly_stage2:0:stg2|mul|Add2~22\,
	sumout => \butterfly_stage2:0:stg2|mul|Add2~25_sumout\,
	cout => \butterfly_stage2:0:stg2|mul|Add2~26\);

-- Location: MLABCELL_X84_Y12_N21
\butterfly_stage2:0:stg2|mul|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add0~25_sumout\ = SUM(( !\butterfly_stage2:0:stg2|mul|Mult0~28\ $ (!\butterfly_stage2:0:stg2|mul|Add2~25_sumout\) ) + ( \butterfly_stage2:0:stg2|mul|Add0~23\ ) + ( \butterfly_stage2:0:stg2|mul|Add0~22\ ))
-- \butterfly_stage2:0:stg2|mul|Add0~26\ = CARRY(( !\butterfly_stage2:0:stg2|mul|Mult0~28\ $ (!\butterfly_stage2:0:stg2|mul|Add2~25_sumout\) ) + ( \butterfly_stage2:0:stg2|mul|Add0~23\ ) + ( \butterfly_stage2:0:stg2|mul|Add0~22\ ))
-- \butterfly_stage2:0:stg2|mul|Add0~27\ = SHARE((\butterfly_stage2:0:stg2|mul|Mult0~28\ & \butterfly_stage2:0:stg2|mul|Add2~25_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~28\,
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_Add2~25_sumout\,
	cin => \butterfly_stage2:0:stg2|mul|Add0~22\,
	sharein => \butterfly_stage2:0:stg2|mul|Add0~23\,
	sumout => \butterfly_stage2:0:stg2|mul|Add0~25_sumout\,
	cout => \butterfly_stage2:0:stg2|mul|Add0~26\,
	shareout => \butterfly_stage2:0:stg2|mul|Add0~27\);

-- Location: FF_X84_Y12_N23
\butterfly_stage2:0:stg2|mul|r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage2:0:stg2|mul|Add0~25_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|mul|r\(6));

-- Location: LABCELL_X83_Y12_N18
\butterfly_stage2:0:stg2|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|Add2~25_sumout\ = SUM(( !\butterfly_stage1:0:stg1|out1_r_ff\(6) $ (\butterfly_stage2:0:stg2|mul|r\(6)) ) + ( \butterfly_stage2:0:stg2|Add2~23\ ) + ( \butterfly_stage2:0:stg2|Add2~22\ ))
-- \butterfly_stage2:0:stg2|Add2~26\ = CARRY(( !\butterfly_stage1:0:stg1|out1_r_ff\(6) $ (\butterfly_stage2:0:stg2|mul|r\(6)) ) + ( \butterfly_stage2:0:stg2|Add2~23\ ) + ( \butterfly_stage2:0:stg2|Add2~22\ ))
-- \butterfly_stage2:0:stg2|Add2~27\ = SHARE((\butterfly_stage1:0:stg1|out1_r_ff\(6) & !\butterfly_stage2:0:stg2|mul|r\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:0:stg1|ALT_INV_out1_r_ff\(6),
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_r\(6),
	cin => \butterfly_stage2:0:stg2|Add2~22\,
	sharein => \butterfly_stage2:0:stg2|Add2~23\,
	sumout => \butterfly_stage2:0:stg2|Add2~25_sumout\,
	cout => \butterfly_stage2:0:stg2|Add2~26\,
	shareout => \butterfly_stage2:0:stg2|Add2~27\);

-- Location: FF_X83_Y12_N20
\butterfly_stage2:0:stg2|out2_r_ff[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:0:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:0:stg2|Add2~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|out2_r_ff\(6));

-- Location: LABCELL_X85_Y12_N24
\butterfly_stage2:0:stg2|mul|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add2~29_sumout\ = SUM(( \butterfly_stage2:0:stg2|mul|Mult1~29\ ) + ( GND ) + ( \butterfly_stage2:0:stg2|mul|Add2~26\ ))
-- \butterfly_stage2:0:stg2|mul|Add2~30\ = CARRY(( \butterfly_stage2:0:stg2|mul|Mult1~29\ ) + ( GND ) + ( \butterfly_stage2:0:stg2|mul|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~29\,
	cin => \butterfly_stage2:0:stg2|mul|Add2~26\,
	sumout => \butterfly_stage2:0:stg2|mul|Add2~29_sumout\,
	cout => \butterfly_stage2:0:stg2|mul|Add2~30\);

-- Location: MLABCELL_X84_Y12_N24
\butterfly_stage2:0:stg2|mul|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add0~29_sumout\ = SUM(( !\butterfly_stage2:0:stg2|mul|Add2~29_sumout\ $ (!\butterfly_stage2:0:stg2|mul|Mult0~29\) ) + ( \butterfly_stage2:0:stg2|mul|Add0~27\ ) + ( \butterfly_stage2:0:stg2|mul|Add0~26\ ))
-- \butterfly_stage2:0:stg2|mul|Add0~30\ = CARRY(( !\butterfly_stage2:0:stg2|mul|Add2~29_sumout\ $ (!\butterfly_stage2:0:stg2|mul|Mult0~29\) ) + ( \butterfly_stage2:0:stg2|mul|Add0~27\ ) + ( \butterfly_stage2:0:stg2|mul|Add0~26\ ))
-- \butterfly_stage2:0:stg2|mul|Add0~31\ = SHARE((\butterfly_stage2:0:stg2|mul|Add2~29_sumout\ & \butterfly_stage2:0:stg2|mul|Mult0~29\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage2:0:stg2|mul|ALT_INV_Add2~29_sumout\,
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~29\,
	cin => \butterfly_stage2:0:stg2|mul|Add0~26\,
	sharein => \butterfly_stage2:0:stg2|mul|Add0~27\,
	sumout => \butterfly_stage2:0:stg2|mul|Add0~29_sumout\,
	cout => \butterfly_stage2:0:stg2|mul|Add0~30\,
	shareout => \butterfly_stage2:0:stg2|mul|Add0~31\);

-- Location: FF_X84_Y12_N26
\butterfly_stage2:0:stg2|mul|r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage2:0:stg2|mul|Add0~29_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|mul|r\(7));

-- Location: MLABCELL_X82_Y12_N21
\butterfly_stage1:0:stg1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|Add0~29_sumout\ = SUM(( \butterfly_stage1:0:stg1|mul|r\(7) ) + ( \x[0][7]~q\ ) + ( \butterfly_stage1:0:stg1|Add0~26\ ))
-- \butterfly_stage1:0:stg1|Add0~30\ = CARRY(( \butterfly_stage1:0:stg1|mul|r\(7) ) + ( \x[0][7]~q\ ) + ( \butterfly_stage1:0:stg1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x[0][7]~q\,
	datac => \butterfly_stage1:0:stg1|mul|ALT_INV_r\(7),
	cin => \butterfly_stage1:0:stg1|Add0~26\,
	sumout => \butterfly_stage1:0:stg1|Add0~29_sumout\,
	cout => \butterfly_stage1:0:stg1|Add0~30\);

-- Location: FF_X82_Y12_N23
\butterfly_stage1:0:stg1|out1_r_ff[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:0:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:0:stg1|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|out1_r_ff\(7));

-- Location: LABCELL_X83_Y12_N21
\butterfly_stage2:0:stg2|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|Add2~29_sumout\ = SUM(( !\butterfly_stage2:0:stg2|mul|r\(7) $ (\butterfly_stage1:0:stg1|out1_r_ff\(7)) ) + ( \butterfly_stage2:0:stg2|Add2~27\ ) + ( \butterfly_stage2:0:stg2|Add2~26\ ))
-- \butterfly_stage2:0:stg2|Add2~30\ = CARRY(( !\butterfly_stage2:0:stg2|mul|r\(7) $ (\butterfly_stage1:0:stg1|out1_r_ff\(7)) ) + ( \butterfly_stage2:0:stg2|Add2~27\ ) + ( \butterfly_stage2:0:stg2|Add2~26\ ))
-- \butterfly_stage2:0:stg2|Add2~31\ = SHARE((!\butterfly_stage2:0:stg2|mul|r\(7) & \butterfly_stage1:0:stg1|out1_r_ff\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_r\(7),
	datad => \butterfly_stage1:0:stg1|ALT_INV_out1_r_ff\(7),
	cin => \butterfly_stage2:0:stg2|Add2~26\,
	sharein => \butterfly_stage2:0:stg2|Add2~27\,
	sumout => \butterfly_stage2:0:stg2|Add2~29_sumout\,
	cout => \butterfly_stage2:0:stg2|Add2~30\,
	shareout => \butterfly_stage2:0:stg2|Add2~31\);

-- Location: FF_X83_Y12_N22
\butterfly_stage2:0:stg2|out2_r_ff[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:0:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:0:stg2|Add2~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|out2_r_ff\(7));

-- Location: MLABCELL_X82_Y12_N24
\butterfly_stage1:0:stg1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|Add0~33_sumout\ = SUM(( \x[0][8]~q\ ) + ( \butterfly_stage1:0:stg1|mul|r\(8) ) + ( \butterfly_stage1:0:stg1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:0:stg1|mul|ALT_INV_r\(8),
	datad => \ALT_INV_x[0][8]~q\,
	cin => \butterfly_stage1:0:stg1|Add0~30\,
	sumout => \butterfly_stage1:0:stg1|Add0~33_sumout\);

-- Location: FF_X82_Y12_N26
\butterfly_stage1:0:stg1|out1_r_ff[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:0:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:0:stg1|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|out1_r_ff\(8));

-- Location: LABCELL_X85_Y12_N27
\butterfly_stage2:0:stg2|mul|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add2~33_sumout\ = SUM(( \butterfly_stage2:0:stg2|mul|Mult1~30\ ) + ( GND ) + ( \butterfly_stage2:0:stg2|mul|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult1~30\,
	cin => \butterfly_stage2:0:stg2|mul|Add2~30\,
	sumout => \butterfly_stage2:0:stg2|mul|Add2~33_sumout\);

-- Location: MLABCELL_X84_Y12_N27
\butterfly_stage2:0:stg2|mul|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add0~33_sumout\ = SUM(( !\butterfly_stage2:0:stg2|mul|Mult0~30\ $ (!\butterfly_stage2:0:stg2|mul|Add2~33_sumout\) ) + ( \butterfly_stage2:0:stg2|mul|Add0~31\ ) + ( \butterfly_stage2:0:stg2|mul|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult0~30\,
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_Add2~33_sumout\,
	cin => \butterfly_stage2:0:stg2|mul|Add0~30\,
	sharein => \butterfly_stage2:0:stg2|mul|Add0~31\,
	sumout => \butterfly_stage2:0:stg2|mul|Add0~33_sumout\);

-- Location: FF_X84_Y12_N29
\butterfly_stage2:0:stg2|mul|r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage2:0:stg2|mul|Add0~33_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|mul|r\(8));

-- Location: LABCELL_X83_Y12_N24
\butterfly_stage2:0:stg2|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|Add2~33_sumout\ = SUM(( !\butterfly_stage1:0:stg1|out1_r_ff\(8) $ (\butterfly_stage2:0:stg2|mul|r\(8)) ) + ( \butterfly_stage2:0:stg2|Add2~31\ ) + ( \butterfly_stage2:0:stg2|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage1:0:stg1|ALT_INV_out1_r_ff\(8),
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_r\(8),
	cin => \butterfly_stage2:0:stg2|Add2~30\,
	sharein => \butterfly_stage2:0:stg2|Add2~31\,
	sumout => \butterfly_stage2:0:stg2|Add2~33_sumout\);

-- Location: FF_X83_Y12_N25
\butterfly_stage2:0:stg2|out2_r_ff[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:0:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:0:stg2|Add2~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|out2_r_ff\(8));

-- Location: LABCELL_X83_Y14_N30
\butterfly_stage2:1:stg2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|Add0~1_sumout\ = SUM(( \butterfly_stage1:0:stg1|out2_r_ff\(0) ) + ( \butterfly_stage2:1:stg2|mul|r\(0) ) + ( !VCC ))
-- \butterfly_stage2:1:stg2|Add0~2\ = CARRY(( \butterfly_stage1:0:stg1|out2_r_ff\(0) ) + ( \butterfly_stage2:1:stg2|mul|r\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_r\(0),
	datad => \butterfly_stage1:0:stg1|ALT_INV_out2_r_ff\(0),
	cin => GND,
	sumout => \butterfly_stage2:1:stg2|Add0~1_sumout\,
	cout => \butterfly_stage2:1:stg2|Add0~2\);

-- Location: FF_X83_Y14_N31
\butterfly_stage2:1:stg2|out1_r_ff[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:1:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:1:stg2|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|out1_r_ff\(0));

-- Location: LABCELL_X83_Y14_N33
\butterfly_stage2:1:stg2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|Add0~5_sumout\ = SUM(( \butterfly_stage2:1:stg2|mul|r\(1) ) + ( \butterfly_stage1:0:stg1|out2_r_ff\(1) ) + ( \butterfly_stage2:1:stg2|Add0~2\ ))
-- \butterfly_stage2:1:stg2|Add0~6\ = CARRY(( \butterfly_stage2:1:stg2|mul|r\(1) ) + ( \butterfly_stage1:0:stg1|out2_r_ff\(1) ) + ( \butterfly_stage2:1:stg2|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage1:0:stg1|ALT_INV_out2_r_ff\(1),
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_r\(1),
	cin => \butterfly_stage2:1:stg2|Add0~2\,
	sumout => \butterfly_stage2:1:stg2|Add0~5_sumout\,
	cout => \butterfly_stage2:1:stg2|Add0~6\);

-- Location: FF_X83_Y14_N34
\butterfly_stage2:1:stg2|out1_r_ff[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:1:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:1:stg2|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|out1_r_ff\(1));

-- Location: LABCELL_X83_Y14_N36
\butterfly_stage2:1:stg2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|Add0~9_sumout\ = SUM(( \butterfly_stage1:0:stg1|out2_r_ff\(2) ) + ( \butterfly_stage2:1:stg2|mul|r\(2) ) + ( \butterfly_stage2:1:stg2|Add0~6\ ))
-- \butterfly_stage2:1:stg2|Add0~10\ = CARRY(( \butterfly_stage1:0:stg1|out2_r_ff\(2) ) + ( \butterfly_stage2:1:stg2|mul|r\(2) ) + ( \butterfly_stage2:1:stg2|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_r\(2),
	datad => \butterfly_stage1:0:stg1|ALT_INV_out2_r_ff\(2),
	cin => \butterfly_stage2:1:stg2|Add0~6\,
	sumout => \butterfly_stage2:1:stg2|Add0~9_sumout\,
	cout => \butterfly_stage2:1:stg2|Add0~10\);

-- Location: FF_X83_Y14_N37
\butterfly_stage2:1:stg2|out1_r_ff[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:1:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:1:stg2|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|out1_r_ff\(2));

-- Location: LABCELL_X83_Y14_N39
\butterfly_stage2:1:stg2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|Add0~13_sumout\ = SUM(( \butterfly_stage1:0:stg1|out2_r_ff\(3) ) + ( \butterfly_stage2:1:stg2|mul|r\(3) ) + ( \butterfly_stage2:1:stg2|Add0~10\ ))
-- \butterfly_stage2:1:stg2|Add0~14\ = CARRY(( \butterfly_stage1:0:stg1|out2_r_ff\(3) ) + ( \butterfly_stage2:1:stg2|mul|r\(3) ) + ( \butterfly_stage2:1:stg2|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_r\(3),
	datad => \butterfly_stage1:0:stg1|ALT_INV_out2_r_ff\(3),
	cin => \butterfly_stage2:1:stg2|Add0~10\,
	sumout => \butterfly_stage2:1:stg2|Add0~13_sumout\,
	cout => \butterfly_stage2:1:stg2|Add0~14\);

-- Location: FF_X83_Y14_N40
\butterfly_stage2:1:stg2|out1_r_ff[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:1:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:1:stg2|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|out1_r_ff\(3));

-- Location: LABCELL_X83_Y14_N42
\butterfly_stage2:1:stg2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|Add0~17_sumout\ = SUM(( \butterfly_stage2:1:stg2|mul|r\(4) ) + ( \butterfly_stage1:0:stg1|out2_r_ff\(4) ) + ( \butterfly_stage2:1:stg2|Add0~14\ ))
-- \butterfly_stage2:1:stg2|Add0~18\ = CARRY(( \butterfly_stage2:1:stg2|mul|r\(4) ) + ( \butterfly_stage1:0:stg1|out2_r_ff\(4) ) + ( \butterfly_stage2:1:stg2|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage1:0:stg1|ALT_INV_out2_r_ff\(4),
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_r\(4),
	cin => \butterfly_stage2:1:stg2|Add0~14\,
	sumout => \butterfly_stage2:1:stg2|Add0~17_sumout\,
	cout => \butterfly_stage2:1:stg2|Add0~18\);

-- Location: FF_X83_Y14_N43
\butterfly_stage2:1:stg2|out1_r_ff[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:1:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:1:stg2|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|out1_r_ff\(4));

-- Location: LABCELL_X83_Y14_N45
\butterfly_stage2:1:stg2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|Add0~21_sumout\ = SUM(( \butterfly_stage1:0:stg1|out2_r_ff\(5) ) + ( \butterfly_stage2:1:stg2|mul|r\(5) ) + ( \butterfly_stage2:1:stg2|Add0~18\ ))
-- \butterfly_stage2:1:stg2|Add0~22\ = CARRY(( \butterfly_stage1:0:stg1|out2_r_ff\(5) ) + ( \butterfly_stage2:1:stg2|mul|r\(5) ) + ( \butterfly_stage2:1:stg2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_r\(5),
	datad => \butterfly_stage1:0:stg1|ALT_INV_out2_r_ff\(5),
	cin => \butterfly_stage2:1:stg2|Add0~18\,
	sumout => \butterfly_stage2:1:stg2|Add0~21_sumout\,
	cout => \butterfly_stage2:1:stg2|Add0~22\);

-- Location: FF_X83_Y14_N46
\butterfly_stage2:1:stg2|out1_r_ff[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:1:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:1:stg2|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|out1_r_ff\(5));

-- Location: LABCELL_X83_Y14_N48
\butterfly_stage2:1:stg2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|Add0~25_sumout\ = SUM(( \butterfly_stage1:0:stg1|out2_r_ff\(6) ) + ( \butterfly_stage2:1:stg2|mul|r\(6) ) + ( \butterfly_stage2:1:stg2|Add0~22\ ))
-- \butterfly_stage2:1:stg2|Add0~26\ = CARRY(( \butterfly_stage1:0:stg1|out2_r_ff\(6) ) + ( \butterfly_stage2:1:stg2|mul|r\(6) ) + ( \butterfly_stage2:1:stg2|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_r\(6),
	datad => \butterfly_stage1:0:stg1|ALT_INV_out2_r_ff\(6),
	cin => \butterfly_stage2:1:stg2|Add0~22\,
	sumout => \butterfly_stage2:1:stg2|Add0~25_sumout\,
	cout => \butterfly_stage2:1:stg2|Add0~26\);

-- Location: FF_X83_Y14_N49
\butterfly_stage2:1:stg2|out1_r_ff[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:1:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:1:stg2|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|out1_r_ff\(6));

-- Location: LABCELL_X83_Y14_N51
\butterfly_stage2:1:stg2|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|Add0~29_sumout\ = SUM(( \butterfly_stage1:0:stg1|out2_r_ff\(7) ) + ( \butterfly_stage2:1:stg2|mul|r\(7) ) + ( \butterfly_stage2:1:stg2|Add0~26\ ))
-- \butterfly_stage2:1:stg2|Add0~30\ = CARRY(( \butterfly_stage1:0:stg1|out2_r_ff\(7) ) + ( \butterfly_stage2:1:stg2|mul|r\(7) ) + ( \butterfly_stage2:1:stg2|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage2:1:stg2|mul|ALT_INV_r\(7),
	datad => \butterfly_stage1:0:stg1|ALT_INV_out2_r_ff\(7),
	cin => \butterfly_stage2:1:stg2|Add0~26\,
	sumout => \butterfly_stage2:1:stg2|Add0~29_sumout\,
	cout => \butterfly_stage2:1:stg2|Add0~30\);

-- Location: FF_X83_Y14_N53
\butterfly_stage2:1:stg2|out1_r_ff[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:1:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:1:stg2|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|out1_r_ff\(7));

-- Location: LABCELL_X83_Y14_N54
\butterfly_stage2:1:stg2|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|Add0~33_sumout\ = SUM(( \butterfly_stage2:1:stg2|mul|r\(8) ) + ( \butterfly_stage1:0:stg1|out2_r_ff\(8) ) + ( \butterfly_stage2:1:stg2|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage2:1:stg2|mul|ALT_INV_r\(8),
	datac => \butterfly_stage1:0:stg1|ALT_INV_out2_r_ff\(8),
	cin => \butterfly_stage2:1:stg2|Add0~30\,
	sumout => \butterfly_stage2:1:stg2|Add0~33_sumout\);

-- Location: FF_X83_Y14_N55
\butterfly_stage2:1:stg2|out1_r_ff[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:1:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:1:stg2|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|out1_r_ff\(8));

-- Location: LABCELL_X83_Y12_N30
\butterfly_stage2:0:stg2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|Add0~1_sumout\ = SUM(( \butterfly_stage2:0:stg2|mul|r\(0) ) + ( \butterfly_stage1:0:stg1|out1_r_ff\(0) ) + ( !VCC ))
-- \butterfly_stage2:0:stg2|Add0~2\ = CARRY(( \butterfly_stage2:0:stg2|mul|r\(0) ) + ( \butterfly_stage1:0:stg1|out1_r_ff\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage1:0:stg1|ALT_INV_out1_r_ff\(0),
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_r\(0),
	cin => GND,
	sumout => \butterfly_stage2:0:stg2|Add0~1_sumout\,
	cout => \butterfly_stage2:0:stg2|Add0~2\);

-- Location: FF_X83_Y12_N31
\butterfly_stage2:0:stg2|out1_r_ff[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:0:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:0:stg2|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|out1_r_ff\(0));

-- Location: LABCELL_X83_Y12_N33
\butterfly_stage2:0:stg2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|Add0~5_sumout\ = SUM(( \butterfly_stage2:0:stg2|mul|r\(1) ) + ( \butterfly_stage1:0:stg1|out1_r_ff\(1) ) + ( \butterfly_stage2:0:stg2|Add0~2\ ))
-- \butterfly_stage2:0:stg2|Add0~6\ = CARRY(( \butterfly_stage2:0:stg2|mul|r\(1) ) + ( \butterfly_stage1:0:stg1|out1_r_ff\(1) ) + ( \butterfly_stage2:0:stg2|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:0:stg1|ALT_INV_out1_r_ff\(1),
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_r\(1),
	cin => \butterfly_stage2:0:stg2|Add0~2\,
	sumout => \butterfly_stage2:0:stg2|Add0~5_sumout\,
	cout => \butterfly_stage2:0:stg2|Add0~6\);

-- Location: FF_X83_Y12_N35
\butterfly_stage2:0:stg2|out1_r_ff[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:0:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:0:stg2|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|out1_r_ff\(1));

-- Location: LABCELL_X83_Y12_N36
\butterfly_stage2:0:stg2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|Add0~9_sumout\ = SUM(( \butterfly_stage2:0:stg2|mul|r\(2) ) + ( \butterfly_stage1:0:stg1|out1_r_ff\(2) ) + ( \butterfly_stage2:0:stg2|Add0~6\ ))
-- \butterfly_stage2:0:stg2|Add0~10\ = CARRY(( \butterfly_stage2:0:stg2|mul|r\(2) ) + ( \butterfly_stage1:0:stg1|out1_r_ff\(2) ) + ( \butterfly_stage2:0:stg2|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:0:stg1|ALT_INV_out1_r_ff\(2),
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_r\(2),
	cin => \butterfly_stage2:0:stg2|Add0~6\,
	sumout => \butterfly_stage2:0:stg2|Add0~9_sumout\,
	cout => \butterfly_stage2:0:stg2|Add0~10\);

-- Location: FF_X83_Y12_N37
\butterfly_stage2:0:stg2|out1_r_ff[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:0:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:0:stg2|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|out1_r_ff\(2));

-- Location: LABCELL_X83_Y12_N39
\butterfly_stage2:0:stg2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|Add0~13_sumout\ = SUM(( \butterfly_stage2:0:stg2|mul|r\(3) ) + ( \butterfly_stage1:0:stg1|out1_r_ff\(3) ) + ( \butterfly_stage2:0:stg2|Add0~10\ ))
-- \butterfly_stage2:0:stg2|Add0~14\ = CARRY(( \butterfly_stage2:0:stg2|mul|r\(3) ) + ( \butterfly_stage1:0:stg1|out1_r_ff\(3) ) + ( \butterfly_stage2:0:stg2|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage1:0:stg1|ALT_INV_out1_r_ff\(3),
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_r\(3),
	cin => \butterfly_stage2:0:stg2|Add0~10\,
	sumout => \butterfly_stage2:0:stg2|Add0~13_sumout\,
	cout => \butterfly_stage2:0:stg2|Add0~14\);

-- Location: FF_X83_Y12_N40
\butterfly_stage2:0:stg2|out1_r_ff[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:0:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:0:stg2|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|out1_r_ff\(3));

-- Location: LABCELL_X83_Y12_N42
\butterfly_stage2:0:stg2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|Add0~17_sumout\ = SUM(( \butterfly_stage1:0:stg1|out1_r_ff\(4) ) + ( \butterfly_stage2:0:stg2|mul|r\(4) ) + ( \butterfly_stage2:0:stg2|Add0~14\ ))
-- \butterfly_stage2:0:stg2|Add0~18\ = CARRY(( \butterfly_stage1:0:stg1|out1_r_ff\(4) ) + ( \butterfly_stage2:0:stg2|mul|r\(4) ) + ( \butterfly_stage2:0:stg2|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_r\(4),
	datad => \butterfly_stage1:0:stg1|ALT_INV_out1_r_ff\(4),
	cin => \butterfly_stage2:0:stg2|Add0~14\,
	sumout => \butterfly_stage2:0:stg2|Add0~17_sumout\,
	cout => \butterfly_stage2:0:stg2|Add0~18\);

-- Location: FF_X83_Y12_N44
\butterfly_stage2:0:stg2|out1_r_ff[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:0:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:0:stg2|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|out1_r_ff\(4));

-- Location: LABCELL_X83_Y12_N45
\butterfly_stage2:0:stg2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|Add0~21_sumout\ = SUM(( \butterfly_stage2:0:stg2|mul|r\(5) ) + ( \butterfly_stage1:0:stg1|out1_r_ff\(5) ) + ( \butterfly_stage2:0:stg2|Add0~18\ ))
-- \butterfly_stage2:0:stg2|Add0~22\ = CARRY(( \butterfly_stage2:0:stg2|mul|r\(5) ) + ( \butterfly_stage1:0:stg1|out1_r_ff\(5) ) + ( \butterfly_stage2:0:stg2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage1:0:stg1|ALT_INV_out1_r_ff\(5),
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_r\(5),
	cin => \butterfly_stage2:0:stg2|Add0~18\,
	sumout => \butterfly_stage2:0:stg2|Add0~21_sumout\,
	cout => \butterfly_stage2:0:stg2|Add0~22\);

-- Location: FF_X83_Y12_N46
\butterfly_stage2:0:stg2|out1_r_ff[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:0:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:0:stg2|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|out1_r_ff\(5));

-- Location: LABCELL_X83_Y12_N48
\butterfly_stage2:0:stg2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|Add0~25_sumout\ = SUM(( \butterfly_stage2:0:stg2|mul|r\(6) ) + ( \butterfly_stage1:0:stg1|out1_r_ff\(6) ) + ( \butterfly_stage2:0:stg2|Add0~22\ ))
-- \butterfly_stage2:0:stg2|Add0~26\ = CARRY(( \butterfly_stage2:0:stg2|mul|r\(6) ) + ( \butterfly_stage1:0:stg1|out1_r_ff\(6) ) + ( \butterfly_stage2:0:stg2|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:0:stg1|ALT_INV_out1_r_ff\(6),
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_r\(6),
	cin => \butterfly_stage2:0:stg2|Add0~22\,
	sumout => \butterfly_stage2:0:stg2|Add0~25_sumout\,
	cout => \butterfly_stage2:0:stg2|Add0~26\);

-- Location: FF_X83_Y12_N49
\butterfly_stage2:0:stg2|out1_r_ff[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:0:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:0:stg2|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|out1_r_ff\(6));

-- Location: LABCELL_X83_Y12_N51
\butterfly_stage2:0:stg2|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|Add0~29_sumout\ = SUM(( \butterfly_stage1:0:stg1|out1_r_ff\(7) ) + ( \butterfly_stage2:0:stg2|mul|r\(7) ) + ( \butterfly_stage2:0:stg2|Add0~26\ ))
-- \butterfly_stage2:0:stg2|Add0~30\ = CARRY(( \butterfly_stage1:0:stg1|out1_r_ff\(7) ) + ( \butterfly_stage2:0:stg2|mul|r\(7) ) + ( \butterfly_stage2:0:stg2|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_r\(7),
	datad => \butterfly_stage1:0:stg1|ALT_INV_out1_r_ff\(7),
	cin => \butterfly_stage2:0:stg2|Add0~26\,
	sumout => \butterfly_stage2:0:stg2|Add0~29_sumout\,
	cout => \butterfly_stage2:0:stg2|Add0~30\);

-- Location: FF_X83_Y12_N52
\butterfly_stage2:0:stg2|out1_r_ff[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:0:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:0:stg2|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|out1_r_ff\(7));

-- Location: LABCELL_X83_Y12_N54
\butterfly_stage2:0:stg2|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|Add0~33_sumout\ = SUM(( \butterfly_stage2:0:stg2|mul|r\(8) ) + ( \butterfly_stage1:0:stg1|out1_r_ff\(8) ) + ( \butterfly_stage2:0:stg2|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:0:stg1|ALT_INV_out1_r_ff\(8),
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_r\(8),
	cin => \butterfly_stage2:0:stg2|Add0~30\,
	sumout => \butterfly_stage2:0:stg2|Add0~33_sumout\);

-- Location: FF_X83_Y12_N55
\butterfly_stage2:0:stg2|out1_r_ff[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:0:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:0:stg2|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|out1_r_ff\(8));

-- Location: DSP_X86_Y8_N0
\butterfly_stage2:1:stg2|mul|Mult2~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "0",
	ax_width => 18,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
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
	operation_mode => "m18x18_full",
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
	aclr => \butterfly_stage2:1:stg2|mul|Mult2~8_ACLR_bus\,
	clk => \butterfly_stage2:1:stg2|mul|Mult2~8_CLK_bus\,
	ena => \butterfly_stage2:1:stg2|mul|Mult2~8_ENA_bus\,
	ax => \butterfly_stage2:1:stg2|mul|Mult2~8_AX_bus\,
	ay => \butterfly_stage2:1:stg2|mul|Mult2~8_AY_bus\,
	resulta => \butterfly_stage2:1:stg2|mul|Mult2~8_RESULTA_bus\);

-- Location: LABCELL_X85_Y11_N12
\butterfly_stage2:1:stg2|mul|WideOr2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|WideOr2~1_combout\ = ( !\butterfly_stage2:1:stg2|mul|Mult2~14\ & ( !\butterfly_stage2:1:stg2|mul|Mult2~15\ & ( (!\butterfly_stage2:1:stg2|mul|Mult2~17\ & (!\butterfly_stage2:1:stg2|mul|Mult2~18\ & 
-- !\butterfly_stage2:1:stg2|mul|Mult2~16\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~17\,
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~18\,
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~16\,
	datae => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~14\,
	dataf => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~15\,
	combout => \butterfly_stage2:1:stg2|mul|WideOr2~1_combout\);

-- Location: LABCELL_X85_Y8_N12
\butterfly_stage2:1:stg2|mul|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|WideOr2~0_combout\ = ( !\butterfly_stage2:1:stg2|mul|Mult2~11\ & ( !\butterfly_stage2:1:stg2|mul|Mult2~10\ & ( (!\butterfly_stage2:1:stg2|mul|Mult2~9\ & (!\butterfly_stage2:1:stg2|mul|Mult2~8_resulta\ & 
-- !\butterfly_stage2:1:stg2|mul|Mult2~12\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~9\,
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~8_resulta\,
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~12\,
	datae => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~11\,
	dataf => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~10\,
	combout => \butterfly_stage2:1:stg2|mul|WideOr2~0_combout\);

-- Location: LABCELL_X85_Y11_N18
\butterfly_stage2:1:stg2|mul|WideOr2\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|WideOr2~combout\ = ( \butterfly_stage2:1:stg2|mul|Mult2~20\ & ( \butterfly_stage2:1:stg2|mul|WideOr2~0_combout\ ) ) # ( !\butterfly_stage2:1:stg2|mul|Mult2~20\ & ( \butterfly_stage2:1:stg2|mul|WideOr2~0_combout\ & ( 
-- ((!\butterfly_stage2:1:stg2|mul|WideOr2~1_combout\) # ((\butterfly_stage2:1:stg2|mul|Mult2~21\) # (\butterfly_stage2:1:stg2|mul|Mult2~19\))) # (\butterfly_stage2:1:stg2|mul|Mult2~13\) ) ) ) # ( \butterfly_stage2:1:stg2|mul|Mult2~20\ & ( 
-- !\butterfly_stage2:1:stg2|mul|WideOr2~0_combout\ ) ) # ( !\butterfly_stage2:1:stg2|mul|Mult2~20\ & ( !\butterfly_stage2:1:stg2|mul|WideOr2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111011111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~13\,
	datab => \butterfly_stage2:1:stg2|mul|ALT_INV_WideOr2~1_combout\,
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~19\,
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~21\,
	datae => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~20\,
	dataf => \butterfly_stage2:1:stg2|mul|ALT_INV_WideOr2~0_combout\,
	combout => \butterfly_stage2:1:stg2|mul|WideOr2~combout\);

-- Location: LABCELL_X85_Y11_N30
\butterfly_stage2:1:stg2|mul|Add4~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add4~38_cout\ = CARRY(( \butterfly_stage2:1:stg2|mul|Mult2~32\ ) + ( \butterfly_stage2:1:stg2|mul|WideOr2~combout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_WideOr2~combout\,
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~32\,
	cin => GND,
	cout => \butterfly_stage2:1:stg2|mul|Add4~38_cout\);

-- Location: LABCELL_X85_Y11_N33
\butterfly_stage2:1:stg2|mul|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add4~1_sumout\ = SUM(( \butterfly_stage2:1:stg2|mul|Mult2~22\ ) + ( GND ) + ( \butterfly_stage2:1:stg2|mul|Add4~38_cout\ ))
-- \butterfly_stage2:1:stg2|mul|Add4~2\ = CARRY(( \butterfly_stage2:1:stg2|mul|Mult2~22\ ) + ( GND ) + ( \butterfly_stage2:1:stg2|mul|Add4~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~22\,
	cin => \butterfly_stage2:1:stg2|mul|Add4~38_cout\,
	sumout => \butterfly_stage2:1:stg2|mul|Add4~1_sumout\,
	cout => \butterfly_stage2:1:stg2|mul|Add4~2\);

-- Location: MLABCELL_X84_Y15_N0
\butterfly_stage2:1:stg2|mul|Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add5~1_sumout\ = SUM(( !\butterfly_stage2:1:stg2|mul|Add4~1_sumout\ $ (!\butterfly_stage2:1:stg2|mul|Add2~1_sumout\) ) + ( !VCC ) + ( !VCC ))
-- \butterfly_stage2:1:stg2|mul|Add5~2\ = CARRY(( !\butterfly_stage2:1:stg2|mul|Add4~1_sumout\ $ (!\butterfly_stage2:1:stg2|mul|Add2~1_sumout\) ) + ( !VCC ) + ( !VCC ))
-- \butterfly_stage2:1:stg2|mul|Add5~3\ = SHARE((!\butterfly_stage2:1:stg2|mul|Add2~1_sumout\) # (\butterfly_stage2:1:stg2|mul|Add4~1_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110101010100000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage2:1:stg2|mul|ALT_INV_Add4~1_sumout\,
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_Add2~1_sumout\,
	cin => GND,
	sharein => GND,
	sumout => \butterfly_stage2:1:stg2|mul|Add5~1_sumout\,
	cout => \butterfly_stage2:1:stg2|mul|Add5~2\,
	shareout => \butterfly_stage2:1:stg2|mul|Add5~3\);

-- Location: FF_X84_Y15_N2
\butterfly_stage2:1:stg2|mul|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage2:1:stg2|mul|Add5~1_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|mul|i\(0));

-- Location: DSP_X86_Y20_N0
\butterfly_stage1:0:stg1|mul|Mult2~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "0",
	ax_width => 18,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 15,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
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
	operation_mode => "m18x18_full",
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
	aclr => \butterfly_stage1:0:stg1|mul|Mult2~8_ACLR_bus\,
	clk => \butterfly_stage1:0:stg1|mul|Mult2~8_CLK_bus\,
	ena => \butterfly_stage1:0:stg1|mul|Mult2~8_ENA_bus\,
	ax => \butterfly_stage1:0:stg1|mul|Mult2~8_AX_bus\,
	ay => \butterfly_stage1:0:stg1|mul|Mult2~8_AY_bus\,
	resulta => \butterfly_stage1:0:stg1|mul|Mult2~8_RESULTA_bus\);

-- Location: MLABCELL_X82_Y20_N54
\butterfly_stage1:0:stg1|mul|WideOr2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|WideOr2~1_combout\ = ( !\butterfly_stage1:0:stg1|mul|Mult2~18\ & ( !\butterfly_stage1:0:stg1|mul|Mult2~15\ & ( (!\butterfly_stage1:0:stg1|mul|Mult2~16\ & (!\butterfly_stage1:0:stg1|mul|Mult2~17\ & 
-- !\butterfly_stage1:0:stg1|mul|Mult2~14\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~16\,
	datac => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~17\,
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~14\,
	datae => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~18\,
	dataf => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~15\,
	combout => \butterfly_stage1:0:stg1|mul|WideOr2~1_combout\);

-- Location: MLABCELL_X87_Y20_N33
\butterfly_stage1:0:stg1|mul|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|WideOr2~0_combout\ = ( !\butterfly_stage1:0:stg1|mul|Mult2~9\ & ( !\butterfly_stage1:0:stg1|mul|Mult2~8_resulta\ & ( (!\butterfly_stage1:0:stg1|mul|Mult2~10\ & (!\butterfly_stage1:0:stg1|mul|Mult2~12\ & 
-- !\butterfly_stage1:0:stg1|mul|Mult2~11\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~10\,
	datac => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~12\,
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~11\,
	datae => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~9\,
	dataf => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~8_resulta\,
	combout => \butterfly_stage1:0:stg1|mul|WideOr2~0_combout\);

-- Location: MLABCELL_X82_Y20_N48
\butterfly_stage1:0:stg1|mul|WideOr2\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|WideOr2~combout\ = ( \butterfly_stage1:0:stg1|mul|WideOr2~1_combout\ & ( \butterfly_stage1:0:stg1|mul|WideOr2~0_combout\ & ( (((\butterfly_stage1:0:stg1|mul|Mult2~19\) # (\butterfly_stage1:0:stg1|mul|Mult2~13\)) # 
-- (\butterfly_stage1:0:stg1|mul|Mult2~20\)) # (\butterfly_stage1:0:stg1|mul|Mult2~21\) ) ) ) # ( !\butterfly_stage1:0:stg1|mul|WideOr2~1_combout\ & ( \butterfly_stage1:0:stg1|mul|WideOr2~0_combout\ ) ) # ( \butterfly_stage1:0:stg1|mul|WideOr2~1_combout\ & ( 
-- !\butterfly_stage1:0:stg1|mul|WideOr2~0_combout\ ) ) # ( !\butterfly_stage1:0:stg1|mul|WideOr2~1_combout\ & ( !\butterfly_stage1:0:stg1|mul|WideOr2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~21\,
	datab => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~20\,
	datac => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~13\,
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~19\,
	datae => \butterfly_stage1:0:stg1|mul|ALT_INV_WideOr2~1_combout\,
	dataf => \butterfly_stage1:0:stg1|mul|ALT_INV_WideOr2~0_combout\,
	combout => \butterfly_stage1:0:stg1|mul|WideOr2~combout\);

-- Location: LABCELL_X83_Y20_N0
\butterfly_stage1:0:stg1|mul|Add4~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|Add4~38_cout\ = CARRY(( \butterfly_stage1:0:stg1|mul|WideOr2~combout\ ) + ( \butterfly_stage1:0:stg1|mul|Mult2~31\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~31\,
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_WideOr2~combout\,
	cin => GND,
	cout => \butterfly_stage1:0:stg1|mul|Add4~38_cout\);

-- Location: LABCELL_X83_Y20_N3
\butterfly_stage1:0:stg1|mul|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|Add4~1_sumout\ = SUM(( \butterfly_stage1:0:stg1|mul|Mult2~22\ ) + ( GND ) + ( \butterfly_stage1:0:stg1|mul|Add4~38_cout\ ))
-- \butterfly_stage1:0:stg1|mul|Add4~2\ = CARRY(( \butterfly_stage1:0:stg1|mul|Mult2~22\ ) + ( GND ) + ( \butterfly_stage1:0:stg1|mul|Add4~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~22\,
	cin => \butterfly_stage1:0:stg1|mul|Add4~38_cout\,
	sumout => \butterfly_stage1:0:stg1|mul|Add4~1_sumout\,
	cout => \butterfly_stage1:0:stg1|mul|Add4~2\);

-- Location: MLABCELL_X84_Y20_N30
\butterfly_stage1:0:stg1|mul|Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|Add5~1_sumout\ = SUM(( !\butterfly_stage1:0:stg1|mul|Add4~1_sumout\ $ (!\butterfly_stage1:0:stg1|mul|Add2~1_sumout\) ) + ( !VCC ) + ( !VCC ))
-- \butterfly_stage1:0:stg1|mul|Add5~2\ = CARRY(( !\butterfly_stage1:0:stg1|mul|Add4~1_sumout\ $ (!\butterfly_stage1:0:stg1|mul|Add2~1_sumout\) ) + ( !VCC ) + ( !VCC ))
-- \butterfly_stage1:0:stg1|mul|Add5~3\ = SHARE((!\butterfly_stage1:0:stg1|mul|Add2~1_sumout\) # (\butterfly_stage1:0:stg1|mul|Add4~1_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage1:0:stg1|mul|ALT_INV_Add4~1_sumout\,
	datac => \butterfly_stage1:0:stg1|mul|ALT_INV_Add2~1_sumout\,
	cin => GND,
	sharein => GND,
	sumout => \butterfly_stage1:0:stg1|mul|Add5~1_sumout\,
	cout => \butterfly_stage1:0:stg1|mul|Add5~2\,
	shareout => \butterfly_stage1:0:stg1|mul|Add5~3\);

-- Location: FF_X84_Y20_N31
\butterfly_stage1:0:stg1|mul|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:0:stg1|mul|Add5~1_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|mul|i\(0));

-- Location: MLABCELL_X84_Y19_N57
\butterfly_stage1:0:stg1|out1_i_ff[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|out1_i_ff[0]~feeder_combout\ = ( \butterfly_stage1:0:stg1|mul|i\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \butterfly_stage1:0:stg1|mul|ALT_INV_i\(0),
	combout => \butterfly_stage1:0:stg1|out1_i_ff[0]~feeder_combout\);

-- Location: FF_X84_Y19_N59
\butterfly_stage1:0:stg1|out1_i_ff[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:0:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:0:stg1|out1_i_ff[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|out1_i_ff\(0));

-- Location: MLABCELL_X84_Y15_N30
\butterfly_stage2:1:stg2|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|Add3~1_sumout\ = SUM(( !\butterfly_stage2:1:stg2|mul|i\(0) $ (!\butterfly_stage1:0:stg1|out1_i_ff\(0)) ) + ( !VCC ) + ( !VCC ))
-- \butterfly_stage2:1:stg2|Add3~2\ = CARRY(( !\butterfly_stage2:1:stg2|mul|i\(0) $ (!\butterfly_stage1:0:stg1|out1_i_ff\(0)) ) + ( !VCC ) + ( !VCC ))
-- \butterfly_stage2:1:stg2|Add3~3\ = SHARE((!\butterfly_stage2:1:stg2|mul|i\(0)) # (\butterfly_stage1:0:stg1|out1_i_ff\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_i\(0),
	datad => \butterfly_stage1:0:stg1|ALT_INV_out1_i_ff\(0),
	cin => GND,
	sharein => GND,
	sumout => \butterfly_stage2:1:stg2|Add3~1_sumout\,
	cout => \butterfly_stage2:1:stg2|Add3~2\,
	shareout => \butterfly_stage2:1:stg2|Add3~3\);

-- Location: FF_X84_Y15_N31
\butterfly_stage2:1:stg2|out2_i_ff[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:1:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:1:stg2|Add3~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|out2_i_ff\(0));

-- Location: LABCELL_X83_Y20_N6
\butterfly_stage1:0:stg1|mul|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|Add4~5_sumout\ = SUM(( \butterfly_stage1:0:stg1|mul|Mult2~23\ ) + ( GND ) + ( \butterfly_stage1:0:stg1|mul|Add4~2\ ))
-- \butterfly_stage1:0:stg1|mul|Add4~6\ = CARRY(( \butterfly_stage1:0:stg1|mul|Mult2~23\ ) + ( GND ) + ( \butterfly_stage1:0:stg1|mul|Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~23\,
	cin => \butterfly_stage1:0:stg1|mul|Add4~2\,
	sumout => \butterfly_stage1:0:stg1|mul|Add4~5_sumout\,
	cout => \butterfly_stage1:0:stg1|mul|Add4~6\);

-- Location: MLABCELL_X84_Y20_N33
\butterfly_stage1:0:stg1|mul|Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|Add5~5_sumout\ = SUM(( !\butterfly_stage1:0:stg1|mul|Add2~5_sumout\ $ (\butterfly_stage1:0:stg1|mul|Add4~5_sumout\) ) + ( \butterfly_stage1:0:stg1|mul|Add5~3\ ) + ( \butterfly_stage1:0:stg1|mul|Add5~2\ ))
-- \butterfly_stage1:0:stg1|mul|Add5~6\ = CARRY(( !\butterfly_stage1:0:stg1|mul|Add2~5_sumout\ $ (\butterfly_stage1:0:stg1|mul|Add4~5_sumout\) ) + ( \butterfly_stage1:0:stg1|mul|Add5~3\ ) + ( \butterfly_stage1:0:stg1|mul|Add5~2\ ))
-- \butterfly_stage1:0:stg1|mul|Add5~7\ = SHARE((!\butterfly_stage1:0:stg1|mul|Add2~5_sumout\ & \butterfly_stage1:0:stg1|mul|Add4~5_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:0:stg1|mul|ALT_INV_Add2~5_sumout\,
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_Add4~5_sumout\,
	cin => \butterfly_stage1:0:stg1|mul|Add5~2\,
	sharein => \butterfly_stage1:0:stg1|mul|Add5~3\,
	sumout => \butterfly_stage1:0:stg1|mul|Add5~5_sumout\,
	cout => \butterfly_stage1:0:stg1|mul|Add5~6\,
	shareout => \butterfly_stage1:0:stg1|mul|Add5~7\);

-- Location: FF_X84_Y20_N35
\butterfly_stage1:0:stg1|mul|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:0:stg1|mul|Add5~5_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|mul|i\(1));

-- Location: MLABCELL_X84_Y17_N0
\butterfly_stage1:0:stg1|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|Add3~1_sumout\ = SUM(( !\butterfly_stage1:0:stg1|mul|i\(0) ) + ( !\butterfly_stage1:0:stg1|mul|i\(1) ) + ( !VCC ))
-- \butterfly_stage1:0:stg1|Add3~2\ = CARRY(( !\butterfly_stage1:0:stg1|mul|i\(0) ) + ( !\butterfly_stage1:0:stg1|mul|i\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:0:stg1|mul|ALT_INV_i\(1),
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_i\(0),
	cin => GND,
	sumout => \butterfly_stage1:0:stg1|Add3~1_sumout\,
	cout => \butterfly_stage1:0:stg1|Add3~2\);

-- Location: FF_X84_Y17_N2
\butterfly_stage1:0:stg1|out2_i_ff[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:0:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:0:stg1|Add3~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|out2_i_ff\(1));

-- Location: LABCELL_X85_Y11_N36
\butterfly_stage2:1:stg2|mul|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add4~5_sumout\ = SUM(( \butterfly_stage2:1:stg2|mul|Mult2~23\ ) + ( GND ) + ( \butterfly_stage2:1:stg2|mul|Add4~2\ ))
-- \butterfly_stage2:1:stg2|mul|Add4~6\ = CARRY(( \butterfly_stage2:1:stg2|mul|Mult2~23\ ) + ( GND ) + ( \butterfly_stage2:1:stg2|mul|Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~23\,
	cin => \butterfly_stage2:1:stg2|mul|Add4~2\,
	sumout => \butterfly_stage2:1:stg2|mul|Add4~5_sumout\,
	cout => \butterfly_stage2:1:stg2|mul|Add4~6\);

-- Location: MLABCELL_X84_Y15_N3
\butterfly_stage2:1:stg2|mul|Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add5~5_sumout\ = SUM(( !\butterfly_stage2:1:stg2|mul|Add4~5_sumout\ $ (\butterfly_stage2:1:stg2|mul|Add2~5_sumout\) ) + ( \butterfly_stage2:1:stg2|mul|Add5~3\ ) + ( \butterfly_stage2:1:stg2|mul|Add5~2\ ))
-- \butterfly_stage2:1:stg2|mul|Add5~6\ = CARRY(( !\butterfly_stage2:1:stg2|mul|Add4~5_sumout\ $ (\butterfly_stage2:1:stg2|mul|Add2~5_sumout\) ) + ( \butterfly_stage2:1:stg2|mul|Add5~3\ ) + ( \butterfly_stage2:1:stg2|mul|Add5~2\ ))
-- \butterfly_stage2:1:stg2|mul|Add5~7\ = SHARE((\butterfly_stage2:1:stg2|mul|Add4~5_sumout\ & !\butterfly_stage2:1:stg2|mul|Add2~5_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_Add4~5_sumout\,
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_Add2~5_sumout\,
	cin => \butterfly_stage2:1:stg2|mul|Add5~2\,
	sharein => \butterfly_stage2:1:stg2|mul|Add5~3\,
	sumout => \butterfly_stage2:1:stg2|mul|Add5~5_sumout\,
	cout => \butterfly_stage2:1:stg2|mul|Add5~6\,
	shareout => \butterfly_stage2:1:stg2|mul|Add5~7\);

-- Location: FF_X84_Y15_N5
\butterfly_stage2:1:stg2|mul|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage2:1:stg2|mul|Add5~5_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|mul|i\(1));

-- Location: MLABCELL_X84_Y15_N33
\butterfly_stage2:1:stg2|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|Add3~5_sumout\ = SUM(( !\butterfly_stage1:0:stg1|out2_i_ff\(1) $ (\butterfly_stage2:1:stg2|mul|i\(1)) ) + ( \butterfly_stage2:1:stg2|Add3~3\ ) + ( \butterfly_stage2:1:stg2|Add3~2\ ))
-- \butterfly_stage2:1:stg2|Add3~6\ = CARRY(( !\butterfly_stage1:0:stg1|out2_i_ff\(1) $ (\butterfly_stage2:1:stg2|mul|i\(1)) ) + ( \butterfly_stage2:1:stg2|Add3~3\ ) + ( \butterfly_stage2:1:stg2|Add3~2\ ))
-- \butterfly_stage2:1:stg2|Add3~7\ = SHARE((\butterfly_stage1:0:stg1|out2_i_ff\(1) & !\butterfly_stage2:1:stg2|mul|i\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:0:stg1|ALT_INV_out2_i_ff\(1),
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_i\(1),
	cin => \butterfly_stage2:1:stg2|Add3~2\,
	sharein => \butterfly_stage2:1:stg2|Add3~3\,
	sumout => \butterfly_stage2:1:stg2|Add3~5_sumout\,
	cout => \butterfly_stage2:1:stg2|Add3~6\,
	shareout => \butterfly_stage2:1:stg2|Add3~7\);

-- Location: FF_X84_Y15_N34
\butterfly_stage2:1:stg2|out2_i_ff[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:1:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:1:stg2|Add3~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|out2_i_ff\(1));

-- Location: LABCELL_X85_Y11_N39
\butterfly_stage2:1:stg2|mul|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add4~9_sumout\ = SUM(( \butterfly_stage2:1:stg2|mul|Mult2~24\ ) + ( GND ) + ( \butterfly_stage2:1:stg2|mul|Add4~6\ ))
-- \butterfly_stage2:1:stg2|mul|Add4~10\ = CARRY(( \butterfly_stage2:1:stg2|mul|Mult2~24\ ) + ( GND ) + ( \butterfly_stage2:1:stg2|mul|Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~24\,
	cin => \butterfly_stage2:1:stg2|mul|Add4~6\,
	sumout => \butterfly_stage2:1:stg2|mul|Add4~9_sumout\,
	cout => \butterfly_stage2:1:stg2|mul|Add4~10\);

-- Location: MLABCELL_X84_Y15_N6
\butterfly_stage2:1:stg2|mul|Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add5~9_sumout\ = SUM(( !\butterfly_stage2:1:stg2|mul|Add4~9_sumout\ $ (\butterfly_stage2:1:stg2|mul|Add2~9_sumout\) ) + ( \butterfly_stage2:1:stg2|mul|Add5~7\ ) + ( \butterfly_stage2:1:stg2|mul|Add5~6\ ))
-- \butterfly_stage2:1:stg2|mul|Add5~10\ = CARRY(( !\butterfly_stage2:1:stg2|mul|Add4~9_sumout\ $ (\butterfly_stage2:1:stg2|mul|Add2~9_sumout\) ) + ( \butterfly_stage2:1:stg2|mul|Add5~7\ ) + ( \butterfly_stage2:1:stg2|mul|Add5~6\ ))
-- \butterfly_stage2:1:stg2|mul|Add5~11\ = SHARE((\butterfly_stage2:1:stg2|mul|Add4~9_sumout\ & !\butterfly_stage2:1:stg2|mul|Add2~9_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_Add4~9_sumout\,
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_Add2~9_sumout\,
	cin => \butterfly_stage2:1:stg2|mul|Add5~6\,
	sharein => \butterfly_stage2:1:stg2|mul|Add5~7\,
	sumout => \butterfly_stage2:1:stg2|mul|Add5~9_sumout\,
	cout => \butterfly_stage2:1:stg2|mul|Add5~10\,
	shareout => \butterfly_stage2:1:stg2|mul|Add5~11\);

-- Location: FF_X84_Y15_N8
\butterfly_stage2:1:stg2|mul|i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage2:1:stg2|mul|Add5~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|mul|i\(2));

-- Location: LABCELL_X83_Y20_N9
\butterfly_stage1:0:stg1|mul|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|Add4~9_sumout\ = SUM(( \butterfly_stage1:0:stg1|mul|Mult2~24\ ) + ( GND ) + ( \butterfly_stage1:0:stg1|mul|Add4~6\ ))
-- \butterfly_stage1:0:stg1|mul|Add4~10\ = CARRY(( \butterfly_stage1:0:stg1|mul|Mult2~24\ ) + ( GND ) + ( \butterfly_stage1:0:stg1|mul|Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~24\,
	cin => \butterfly_stage1:0:stg1|mul|Add4~6\,
	sumout => \butterfly_stage1:0:stg1|mul|Add4~9_sumout\,
	cout => \butterfly_stage1:0:stg1|mul|Add4~10\);

-- Location: MLABCELL_X84_Y20_N36
\butterfly_stage1:0:stg1|mul|Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|Add5~9_sumout\ = SUM(( !\butterfly_stage1:0:stg1|mul|Add2~9_sumout\ $ (\butterfly_stage1:0:stg1|mul|Add4~9_sumout\) ) + ( \butterfly_stage1:0:stg1|mul|Add5~7\ ) + ( \butterfly_stage1:0:stg1|mul|Add5~6\ ))
-- \butterfly_stage1:0:stg1|mul|Add5~10\ = CARRY(( !\butterfly_stage1:0:stg1|mul|Add2~9_sumout\ $ (\butterfly_stage1:0:stg1|mul|Add4~9_sumout\) ) + ( \butterfly_stage1:0:stg1|mul|Add5~7\ ) + ( \butterfly_stage1:0:stg1|mul|Add5~6\ ))
-- \butterfly_stage1:0:stg1|mul|Add5~11\ = SHARE((!\butterfly_stage1:0:stg1|mul|Add2~9_sumout\ & \butterfly_stage1:0:stg1|mul|Add4~9_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:0:stg1|mul|ALT_INV_Add2~9_sumout\,
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_Add4~9_sumout\,
	cin => \butterfly_stage1:0:stg1|mul|Add5~6\,
	sharein => \butterfly_stage1:0:stg1|mul|Add5~7\,
	sumout => \butterfly_stage1:0:stg1|mul|Add5~9_sumout\,
	cout => \butterfly_stage1:0:stg1|mul|Add5~10\,
	shareout => \butterfly_stage1:0:stg1|mul|Add5~11\);

-- Location: FF_X84_Y20_N37
\butterfly_stage1:0:stg1|mul|i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:0:stg1|mul|Add5~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|mul|i\(2));

-- Location: MLABCELL_X84_Y17_N3
\butterfly_stage1:0:stg1|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|Add3~5_sumout\ = SUM(( !\butterfly_stage1:0:stg1|mul|i\(2) ) + ( GND ) + ( \butterfly_stage1:0:stg1|Add3~2\ ))
-- \butterfly_stage1:0:stg1|Add3~6\ = CARRY(( !\butterfly_stage1:0:stg1|mul|i\(2) ) + ( GND ) + ( \butterfly_stage1:0:stg1|Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_i\(2),
	cin => \butterfly_stage1:0:stg1|Add3~2\,
	sumout => \butterfly_stage1:0:stg1|Add3~5_sumout\,
	cout => \butterfly_stage1:0:stg1|Add3~6\);

-- Location: FF_X84_Y17_N5
\butterfly_stage1:0:stg1|out2_i_ff[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:0:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:0:stg1|Add3~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|out2_i_ff\(2));

-- Location: MLABCELL_X84_Y15_N36
\butterfly_stage2:1:stg2|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|Add3~9_sumout\ = SUM(( !\butterfly_stage2:1:stg2|mul|i\(2) $ (\butterfly_stage1:0:stg1|out2_i_ff\(2)) ) + ( \butterfly_stage2:1:stg2|Add3~7\ ) + ( \butterfly_stage2:1:stg2|Add3~6\ ))
-- \butterfly_stage2:1:stg2|Add3~10\ = CARRY(( !\butterfly_stage2:1:stg2|mul|i\(2) $ (\butterfly_stage1:0:stg1|out2_i_ff\(2)) ) + ( \butterfly_stage2:1:stg2|Add3~7\ ) + ( \butterfly_stage2:1:stg2|Add3~6\ ))
-- \butterfly_stage2:1:stg2|Add3~11\ = SHARE((!\butterfly_stage2:1:stg2|mul|i\(2) & \butterfly_stage1:0:stg1|out2_i_ff\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage2:1:stg2|mul|ALT_INV_i\(2),
	datad => \butterfly_stage1:0:stg1|ALT_INV_out2_i_ff\(2),
	cin => \butterfly_stage2:1:stg2|Add3~6\,
	sharein => \butterfly_stage2:1:stg2|Add3~7\,
	sumout => \butterfly_stage2:1:stg2|Add3~9_sumout\,
	cout => \butterfly_stage2:1:stg2|Add3~10\,
	shareout => \butterfly_stage2:1:stg2|Add3~11\);

-- Location: FF_X84_Y15_N37
\butterfly_stage2:1:stg2|out2_i_ff[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:1:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:1:stg2|Add3~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|out2_i_ff\(2));

-- Location: LABCELL_X83_Y20_N12
\butterfly_stage1:0:stg1|mul|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|Add4~13_sumout\ = SUM(( \butterfly_stage1:0:stg1|mul|Mult2~25\ ) + ( GND ) + ( \butterfly_stage1:0:stg1|mul|Add4~10\ ))
-- \butterfly_stage1:0:stg1|mul|Add4~14\ = CARRY(( \butterfly_stage1:0:stg1|mul|Mult2~25\ ) + ( GND ) + ( \butterfly_stage1:0:stg1|mul|Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~25\,
	cin => \butterfly_stage1:0:stg1|mul|Add4~10\,
	sumout => \butterfly_stage1:0:stg1|mul|Add4~13_sumout\,
	cout => \butterfly_stage1:0:stg1|mul|Add4~14\);

-- Location: MLABCELL_X84_Y20_N39
\butterfly_stage1:0:stg1|mul|Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|Add5~13_sumout\ = SUM(( !\butterfly_stage1:0:stg1|mul|Add2~13_sumout\ $ (\butterfly_stage1:0:stg1|mul|Add4~13_sumout\) ) + ( \butterfly_stage1:0:stg1|mul|Add5~11\ ) + ( \butterfly_stage1:0:stg1|mul|Add5~10\ ))
-- \butterfly_stage1:0:stg1|mul|Add5~14\ = CARRY(( !\butterfly_stage1:0:stg1|mul|Add2~13_sumout\ $ (\butterfly_stage1:0:stg1|mul|Add4~13_sumout\) ) + ( \butterfly_stage1:0:stg1|mul|Add5~11\ ) + ( \butterfly_stage1:0:stg1|mul|Add5~10\ ))
-- \butterfly_stage1:0:stg1|mul|Add5~15\ = SHARE((!\butterfly_stage1:0:stg1|mul|Add2~13_sumout\ & \butterfly_stage1:0:stg1|mul|Add4~13_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:0:stg1|mul|ALT_INV_Add2~13_sumout\,
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_Add4~13_sumout\,
	cin => \butterfly_stage1:0:stg1|mul|Add5~10\,
	sharein => \butterfly_stage1:0:stg1|mul|Add5~11\,
	sumout => \butterfly_stage1:0:stg1|mul|Add5~13_sumout\,
	cout => \butterfly_stage1:0:stg1|mul|Add5~14\,
	shareout => \butterfly_stage1:0:stg1|mul|Add5~15\);

-- Location: FF_X84_Y20_N41
\butterfly_stage1:0:stg1|mul|i[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:0:stg1|mul|Add5~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|mul|i[3]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y17_N6
\butterfly_stage1:0:stg1|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|Add3~9_sumout\ = SUM(( !\butterfly_stage1:0:stg1|mul|i[3]~DUPLICATE_q\ ) + ( GND ) + ( \butterfly_stage1:0:stg1|Add3~6\ ))
-- \butterfly_stage1:0:stg1|Add3~10\ = CARRY(( !\butterfly_stage1:0:stg1|mul|i[3]~DUPLICATE_q\ ) + ( GND ) + ( \butterfly_stage1:0:stg1|Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_i[3]~DUPLICATE_q\,
	cin => \butterfly_stage1:0:stg1|Add3~6\,
	sumout => \butterfly_stage1:0:stg1|Add3~9_sumout\,
	cout => \butterfly_stage1:0:stg1|Add3~10\);

-- Location: FF_X84_Y17_N8
\butterfly_stage1:0:stg1|out2_i_ff[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:0:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:0:stg1|Add3~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|out2_i_ff\(3));

-- Location: LABCELL_X85_Y11_N42
\butterfly_stage2:1:stg2|mul|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add4~13_sumout\ = SUM(( \butterfly_stage2:1:stg2|mul|Mult2~25\ ) + ( GND ) + ( \butterfly_stage2:1:stg2|mul|Add4~10\ ))
-- \butterfly_stage2:1:stg2|mul|Add4~14\ = CARRY(( \butterfly_stage2:1:stg2|mul|Mult2~25\ ) + ( GND ) + ( \butterfly_stage2:1:stg2|mul|Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~25\,
	cin => \butterfly_stage2:1:stg2|mul|Add4~10\,
	sumout => \butterfly_stage2:1:stg2|mul|Add4~13_sumout\,
	cout => \butterfly_stage2:1:stg2|mul|Add4~14\);

-- Location: MLABCELL_X84_Y15_N9
\butterfly_stage2:1:stg2|mul|Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add5~13_sumout\ = SUM(( !\butterfly_stage2:1:stg2|mul|Add4~13_sumout\ $ (\butterfly_stage2:1:stg2|mul|Add2~13_sumout\) ) + ( \butterfly_stage2:1:stg2|mul|Add5~11\ ) + ( \butterfly_stage2:1:stg2|mul|Add5~10\ ))
-- \butterfly_stage2:1:stg2|mul|Add5~14\ = CARRY(( !\butterfly_stage2:1:stg2|mul|Add4~13_sumout\ $ (\butterfly_stage2:1:stg2|mul|Add2~13_sumout\) ) + ( \butterfly_stage2:1:stg2|mul|Add5~11\ ) + ( \butterfly_stage2:1:stg2|mul|Add5~10\ ))
-- \butterfly_stage2:1:stg2|mul|Add5~15\ = SHARE((\butterfly_stage2:1:stg2|mul|Add4~13_sumout\ & !\butterfly_stage2:1:stg2|mul|Add2~13_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_Add4~13_sumout\,
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_Add2~13_sumout\,
	cin => \butterfly_stage2:1:stg2|mul|Add5~10\,
	sharein => \butterfly_stage2:1:stg2|mul|Add5~11\,
	sumout => \butterfly_stage2:1:stg2|mul|Add5~13_sumout\,
	cout => \butterfly_stage2:1:stg2|mul|Add5~14\,
	shareout => \butterfly_stage2:1:stg2|mul|Add5~15\);

-- Location: FF_X84_Y15_N11
\butterfly_stage2:1:stg2|mul|i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage2:1:stg2|mul|Add5~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|mul|i\(3));

-- Location: MLABCELL_X84_Y15_N39
\butterfly_stage2:1:stg2|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|Add3~13_sumout\ = SUM(( !\butterfly_stage1:0:stg1|out2_i_ff\(3) $ (\butterfly_stage2:1:stg2|mul|i\(3)) ) + ( \butterfly_stage2:1:stg2|Add3~11\ ) + ( \butterfly_stage2:1:stg2|Add3~10\ ))
-- \butterfly_stage2:1:stg2|Add3~14\ = CARRY(( !\butterfly_stage1:0:stg1|out2_i_ff\(3) $ (\butterfly_stage2:1:stg2|mul|i\(3)) ) + ( \butterfly_stage2:1:stg2|Add3~11\ ) + ( \butterfly_stage2:1:stg2|Add3~10\ ))
-- \butterfly_stage2:1:stg2|Add3~15\ = SHARE((\butterfly_stage1:0:stg1|out2_i_ff\(3) & !\butterfly_stage2:1:stg2|mul|i\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage1:0:stg1|ALT_INV_out2_i_ff\(3),
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_i\(3),
	cin => \butterfly_stage2:1:stg2|Add3~10\,
	sharein => \butterfly_stage2:1:stg2|Add3~11\,
	sumout => \butterfly_stage2:1:stg2|Add3~13_sumout\,
	cout => \butterfly_stage2:1:stg2|Add3~14\,
	shareout => \butterfly_stage2:1:stg2|Add3~15\);

-- Location: FF_X84_Y15_N40
\butterfly_stage2:1:stg2|out2_i_ff[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:1:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:1:stg2|Add3~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|out2_i_ff\(3));

-- Location: LABCELL_X85_Y11_N45
\butterfly_stage2:1:stg2|mul|Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add4~17_sumout\ = SUM(( \butterfly_stage2:1:stg2|mul|Mult2~26\ ) + ( GND ) + ( \butterfly_stage2:1:stg2|mul|Add4~14\ ))
-- \butterfly_stage2:1:stg2|mul|Add4~18\ = CARRY(( \butterfly_stage2:1:stg2|mul|Mult2~26\ ) + ( GND ) + ( \butterfly_stage2:1:stg2|mul|Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~26\,
	cin => \butterfly_stage2:1:stg2|mul|Add4~14\,
	sumout => \butterfly_stage2:1:stg2|mul|Add4~17_sumout\,
	cout => \butterfly_stage2:1:stg2|mul|Add4~18\);

-- Location: MLABCELL_X84_Y15_N12
\butterfly_stage2:1:stg2|mul|Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add5~17_sumout\ = SUM(( !\butterfly_stage2:1:stg2|mul|Add4~17_sumout\ $ (\butterfly_stage2:1:stg2|mul|Add2~17_sumout\) ) + ( \butterfly_stage2:1:stg2|mul|Add5~15\ ) + ( \butterfly_stage2:1:stg2|mul|Add5~14\ ))
-- \butterfly_stage2:1:stg2|mul|Add5~18\ = CARRY(( !\butterfly_stage2:1:stg2|mul|Add4~17_sumout\ $ (\butterfly_stage2:1:stg2|mul|Add2~17_sumout\) ) + ( \butterfly_stage2:1:stg2|mul|Add5~15\ ) + ( \butterfly_stage2:1:stg2|mul|Add5~14\ ))
-- \butterfly_stage2:1:stg2|mul|Add5~19\ = SHARE((\butterfly_stage2:1:stg2|mul|Add4~17_sumout\ & !\butterfly_stage2:1:stg2|mul|Add2~17_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage2:1:stg2|mul|ALT_INV_Add4~17_sumout\,
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_Add2~17_sumout\,
	cin => \butterfly_stage2:1:stg2|mul|Add5~14\,
	sharein => \butterfly_stage2:1:stg2|mul|Add5~15\,
	sumout => \butterfly_stage2:1:stg2|mul|Add5~17_sumout\,
	cout => \butterfly_stage2:1:stg2|mul|Add5~18\,
	shareout => \butterfly_stage2:1:stg2|mul|Add5~19\);

-- Location: FF_X84_Y15_N14
\butterfly_stage2:1:stg2|mul|i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage2:1:stg2|mul|Add5~17_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|mul|i\(4));

-- Location: LABCELL_X83_Y20_N15
\butterfly_stage1:0:stg1|mul|Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|Add4~17_sumout\ = SUM(( \butterfly_stage1:0:stg1|mul|Mult2~26\ ) + ( GND ) + ( \butterfly_stage1:0:stg1|mul|Add4~14\ ))
-- \butterfly_stage1:0:stg1|mul|Add4~18\ = CARRY(( \butterfly_stage1:0:stg1|mul|Mult2~26\ ) + ( GND ) + ( \butterfly_stage1:0:stg1|mul|Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~26\,
	cin => \butterfly_stage1:0:stg1|mul|Add4~14\,
	sumout => \butterfly_stage1:0:stg1|mul|Add4~17_sumout\,
	cout => \butterfly_stage1:0:stg1|mul|Add4~18\);

-- Location: MLABCELL_X84_Y20_N42
\butterfly_stage1:0:stg1|mul|Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|Add5~17_sumout\ = SUM(( !\butterfly_stage1:0:stg1|mul|Add2~17_sumout\ $ (\butterfly_stage1:0:stg1|mul|Add4~17_sumout\) ) + ( \butterfly_stage1:0:stg1|mul|Add5~15\ ) + ( \butterfly_stage1:0:stg1|mul|Add5~14\ ))
-- \butterfly_stage1:0:stg1|mul|Add5~18\ = CARRY(( !\butterfly_stage1:0:stg1|mul|Add2~17_sumout\ $ (\butterfly_stage1:0:stg1|mul|Add4~17_sumout\) ) + ( \butterfly_stage1:0:stg1|mul|Add5~15\ ) + ( \butterfly_stage1:0:stg1|mul|Add5~14\ ))
-- \butterfly_stage1:0:stg1|mul|Add5~19\ = SHARE((!\butterfly_stage1:0:stg1|mul|Add2~17_sumout\ & \butterfly_stage1:0:stg1|mul|Add4~17_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage1:0:stg1|mul|ALT_INV_Add2~17_sumout\,
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_Add4~17_sumout\,
	cin => \butterfly_stage1:0:stg1|mul|Add5~14\,
	sharein => \butterfly_stage1:0:stg1|mul|Add5~15\,
	sumout => \butterfly_stage1:0:stg1|mul|Add5~17_sumout\,
	cout => \butterfly_stage1:0:stg1|mul|Add5~18\,
	shareout => \butterfly_stage1:0:stg1|mul|Add5~19\);

-- Location: FF_X84_Y20_N44
\butterfly_stage1:0:stg1|mul|i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:0:stg1|mul|Add5~17_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|mul|i\(4));

-- Location: MLABCELL_X84_Y17_N9
\butterfly_stage1:0:stg1|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|Add3~13_sumout\ = SUM(( !\butterfly_stage1:0:stg1|mul|i\(4) ) + ( GND ) + ( \butterfly_stage1:0:stg1|Add3~10\ ))
-- \butterfly_stage1:0:stg1|Add3~14\ = CARRY(( !\butterfly_stage1:0:stg1|mul|i\(4) ) + ( GND ) + ( \butterfly_stage1:0:stg1|Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_i\(4),
	cin => \butterfly_stage1:0:stg1|Add3~10\,
	sumout => \butterfly_stage1:0:stg1|Add3~13_sumout\,
	cout => \butterfly_stage1:0:stg1|Add3~14\);

-- Location: FF_X84_Y17_N11
\butterfly_stage1:0:stg1|out2_i_ff[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:0:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:0:stg1|Add3~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|out2_i_ff\(4));

-- Location: MLABCELL_X84_Y15_N42
\butterfly_stage2:1:stg2|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|Add3~17_sumout\ = SUM(( !\butterfly_stage2:1:stg2|mul|i\(4) $ (\butterfly_stage1:0:stg1|out2_i_ff\(4)) ) + ( \butterfly_stage2:1:stg2|Add3~15\ ) + ( \butterfly_stage2:1:stg2|Add3~14\ ))
-- \butterfly_stage2:1:stg2|Add3~18\ = CARRY(( !\butterfly_stage2:1:stg2|mul|i\(4) $ (\butterfly_stage1:0:stg1|out2_i_ff\(4)) ) + ( \butterfly_stage2:1:stg2|Add3~15\ ) + ( \butterfly_stage2:1:stg2|Add3~14\ ))
-- \butterfly_stage2:1:stg2|Add3~19\ = SHARE((!\butterfly_stage2:1:stg2|mul|i\(4) & \butterfly_stage1:0:stg1|out2_i_ff\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage2:1:stg2|mul|ALT_INV_i\(4),
	datac => \butterfly_stage1:0:stg1|ALT_INV_out2_i_ff\(4),
	cin => \butterfly_stage2:1:stg2|Add3~14\,
	sharein => \butterfly_stage2:1:stg2|Add3~15\,
	sumout => \butterfly_stage2:1:stg2|Add3~17_sumout\,
	cout => \butterfly_stage2:1:stg2|Add3~18\,
	shareout => \butterfly_stage2:1:stg2|Add3~19\);

-- Location: FF_X84_Y15_N43
\butterfly_stage2:1:stg2|out2_i_ff[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:1:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:1:stg2|Add3~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|out2_i_ff\(4));

-- Location: LABCELL_X85_Y11_N48
\butterfly_stage2:1:stg2|mul|Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add4~21_sumout\ = SUM(( \butterfly_stage2:1:stg2|mul|Mult2~27\ ) + ( GND ) + ( \butterfly_stage2:1:stg2|mul|Add4~18\ ))
-- \butterfly_stage2:1:stg2|mul|Add4~22\ = CARRY(( \butterfly_stage2:1:stg2|mul|Mult2~27\ ) + ( GND ) + ( \butterfly_stage2:1:stg2|mul|Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~27\,
	cin => \butterfly_stage2:1:stg2|mul|Add4~18\,
	sumout => \butterfly_stage2:1:stg2|mul|Add4~21_sumout\,
	cout => \butterfly_stage2:1:stg2|mul|Add4~22\);

-- Location: MLABCELL_X84_Y15_N15
\butterfly_stage2:1:stg2|mul|Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add5~21_sumout\ = SUM(( !\butterfly_stage2:1:stg2|mul|Add4~21_sumout\ $ (\butterfly_stage2:1:stg2|mul|Add2~21_sumout\) ) + ( \butterfly_stage2:1:stg2|mul|Add5~19\ ) + ( \butterfly_stage2:1:stg2|mul|Add5~18\ ))
-- \butterfly_stage2:1:stg2|mul|Add5~22\ = CARRY(( !\butterfly_stage2:1:stg2|mul|Add4~21_sumout\ $ (\butterfly_stage2:1:stg2|mul|Add2~21_sumout\) ) + ( \butterfly_stage2:1:stg2|mul|Add5~19\ ) + ( \butterfly_stage2:1:stg2|mul|Add5~18\ ))
-- \butterfly_stage2:1:stg2|mul|Add5~23\ = SHARE((\butterfly_stage2:1:stg2|mul|Add4~21_sumout\ & !\butterfly_stage2:1:stg2|mul|Add2~21_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_Add4~21_sumout\,
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_Add2~21_sumout\,
	cin => \butterfly_stage2:1:stg2|mul|Add5~18\,
	sharein => \butterfly_stage2:1:stg2|mul|Add5~19\,
	sumout => \butterfly_stage2:1:stg2|mul|Add5~21_sumout\,
	cout => \butterfly_stage2:1:stg2|mul|Add5~22\,
	shareout => \butterfly_stage2:1:stg2|mul|Add5~23\);

-- Location: FF_X84_Y15_N17
\butterfly_stage2:1:stg2|mul|i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage2:1:stg2|mul|Add5~21_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|mul|i\(5));

-- Location: LABCELL_X83_Y20_N18
\butterfly_stage1:0:stg1|mul|Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|Add4~21_sumout\ = SUM(( \butterfly_stage1:0:stg1|mul|Mult2~27\ ) + ( GND ) + ( \butterfly_stage1:0:stg1|mul|Add4~18\ ))
-- \butterfly_stage1:0:stg1|mul|Add4~22\ = CARRY(( \butterfly_stage1:0:stg1|mul|Mult2~27\ ) + ( GND ) + ( \butterfly_stage1:0:stg1|mul|Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~27\,
	cin => \butterfly_stage1:0:stg1|mul|Add4~18\,
	sumout => \butterfly_stage1:0:stg1|mul|Add4~21_sumout\,
	cout => \butterfly_stage1:0:stg1|mul|Add4~22\);

-- Location: MLABCELL_X84_Y20_N45
\butterfly_stage1:0:stg1|mul|Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|Add5~21_sumout\ = SUM(( !\butterfly_stage1:0:stg1|mul|Add2~21_sumout\ $ (\butterfly_stage1:0:stg1|mul|Add4~21_sumout\) ) + ( \butterfly_stage1:0:stg1|mul|Add5~19\ ) + ( \butterfly_stage1:0:stg1|mul|Add5~18\ ))
-- \butterfly_stage1:0:stg1|mul|Add5~22\ = CARRY(( !\butterfly_stage1:0:stg1|mul|Add2~21_sumout\ $ (\butterfly_stage1:0:stg1|mul|Add4~21_sumout\) ) + ( \butterfly_stage1:0:stg1|mul|Add5~19\ ) + ( \butterfly_stage1:0:stg1|mul|Add5~18\ ))
-- \butterfly_stage1:0:stg1|mul|Add5~23\ = SHARE((!\butterfly_stage1:0:stg1|mul|Add2~21_sumout\ & \butterfly_stage1:0:stg1|mul|Add4~21_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage1:0:stg1|mul|ALT_INV_Add2~21_sumout\,
	datac => \butterfly_stage1:0:stg1|mul|ALT_INV_Add4~21_sumout\,
	cin => \butterfly_stage1:0:stg1|mul|Add5~18\,
	sharein => \butterfly_stage1:0:stg1|mul|Add5~19\,
	sumout => \butterfly_stage1:0:stg1|mul|Add5~21_sumout\,
	cout => \butterfly_stage1:0:stg1|mul|Add5~22\,
	shareout => \butterfly_stage1:0:stg1|mul|Add5~23\);

-- Location: FF_X84_Y20_N46
\butterfly_stage1:0:stg1|mul|i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:0:stg1|mul|Add5~21_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|mul|i\(5));

-- Location: MLABCELL_X84_Y17_N12
\butterfly_stage1:0:stg1|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|Add3~17_sumout\ = SUM(( !\butterfly_stage1:0:stg1|mul|i\(5) ) + ( GND ) + ( \butterfly_stage1:0:stg1|Add3~14\ ))
-- \butterfly_stage1:0:stg1|Add3~18\ = CARRY(( !\butterfly_stage1:0:stg1|mul|i\(5) ) + ( GND ) + ( \butterfly_stage1:0:stg1|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_i\(5),
	cin => \butterfly_stage1:0:stg1|Add3~14\,
	sumout => \butterfly_stage1:0:stg1|Add3~17_sumout\,
	cout => \butterfly_stage1:0:stg1|Add3~18\);

-- Location: FF_X84_Y17_N14
\butterfly_stage1:0:stg1|out2_i_ff[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:0:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:0:stg1|Add3~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|out2_i_ff\(5));

-- Location: MLABCELL_X84_Y15_N45
\butterfly_stage2:1:stg2|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|Add3~21_sumout\ = SUM(( !\butterfly_stage2:1:stg2|mul|i\(5) $ (\butterfly_stage1:0:stg1|out2_i_ff\(5)) ) + ( \butterfly_stage2:1:stg2|Add3~19\ ) + ( \butterfly_stage2:1:stg2|Add3~18\ ))
-- \butterfly_stage2:1:stg2|Add3~22\ = CARRY(( !\butterfly_stage2:1:stg2|mul|i\(5) $ (\butterfly_stage1:0:stg1|out2_i_ff\(5)) ) + ( \butterfly_stage2:1:stg2|Add3~19\ ) + ( \butterfly_stage2:1:stg2|Add3~18\ ))
-- \butterfly_stage2:1:stg2|Add3~23\ = SHARE((!\butterfly_stage2:1:stg2|mul|i\(5) & \butterfly_stage1:0:stg1|out2_i_ff\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_i\(5),
	datad => \butterfly_stage1:0:stg1|ALT_INV_out2_i_ff\(5),
	cin => \butterfly_stage2:1:stg2|Add3~18\,
	sharein => \butterfly_stage2:1:stg2|Add3~19\,
	sumout => \butterfly_stage2:1:stg2|Add3~21_sumout\,
	cout => \butterfly_stage2:1:stg2|Add3~22\,
	shareout => \butterfly_stage2:1:stg2|Add3~23\);

-- Location: FF_X84_Y15_N47
\butterfly_stage2:1:stg2|out2_i_ff[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:1:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:1:stg2|Add3~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|out2_i_ff\(5));

-- Location: LABCELL_X83_Y20_N21
\butterfly_stage1:0:stg1|mul|Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|Add4~25_sumout\ = SUM(( \butterfly_stage1:0:stg1|mul|Mult2~28\ ) + ( GND ) + ( \butterfly_stage1:0:stg1|mul|Add4~22\ ))
-- \butterfly_stage1:0:stg1|mul|Add4~26\ = CARRY(( \butterfly_stage1:0:stg1|mul|Mult2~28\ ) + ( GND ) + ( \butterfly_stage1:0:stg1|mul|Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~28\,
	cin => \butterfly_stage1:0:stg1|mul|Add4~22\,
	sumout => \butterfly_stage1:0:stg1|mul|Add4~25_sumout\,
	cout => \butterfly_stage1:0:stg1|mul|Add4~26\);

-- Location: MLABCELL_X84_Y20_N48
\butterfly_stage1:0:stg1|mul|Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|Add5~25_sumout\ = SUM(( !\butterfly_stage1:0:stg1|mul|Add2~25_sumout\ $ (\butterfly_stage1:0:stg1|mul|Add4~25_sumout\) ) + ( \butterfly_stage1:0:stg1|mul|Add5~23\ ) + ( \butterfly_stage1:0:stg1|mul|Add5~22\ ))
-- \butterfly_stage1:0:stg1|mul|Add5~26\ = CARRY(( !\butterfly_stage1:0:stg1|mul|Add2~25_sumout\ $ (\butterfly_stage1:0:stg1|mul|Add4~25_sumout\) ) + ( \butterfly_stage1:0:stg1|mul|Add5~23\ ) + ( \butterfly_stage1:0:stg1|mul|Add5~22\ ))
-- \butterfly_stage1:0:stg1|mul|Add5~27\ = SHARE((!\butterfly_stage1:0:stg1|mul|Add2~25_sumout\ & \butterfly_stage1:0:stg1|mul|Add4~25_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:0:stg1|mul|ALT_INV_Add2~25_sumout\,
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_Add4~25_sumout\,
	cin => \butterfly_stage1:0:stg1|mul|Add5~22\,
	sharein => \butterfly_stage1:0:stg1|mul|Add5~23\,
	sumout => \butterfly_stage1:0:stg1|mul|Add5~25_sumout\,
	cout => \butterfly_stage1:0:stg1|mul|Add5~26\,
	shareout => \butterfly_stage1:0:stg1|mul|Add5~27\);

-- Location: FF_X84_Y20_N50
\butterfly_stage1:0:stg1|mul|i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:0:stg1|mul|Add5~25_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|mul|i\(6));

-- Location: MLABCELL_X84_Y17_N15
\butterfly_stage1:0:stg1|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|Add3~21_sumout\ = SUM(( !\butterfly_stage1:0:stg1|mul|i\(6) ) + ( GND ) + ( \butterfly_stage1:0:stg1|Add3~18\ ))
-- \butterfly_stage1:0:stg1|Add3~22\ = CARRY(( !\butterfly_stage1:0:stg1|mul|i\(6) ) + ( GND ) + ( \butterfly_stage1:0:stg1|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:0:stg1|mul|ALT_INV_i\(6),
	cin => \butterfly_stage1:0:stg1|Add3~18\,
	sumout => \butterfly_stage1:0:stg1|Add3~21_sumout\,
	cout => \butterfly_stage1:0:stg1|Add3~22\);

-- Location: FF_X84_Y17_N17
\butterfly_stage1:0:stg1|out2_i_ff[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:0:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:0:stg1|Add3~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|out2_i_ff\(6));

-- Location: LABCELL_X85_Y11_N51
\butterfly_stage2:1:stg2|mul|Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add4~25_sumout\ = SUM(( \butterfly_stage2:1:stg2|mul|Mult2~28\ ) + ( GND ) + ( \butterfly_stage2:1:stg2|mul|Add4~22\ ))
-- \butterfly_stage2:1:stg2|mul|Add4~26\ = CARRY(( \butterfly_stage2:1:stg2|mul|Mult2~28\ ) + ( GND ) + ( \butterfly_stage2:1:stg2|mul|Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~28\,
	cin => \butterfly_stage2:1:stg2|mul|Add4~22\,
	sumout => \butterfly_stage2:1:stg2|mul|Add4~25_sumout\,
	cout => \butterfly_stage2:1:stg2|mul|Add4~26\);

-- Location: MLABCELL_X84_Y15_N18
\butterfly_stage2:1:stg2|mul|Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add5~25_sumout\ = SUM(( !\butterfly_stage2:1:stg2|mul|Add2~25_sumout\ $ (\butterfly_stage2:1:stg2|mul|Add4~25_sumout\) ) + ( \butterfly_stage2:1:stg2|mul|Add5~23\ ) + ( \butterfly_stage2:1:stg2|mul|Add5~22\ ))
-- \butterfly_stage2:1:stg2|mul|Add5~26\ = CARRY(( !\butterfly_stage2:1:stg2|mul|Add2~25_sumout\ $ (\butterfly_stage2:1:stg2|mul|Add4~25_sumout\) ) + ( \butterfly_stage2:1:stg2|mul|Add5~23\ ) + ( \butterfly_stage2:1:stg2|mul|Add5~22\ ))
-- \butterfly_stage2:1:stg2|mul|Add5~27\ = SHARE((!\butterfly_stage2:1:stg2|mul|Add2~25_sumout\ & \butterfly_stage2:1:stg2|mul|Add4~25_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_Add2~25_sumout\,
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_Add4~25_sumout\,
	cin => \butterfly_stage2:1:stg2|mul|Add5~22\,
	sharein => \butterfly_stage2:1:stg2|mul|Add5~23\,
	sumout => \butterfly_stage2:1:stg2|mul|Add5~25_sumout\,
	cout => \butterfly_stage2:1:stg2|mul|Add5~26\,
	shareout => \butterfly_stage2:1:stg2|mul|Add5~27\);

-- Location: FF_X84_Y15_N20
\butterfly_stage2:1:stg2|mul|i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage2:1:stg2|mul|Add5~25_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|mul|i\(6));

-- Location: MLABCELL_X84_Y15_N48
\butterfly_stage2:1:stg2|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|Add3~25_sumout\ = SUM(( !\butterfly_stage1:0:stg1|out2_i_ff\(6) $ (\butterfly_stage2:1:stg2|mul|i\(6)) ) + ( \butterfly_stage2:1:stg2|Add3~23\ ) + ( \butterfly_stage2:1:stg2|Add3~22\ ))
-- \butterfly_stage2:1:stg2|Add3~26\ = CARRY(( !\butterfly_stage1:0:stg1|out2_i_ff\(6) $ (\butterfly_stage2:1:stg2|mul|i\(6)) ) + ( \butterfly_stage2:1:stg2|Add3~23\ ) + ( \butterfly_stage2:1:stg2|Add3~22\ ))
-- \butterfly_stage2:1:stg2|Add3~27\ = SHARE((\butterfly_stage1:0:stg1|out2_i_ff\(6) & !\butterfly_stage2:1:stg2|mul|i\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage1:0:stg1|ALT_INV_out2_i_ff\(6),
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_i\(6),
	cin => \butterfly_stage2:1:stg2|Add3~22\,
	sharein => \butterfly_stage2:1:stg2|Add3~23\,
	sumout => \butterfly_stage2:1:stg2|Add3~25_sumout\,
	cout => \butterfly_stage2:1:stg2|Add3~26\,
	shareout => \butterfly_stage2:1:stg2|Add3~27\);

-- Location: FF_X84_Y15_N49
\butterfly_stage2:1:stg2|out2_i_ff[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:1:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:1:stg2|Add3~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|out2_i_ff\(6));

-- Location: LABCELL_X83_Y20_N24
\butterfly_stage1:0:stg1|mul|Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|Add4~29_sumout\ = SUM(( \butterfly_stage1:0:stg1|mul|Mult2~29\ ) + ( GND ) + ( \butterfly_stage1:0:stg1|mul|Add4~26\ ))
-- \butterfly_stage1:0:stg1|mul|Add4~30\ = CARRY(( \butterfly_stage1:0:stg1|mul|Mult2~29\ ) + ( GND ) + ( \butterfly_stage1:0:stg1|mul|Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~29\,
	cin => \butterfly_stage1:0:stg1|mul|Add4~26\,
	sumout => \butterfly_stage1:0:stg1|mul|Add4~29_sumout\,
	cout => \butterfly_stage1:0:stg1|mul|Add4~30\);

-- Location: MLABCELL_X84_Y20_N51
\butterfly_stage1:0:stg1|mul|Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|Add5~29_sumout\ = SUM(( !\butterfly_stage1:0:stg1|mul|Add2~29_sumout\ $ (\butterfly_stage1:0:stg1|mul|Add4~29_sumout\) ) + ( \butterfly_stage1:0:stg1|mul|Add5~27\ ) + ( \butterfly_stage1:0:stg1|mul|Add5~26\ ))
-- \butterfly_stage1:0:stg1|mul|Add5~30\ = CARRY(( !\butterfly_stage1:0:stg1|mul|Add2~29_sumout\ $ (\butterfly_stage1:0:stg1|mul|Add4~29_sumout\) ) + ( \butterfly_stage1:0:stg1|mul|Add5~27\ ) + ( \butterfly_stage1:0:stg1|mul|Add5~26\ ))
-- \butterfly_stage1:0:stg1|mul|Add5~31\ = SHARE((!\butterfly_stage1:0:stg1|mul|Add2~29_sumout\ & \butterfly_stage1:0:stg1|mul|Add4~29_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage1:0:stg1|mul|ALT_INV_Add2~29_sumout\,
	datac => \butterfly_stage1:0:stg1|mul|ALT_INV_Add4~29_sumout\,
	cin => \butterfly_stage1:0:stg1|mul|Add5~26\,
	sharein => \butterfly_stage1:0:stg1|mul|Add5~27\,
	sumout => \butterfly_stage1:0:stg1|mul|Add5~29_sumout\,
	cout => \butterfly_stage1:0:stg1|mul|Add5~30\,
	shareout => \butterfly_stage1:0:stg1|mul|Add5~31\);

-- Location: FF_X84_Y20_N53
\butterfly_stage1:0:stg1|mul|i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:0:stg1|mul|Add5~29_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|mul|i\(7));

-- Location: MLABCELL_X84_Y17_N18
\butterfly_stage1:0:stg1|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|Add3~25_sumout\ = SUM(( !\butterfly_stage1:0:stg1|mul|i\(7) ) + ( GND ) + ( \butterfly_stage1:0:stg1|Add3~22\ ))
-- \butterfly_stage1:0:stg1|Add3~26\ = CARRY(( !\butterfly_stage1:0:stg1|mul|i\(7) ) + ( GND ) + ( \butterfly_stage1:0:stg1|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_i\(7),
	cin => \butterfly_stage1:0:stg1|Add3~22\,
	sumout => \butterfly_stage1:0:stg1|Add3~25_sumout\,
	cout => \butterfly_stage1:0:stg1|Add3~26\);

-- Location: FF_X84_Y17_N20
\butterfly_stage1:0:stg1|out2_i_ff[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:0:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:0:stg1|Add3~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|out2_i_ff\(7));

-- Location: LABCELL_X85_Y11_N54
\butterfly_stage2:1:stg2|mul|Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add4~29_sumout\ = SUM(( \butterfly_stage2:1:stg2|mul|Mult2~29\ ) + ( GND ) + ( \butterfly_stage2:1:stg2|mul|Add4~26\ ))
-- \butterfly_stage2:1:stg2|mul|Add4~30\ = CARRY(( \butterfly_stage2:1:stg2|mul|Mult2~29\ ) + ( GND ) + ( \butterfly_stage2:1:stg2|mul|Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~29\,
	cin => \butterfly_stage2:1:stg2|mul|Add4~26\,
	sumout => \butterfly_stage2:1:stg2|mul|Add4~29_sumout\,
	cout => \butterfly_stage2:1:stg2|mul|Add4~30\);

-- Location: MLABCELL_X84_Y15_N21
\butterfly_stage2:1:stg2|mul|Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add5~29_sumout\ = SUM(( !\butterfly_stage2:1:stg2|mul|Add4~29_sumout\ $ (\butterfly_stage2:1:stg2|mul|Add2~29_sumout\) ) + ( \butterfly_stage2:1:stg2|mul|Add5~27\ ) + ( \butterfly_stage2:1:stg2|mul|Add5~26\ ))
-- \butterfly_stage2:1:stg2|mul|Add5~30\ = CARRY(( !\butterfly_stage2:1:stg2|mul|Add4~29_sumout\ $ (\butterfly_stage2:1:stg2|mul|Add2~29_sumout\) ) + ( \butterfly_stage2:1:stg2|mul|Add5~27\ ) + ( \butterfly_stage2:1:stg2|mul|Add5~26\ ))
-- \butterfly_stage2:1:stg2|mul|Add5~31\ = SHARE((\butterfly_stage2:1:stg2|mul|Add4~29_sumout\ & !\butterfly_stage2:1:stg2|mul|Add2~29_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage2:1:stg2|mul|ALT_INV_Add4~29_sumout\,
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_Add2~29_sumout\,
	cin => \butterfly_stage2:1:stg2|mul|Add5~26\,
	sharein => \butterfly_stage2:1:stg2|mul|Add5~27\,
	sumout => \butterfly_stage2:1:stg2|mul|Add5~29_sumout\,
	cout => \butterfly_stage2:1:stg2|mul|Add5~30\,
	shareout => \butterfly_stage2:1:stg2|mul|Add5~31\);

-- Location: FF_X84_Y15_N23
\butterfly_stage2:1:stg2|mul|i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage2:1:stg2|mul|Add5~29_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|mul|i\(7));

-- Location: MLABCELL_X84_Y15_N51
\butterfly_stage2:1:stg2|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|Add3~29_sumout\ = SUM(( !\butterfly_stage1:0:stg1|out2_i_ff\(7) $ (\butterfly_stage2:1:stg2|mul|i\(7)) ) + ( \butterfly_stage2:1:stg2|Add3~27\ ) + ( \butterfly_stage2:1:stg2|Add3~26\ ))
-- \butterfly_stage2:1:stg2|Add3~30\ = CARRY(( !\butterfly_stage1:0:stg1|out2_i_ff\(7) $ (\butterfly_stage2:1:stg2|mul|i\(7)) ) + ( \butterfly_stage2:1:stg2|Add3~27\ ) + ( \butterfly_stage2:1:stg2|Add3~26\ ))
-- \butterfly_stage2:1:stg2|Add3~31\ = SHARE((\butterfly_stage1:0:stg1|out2_i_ff\(7) & !\butterfly_stage2:1:stg2|mul|i\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:0:stg1|ALT_INV_out2_i_ff\(7),
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_i\(7),
	cin => \butterfly_stage2:1:stg2|Add3~26\,
	sharein => \butterfly_stage2:1:stg2|Add3~27\,
	sumout => \butterfly_stage2:1:stg2|Add3~29_sumout\,
	cout => \butterfly_stage2:1:stg2|Add3~30\,
	shareout => \butterfly_stage2:1:stg2|Add3~31\);

-- Location: FF_X84_Y15_N52
\butterfly_stage2:1:stg2|out2_i_ff[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:1:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:1:stg2|Add3~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|out2_i_ff\(7));

-- Location: LABCELL_X83_Y20_N27
\butterfly_stage1:0:stg1|mul|Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|Add4~33_sumout\ = SUM(( \butterfly_stage1:0:stg1|mul|Mult2~30\ ) + ( GND ) + ( \butterfly_stage1:0:stg1|mul|Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_Mult2~30\,
	cin => \butterfly_stage1:0:stg1|mul|Add4~30\,
	sumout => \butterfly_stage1:0:stg1|mul|Add4~33_sumout\);

-- Location: MLABCELL_X84_Y20_N54
\butterfly_stage1:0:stg1|mul|Add5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|mul|Add5~33_sumout\ = SUM(( !\butterfly_stage1:0:stg1|mul|Add2~33_sumout\ $ (\butterfly_stage1:0:stg1|mul|Add4~33_sumout\) ) + ( \butterfly_stage1:0:stg1|mul|Add5~31\ ) + ( \butterfly_stage1:0:stg1|mul|Add5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:0:stg1|mul|ALT_INV_Add2~33_sumout\,
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_Add4~33_sumout\,
	cin => \butterfly_stage1:0:stg1|mul|Add5~30\,
	sharein => \butterfly_stage1:0:stg1|mul|Add5~31\,
	sumout => \butterfly_stage1:0:stg1|mul|Add5~33_sumout\);

-- Location: FF_X84_Y20_N56
\butterfly_stage1:0:stg1|mul|i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:0:stg1|mul|Add5~33_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|mul|i\(8));

-- Location: MLABCELL_X84_Y17_N21
\butterfly_stage1:0:stg1|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|Add3~29_sumout\ = SUM(( !\butterfly_stage1:0:stg1|mul|i\(8) ) + ( GND ) + ( \butterfly_stage1:0:stg1|Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage1:0:stg1|mul|ALT_INV_i\(8),
	cin => \butterfly_stage1:0:stg1|Add3~26\,
	sumout => \butterfly_stage1:0:stg1|Add3~29_sumout\);

-- Location: FF_X84_Y17_N23
\butterfly_stage1:0:stg1|out2_i_ff[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:0:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:0:stg1|Add3~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|out2_i_ff\(8));

-- Location: LABCELL_X85_Y11_N57
\butterfly_stage2:1:stg2|mul|Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add4~33_sumout\ = SUM(( \butterfly_stage2:1:stg2|mul|Mult2~30\ ) + ( GND ) + ( \butterfly_stage2:1:stg2|mul|Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage2:1:stg2|mul|ALT_INV_Mult2~30\,
	cin => \butterfly_stage2:1:stg2|mul|Add4~30\,
	sumout => \butterfly_stage2:1:stg2|mul|Add4~33_sumout\);

-- Location: MLABCELL_X84_Y15_N24
\butterfly_stage2:1:stg2|mul|Add5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|mul|Add5~33_sumout\ = SUM(( !\butterfly_stage2:1:stg2|mul|Add4~33_sumout\ $ (\butterfly_stage2:1:stg2|mul|Add2~33_sumout\) ) + ( \butterfly_stage2:1:stg2|mul|Add5~31\ ) + ( \butterfly_stage2:1:stg2|mul|Add5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_Add4~33_sumout\,
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_Add2~33_sumout\,
	cin => \butterfly_stage2:1:stg2|mul|Add5~30\,
	sharein => \butterfly_stage2:1:stg2|mul|Add5~31\,
	sumout => \butterfly_stage2:1:stg2|mul|Add5~33_sumout\);

-- Location: FF_X84_Y15_N26
\butterfly_stage2:1:stg2|mul|i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage2:1:stg2|mul|Add5~33_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|mul|i\(8));

-- Location: MLABCELL_X84_Y15_N54
\butterfly_stage2:1:stg2|Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|Add3~33_sumout\ = SUM(( !\butterfly_stage1:0:stg1|out2_i_ff\(8) $ (\butterfly_stage2:1:stg2|mul|i\(8)) ) + ( \butterfly_stage2:1:stg2|Add3~31\ ) + ( \butterfly_stage2:1:stg2|Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage1:0:stg1|ALT_INV_out2_i_ff\(8),
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_i\(8),
	cin => \butterfly_stage2:1:stg2|Add3~30\,
	sharein => \butterfly_stage2:1:stg2|Add3~31\,
	sumout => \butterfly_stage2:1:stg2|Add3~33_sumout\);

-- Location: FF_X84_Y15_N56
\butterfly_stage2:1:stg2|out2_i_ff[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:1:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:1:stg2|Add3~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|out2_i_ff\(8));

-- Location: DSP_X86_Y10_N0
\butterfly_stage2:0:stg2|mul|Mult2~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "0",
	ax_width => 18,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 15,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
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
	operation_mode => "m18x18_full",
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
	aclr => \butterfly_stage2:0:stg2|mul|Mult2~8_ACLR_bus\,
	clk => \butterfly_stage2:0:stg2|mul|Mult2~8_CLK_bus\,
	ena => \butterfly_stage2:0:stg2|mul|Mult2~8_ENA_bus\,
	ax => \butterfly_stage2:0:stg2|mul|Mult2~8_AX_bus\,
	ay => \butterfly_stage2:0:stg2|mul|Mult2~8_AY_bus\,
	resulta => \butterfly_stage2:0:stg2|mul|Mult2~8_RESULTA_bus\);

-- Location: LABCELL_X85_Y10_N33
\butterfly_stage2:0:stg2|mul|WideOr2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|WideOr2~1_combout\ = ( !\butterfly_stage2:0:stg2|mul|Mult2~14\ & ( !\butterfly_stage2:0:stg2|mul|Mult2~16\ & ( (!\butterfly_stage2:0:stg2|mul|Mult2~17\ & (!\butterfly_stage2:0:stg2|mul|Mult2~15\ & 
-- !\butterfly_stage2:0:stg2|mul|Mult2~18\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~17\,
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~15\,
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~18\,
	datae => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~14\,
	dataf => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~16\,
	combout => \butterfly_stage2:0:stg2|mul|WideOr2~1_combout\);

-- Location: LABCELL_X85_Y10_N39
\butterfly_stage2:0:stg2|mul|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|WideOr2~0_combout\ = ( !\butterfly_stage2:0:stg2|mul|Mult2~12\ & ( !\butterfly_stage2:0:stg2|mul|Mult2~10\ & ( (!\butterfly_stage2:0:stg2|mul|Mult2~9\ & (!\butterfly_stage2:0:stg2|mul|Mult2~8_resulta\ & 
-- !\butterfly_stage2:0:stg2|mul|Mult2~11\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~9\,
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~8_resulta\,
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~11\,
	datae => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~12\,
	dataf => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~10\,
	combout => \butterfly_stage2:0:stg2|mul|WideOr2~0_combout\);

-- Location: MLABCELL_X84_Y13_N6
\butterfly_stage2:0:stg2|mul|WideOr2\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|WideOr2~combout\ = ( \butterfly_stage2:0:stg2|mul|WideOr2~1_combout\ & ( \butterfly_stage2:0:stg2|mul|WideOr2~0_combout\ & ( (((\butterfly_stage2:0:stg2|mul|Mult2~20\) # (\butterfly_stage2:0:stg2|mul|Mult2~19\)) # 
-- (\butterfly_stage2:0:stg2|mul|Mult2~13\)) # (\butterfly_stage2:0:stg2|mul|Mult2~21\) ) ) ) # ( !\butterfly_stage2:0:stg2|mul|WideOr2~1_combout\ & ( \butterfly_stage2:0:stg2|mul|WideOr2~0_combout\ ) ) # ( \butterfly_stage2:0:stg2|mul|WideOr2~1_combout\ & ( 
-- !\butterfly_stage2:0:stg2|mul|WideOr2~0_combout\ ) ) # ( !\butterfly_stage2:0:stg2|mul|WideOr2~1_combout\ & ( !\butterfly_stage2:0:stg2|mul|WideOr2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~21\,
	datab => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~13\,
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~19\,
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~20\,
	datae => \butterfly_stage2:0:stg2|mul|ALT_INV_WideOr2~1_combout\,
	dataf => \butterfly_stage2:0:stg2|mul|ALT_INV_WideOr2~0_combout\,
	combout => \butterfly_stage2:0:stg2|mul|WideOr2~combout\);

-- Location: LABCELL_X85_Y13_N0
\butterfly_stage2:0:stg2|mul|Add4~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add4~38_cout\ = CARRY(( \butterfly_stage2:0:stg2|mul|Mult2~31\ ) + ( \butterfly_stage2:0:stg2|mul|WideOr2~combout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_WideOr2~combout\,
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~31\,
	cin => GND,
	cout => \butterfly_stage2:0:stg2|mul|Add4~38_cout\);

-- Location: LABCELL_X85_Y13_N3
\butterfly_stage2:0:stg2|mul|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add4~1_sumout\ = SUM(( \butterfly_stage2:0:stg2|mul|Mult2~22\ ) + ( GND ) + ( \butterfly_stage2:0:stg2|mul|Add4~38_cout\ ))
-- \butterfly_stage2:0:stg2|mul|Add4~2\ = CARRY(( \butterfly_stage2:0:stg2|mul|Mult2~22\ ) + ( GND ) + ( \butterfly_stage2:0:stg2|mul|Add4~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~22\,
	cin => \butterfly_stage2:0:stg2|mul|Add4~38_cout\,
	sumout => \butterfly_stage2:0:stg2|mul|Add4~1_sumout\,
	cout => \butterfly_stage2:0:stg2|mul|Add4~2\);

-- Location: MLABCELL_X84_Y12_N30
\butterfly_stage2:0:stg2|mul|Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add5~1_sumout\ = SUM(( !\butterfly_stage2:0:stg2|mul|Add4~1_sumout\ $ (!\butterfly_stage2:0:stg2|mul|Add2~1_sumout\) ) + ( !VCC ) + ( !VCC ))
-- \butterfly_stage2:0:stg2|mul|Add5~2\ = CARRY(( !\butterfly_stage2:0:stg2|mul|Add4~1_sumout\ $ (!\butterfly_stage2:0:stg2|mul|Add2~1_sumout\) ) + ( !VCC ) + ( !VCC ))
-- \butterfly_stage2:0:stg2|mul|Add5~3\ = SHARE((!\butterfly_stage2:0:stg2|mul|Add2~1_sumout\) # (\butterfly_stage2:0:stg2|mul|Add4~1_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage2:0:stg2|mul|ALT_INV_Add4~1_sumout\,
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_Add2~1_sumout\,
	cin => GND,
	sharein => GND,
	sumout => \butterfly_stage2:0:stg2|mul|Add5~1_sumout\,
	cout => \butterfly_stage2:0:stg2|mul|Add5~2\,
	shareout => \butterfly_stage2:0:stg2|mul|Add5~3\);

-- Location: FF_X84_Y12_N32
\butterfly_stage2:0:stg2|mul|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage2:0:stg2|mul|Add5~1_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|mul|i\(0));

-- Location: MLABCELL_X84_Y13_N30
\butterfly_stage2:0:stg2|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|Add3~1_sumout\ = SUM(( !\butterfly_stage1:0:stg1|out1_i_ff\(0) $ (!\butterfly_stage2:0:stg2|mul|i\(0)) ) + ( !VCC ) + ( !VCC ))
-- \butterfly_stage2:0:stg2|Add3~2\ = CARRY(( !\butterfly_stage1:0:stg1|out1_i_ff\(0) $ (!\butterfly_stage2:0:stg2|mul|i\(0)) ) + ( !VCC ) + ( !VCC ))
-- \butterfly_stage2:0:stg2|Add3~3\ = SHARE((!\butterfly_stage2:0:stg2|mul|i\(0)) # (\butterfly_stage1:0:stg1|out1_i_ff\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011111010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage1:0:stg1|ALT_INV_out1_i_ff\(0),
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_i\(0),
	cin => GND,
	sharein => GND,
	sumout => \butterfly_stage2:0:stg2|Add3~1_sumout\,
	cout => \butterfly_stage2:0:stg2|Add3~2\,
	shareout => \butterfly_stage2:0:stg2|Add3~3\);

-- Location: FF_X84_Y13_N31
\butterfly_stage2:0:stg2|out2_i_ff[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:0:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:0:stg2|Add3~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|out2_i_ff\(0));

-- Location: LABCELL_X83_Y16_N51
\butterfly_stage1:0:stg1|out1_i_ff[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|out1_i_ff[1]~feeder_combout\ = ( \butterfly_stage1:0:stg1|mul|i\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \butterfly_stage1:0:stg1|mul|ALT_INV_i\(1),
	combout => \butterfly_stage1:0:stg1|out1_i_ff[1]~feeder_combout\);

-- Location: FF_X83_Y16_N53
\butterfly_stage1:0:stg1|out1_i_ff[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:0:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:0:stg1|out1_i_ff[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|out1_i_ff\(1));

-- Location: LABCELL_X85_Y13_N6
\butterfly_stage2:0:stg2|mul|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add4~5_sumout\ = SUM(( \butterfly_stage2:0:stg2|mul|Mult2~23\ ) + ( GND ) + ( \butterfly_stage2:0:stg2|mul|Add4~2\ ))
-- \butterfly_stage2:0:stg2|mul|Add4~6\ = CARRY(( \butterfly_stage2:0:stg2|mul|Mult2~23\ ) + ( GND ) + ( \butterfly_stage2:0:stg2|mul|Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~23\,
	cin => \butterfly_stage2:0:stg2|mul|Add4~2\,
	sumout => \butterfly_stage2:0:stg2|mul|Add4~5_sumout\,
	cout => \butterfly_stage2:0:stg2|mul|Add4~6\);

-- Location: MLABCELL_X84_Y12_N33
\butterfly_stage2:0:stg2|mul|Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add5~5_sumout\ = SUM(( !\butterfly_stage2:0:stg2|mul|Add4~5_sumout\ $ (\butterfly_stage2:0:stg2|mul|Add2~5_sumout\) ) + ( \butterfly_stage2:0:stg2|mul|Add5~3\ ) + ( \butterfly_stage2:0:stg2|mul|Add5~2\ ))
-- \butterfly_stage2:0:stg2|mul|Add5~6\ = CARRY(( !\butterfly_stage2:0:stg2|mul|Add4~5_sumout\ $ (\butterfly_stage2:0:stg2|mul|Add2~5_sumout\) ) + ( \butterfly_stage2:0:stg2|mul|Add5~3\ ) + ( \butterfly_stage2:0:stg2|mul|Add5~2\ ))
-- \butterfly_stage2:0:stg2|mul|Add5~7\ = SHARE((\butterfly_stage2:0:stg2|mul|Add4~5_sumout\ & !\butterfly_stage2:0:stg2|mul|Add2~5_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_Add4~5_sumout\,
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_Add2~5_sumout\,
	cin => \butterfly_stage2:0:stg2|mul|Add5~2\,
	sharein => \butterfly_stage2:0:stg2|mul|Add5~3\,
	sumout => \butterfly_stage2:0:stg2|mul|Add5~5_sumout\,
	cout => \butterfly_stage2:0:stg2|mul|Add5~6\,
	shareout => \butterfly_stage2:0:stg2|mul|Add5~7\);

-- Location: FF_X84_Y12_N35
\butterfly_stage2:0:stg2|mul|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage2:0:stg2|mul|Add5~5_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|mul|i\(1));

-- Location: MLABCELL_X84_Y13_N33
\butterfly_stage2:0:stg2|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|Add3~5_sumout\ = SUM(( !\butterfly_stage1:0:stg1|out1_i_ff\(1) $ (\butterfly_stage2:0:stg2|mul|i\(1)) ) + ( \butterfly_stage2:0:stg2|Add3~3\ ) + ( \butterfly_stage2:0:stg2|Add3~2\ ))
-- \butterfly_stage2:0:stg2|Add3~6\ = CARRY(( !\butterfly_stage1:0:stg1|out1_i_ff\(1) $ (\butterfly_stage2:0:stg2|mul|i\(1)) ) + ( \butterfly_stage2:0:stg2|Add3~3\ ) + ( \butterfly_stage2:0:stg2|Add3~2\ ))
-- \butterfly_stage2:0:stg2|Add3~7\ = SHARE((\butterfly_stage1:0:stg1|out1_i_ff\(1) & !\butterfly_stage2:0:stg2|mul|i\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage1:0:stg1|ALT_INV_out1_i_ff\(1),
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_i\(1),
	cin => \butterfly_stage2:0:stg2|Add3~2\,
	sharein => \butterfly_stage2:0:stg2|Add3~3\,
	sumout => \butterfly_stage2:0:stg2|Add3~5_sumout\,
	cout => \butterfly_stage2:0:stg2|Add3~6\,
	shareout => \butterfly_stage2:0:stg2|Add3~7\);

-- Location: FF_X84_Y13_N35
\butterfly_stage2:0:stg2|out2_i_ff[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:0:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:0:stg2|Add3~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|out2_i_ff\(1));

-- Location: LABCELL_X85_Y13_N9
\butterfly_stage2:0:stg2|mul|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add4~9_sumout\ = SUM(( \butterfly_stage2:0:stg2|mul|Mult2~24\ ) + ( GND ) + ( \butterfly_stage2:0:stg2|mul|Add4~6\ ))
-- \butterfly_stage2:0:stg2|mul|Add4~10\ = CARRY(( \butterfly_stage2:0:stg2|mul|Mult2~24\ ) + ( GND ) + ( \butterfly_stage2:0:stg2|mul|Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~24\,
	cin => \butterfly_stage2:0:stg2|mul|Add4~6\,
	sumout => \butterfly_stage2:0:stg2|mul|Add4~9_sumout\,
	cout => \butterfly_stage2:0:stg2|mul|Add4~10\);

-- Location: MLABCELL_X84_Y12_N36
\butterfly_stage2:0:stg2|mul|Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add5~9_sumout\ = SUM(( !\butterfly_stage2:0:stg2|mul|Add4~9_sumout\ $ (\butterfly_stage2:0:stg2|mul|Add2~9_sumout\) ) + ( \butterfly_stage2:0:stg2|mul|Add5~7\ ) + ( \butterfly_stage2:0:stg2|mul|Add5~6\ ))
-- \butterfly_stage2:0:stg2|mul|Add5~10\ = CARRY(( !\butterfly_stage2:0:stg2|mul|Add4~9_sumout\ $ (\butterfly_stage2:0:stg2|mul|Add2~9_sumout\) ) + ( \butterfly_stage2:0:stg2|mul|Add5~7\ ) + ( \butterfly_stage2:0:stg2|mul|Add5~6\ ))
-- \butterfly_stage2:0:stg2|mul|Add5~11\ = SHARE((\butterfly_stage2:0:stg2|mul|Add4~9_sumout\ & !\butterfly_stage2:0:stg2|mul|Add2~9_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage2:0:stg2|mul|ALT_INV_Add4~9_sumout\,
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_Add2~9_sumout\,
	cin => \butterfly_stage2:0:stg2|mul|Add5~6\,
	sharein => \butterfly_stage2:0:stg2|mul|Add5~7\,
	sumout => \butterfly_stage2:0:stg2|mul|Add5~9_sumout\,
	cout => \butterfly_stage2:0:stg2|mul|Add5~10\,
	shareout => \butterfly_stage2:0:stg2|mul|Add5~11\);

-- Location: FF_X84_Y12_N38
\butterfly_stage2:0:stg2|mul|i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage2:0:stg2|mul|Add5~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|mul|i\(2));

-- Location: FF_X84_Y20_N38
\butterfly_stage1:0:stg1|mul|i[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:0:stg1|mul|Add5~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|mul|i[2]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y19_N48
\butterfly_stage1:0:stg1|out1_i_ff[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|out1_i_ff[2]~feeder_combout\ = ( \butterfly_stage1:0:stg1|mul|i[2]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \butterfly_stage1:0:stg1|mul|ALT_INV_i[2]~DUPLICATE_q\,
	combout => \butterfly_stage1:0:stg1|out1_i_ff[2]~feeder_combout\);

-- Location: FF_X84_Y19_N49
\butterfly_stage1:0:stg1|out1_i_ff[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:0:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:0:stg1|out1_i_ff[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|out1_i_ff\(2));

-- Location: MLABCELL_X84_Y13_N36
\butterfly_stage2:0:stg2|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|Add3~9_sumout\ = SUM(( !\butterfly_stage2:0:stg2|mul|i\(2) $ (\butterfly_stage1:0:stg1|out1_i_ff\(2)) ) + ( \butterfly_stage2:0:stg2|Add3~7\ ) + ( \butterfly_stage2:0:stg2|Add3~6\ ))
-- \butterfly_stage2:0:stg2|Add3~10\ = CARRY(( !\butterfly_stage2:0:stg2|mul|i\(2) $ (\butterfly_stage1:0:stg1|out1_i_ff\(2)) ) + ( \butterfly_stage2:0:stg2|Add3~7\ ) + ( \butterfly_stage2:0:stg2|Add3~6\ ))
-- \butterfly_stage2:0:stg2|Add3~11\ = SHARE((!\butterfly_stage2:0:stg2|mul|i\(2) & \butterfly_stage1:0:stg1|out1_i_ff\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_i\(2),
	datad => \butterfly_stage1:0:stg1|ALT_INV_out1_i_ff\(2),
	cin => \butterfly_stage2:0:stg2|Add3~6\,
	sharein => \butterfly_stage2:0:stg2|Add3~7\,
	sumout => \butterfly_stage2:0:stg2|Add3~9_sumout\,
	cout => \butterfly_stage2:0:stg2|Add3~10\,
	shareout => \butterfly_stage2:0:stg2|Add3~11\);

-- Location: FF_X84_Y13_N38
\butterfly_stage2:0:stg2|out2_i_ff[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:0:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:0:stg2|Add3~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|out2_i_ff\(2));

-- Location: LABCELL_X85_Y13_N12
\butterfly_stage2:0:stg2|mul|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add4~13_sumout\ = SUM(( \butterfly_stage2:0:stg2|mul|Mult2~25\ ) + ( GND ) + ( \butterfly_stage2:0:stg2|mul|Add4~10\ ))
-- \butterfly_stage2:0:stg2|mul|Add4~14\ = CARRY(( \butterfly_stage2:0:stg2|mul|Mult2~25\ ) + ( GND ) + ( \butterfly_stage2:0:stg2|mul|Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~25\,
	cin => \butterfly_stage2:0:stg2|mul|Add4~10\,
	sumout => \butterfly_stage2:0:stg2|mul|Add4~13_sumout\,
	cout => \butterfly_stage2:0:stg2|mul|Add4~14\);

-- Location: MLABCELL_X84_Y12_N39
\butterfly_stage2:0:stg2|mul|Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add5~13_sumout\ = SUM(( !\butterfly_stage2:0:stg2|mul|Add2~13_sumout\ $ (\butterfly_stage2:0:stg2|mul|Add4~13_sumout\) ) + ( \butterfly_stage2:0:stg2|mul|Add5~11\ ) + ( \butterfly_stage2:0:stg2|mul|Add5~10\ ))
-- \butterfly_stage2:0:stg2|mul|Add5~14\ = CARRY(( !\butterfly_stage2:0:stg2|mul|Add2~13_sumout\ $ (\butterfly_stage2:0:stg2|mul|Add4~13_sumout\) ) + ( \butterfly_stage2:0:stg2|mul|Add5~11\ ) + ( \butterfly_stage2:0:stg2|mul|Add5~10\ ))
-- \butterfly_stage2:0:stg2|mul|Add5~15\ = SHARE((!\butterfly_stage2:0:stg2|mul|Add2~13_sumout\ & \butterfly_stage2:0:stg2|mul|Add4~13_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_Add2~13_sumout\,
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_Add4~13_sumout\,
	cin => \butterfly_stage2:0:stg2|mul|Add5~10\,
	sharein => \butterfly_stage2:0:stg2|mul|Add5~11\,
	sumout => \butterfly_stage2:0:stg2|mul|Add5~13_sumout\,
	cout => \butterfly_stage2:0:stg2|mul|Add5~14\,
	shareout => \butterfly_stage2:0:stg2|mul|Add5~15\);

-- Location: FF_X84_Y12_N41
\butterfly_stage2:0:stg2|mul|i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage2:0:stg2|mul|Add5~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|mul|i\(3));

-- Location: FF_X84_Y20_N40
\butterfly_stage1:0:stg1|mul|i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage1:0:stg1|mul|Add5~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|mul|i\(3));

-- Location: LABCELL_X85_Y19_N6
\butterfly_stage1:0:stg1|out1_i_ff[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|out1_i_ff[3]~feeder_combout\ = ( \butterfly_stage1:0:stg1|mul|i\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \butterfly_stage1:0:stg1|mul|ALT_INV_i\(3),
	combout => \butterfly_stage1:0:stg1|out1_i_ff[3]~feeder_combout\);

-- Location: FF_X85_Y19_N8
\butterfly_stage1:0:stg1|out1_i_ff[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:0:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:0:stg1|out1_i_ff[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|out1_i_ff\(3));

-- Location: MLABCELL_X84_Y13_N39
\butterfly_stage2:0:stg2|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|Add3~13_sumout\ = SUM(( !\butterfly_stage2:0:stg2|mul|i\(3) $ (\butterfly_stage1:0:stg1|out1_i_ff\(3)) ) + ( \butterfly_stage2:0:stg2|Add3~11\ ) + ( \butterfly_stage2:0:stg2|Add3~10\ ))
-- \butterfly_stage2:0:stg2|Add3~14\ = CARRY(( !\butterfly_stage2:0:stg2|mul|i\(3) $ (\butterfly_stage1:0:stg1|out1_i_ff\(3)) ) + ( \butterfly_stage2:0:stg2|Add3~11\ ) + ( \butterfly_stage2:0:stg2|Add3~10\ ))
-- \butterfly_stage2:0:stg2|Add3~15\ = SHARE((!\butterfly_stage2:0:stg2|mul|i\(3) & \butterfly_stage1:0:stg1|out1_i_ff\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_i\(3),
	datad => \butterfly_stage1:0:stg1|ALT_INV_out1_i_ff\(3),
	cin => \butterfly_stage2:0:stg2|Add3~10\,
	sharein => \butterfly_stage2:0:stg2|Add3~11\,
	sumout => \butterfly_stage2:0:stg2|Add3~13_sumout\,
	cout => \butterfly_stage2:0:stg2|Add3~14\,
	shareout => \butterfly_stage2:0:stg2|Add3~15\);

-- Location: FF_X84_Y13_N41
\butterfly_stage2:0:stg2|out2_i_ff[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:0:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:0:stg2|Add3~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|out2_i_ff\(3));

-- Location: MLABCELL_X84_Y13_N15
\butterfly_stage1:0:stg1|out1_i_ff[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|out1_i_ff[4]~feeder_combout\ = ( \butterfly_stage1:0:stg1|mul|i\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \butterfly_stage1:0:stg1|mul|ALT_INV_i\(4),
	combout => \butterfly_stage1:0:stg1|out1_i_ff[4]~feeder_combout\);

-- Location: FF_X84_Y13_N17
\butterfly_stage1:0:stg1|out1_i_ff[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:0:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:0:stg1|out1_i_ff[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|out1_i_ff\(4));

-- Location: LABCELL_X85_Y13_N15
\butterfly_stage2:0:stg2|mul|Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add4~17_sumout\ = SUM(( \butterfly_stage2:0:stg2|mul|Mult2~26\ ) + ( GND ) + ( \butterfly_stage2:0:stg2|mul|Add4~14\ ))
-- \butterfly_stage2:0:stg2|mul|Add4~18\ = CARRY(( \butterfly_stage2:0:stg2|mul|Mult2~26\ ) + ( GND ) + ( \butterfly_stage2:0:stg2|mul|Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~26\,
	cin => \butterfly_stage2:0:stg2|mul|Add4~14\,
	sumout => \butterfly_stage2:0:stg2|mul|Add4~17_sumout\,
	cout => \butterfly_stage2:0:stg2|mul|Add4~18\);

-- Location: MLABCELL_X84_Y12_N42
\butterfly_stage2:0:stg2|mul|Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add5~17_sumout\ = SUM(( !\butterfly_stage2:0:stg2|mul|Add4~17_sumout\ $ (\butterfly_stage2:0:stg2|mul|Add2~17_sumout\) ) + ( \butterfly_stage2:0:stg2|mul|Add5~15\ ) + ( \butterfly_stage2:0:stg2|mul|Add5~14\ ))
-- \butterfly_stage2:0:stg2|mul|Add5~18\ = CARRY(( !\butterfly_stage2:0:stg2|mul|Add4~17_sumout\ $ (\butterfly_stage2:0:stg2|mul|Add2~17_sumout\) ) + ( \butterfly_stage2:0:stg2|mul|Add5~15\ ) + ( \butterfly_stage2:0:stg2|mul|Add5~14\ ))
-- \butterfly_stage2:0:stg2|mul|Add5~19\ = SHARE((\butterfly_stage2:0:stg2|mul|Add4~17_sumout\ & !\butterfly_stage2:0:stg2|mul|Add2~17_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_Add4~17_sumout\,
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_Add2~17_sumout\,
	cin => \butterfly_stage2:0:stg2|mul|Add5~14\,
	sharein => \butterfly_stage2:0:stg2|mul|Add5~15\,
	sumout => \butterfly_stage2:0:stg2|mul|Add5~17_sumout\,
	cout => \butterfly_stage2:0:stg2|mul|Add5~18\,
	shareout => \butterfly_stage2:0:stg2|mul|Add5~19\);

-- Location: FF_X84_Y12_N44
\butterfly_stage2:0:stg2|mul|i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage2:0:stg2|mul|Add5~17_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|mul|i\(4));

-- Location: MLABCELL_X84_Y13_N42
\butterfly_stage2:0:stg2|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|Add3~17_sumout\ = SUM(( !\butterfly_stage1:0:stg1|out1_i_ff\(4) $ (\butterfly_stage2:0:stg2|mul|i\(4)) ) + ( \butterfly_stage2:0:stg2|Add3~15\ ) + ( \butterfly_stage2:0:stg2|Add3~14\ ))
-- \butterfly_stage2:0:stg2|Add3~18\ = CARRY(( !\butterfly_stage1:0:stg1|out1_i_ff\(4) $ (\butterfly_stage2:0:stg2|mul|i\(4)) ) + ( \butterfly_stage2:0:stg2|Add3~15\ ) + ( \butterfly_stage2:0:stg2|Add3~14\ ))
-- \butterfly_stage2:0:stg2|Add3~19\ = SHARE((\butterfly_stage1:0:stg1|out1_i_ff\(4) & !\butterfly_stage2:0:stg2|mul|i\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage1:0:stg1|ALT_INV_out1_i_ff\(4),
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_i\(4),
	cin => \butterfly_stage2:0:stg2|Add3~14\,
	sharein => \butterfly_stage2:0:stg2|Add3~15\,
	sumout => \butterfly_stage2:0:stg2|Add3~17_sumout\,
	cout => \butterfly_stage2:0:stg2|Add3~18\,
	shareout => \butterfly_stage2:0:stg2|Add3~19\);

-- Location: FF_X84_Y13_N43
\butterfly_stage2:0:stg2|out2_i_ff[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:0:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:0:stg2|Add3~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|out2_i_ff\(4));

-- Location: LABCELL_X85_Y13_N18
\butterfly_stage2:0:stg2|mul|Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add4~21_sumout\ = SUM(( \butterfly_stage2:0:stg2|mul|Mult2~27\ ) + ( GND ) + ( \butterfly_stage2:0:stg2|mul|Add4~18\ ))
-- \butterfly_stage2:0:stg2|mul|Add4~22\ = CARRY(( \butterfly_stage2:0:stg2|mul|Mult2~27\ ) + ( GND ) + ( \butterfly_stage2:0:stg2|mul|Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~27\,
	cin => \butterfly_stage2:0:stg2|mul|Add4~18\,
	sumout => \butterfly_stage2:0:stg2|mul|Add4~21_sumout\,
	cout => \butterfly_stage2:0:stg2|mul|Add4~22\);

-- Location: MLABCELL_X84_Y12_N45
\butterfly_stage2:0:stg2|mul|Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add5~21_sumout\ = SUM(( !\butterfly_stage2:0:stg2|mul|Add2~21_sumout\ $ (\butterfly_stage2:0:stg2|mul|Add4~21_sumout\) ) + ( \butterfly_stage2:0:stg2|mul|Add5~19\ ) + ( \butterfly_stage2:0:stg2|mul|Add5~18\ ))
-- \butterfly_stage2:0:stg2|mul|Add5~22\ = CARRY(( !\butterfly_stage2:0:stg2|mul|Add2~21_sumout\ $ (\butterfly_stage2:0:stg2|mul|Add4~21_sumout\) ) + ( \butterfly_stage2:0:stg2|mul|Add5~19\ ) + ( \butterfly_stage2:0:stg2|mul|Add5~18\ ))
-- \butterfly_stage2:0:stg2|mul|Add5~23\ = SHARE((!\butterfly_stage2:0:stg2|mul|Add2~21_sumout\ & \butterfly_stage2:0:stg2|mul|Add4~21_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_Add2~21_sumout\,
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_Add4~21_sumout\,
	cin => \butterfly_stage2:0:stg2|mul|Add5~18\,
	sharein => \butterfly_stage2:0:stg2|mul|Add5~19\,
	sumout => \butterfly_stage2:0:stg2|mul|Add5~21_sumout\,
	cout => \butterfly_stage2:0:stg2|mul|Add5~22\,
	shareout => \butterfly_stage2:0:stg2|mul|Add5~23\);

-- Location: FF_X84_Y12_N47
\butterfly_stage2:0:stg2|mul|i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage2:0:stg2|mul|Add5~21_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|mul|i\(5));

-- Location: FF_X85_Y17_N5
\butterfly_stage1:0:stg1|out1_i_ff[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:0:stg1|ALT_INV_clk_div2~q\,
	asdata => \butterfly_stage1:0:stg1|mul|i\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|out1_i_ff\(5));

-- Location: MLABCELL_X84_Y13_N45
\butterfly_stage2:0:stg2|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|Add3~21_sumout\ = SUM(( !\butterfly_stage2:0:stg2|mul|i\(5) $ (\butterfly_stage1:0:stg1|out1_i_ff\(5)) ) + ( \butterfly_stage2:0:stg2|Add3~19\ ) + ( \butterfly_stage2:0:stg2|Add3~18\ ))
-- \butterfly_stage2:0:stg2|Add3~22\ = CARRY(( !\butterfly_stage2:0:stg2|mul|i\(5) $ (\butterfly_stage1:0:stg1|out1_i_ff\(5)) ) + ( \butterfly_stage2:0:stg2|Add3~19\ ) + ( \butterfly_stage2:0:stg2|Add3~18\ ))
-- \butterfly_stage2:0:stg2|Add3~23\ = SHARE((!\butterfly_stage2:0:stg2|mul|i\(5) & \butterfly_stage1:0:stg1|out1_i_ff\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_i\(5),
	datad => \butterfly_stage1:0:stg1|ALT_INV_out1_i_ff\(5),
	cin => \butterfly_stage2:0:stg2|Add3~18\,
	sharein => \butterfly_stage2:0:stg2|Add3~19\,
	sumout => \butterfly_stage2:0:stg2|Add3~21_sumout\,
	cout => \butterfly_stage2:0:stg2|Add3~22\,
	shareout => \butterfly_stage2:0:stg2|Add3~23\);

-- Location: FF_X84_Y13_N46
\butterfly_stage2:0:stg2|out2_i_ff[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:0:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:0:stg2|Add3~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|out2_i_ff\(5));

-- Location: MLABCELL_X84_Y19_N42
\butterfly_stage1:0:stg1|out1_i_ff[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|out1_i_ff[6]~feeder_combout\ = ( \butterfly_stage1:0:stg1|mul|i\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \butterfly_stage1:0:stg1|mul|ALT_INV_i\(6),
	combout => \butterfly_stage1:0:stg1|out1_i_ff[6]~feeder_combout\);

-- Location: FF_X84_Y19_N44
\butterfly_stage1:0:stg1|out1_i_ff[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:0:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:0:stg1|out1_i_ff[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|out1_i_ff\(6));

-- Location: LABCELL_X85_Y13_N21
\butterfly_stage2:0:stg2|mul|Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add4~25_sumout\ = SUM(( \butterfly_stage2:0:stg2|mul|Mult2~28\ ) + ( GND ) + ( \butterfly_stage2:0:stg2|mul|Add4~22\ ))
-- \butterfly_stage2:0:stg2|mul|Add4~26\ = CARRY(( \butterfly_stage2:0:stg2|mul|Mult2~28\ ) + ( GND ) + ( \butterfly_stage2:0:stg2|mul|Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~28\,
	cin => \butterfly_stage2:0:stg2|mul|Add4~22\,
	sumout => \butterfly_stage2:0:stg2|mul|Add4~25_sumout\,
	cout => \butterfly_stage2:0:stg2|mul|Add4~26\);

-- Location: MLABCELL_X84_Y12_N48
\butterfly_stage2:0:stg2|mul|Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add5~25_sumout\ = SUM(( !\butterfly_stage2:0:stg2|mul|Add4~25_sumout\ $ (\butterfly_stage2:0:stg2|mul|Add2~25_sumout\) ) + ( \butterfly_stage2:0:stg2|mul|Add5~23\ ) + ( \butterfly_stage2:0:stg2|mul|Add5~22\ ))
-- \butterfly_stage2:0:stg2|mul|Add5~26\ = CARRY(( !\butterfly_stage2:0:stg2|mul|Add4~25_sumout\ $ (\butterfly_stage2:0:stg2|mul|Add2~25_sumout\) ) + ( \butterfly_stage2:0:stg2|mul|Add5~23\ ) + ( \butterfly_stage2:0:stg2|mul|Add5~22\ ))
-- \butterfly_stage2:0:stg2|mul|Add5~27\ = SHARE((\butterfly_stage2:0:stg2|mul|Add4~25_sumout\ & !\butterfly_stage2:0:stg2|mul|Add2~25_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_Add4~25_sumout\,
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_Add2~25_sumout\,
	cin => \butterfly_stage2:0:stg2|mul|Add5~22\,
	sharein => \butterfly_stage2:0:stg2|mul|Add5~23\,
	sumout => \butterfly_stage2:0:stg2|mul|Add5~25_sumout\,
	cout => \butterfly_stage2:0:stg2|mul|Add5~26\,
	shareout => \butterfly_stage2:0:stg2|mul|Add5~27\);

-- Location: FF_X84_Y12_N50
\butterfly_stage2:0:stg2|mul|i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage2:0:stg2|mul|Add5~25_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|mul|i\(6));

-- Location: MLABCELL_X84_Y13_N48
\butterfly_stage2:0:stg2|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|Add3~25_sumout\ = SUM(( !\butterfly_stage1:0:stg1|out1_i_ff\(6) $ (\butterfly_stage2:0:stg2|mul|i\(6)) ) + ( \butterfly_stage2:0:stg2|Add3~23\ ) + ( \butterfly_stage2:0:stg2|Add3~22\ ))
-- \butterfly_stage2:0:stg2|Add3~26\ = CARRY(( !\butterfly_stage1:0:stg1|out1_i_ff\(6) $ (\butterfly_stage2:0:stg2|mul|i\(6)) ) + ( \butterfly_stage2:0:stg2|Add3~23\ ) + ( \butterfly_stage2:0:stg2|Add3~22\ ))
-- \butterfly_stage2:0:stg2|Add3~27\ = SHARE((\butterfly_stage1:0:stg1|out1_i_ff\(6) & !\butterfly_stage2:0:stg2|mul|i\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage1:0:stg1|ALT_INV_out1_i_ff\(6),
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_i\(6),
	cin => \butterfly_stage2:0:stg2|Add3~22\,
	sharein => \butterfly_stage2:0:stg2|Add3~23\,
	sumout => \butterfly_stage2:0:stg2|Add3~25_sumout\,
	cout => \butterfly_stage2:0:stg2|Add3~26\,
	shareout => \butterfly_stage2:0:stg2|Add3~27\);

-- Location: FF_X84_Y13_N49
\butterfly_stage2:0:stg2|out2_i_ff[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:0:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:0:stg2|Add3~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|out2_i_ff\(6));

-- Location: FF_X84_Y17_N25
\butterfly_stage1:0:stg1|out1_i_ff[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:0:stg1|ALT_INV_clk_div2~q\,
	asdata => \butterfly_stage1:0:stg1|mul|i\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|out1_i_ff\(7));

-- Location: LABCELL_X85_Y13_N24
\butterfly_stage2:0:stg2|mul|Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add4~29_sumout\ = SUM(( \butterfly_stage2:0:stg2|mul|Mult2~29\ ) + ( GND ) + ( \butterfly_stage2:0:stg2|mul|Add4~26\ ))
-- \butterfly_stage2:0:stg2|mul|Add4~30\ = CARRY(( \butterfly_stage2:0:stg2|mul|Mult2~29\ ) + ( GND ) + ( \butterfly_stage2:0:stg2|mul|Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~29\,
	cin => \butterfly_stage2:0:stg2|mul|Add4~26\,
	sumout => \butterfly_stage2:0:stg2|mul|Add4~29_sumout\,
	cout => \butterfly_stage2:0:stg2|mul|Add4~30\);

-- Location: MLABCELL_X84_Y12_N51
\butterfly_stage2:0:stg2|mul|Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add5~29_sumout\ = SUM(( !\butterfly_stage2:0:stg2|mul|Add2~29_sumout\ $ (\butterfly_stage2:0:stg2|mul|Add4~29_sumout\) ) + ( \butterfly_stage2:0:stg2|mul|Add5~27\ ) + ( \butterfly_stage2:0:stg2|mul|Add5~26\ ))
-- \butterfly_stage2:0:stg2|mul|Add5~30\ = CARRY(( !\butterfly_stage2:0:stg2|mul|Add2~29_sumout\ $ (\butterfly_stage2:0:stg2|mul|Add4~29_sumout\) ) + ( \butterfly_stage2:0:stg2|mul|Add5~27\ ) + ( \butterfly_stage2:0:stg2|mul|Add5~26\ ))
-- \butterfly_stage2:0:stg2|mul|Add5~31\ = SHARE((!\butterfly_stage2:0:stg2|mul|Add2~29_sumout\ & \butterfly_stage2:0:stg2|mul|Add4~29_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_Add2~29_sumout\,
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_Add4~29_sumout\,
	cin => \butterfly_stage2:0:stg2|mul|Add5~26\,
	sharein => \butterfly_stage2:0:stg2|mul|Add5~27\,
	sumout => \butterfly_stage2:0:stg2|mul|Add5~29_sumout\,
	cout => \butterfly_stage2:0:stg2|mul|Add5~30\,
	shareout => \butterfly_stage2:0:stg2|mul|Add5~31\);

-- Location: FF_X84_Y12_N53
\butterfly_stage2:0:stg2|mul|i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage2:0:stg2|mul|Add5~29_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|mul|i\(7));

-- Location: MLABCELL_X84_Y13_N51
\butterfly_stage2:0:stg2|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|Add3~29_sumout\ = SUM(( !\butterfly_stage1:0:stg1|out1_i_ff\(7) $ (\butterfly_stage2:0:stg2|mul|i\(7)) ) + ( \butterfly_stage2:0:stg2|Add3~27\ ) + ( \butterfly_stage2:0:stg2|Add3~26\ ))
-- \butterfly_stage2:0:stg2|Add3~30\ = CARRY(( !\butterfly_stage1:0:stg1|out1_i_ff\(7) $ (\butterfly_stage2:0:stg2|mul|i\(7)) ) + ( \butterfly_stage2:0:stg2|Add3~27\ ) + ( \butterfly_stage2:0:stg2|Add3~26\ ))
-- \butterfly_stage2:0:stg2|Add3~31\ = SHARE((\butterfly_stage1:0:stg1|out1_i_ff\(7) & !\butterfly_stage2:0:stg2|mul|i\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage1:0:stg1|ALT_INV_out1_i_ff\(7),
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_i\(7),
	cin => \butterfly_stage2:0:stg2|Add3~26\,
	sharein => \butterfly_stage2:0:stg2|Add3~27\,
	sumout => \butterfly_stage2:0:stg2|Add3~29_sumout\,
	cout => \butterfly_stage2:0:stg2|Add3~30\,
	shareout => \butterfly_stage2:0:stg2|Add3~31\);

-- Location: FF_X84_Y13_N52
\butterfly_stage2:0:stg2|out2_i_ff[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:0:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:0:stg2|Add3~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|out2_i_ff\(7));

-- Location: MLABCELL_X82_Y17_N24
\butterfly_stage1:0:stg1|out1_i_ff[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage1:0:stg1|out1_i_ff[8]~feeder_combout\ = ( \butterfly_stage1:0:stg1|mul|i\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \butterfly_stage1:0:stg1|mul|ALT_INV_i\(8),
	combout => \butterfly_stage1:0:stg1|out1_i_ff[8]~feeder_combout\);

-- Location: FF_X82_Y17_N26
\butterfly_stage1:0:stg1|out1_i_ff[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage1:0:stg1|ALT_INV_clk_div2~q\,
	d => \butterfly_stage1:0:stg1|out1_i_ff[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage1:0:stg1|out1_i_ff\(8));

-- Location: LABCELL_X85_Y13_N27
\butterfly_stage2:0:stg2|mul|Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add4~33_sumout\ = SUM(( \butterfly_stage2:0:stg2|mul|Mult2~30\ ) + ( GND ) + ( \butterfly_stage2:0:stg2|mul|Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_Mult2~30\,
	cin => \butterfly_stage2:0:stg2|mul|Add4~30\,
	sumout => \butterfly_stage2:0:stg2|mul|Add4~33_sumout\);

-- Location: MLABCELL_X84_Y12_N54
\butterfly_stage2:0:stg2|mul|Add5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|mul|Add5~33_sumout\ = SUM(( !\butterfly_stage2:0:stg2|mul|Add4~33_sumout\ $ (\butterfly_stage2:0:stg2|mul|Add2~33_sumout\) ) + ( \butterfly_stage2:0:stg2|mul|Add5~31\ ) + ( \butterfly_stage2:0:stg2|mul|Add5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_Add4~33_sumout\,
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_Add2~33_sumout\,
	cin => \butterfly_stage2:0:stg2|mul|Add5~30\,
	sharein => \butterfly_stage2:0:stg2|mul|Add5~31\,
	sumout => \butterfly_stage2:0:stg2|mul|Add5~33_sumout\);

-- Location: FF_X84_Y12_N56
\butterfly_stage2:0:stg2|mul|i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \butterfly_stage2:0:stg2|mul|Add5~33_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|mul|i\(8));

-- Location: MLABCELL_X84_Y13_N54
\butterfly_stage2:0:stg2|Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|Add3~33_sumout\ = SUM(( !\butterfly_stage1:0:stg1|out1_i_ff\(8) $ (\butterfly_stage2:0:stg2|mul|i\(8)) ) + ( \butterfly_stage2:0:stg2|Add3~31\ ) + ( \butterfly_stage2:0:stg2|Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage1:0:stg1|ALT_INV_out1_i_ff\(8),
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_i\(8),
	cin => \butterfly_stage2:0:stg2|Add3~30\,
	sharein => \butterfly_stage2:0:stg2|Add3~31\,
	sumout => \butterfly_stage2:0:stg2|Add3~33_sumout\);

-- Location: FF_X84_Y13_N56
\butterfly_stage2:0:stg2|out2_i_ff[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:0:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:0:stg2|Add3~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|out2_i_ff\(8));

-- Location: LABCELL_X85_Y15_N0
\butterfly_stage2:1:stg2|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|Add1~1_sumout\ = SUM(( \butterfly_stage2:1:stg2|mul|i\(0) ) + ( \butterfly_stage1:0:stg1|out1_i_ff\(0) ) + ( !VCC ))
-- \butterfly_stage2:1:stg2|Add1~2\ = CARRY(( \butterfly_stage2:1:stg2|mul|i\(0) ) + ( \butterfly_stage1:0:stg1|out1_i_ff\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:0:stg1|ALT_INV_out1_i_ff\(0),
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_i\(0),
	cin => GND,
	sumout => \butterfly_stage2:1:stg2|Add1~1_sumout\,
	cout => \butterfly_stage2:1:stg2|Add1~2\);

-- Location: FF_X85_Y15_N2
\butterfly_stage2:1:stg2|out1_i_ff[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:1:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:1:stg2|Add1~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|out1_i_ff\(0));

-- Location: LABCELL_X85_Y15_N3
\butterfly_stage2:1:stg2|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|Add1~5_sumout\ = SUM(( \butterfly_stage1:0:stg1|out2_i_ff\(1) ) + ( \butterfly_stage2:1:stg2|mul|i\(1) ) + ( \butterfly_stage2:1:stg2|Add1~2\ ))
-- \butterfly_stage2:1:stg2|Add1~6\ = CARRY(( \butterfly_stage1:0:stg1|out2_i_ff\(1) ) + ( \butterfly_stage2:1:stg2|mul|i\(1) ) + ( \butterfly_stage2:1:stg2|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_i\(1),
	datad => \butterfly_stage1:0:stg1|ALT_INV_out2_i_ff\(1),
	cin => \butterfly_stage2:1:stg2|Add1~2\,
	sumout => \butterfly_stage2:1:stg2|Add1~5_sumout\,
	cout => \butterfly_stage2:1:stg2|Add1~6\);

-- Location: FF_X85_Y15_N4
\butterfly_stage2:1:stg2|out1_i_ff[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:1:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:1:stg2|Add1~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|out1_i_ff\(1));

-- Location: LABCELL_X85_Y15_N6
\butterfly_stage2:1:stg2|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|Add1~9_sumout\ = SUM(( \butterfly_stage2:1:stg2|mul|i\(2) ) + ( \butterfly_stage1:0:stg1|out2_i_ff\(2) ) + ( \butterfly_stage2:1:stg2|Add1~6\ ))
-- \butterfly_stage2:1:stg2|Add1~10\ = CARRY(( \butterfly_stage2:1:stg2|mul|i\(2) ) + ( \butterfly_stage1:0:stg1|out2_i_ff\(2) ) + ( \butterfly_stage2:1:stg2|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage1:0:stg1|ALT_INV_out2_i_ff\(2),
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_i\(2),
	cin => \butterfly_stage2:1:stg2|Add1~6\,
	sumout => \butterfly_stage2:1:stg2|Add1~9_sumout\,
	cout => \butterfly_stage2:1:stg2|Add1~10\);

-- Location: FF_X85_Y15_N7
\butterfly_stage2:1:stg2|out1_i_ff[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:1:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:1:stg2|Add1~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|out1_i_ff\(2));

-- Location: LABCELL_X85_Y15_N9
\butterfly_stage2:1:stg2|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|Add1~13_sumout\ = SUM(( \butterfly_stage2:1:stg2|mul|i\(3) ) + ( \butterfly_stage1:0:stg1|out2_i_ff\(3) ) + ( \butterfly_stage2:1:stg2|Add1~10\ ))
-- \butterfly_stage2:1:stg2|Add1~14\ = CARRY(( \butterfly_stage2:1:stg2|mul|i\(3) ) + ( \butterfly_stage1:0:stg1|out2_i_ff\(3) ) + ( \butterfly_stage2:1:stg2|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:0:stg1|ALT_INV_out2_i_ff\(3),
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_i\(3),
	cin => \butterfly_stage2:1:stg2|Add1~10\,
	sumout => \butterfly_stage2:1:stg2|Add1~13_sumout\,
	cout => \butterfly_stage2:1:stg2|Add1~14\);

-- Location: FF_X85_Y15_N10
\butterfly_stage2:1:stg2|out1_i_ff[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:1:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:1:stg2|Add1~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|out1_i_ff\(3));

-- Location: LABCELL_X85_Y15_N12
\butterfly_stage2:1:stg2|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|Add1~17_sumout\ = SUM(( \butterfly_stage2:1:stg2|mul|i\(4) ) + ( \butterfly_stage1:0:stg1|out2_i_ff\(4) ) + ( \butterfly_stage2:1:stg2|Add1~14\ ))
-- \butterfly_stage2:1:stg2|Add1~18\ = CARRY(( \butterfly_stage2:1:stg2|mul|i\(4) ) + ( \butterfly_stage1:0:stg1|out2_i_ff\(4) ) + ( \butterfly_stage2:1:stg2|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:0:stg1|ALT_INV_out2_i_ff\(4),
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_i\(4),
	cin => \butterfly_stage2:1:stg2|Add1~14\,
	sumout => \butterfly_stage2:1:stg2|Add1~17_sumout\,
	cout => \butterfly_stage2:1:stg2|Add1~18\);

-- Location: FF_X85_Y15_N13
\butterfly_stage2:1:stg2|out1_i_ff[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:1:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:1:stg2|Add1~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|out1_i_ff\(4));

-- Location: LABCELL_X85_Y15_N15
\butterfly_stage2:1:stg2|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|Add1~21_sumout\ = SUM(( \butterfly_stage1:0:stg1|out2_i_ff\(5) ) + ( \butterfly_stage2:1:stg2|mul|i\(5) ) + ( \butterfly_stage2:1:stg2|Add1~18\ ))
-- \butterfly_stage2:1:stg2|Add1~22\ = CARRY(( \butterfly_stage1:0:stg1|out2_i_ff\(5) ) + ( \butterfly_stage2:1:stg2|mul|i\(5) ) + ( \butterfly_stage2:1:stg2|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_i\(5),
	datad => \butterfly_stage1:0:stg1|ALT_INV_out2_i_ff\(5),
	cin => \butterfly_stage2:1:stg2|Add1~18\,
	sumout => \butterfly_stage2:1:stg2|Add1~21_sumout\,
	cout => \butterfly_stage2:1:stg2|Add1~22\);

-- Location: FF_X85_Y15_N16
\butterfly_stage2:1:stg2|out1_i_ff[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:1:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:1:stg2|Add1~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|out1_i_ff\(5));

-- Location: LABCELL_X85_Y15_N18
\butterfly_stage2:1:stg2|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|Add1~25_sumout\ = SUM(( \butterfly_stage2:1:stg2|mul|i\(6) ) + ( \butterfly_stage1:0:stg1|out2_i_ff\(6) ) + ( \butterfly_stage2:1:stg2|Add1~22\ ))
-- \butterfly_stage2:1:stg2|Add1~26\ = CARRY(( \butterfly_stage2:1:stg2|mul|i\(6) ) + ( \butterfly_stage1:0:stg1|out2_i_ff\(6) ) + ( \butterfly_stage2:1:stg2|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage1:0:stg1|ALT_INV_out2_i_ff\(6),
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_i\(6),
	cin => \butterfly_stage2:1:stg2|Add1~22\,
	sumout => \butterfly_stage2:1:stg2|Add1~25_sumout\,
	cout => \butterfly_stage2:1:stg2|Add1~26\);

-- Location: FF_X85_Y15_N20
\butterfly_stage2:1:stg2|out1_i_ff[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:1:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:1:stg2|Add1~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|out1_i_ff\(6));

-- Location: LABCELL_X85_Y15_N21
\butterfly_stage2:1:stg2|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|Add1~29_sumout\ = SUM(( \butterfly_stage2:1:stg2|mul|i\(7) ) + ( \butterfly_stage1:0:stg1|out2_i_ff\(7) ) + ( \butterfly_stage2:1:stg2|Add1~26\ ))
-- \butterfly_stage2:1:stg2|Add1~30\ = CARRY(( \butterfly_stage2:1:stg2|mul|i\(7) ) + ( \butterfly_stage1:0:stg1|out2_i_ff\(7) ) + ( \butterfly_stage2:1:stg2|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:0:stg1|ALT_INV_out2_i_ff\(7),
	datad => \butterfly_stage2:1:stg2|mul|ALT_INV_i\(7),
	cin => \butterfly_stage2:1:stg2|Add1~26\,
	sumout => \butterfly_stage2:1:stg2|Add1~29_sumout\,
	cout => \butterfly_stage2:1:stg2|Add1~30\);

-- Location: FF_X85_Y15_N22
\butterfly_stage2:1:stg2|out1_i_ff[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:1:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:1:stg2|Add1~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|out1_i_ff\(7));

-- Location: LABCELL_X85_Y15_N24
\butterfly_stage2:1:stg2|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:1:stg2|Add1~33_sumout\ = SUM(( \butterfly_stage1:0:stg1|out2_i_ff\(8) ) + ( \butterfly_stage2:1:stg2|mul|i\(8) ) + ( \butterfly_stage2:1:stg2|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:1:stg2|mul|ALT_INV_i\(8),
	datad => \butterfly_stage1:0:stg1|ALT_INV_out2_i_ff\(8),
	cin => \butterfly_stage2:1:stg2|Add1~30\,
	sumout => \butterfly_stage2:1:stg2|Add1~33_sumout\);

-- Location: FF_X85_Y15_N25
\butterfly_stage2:1:stg2|out1_i_ff[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:1:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:1:stg2|Add1~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:1:stg2|out1_i_ff\(8));

-- Location: MLABCELL_X84_Y19_N0
\butterfly_stage2:0:stg2|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|Add1~1_sumout\ = SUM(( \butterfly_stage2:0:stg2|mul|i\(0) ) + ( \butterfly_stage1:0:stg1|out1_i_ff\(0) ) + ( !VCC ))
-- \butterfly_stage2:0:stg2|Add1~2\ = CARRY(( \butterfly_stage2:0:stg2|mul|i\(0) ) + ( \butterfly_stage1:0:stg1|out1_i_ff\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage2:0:stg2|mul|ALT_INV_i\(0),
	datac => \butterfly_stage1:0:stg1|ALT_INV_out1_i_ff\(0),
	cin => GND,
	sumout => \butterfly_stage2:0:stg2|Add1~1_sumout\,
	cout => \butterfly_stage2:0:stg2|Add1~2\);

-- Location: FF_X84_Y19_N1
\butterfly_stage2:0:stg2|out1_i_ff[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:0:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:0:stg2|Add1~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|out1_i_ff\(0));

-- Location: MLABCELL_X84_Y19_N3
\butterfly_stage2:0:stg2|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|Add1~5_sumout\ = SUM(( \butterfly_stage1:0:stg1|out1_i_ff\(1) ) + ( \butterfly_stage2:0:stg2|mul|i\(1) ) + ( \butterfly_stage2:0:stg2|Add1~2\ ))
-- \butterfly_stage2:0:stg2|Add1~6\ = CARRY(( \butterfly_stage1:0:stg1|out1_i_ff\(1) ) + ( \butterfly_stage2:0:stg2|mul|i\(1) ) + ( \butterfly_stage2:0:stg2|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_i\(1),
	datad => \butterfly_stage1:0:stg1|ALT_INV_out1_i_ff\(1),
	cin => \butterfly_stage2:0:stg2|Add1~2\,
	sumout => \butterfly_stage2:0:stg2|Add1~5_sumout\,
	cout => \butterfly_stage2:0:stg2|Add1~6\);

-- Location: FF_X84_Y19_N4
\butterfly_stage2:0:stg2|out1_i_ff[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:0:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:0:stg2|Add1~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|out1_i_ff\(1));

-- Location: MLABCELL_X84_Y19_N6
\butterfly_stage2:0:stg2|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|Add1~9_sumout\ = SUM(( \butterfly_stage1:0:stg1|out1_i_ff\(2) ) + ( \butterfly_stage2:0:stg2|mul|i\(2) ) + ( \butterfly_stage2:0:stg2|Add1~6\ ))
-- \butterfly_stage2:0:stg2|Add1~10\ = CARRY(( \butterfly_stage1:0:stg1|out1_i_ff\(2) ) + ( \butterfly_stage2:0:stg2|mul|i\(2) ) + ( \butterfly_stage2:0:stg2|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_i\(2),
	datad => \butterfly_stage1:0:stg1|ALT_INV_out1_i_ff\(2),
	cin => \butterfly_stage2:0:stg2|Add1~6\,
	sumout => \butterfly_stage2:0:stg2|Add1~9_sumout\,
	cout => \butterfly_stage2:0:stg2|Add1~10\);

-- Location: FF_X84_Y19_N7
\butterfly_stage2:0:stg2|out1_i_ff[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:0:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:0:stg2|Add1~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|out1_i_ff\(2));

-- Location: MLABCELL_X84_Y19_N9
\butterfly_stage2:0:stg2|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|Add1~13_sumout\ = SUM(( \butterfly_stage1:0:stg1|out1_i_ff\(3) ) + ( \butterfly_stage2:0:stg2|mul|i\(3) ) + ( \butterfly_stage2:0:stg2|Add1~10\ ))
-- \butterfly_stage2:0:stg2|Add1~14\ = CARRY(( \butterfly_stage1:0:stg1|out1_i_ff\(3) ) + ( \butterfly_stage2:0:stg2|mul|i\(3) ) + ( \butterfly_stage2:0:stg2|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \butterfly_stage2:0:stg2|mul|ALT_INV_i\(3),
	datad => \butterfly_stage1:0:stg1|ALT_INV_out1_i_ff\(3),
	cin => \butterfly_stage2:0:stg2|Add1~10\,
	sumout => \butterfly_stage2:0:stg2|Add1~13_sumout\,
	cout => \butterfly_stage2:0:stg2|Add1~14\);

-- Location: FF_X84_Y19_N10
\butterfly_stage2:0:stg2|out1_i_ff[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:0:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:0:stg2|Add1~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|out1_i_ff\(3));

-- Location: MLABCELL_X84_Y19_N12
\butterfly_stage2:0:stg2|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|Add1~17_sumout\ = SUM(( \butterfly_stage2:0:stg2|mul|i\(4) ) + ( \butterfly_stage1:0:stg1|out1_i_ff\(4) ) + ( \butterfly_stage2:0:stg2|Add1~14\ ))
-- \butterfly_stage2:0:stg2|Add1~18\ = CARRY(( \butterfly_stage2:0:stg2|mul|i\(4) ) + ( \butterfly_stage1:0:stg1|out1_i_ff\(4) ) + ( \butterfly_stage2:0:stg2|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:0:stg1|ALT_INV_out1_i_ff\(4),
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_i\(4),
	cin => \butterfly_stage2:0:stg2|Add1~14\,
	sumout => \butterfly_stage2:0:stg2|Add1~17_sumout\,
	cout => \butterfly_stage2:0:stg2|Add1~18\);

-- Location: FF_X84_Y19_N14
\butterfly_stage2:0:stg2|out1_i_ff[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:0:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:0:stg2|Add1~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|out1_i_ff\(4));

-- Location: MLABCELL_X84_Y19_N15
\butterfly_stage2:0:stg2|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|Add1~21_sumout\ = SUM(( \butterfly_stage1:0:stg1|out1_i_ff\(5) ) + ( \butterfly_stage2:0:stg2|mul|i\(5) ) + ( \butterfly_stage2:0:stg2|Add1~18\ ))
-- \butterfly_stage2:0:stg2|Add1~22\ = CARRY(( \butterfly_stage1:0:stg1|out1_i_ff\(5) ) + ( \butterfly_stage2:0:stg2|mul|i\(5) ) + ( \butterfly_stage2:0:stg2|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_i\(5),
	datad => \butterfly_stage1:0:stg1|ALT_INV_out1_i_ff\(5),
	cin => \butterfly_stage2:0:stg2|Add1~18\,
	sumout => \butterfly_stage2:0:stg2|Add1~21_sumout\,
	cout => \butterfly_stage2:0:stg2|Add1~22\);

-- Location: FF_X84_Y19_N16
\butterfly_stage2:0:stg2|out1_i_ff[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:0:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:0:stg2|Add1~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|out1_i_ff\(5));

-- Location: MLABCELL_X84_Y19_N18
\butterfly_stage2:0:stg2|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|Add1~25_sumout\ = SUM(( \butterfly_stage1:0:stg1|out1_i_ff\(6) ) + ( \butterfly_stage2:0:stg2|mul|i\(6) ) + ( \butterfly_stage2:0:stg2|Add1~22\ ))
-- \butterfly_stage2:0:stg2|Add1~26\ = CARRY(( \butterfly_stage1:0:stg1|out1_i_ff\(6) ) + ( \butterfly_stage2:0:stg2|mul|i\(6) ) + ( \butterfly_stage2:0:stg2|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_i\(6),
	datad => \butterfly_stage1:0:stg1|ALT_INV_out1_i_ff\(6),
	cin => \butterfly_stage2:0:stg2|Add1~22\,
	sumout => \butterfly_stage2:0:stg2|Add1~25_sumout\,
	cout => \butterfly_stage2:0:stg2|Add1~26\);

-- Location: FF_X84_Y19_N20
\butterfly_stage2:0:stg2|out1_i_ff[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:0:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:0:stg2|Add1~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|out1_i_ff\(6));

-- Location: MLABCELL_X84_Y19_N21
\butterfly_stage2:0:stg2|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|Add1~29_sumout\ = SUM(( \butterfly_stage2:0:stg2|mul|i\(7) ) + ( \butterfly_stage1:0:stg1|out1_i_ff\(7) ) + ( \butterfly_stage2:0:stg2|Add1~26\ ))
-- \butterfly_stage2:0:stg2|Add1~30\ = CARRY(( \butterfly_stage2:0:stg2|mul|i\(7) ) + ( \butterfly_stage1:0:stg1|out1_i_ff\(7) ) + ( \butterfly_stage2:0:stg2|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \butterfly_stage1:0:stg1|ALT_INV_out1_i_ff\(7),
	datac => \butterfly_stage2:0:stg2|mul|ALT_INV_i\(7),
	cin => \butterfly_stage2:0:stg2|Add1~26\,
	sumout => \butterfly_stage2:0:stg2|Add1~29_sumout\,
	cout => \butterfly_stage2:0:stg2|Add1~30\);

-- Location: FF_X84_Y19_N22
\butterfly_stage2:0:stg2|out1_i_ff[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:0:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:0:stg2|Add1~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|out1_i_ff\(7));

-- Location: MLABCELL_X84_Y19_N24
\butterfly_stage2:0:stg2|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \butterfly_stage2:0:stg2|Add1~33_sumout\ = SUM(( \butterfly_stage2:0:stg2|mul|i\(8) ) + ( \butterfly_stage1:0:stg1|out1_i_ff\(8) ) + ( \butterfly_stage2:0:stg2|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \butterfly_stage1:0:stg1|ALT_INV_out1_i_ff\(8),
	datad => \butterfly_stage2:0:stg2|mul|ALT_INV_i\(8),
	cin => \butterfly_stage2:0:stg2|Add1~30\,
	sumout => \butterfly_stage2:0:stg2|Add1~33_sumout\);

-- Location: FF_X84_Y19_N25
\butterfly_stage2:0:stg2|out1_i_ff[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \butterfly_stage2:0:stg2|ALT_INV_clk_div2~q\,
	d => \butterfly_stage2:0:stg2|Add1~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \butterfly_stage2:0:stg2|out1_i_ff\(8));

-- Location: LABCELL_X11_Y55_N0
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


