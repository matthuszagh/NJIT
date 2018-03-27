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

-- DATE "03/26/2018 22:23:14"

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
	Load_x : IN std_logic;
	x_in : IN std_logic_vector(8 DOWNTO 0);
	c_in : IN std_logic_vector(8 DOWNTO 0);
	y_out : OUT std_logic_vector(10 DOWNTO 0)
	);
END fir_gen;

-- Design Ports Information
-- y_out[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[1]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[2]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[3]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[4]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[5]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[6]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[7]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[8]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[9]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[10]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[0]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Load_x	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[1]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[2]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[3]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[4]	=>  Location: PIN_AK29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[5]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[7]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[8]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in[0]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in[1]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in[2]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in[3]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in[4]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in[5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in[6]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in[7]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in[8]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_Load_x : std_logic;
SIGNAL ww_x_in : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_c_in : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_y_out : std_logic_vector(10 DOWNTO 0);
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~mac_AX_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~mac_AY_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~mac_BX_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~mac_BY_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~mac_AX_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~mac_AY_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~mac_BX_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~mac_BY_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~mac_AX_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~mac_AY_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~mac_BX_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~mac_BY_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~mac_AX_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~mac_AY_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~mac_BX_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~mac_BY_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~8\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~9\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~10\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~11\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~12\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~13\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~14\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~15\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~16\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~17\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~18\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~19\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~20\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~21\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~22\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~23\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~24\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~25\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~26\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~27\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~28\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~29\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~30\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~31\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~32\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~33\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~34\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~35\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~36\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~37\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~38\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~39\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~40\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~41\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~42\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~43\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~44\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~45\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~46\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~47\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~48\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~49\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~50\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~51\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~52\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|Mult0~53\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~8\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~9\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~10\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~11\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~12\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~13\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~14\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~15\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~16\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~17\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~18\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~19\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~20\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~21\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~22\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~23\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~24\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~25\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~26\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~27\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~28\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~29\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~30\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~31\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~32\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~33\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~34\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~35\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~36\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~37\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~38\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~39\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~40\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~41\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~42\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~43\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~44\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~45\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~46\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~47\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~48\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~49\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~50\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~51\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~52\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|Mult0~53\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~8\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~9\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~10\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~11\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~12\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~13\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~14\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~15\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~16\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~17\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~18\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~19\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~20\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~21\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~22\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~23\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~24\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~25\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~26\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~27\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~28\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~29\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~30\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~31\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~32\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~33\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~34\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~35\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~36\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~37\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~38\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~39\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~40\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~41\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~42\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~43\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~44\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~45\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~46\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~47\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~48\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~49\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~50\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~51\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~52\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|Mult0~53\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~8\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~9\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~10\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~11\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~12\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~13\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~14\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~15\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~16\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~17\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~18\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~19\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~20\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~21\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~22\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~23\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~24\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~25\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~26\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~27\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~28\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~29\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~30\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~31\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~32\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~33\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~34\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~35\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~36\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~37\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~38\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~39\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~40\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~41\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~42\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~43\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~44\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~45\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~46\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~47\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~48\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~49\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~50\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~51\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~52\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|Mult0~53\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \x_in[0]~input_o\ : std_logic;
SIGNAL \x[0]~feeder_combout\ : std_logic;
SIGNAL \Load_x~input_o\ : std_logic;
SIGNAL \x_in[1]~input_o\ : std_logic;
SIGNAL \x[1]~feeder_combout\ : std_logic;
SIGNAL \x_in[2]~input_o\ : std_logic;
SIGNAL \x[2]~feeder_combout\ : std_logic;
SIGNAL \x_in[3]~input_o\ : std_logic;
SIGNAL \x[3]~feeder_combout\ : std_logic;
SIGNAL \x_in[4]~input_o\ : std_logic;
SIGNAL \x_in[5]~input_o\ : std_logic;
SIGNAL \x[5]~feeder_combout\ : std_logic;
SIGNAL \x_in[6]~input_o\ : std_logic;
SIGNAL \x_in[7]~input_o\ : std_logic;
SIGNAL \x[7]~feeder_combout\ : std_logic;
SIGNAL \x_in[8]~input_o\ : std_logic;
SIGNAL \x[8]~feeder_combout\ : std_logic;
SIGNAL \c_in[0]~input_o\ : std_logic;
SIGNAL \c[3][0]~q\ : std_logic;
SIGNAL \c[2][0]~q\ : std_logic;
SIGNAL \c_in[1]~input_o\ : std_logic;
SIGNAL \c[3][1]~feeder_combout\ : std_logic;
SIGNAL \c[3][1]~q\ : std_logic;
SIGNAL \c[2][1]~q\ : std_logic;
SIGNAL \c_in[2]~input_o\ : std_logic;
SIGNAL \c[3][2]~q\ : std_logic;
SIGNAL \c[2][2]~q\ : std_logic;
SIGNAL \c_in[3]~input_o\ : std_logic;
SIGNAL \c[3][3]~q\ : std_logic;
SIGNAL \c[2][3]~q\ : std_logic;
SIGNAL \c_in[4]~input_o\ : std_logic;
SIGNAL \c[3][4]~q\ : std_logic;
SIGNAL \c[2][4]~q\ : std_logic;
SIGNAL \c_in[5]~input_o\ : std_logic;
SIGNAL \c[3][5]~feeder_combout\ : std_logic;
SIGNAL \c[3][5]~q\ : std_logic;
SIGNAL \c[2][5]~q\ : std_logic;
SIGNAL \c_in[6]~input_o\ : std_logic;
SIGNAL \c[3][6]~q\ : std_logic;
SIGNAL \c[2][6]~q\ : std_logic;
SIGNAL \c_in[7]~input_o\ : std_logic;
SIGNAL \c[3][7]~feeder_combout\ : std_logic;
SIGNAL \c[3][7]~q\ : std_logic;
SIGNAL \c[2][7]~q\ : std_logic;
SIGNAL \c_in[8]~input_o\ : std_logic;
SIGNAL \c[3][8]~q\ : std_logic;
SIGNAL \c[2][8]~q\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|result_output_reg[8]~feeder_combout\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|result_output_reg[8]~feeder_combout\ : std_logic;
SIGNAL \a[3][8]~q\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|result_output_reg[7]~feeder_combout\ : std_logic;
SIGNAL \a[3][7]~feeder_combout\ : std_logic;
SIGNAL \a[3][7]~q\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|result_output_reg[6]~feeder_combout\ : std_logic;
SIGNAL \a[3][6]~feeder_combout\ : std_logic;
SIGNAL \a[3][6]~q\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|result_output_reg[5]~feeder_combout\ : std_logic;
SIGNAL \a[3][5]~q\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|result_output_reg[4]~feeder_combout\ : std_logic;
SIGNAL \a[3][4]~feeder_combout\ : std_logic;
SIGNAL \a[3][4]~q\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|result_output_reg[4]~feeder_combout\ : std_logic;
SIGNAL \a[3][3]~q\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|result_output_reg[2]~feeder_combout\ : std_logic;
SIGNAL \a[3][2]~feeder_combout\ : std_logic;
SIGNAL \a[3][2]~q\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|result_output_reg[1]~feeder_combout\ : std_logic;
SIGNAL \a[3][1]~q\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|result_output_reg[0]~feeder_combout\ : std_logic;
SIGNAL \a[3][0]~q\ : std_logic;
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
SIGNAL \c[1][0]~q\ : std_logic;
SIGNAL \c[1][1]~q\ : std_logic;
SIGNAL \c[1][2]~q\ : std_logic;
SIGNAL \c[1][3]~q\ : std_logic;
SIGNAL \c[1][4]~q\ : std_logic;
SIGNAL \c[1][5]~q\ : std_logic;
SIGNAL \c[1][6]~q\ : std_logic;
SIGNAL \c[1][7]~feeder_combout\ : std_logic;
SIGNAL \c[1][7]~q\ : std_logic;
SIGNAL \c[1][8]~feeder_combout\ : std_logic;
SIGNAL \c[1][8]~q\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|result_output_reg[8]~feeder_combout\ : std_logic;
SIGNAL \Add2~45_sumout\ : std_logic;
SIGNAL \a[2][7]~q\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|result_output_reg[7]~feeder_combout\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|result_output_reg[6]~feeder_combout\ : std_logic;
SIGNAL \Add2~49_sumout\ : std_logic;
SIGNAL \a[2][6]~q\ : std_logic;
SIGNAL \Add2~53_sumout\ : std_logic;
SIGNAL \a[2][5]~q\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|result_output_reg[4]~feeder_combout\ : std_logic;
SIGNAL \Add2~57_sumout\ : std_logic;
SIGNAL \a[2][4]~q\ : std_logic;
SIGNAL \Add2~61_sumout\ : std_logic;
SIGNAL \a[2][3]~q\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|result_output_reg[3]~feeder_combout\ : std_logic;
SIGNAL \Add2~65_sumout\ : std_logic;
SIGNAL \a[2][2]~q\ : std_logic;
SIGNAL \Add2~69_sumout\ : std_logic;
SIGNAL \a[2][1]~q\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|result_output_reg[1]~feeder_combout\ : std_logic;
SIGNAL \Add2~73_sumout\ : std_logic;
SIGNAL \a[2][0]~q\ : std_logic;
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
SIGNAL \c[0][0]~q\ : std_logic;
SIGNAL \c[0][1]~q\ : std_logic;
SIGNAL \c[0][2]~q\ : std_logic;
SIGNAL \c[0][3]~q\ : std_logic;
SIGNAL \c[0][4]~q\ : std_logic;
SIGNAL \c[0][5]~q\ : std_logic;
SIGNAL \c[0][6]~q\ : std_logic;
SIGNAL \c[0][7]~q\ : std_logic;
SIGNAL \c[0][8]~q\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|result_output_reg[8]~feeder_combout\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|result_output_reg[7]~feeder_combout\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \a[1][7]~q\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \a[1][6]~q\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|result_output_reg[6]~feeder_combout\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|result_output_reg[5]~feeder_combout\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \a[1][5]~q\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \a[1][4]~q\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \a[1][3]~q\ : std_logic;
SIGNAL \Add1~65_sumout\ : std_logic;
SIGNAL \a[1][2]~q\ : std_logic;
SIGNAL \Add1~69_sumout\ : std_logic;
SIGNAL \a[1][1]~q\ : std_logic;
SIGNAL \Add1~73_sumout\ : std_logic;
SIGNAL \a[1][0]~q\ : std_logic;
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
SIGNAL \MulGen:2:Muls|auto_generated|result_output_reg[9]~feeder_combout\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|result_output_reg[9]~feeder_combout\ : std_logic;
SIGNAL \a[3][9]~feeder_combout\ : std_logic;
SIGNAL \a[3][9]~q\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \a[2][9]~q\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|result_output_reg[9]~feeder_combout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \a[1][9]~q\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \a[0][9]~q\ : std_logic;
SIGNAL \a[3][10]~feeder_combout\ : std_logic;
SIGNAL \a[3][10]~q\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|result_output_reg[10]~feeder_combout\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \a[2][10]~q\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|result_output_reg[10]~feeder_combout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \a[1][10]~q\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \a[0][10]~q\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|result_output_reg[11]~feeder_combout\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|result_output_reg[11]~feeder_combout\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|result_output_reg[11]~feeder_combout\ : std_logic;
SIGNAL \a[3][11]~feeder_combout\ : std_logic;
SIGNAL \a[3][11]~q\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \a[2][11]~q\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|result_output_reg[11]~feeder_combout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \a[1][11]~q\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \a[0][11]~q\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|result_output_reg[12]~feeder_combout\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|result_output_reg[12]~feeder_combout\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|result_output_reg[12]~feeder_combout\ : std_logic;
SIGNAL \a[3][12]~feeder_combout\ : std_logic;
SIGNAL \a[3][12]~q\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \a[2][12]~q\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \a[1][12]~q\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \a[0][12]~q\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|result_output_reg[13]~feeder_combout\ : std_logic;
SIGNAL \a[3][13]~feeder_combout\ : std_logic;
SIGNAL \a[3][13]~q\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|result_output_reg[13]~feeder_combout\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \a[2][13]~q\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|result_output_reg[13]~feeder_combout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \a[1][13]~q\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|result_output_reg[13]~feeder_combout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \a[0][13]~q\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|result_output_reg[14]~feeder_combout\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|result_output_reg[14]~feeder_combout\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|result_output_reg[14]~feeder_combout\ : std_logic;
SIGNAL \a[3][14]~feeder_combout\ : std_logic;
SIGNAL \a[3][14]~q\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|result_output_reg[14]~feeder_combout\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \a[2][14]~q\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \a[1][14]~q\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \a[0][14]~q\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|result_output_reg[15]~feeder_combout\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|result_output_reg[15]~feeder_combout\ : std_logic;
SIGNAL \a[3][15]~q\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \a[2][15]~q\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|result_output_reg[15]~feeder_combout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \a[1][15]~q\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|result_output_reg[15]~feeder_combout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \a[0][15]~q\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|result_output_reg[16]~feeder_combout\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|result_output_reg[16]~feeder_combout\ : std_logic;
SIGNAL \a[3][16]~feeder_combout\ : std_logic;
SIGNAL \a[3][16]~q\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|result_output_reg[16]~feeder_combout\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \a[2][16]~q\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \a[1][16]~q\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \a[0][16]~q\ : std_logic;
SIGNAL \a[3][18]~feeder_combout\ : std_logic;
SIGNAL \a[3][18]~q\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|result_output_reg[17]~feeder_combout\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~37_sumout\ : std_logic;
SIGNAL \a[2][17]~q\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|result_output_reg[17]~feeder_combout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \a[1][17]~q\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|result_output_reg[17]~feeder_combout\ : std_logic;
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
SIGNAL x : std_logic_vector(8 DOWNTO 0);
SIGNAL \MulGen:1:Muls|auto_generated|result_output_reg\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \MulGen:3:Muls|auto_generated|result_output_reg\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \MulGen:0:Muls|auto_generated|result_output_reg\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \MulGen:3:Muls|auto_generated|result_extra0_reg\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \MulGen:2:Muls|auto_generated|result_extra0_reg\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \MulGen:1:Muls|auto_generated|result_extra0_reg\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \MulGen:2:Muls|auto_generated|result_output_reg\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \MulGen:0:Muls|auto_generated|result_extra0_reg\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ALT_INV_c_in[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_c_in[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_c_in[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_x_in[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_x_in[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_x_in[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_x_in[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_x_in[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_x_in[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Load_x~input_o\ : std_logic;
SIGNAL \ALT_INV_x_in[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[3][0]~q\ : std_logic;
SIGNAL \MulGen:2:Muls|auto_generated|ALT_INV_result_output_reg\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ALT_INV_a[3][1]~q\ : std_logic;
SIGNAL \MulGen:3:Muls|auto_generated|ALT_INV_result_output_reg\ : std_logic_vector(17 DOWNTO 2);
SIGNAL \ALT_INV_a[2][0]~q\ : std_logic;
SIGNAL \MulGen:1:Muls|auto_generated|ALT_INV_result_output_reg\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ALT_INV_a[3][2]~q\ : std_logic;
SIGNAL \ALT_INV_a[2][1]~q\ : std_logic;
SIGNAL \ALT_INV_a[3][3]~q\ : std_logic;
SIGNAL \ALT_INV_a[1][0]~q\ : std_logic;
SIGNAL \MulGen:0:Muls|auto_generated|ALT_INV_result_output_reg\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ALT_INV_a[2][2]~q\ : std_logic;
SIGNAL \ALT_INV_a[3][4]~q\ : std_logic;
SIGNAL \ALT_INV_a[1][1]~q\ : std_logic;
SIGNAL \ALT_INV_a[2][3]~q\ : std_logic;
SIGNAL \ALT_INV_a[3][5]~q\ : std_logic;
SIGNAL \ALT_INV_a[1][2]~q\ : std_logic;
SIGNAL \ALT_INV_a[2][4]~q\ : std_logic;
SIGNAL \ALT_INV_a[3][6]~q\ : std_logic;
SIGNAL \ALT_INV_c[2][8]~q\ : std_logic;
SIGNAL \ALT_INV_c[2][7]~q\ : std_logic;
SIGNAL \ALT_INV_a[1][3]~q\ : std_logic;
SIGNAL \ALT_INV_a[2][5]~q\ : std_logic;
SIGNAL \ALT_INV_a[3][7]~q\ : std_logic;
SIGNAL \ALT_INV_a[3][18]~q\ : std_logic;
SIGNAL \ALT_INV_a[3][16]~q\ : std_logic;
SIGNAL \ALT_INV_a[3][15]~q\ : std_logic;
SIGNAL \ALT_INV_a[3][14]~q\ : std_logic;
SIGNAL \ALT_INV_a[3][13]~q\ : std_logic;
SIGNAL \ALT_INV_a[3][12]~q\ : std_logic;
SIGNAL \ALT_INV_a[3][11]~q\ : std_logic;
SIGNAL \ALT_INV_a[3][10]~q\ : std_logic;
SIGNAL \ALT_INV_a[3][9]~q\ : std_logic;
SIGNAL \ALT_INV_a[1][4]~q\ : std_logic;
SIGNAL \ALT_INV_a[2][6]~q\ : std_logic;
SIGNAL \ALT_INV_a[3][8]~q\ : std_logic;
SIGNAL \ALT_INV_a[1][5]~q\ : std_logic;
SIGNAL \ALT_INV_a[2][7]~q\ : std_logic;
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
SIGNAL \MulGen:3:Muls|auto_generated|ALT_INV_result_extra0_reg\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \MulGen:2:Muls|auto_generated|ALT_INV_result_extra0_reg\ : std_logic_vector(17 DOWNTO 4);
SIGNAL \MulGen:1:Muls|auto_generated|ALT_INV_result_extra0_reg\ : std_logic_vector(17 DOWNTO 1);
SIGNAL \MulGen:0:Muls|auto_generated|ALT_INV_result_extra0_reg\ : std_logic_vector(17 DOWNTO 5);

BEGIN

ww_clk <= clk;
ww_Load_x <= Load_x;
ww_x_in <= x_in;
ww_c_in <= c_in;
y_out <= ww_y_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\MulGen:0:Muls|auto_generated|Mult0~mac_ACLR_bus\ <= (gnd & gnd);

\MulGen:0:Muls|auto_generated|Mult0~mac_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\MulGen:0:Muls|auto_generated|Mult0~mac_ENA_bus\ <= (vcc & vcc & vcc);

\MulGen:0:Muls|auto_generated|Mult0~mac_AX_bus\ <= (x(8) & x(7) & x(6) & x(5) & x(4) & x(3) & x(2) & x(1) & x(0));

\MulGen:0:Muls|auto_generated|Mult0~mac_AY_bus\ <= (\c[0][8]~q\ & \c[0][7]~q\ & \c[0][6]~q\ & \c[0][5]~q\ & \c[0][4]~q\ & \c[0][3]~q\ & \c[0][2]~q\ & \c[0][1]~q\ & \c[0][0]~q\);

\MulGen:0:Muls|auto_generated|Mult0~mac_BX_bus\ <= (x(8) & x(8) & x(8) & x(8) & x(8) & x(8) & x(8) & x(8) & x(8));

\MulGen:0:Muls|auto_generated|Mult0~mac_BY_bus\ <= (\c[0][8]~q\ & \c[0][8]~q\ & \c[0][8]~q\ & \c[0][8]~q\ & \c[0][8]~q\ & \c[0][8]~q\ & \c[0][8]~q\ & \c[0][8]~q\ & \c[0][8]~q\);

\MulGen:0:Muls|auto_generated|result_extra0_reg\(0) <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(0);
\MulGen:0:Muls|auto_generated|result_extra0_reg\(1) <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(1);
\MulGen:0:Muls|auto_generated|result_extra0_reg\(2) <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(2);
\MulGen:0:Muls|auto_generated|result_extra0_reg\(3) <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(3);
\MulGen:0:Muls|auto_generated|result_extra0_reg\(4) <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(4);
\MulGen:0:Muls|auto_generated|result_extra0_reg\(5) <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(5);
\MulGen:0:Muls|auto_generated|result_extra0_reg\(6) <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(6);
\MulGen:0:Muls|auto_generated|result_extra0_reg\(7) <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(7);
\MulGen:0:Muls|auto_generated|result_extra0_reg\(8) <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(8);
\MulGen:0:Muls|auto_generated|result_extra0_reg\(9) <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(9);
\MulGen:0:Muls|auto_generated|result_extra0_reg\(10) <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(10);
\MulGen:0:Muls|auto_generated|result_extra0_reg\(11) <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(11);
\MulGen:0:Muls|auto_generated|result_extra0_reg\(12) <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(12);
\MulGen:0:Muls|auto_generated|result_extra0_reg\(13) <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(13);
\MulGen:0:Muls|auto_generated|result_extra0_reg\(14) <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(14);
\MulGen:0:Muls|auto_generated|result_extra0_reg\(15) <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(15);
\MulGen:0:Muls|auto_generated|result_extra0_reg\(16) <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(16);
\MulGen:0:Muls|auto_generated|result_extra0_reg\(17) <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(17);
\MulGen:0:Muls|auto_generated|Mult0~8\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(18);
\MulGen:0:Muls|auto_generated|Mult0~9\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(19);
\MulGen:0:Muls|auto_generated|Mult0~10\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(20);
\MulGen:0:Muls|auto_generated|Mult0~11\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(21);
\MulGen:0:Muls|auto_generated|Mult0~12\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(22);
\MulGen:0:Muls|auto_generated|Mult0~13\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(23);
\MulGen:0:Muls|auto_generated|Mult0~14\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(24);
\MulGen:0:Muls|auto_generated|Mult0~15\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(25);
\MulGen:0:Muls|auto_generated|Mult0~16\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(26);
\MulGen:0:Muls|auto_generated|Mult0~17\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(27);
\MulGen:0:Muls|auto_generated|Mult0~18\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(28);
\MulGen:0:Muls|auto_generated|Mult0~19\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(29);
\MulGen:0:Muls|auto_generated|Mult0~20\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(30);
\MulGen:0:Muls|auto_generated|Mult0~21\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(31);
\MulGen:0:Muls|auto_generated|Mult0~22\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(32);
\MulGen:0:Muls|auto_generated|Mult0~23\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(33);
\MulGen:0:Muls|auto_generated|Mult0~24\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(34);
\MulGen:0:Muls|auto_generated|Mult0~25\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(35);
\MulGen:0:Muls|auto_generated|Mult0~26\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(36);
\MulGen:0:Muls|auto_generated|Mult0~27\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(37);
\MulGen:0:Muls|auto_generated|Mult0~28\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(38);
\MulGen:0:Muls|auto_generated|Mult0~29\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(39);
\MulGen:0:Muls|auto_generated|Mult0~30\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(40);
\MulGen:0:Muls|auto_generated|Mult0~31\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(41);
\MulGen:0:Muls|auto_generated|Mult0~32\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(42);
\MulGen:0:Muls|auto_generated|Mult0~33\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(43);
\MulGen:0:Muls|auto_generated|Mult0~34\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(44);
\MulGen:0:Muls|auto_generated|Mult0~35\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(45);
\MulGen:0:Muls|auto_generated|Mult0~36\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(46);
\MulGen:0:Muls|auto_generated|Mult0~37\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(47);
\MulGen:0:Muls|auto_generated|Mult0~38\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(48);
\MulGen:0:Muls|auto_generated|Mult0~39\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(49);
\MulGen:0:Muls|auto_generated|Mult0~40\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(50);
\MulGen:0:Muls|auto_generated|Mult0~41\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(51);
\MulGen:0:Muls|auto_generated|Mult0~42\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(52);
\MulGen:0:Muls|auto_generated|Mult0~43\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(53);
\MulGen:0:Muls|auto_generated|Mult0~44\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(54);
\MulGen:0:Muls|auto_generated|Mult0~45\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(55);
\MulGen:0:Muls|auto_generated|Mult0~46\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(56);
\MulGen:0:Muls|auto_generated|Mult0~47\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(57);
\MulGen:0:Muls|auto_generated|Mult0~48\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(58);
\MulGen:0:Muls|auto_generated|Mult0~49\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(59);
\MulGen:0:Muls|auto_generated|Mult0~50\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(60);
\MulGen:0:Muls|auto_generated|Mult0~51\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(61);
\MulGen:0:Muls|auto_generated|Mult0~52\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(62);
\MulGen:0:Muls|auto_generated|Mult0~53\ <= \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\(63);

\MulGen:1:Muls|auto_generated|Mult0~mac_ACLR_bus\ <= (gnd & gnd);

\MulGen:1:Muls|auto_generated|Mult0~mac_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\MulGen:1:Muls|auto_generated|Mult0~mac_ENA_bus\ <= (vcc & vcc & vcc);

\MulGen:1:Muls|auto_generated|Mult0~mac_AX_bus\ <= (x(8) & x(7) & x(6) & x(5) & x(4) & x(3) & x(2) & x(1) & x(0));

\MulGen:1:Muls|auto_generated|Mult0~mac_AY_bus\ <= (\c[1][8]~q\ & \c[1][7]~q\ & \c[1][6]~q\ & \c[1][5]~q\ & \c[1][4]~q\ & \c[1][3]~q\ & \c[1][2]~q\ & \c[1][1]~q\ & \c[1][0]~q\);

\MulGen:1:Muls|auto_generated|Mult0~mac_BX_bus\ <= (x(8) & x(8) & x(8) & x(8) & x(8) & x(8) & x(8) & x(8) & x(8));

\MulGen:1:Muls|auto_generated|Mult0~mac_BY_bus\ <= (\c[1][8]~q\ & \c[1][8]~q\ & \c[1][8]~q\ & \c[1][8]~q\ & \c[1][8]~q\ & \c[1][8]~q\ & \c[1][8]~q\ & \c[1][8]~q\ & \c[1][8]~q\);

\MulGen:1:Muls|auto_generated|result_extra0_reg\(0) <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(0);
\MulGen:1:Muls|auto_generated|result_extra0_reg\(1) <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(1);
\MulGen:1:Muls|auto_generated|result_extra0_reg\(2) <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(2);
\MulGen:1:Muls|auto_generated|result_extra0_reg\(3) <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(3);
\MulGen:1:Muls|auto_generated|result_extra0_reg\(4) <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(4);
\MulGen:1:Muls|auto_generated|result_extra0_reg\(5) <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(5);
\MulGen:1:Muls|auto_generated|result_extra0_reg\(6) <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(6);
\MulGen:1:Muls|auto_generated|result_extra0_reg\(7) <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(7);
\MulGen:1:Muls|auto_generated|result_extra0_reg\(8) <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(8);
\MulGen:1:Muls|auto_generated|result_extra0_reg\(9) <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(9);
\MulGen:1:Muls|auto_generated|result_extra0_reg\(10) <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(10);
\MulGen:1:Muls|auto_generated|result_extra0_reg\(11) <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(11);
\MulGen:1:Muls|auto_generated|result_extra0_reg\(12) <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(12);
\MulGen:1:Muls|auto_generated|result_extra0_reg\(13) <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(13);
\MulGen:1:Muls|auto_generated|result_extra0_reg\(14) <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(14);
\MulGen:1:Muls|auto_generated|result_extra0_reg\(15) <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(15);
\MulGen:1:Muls|auto_generated|result_extra0_reg\(16) <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(16);
\MulGen:1:Muls|auto_generated|result_extra0_reg\(17) <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(17);
\MulGen:1:Muls|auto_generated|Mult0~8\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(18);
\MulGen:1:Muls|auto_generated|Mult0~9\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(19);
\MulGen:1:Muls|auto_generated|Mult0~10\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(20);
\MulGen:1:Muls|auto_generated|Mult0~11\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(21);
\MulGen:1:Muls|auto_generated|Mult0~12\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(22);
\MulGen:1:Muls|auto_generated|Mult0~13\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(23);
\MulGen:1:Muls|auto_generated|Mult0~14\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(24);
\MulGen:1:Muls|auto_generated|Mult0~15\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(25);
\MulGen:1:Muls|auto_generated|Mult0~16\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(26);
\MulGen:1:Muls|auto_generated|Mult0~17\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(27);
\MulGen:1:Muls|auto_generated|Mult0~18\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(28);
\MulGen:1:Muls|auto_generated|Mult0~19\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(29);
\MulGen:1:Muls|auto_generated|Mult0~20\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(30);
\MulGen:1:Muls|auto_generated|Mult0~21\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(31);
\MulGen:1:Muls|auto_generated|Mult0~22\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(32);
\MulGen:1:Muls|auto_generated|Mult0~23\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(33);
\MulGen:1:Muls|auto_generated|Mult0~24\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(34);
\MulGen:1:Muls|auto_generated|Mult0~25\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(35);
\MulGen:1:Muls|auto_generated|Mult0~26\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(36);
\MulGen:1:Muls|auto_generated|Mult0~27\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(37);
\MulGen:1:Muls|auto_generated|Mult0~28\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(38);
\MulGen:1:Muls|auto_generated|Mult0~29\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(39);
\MulGen:1:Muls|auto_generated|Mult0~30\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(40);
\MulGen:1:Muls|auto_generated|Mult0~31\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(41);
\MulGen:1:Muls|auto_generated|Mult0~32\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(42);
\MulGen:1:Muls|auto_generated|Mult0~33\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(43);
\MulGen:1:Muls|auto_generated|Mult0~34\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(44);
\MulGen:1:Muls|auto_generated|Mult0~35\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(45);
\MulGen:1:Muls|auto_generated|Mult0~36\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(46);
\MulGen:1:Muls|auto_generated|Mult0~37\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(47);
\MulGen:1:Muls|auto_generated|Mult0~38\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(48);
\MulGen:1:Muls|auto_generated|Mult0~39\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(49);
\MulGen:1:Muls|auto_generated|Mult0~40\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(50);
\MulGen:1:Muls|auto_generated|Mult0~41\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(51);
\MulGen:1:Muls|auto_generated|Mult0~42\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(52);
\MulGen:1:Muls|auto_generated|Mult0~43\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(53);
\MulGen:1:Muls|auto_generated|Mult0~44\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(54);
\MulGen:1:Muls|auto_generated|Mult0~45\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(55);
\MulGen:1:Muls|auto_generated|Mult0~46\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(56);
\MulGen:1:Muls|auto_generated|Mult0~47\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(57);
\MulGen:1:Muls|auto_generated|Mult0~48\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(58);
\MulGen:1:Muls|auto_generated|Mult0~49\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(59);
\MulGen:1:Muls|auto_generated|Mult0~50\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(60);
\MulGen:1:Muls|auto_generated|Mult0~51\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(61);
\MulGen:1:Muls|auto_generated|Mult0~52\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(62);
\MulGen:1:Muls|auto_generated|Mult0~53\ <= \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\(63);

\MulGen:2:Muls|auto_generated|Mult0~mac_ACLR_bus\ <= (gnd & gnd);

\MulGen:2:Muls|auto_generated|Mult0~mac_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\MulGen:2:Muls|auto_generated|Mult0~mac_ENA_bus\ <= (vcc & vcc & vcc);

\MulGen:2:Muls|auto_generated|Mult0~mac_AX_bus\ <= (x(8) & x(7) & x(6) & x(5) & x(4) & x(3) & x(2) & x(1) & x(0));

\MulGen:2:Muls|auto_generated|Mult0~mac_AY_bus\ <= (\c[2][8]~q\ & \c[2][7]~q\ & \c[2][6]~q\ & \c[2][5]~q\ & \c[2][4]~q\ & \c[2][3]~q\ & \c[2][2]~q\ & \c[2][1]~q\ & \c[2][0]~q\);

\MulGen:2:Muls|auto_generated|Mult0~mac_BX_bus\ <= (x(8) & x(8) & x(8) & x(8) & x(8) & x(8) & x(8) & x(8) & x(8));

\MulGen:2:Muls|auto_generated|Mult0~mac_BY_bus\ <= (\c[2][8]~q\ & \c[2][8]~q\ & \c[2][8]~q\ & \c[2][8]~q\ & \c[2][8]~q\ & \c[2][8]~q\ & \c[2][8]~q\ & \c[2][8]~q\ & \c[2][8]~q\);

\MulGen:2:Muls|auto_generated|result_extra0_reg\(0) <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(0);
\MulGen:2:Muls|auto_generated|result_extra0_reg\(1) <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(1);
\MulGen:2:Muls|auto_generated|result_extra0_reg\(2) <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(2);
\MulGen:2:Muls|auto_generated|result_extra0_reg\(3) <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(3);
\MulGen:2:Muls|auto_generated|result_extra0_reg\(4) <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(4);
\MulGen:2:Muls|auto_generated|result_extra0_reg\(5) <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(5);
\MulGen:2:Muls|auto_generated|result_extra0_reg\(6) <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(6);
\MulGen:2:Muls|auto_generated|result_extra0_reg\(7) <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(7);
\MulGen:2:Muls|auto_generated|result_extra0_reg\(8) <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(8);
\MulGen:2:Muls|auto_generated|result_extra0_reg\(9) <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(9);
\MulGen:2:Muls|auto_generated|result_extra0_reg\(10) <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(10);
\MulGen:2:Muls|auto_generated|result_extra0_reg\(11) <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(11);
\MulGen:2:Muls|auto_generated|result_extra0_reg\(12) <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(12);
\MulGen:2:Muls|auto_generated|result_extra0_reg\(13) <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(13);
\MulGen:2:Muls|auto_generated|result_extra0_reg\(14) <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(14);
\MulGen:2:Muls|auto_generated|result_extra0_reg\(15) <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(15);
\MulGen:2:Muls|auto_generated|result_extra0_reg\(16) <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(16);
\MulGen:2:Muls|auto_generated|result_extra0_reg\(17) <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(17);
\MulGen:2:Muls|auto_generated|Mult0~8\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(18);
\MulGen:2:Muls|auto_generated|Mult0~9\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(19);
\MulGen:2:Muls|auto_generated|Mult0~10\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(20);
\MulGen:2:Muls|auto_generated|Mult0~11\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(21);
\MulGen:2:Muls|auto_generated|Mult0~12\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(22);
\MulGen:2:Muls|auto_generated|Mult0~13\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(23);
\MulGen:2:Muls|auto_generated|Mult0~14\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(24);
\MulGen:2:Muls|auto_generated|Mult0~15\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(25);
\MulGen:2:Muls|auto_generated|Mult0~16\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(26);
\MulGen:2:Muls|auto_generated|Mult0~17\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(27);
\MulGen:2:Muls|auto_generated|Mult0~18\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(28);
\MulGen:2:Muls|auto_generated|Mult0~19\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(29);
\MulGen:2:Muls|auto_generated|Mult0~20\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(30);
\MulGen:2:Muls|auto_generated|Mult0~21\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(31);
\MulGen:2:Muls|auto_generated|Mult0~22\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(32);
\MulGen:2:Muls|auto_generated|Mult0~23\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(33);
\MulGen:2:Muls|auto_generated|Mult0~24\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(34);
\MulGen:2:Muls|auto_generated|Mult0~25\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(35);
\MulGen:2:Muls|auto_generated|Mult0~26\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(36);
\MulGen:2:Muls|auto_generated|Mult0~27\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(37);
\MulGen:2:Muls|auto_generated|Mult0~28\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(38);
\MulGen:2:Muls|auto_generated|Mult0~29\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(39);
\MulGen:2:Muls|auto_generated|Mult0~30\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(40);
\MulGen:2:Muls|auto_generated|Mult0~31\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(41);
\MulGen:2:Muls|auto_generated|Mult0~32\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(42);
\MulGen:2:Muls|auto_generated|Mult0~33\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(43);
\MulGen:2:Muls|auto_generated|Mult0~34\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(44);
\MulGen:2:Muls|auto_generated|Mult0~35\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(45);
\MulGen:2:Muls|auto_generated|Mult0~36\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(46);
\MulGen:2:Muls|auto_generated|Mult0~37\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(47);
\MulGen:2:Muls|auto_generated|Mult0~38\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(48);
\MulGen:2:Muls|auto_generated|Mult0~39\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(49);
\MulGen:2:Muls|auto_generated|Mult0~40\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(50);
\MulGen:2:Muls|auto_generated|Mult0~41\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(51);
\MulGen:2:Muls|auto_generated|Mult0~42\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(52);
\MulGen:2:Muls|auto_generated|Mult0~43\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(53);
\MulGen:2:Muls|auto_generated|Mult0~44\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(54);
\MulGen:2:Muls|auto_generated|Mult0~45\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(55);
\MulGen:2:Muls|auto_generated|Mult0~46\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(56);
\MulGen:2:Muls|auto_generated|Mult0~47\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(57);
\MulGen:2:Muls|auto_generated|Mult0~48\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(58);
\MulGen:2:Muls|auto_generated|Mult0~49\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(59);
\MulGen:2:Muls|auto_generated|Mult0~50\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(60);
\MulGen:2:Muls|auto_generated|Mult0~51\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(61);
\MulGen:2:Muls|auto_generated|Mult0~52\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(62);
\MulGen:2:Muls|auto_generated|Mult0~53\ <= \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\(63);

\MulGen:3:Muls|auto_generated|Mult0~mac_ACLR_bus\ <= (gnd & gnd);

\MulGen:3:Muls|auto_generated|Mult0~mac_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\MulGen:3:Muls|auto_generated|Mult0~mac_ENA_bus\ <= (vcc & vcc & vcc);

\MulGen:3:Muls|auto_generated|Mult0~mac_AX_bus\ <= (x(8) & x(7) & x(6) & x(5) & x(4) & x(3) & x(2) & x(1) & x(0));

\MulGen:3:Muls|auto_generated|Mult0~mac_AY_bus\ <= (\c[3][8]~q\ & \c[3][7]~q\ & \c[3][6]~q\ & \c[3][5]~q\ & \c[3][4]~q\ & \c[3][3]~q\ & \c[3][2]~q\ & \c[3][1]~q\ & \c[3][0]~q\);

\MulGen:3:Muls|auto_generated|Mult0~mac_BX_bus\ <= (x(8) & x(8) & x(8) & x(8) & x(8) & x(8) & x(8) & x(8) & x(8));

\MulGen:3:Muls|auto_generated|Mult0~mac_BY_bus\ <= (\c[3][8]~q\ & \c[3][8]~q\ & \c[3][8]~q\ & \c[3][8]~q\ & \c[3][8]~q\ & \c[3][8]~q\ & \c[3][8]~q\ & \c[3][8]~q\ & \c[3][8]~q\);

\MulGen:3:Muls|auto_generated|result_extra0_reg\(0) <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(0);
\MulGen:3:Muls|auto_generated|result_extra0_reg\(1) <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(1);
\MulGen:3:Muls|auto_generated|result_extra0_reg\(2) <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(2);
\MulGen:3:Muls|auto_generated|result_extra0_reg\(3) <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(3);
\MulGen:3:Muls|auto_generated|result_extra0_reg\(4) <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(4);
\MulGen:3:Muls|auto_generated|result_extra0_reg\(5) <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(5);
\MulGen:3:Muls|auto_generated|result_extra0_reg\(6) <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(6);
\MulGen:3:Muls|auto_generated|result_extra0_reg\(7) <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(7);
\MulGen:3:Muls|auto_generated|result_extra0_reg\(8) <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(8);
\MulGen:3:Muls|auto_generated|result_extra0_reg\(9) <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(9);
\MulGen:3:Muls|auto_generated|result_extra0_reg\(10) <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(10);
\MulGen:3:Muls|auto_generated|result_extra0_reg\(11) <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(11);
\MulGen:3:Muls|auto_generated|result_extra0_reg\(12) <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(12);
\MulGen:3:Muls|auto_generated|result_extra0_reg\(13) <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(13);
\MulGen:3:Muls|auto_generated|result_extra0_reg\(14) <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(14);
\MulGen:3:Muls|auto_generated|result_extra0_reg\(15) <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(15);
\MulGen:3:Muls|auto_generated|result_extra0_reg\(16) <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(16);
\MulGen:3:Muls|auto_generated|result_extra0_reg\(17) <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(17);
\MulGen:3:Muls|auto_generated|Mult0~8\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(18);
\MulGen:3:Muls|auto_generated|Mult0~9\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(19);
\MulGen:3:Muls|auto_generated|Mult0~10\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(20);
\MulGen:3:Muls|auto_generated|Mult0~11\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(21);
\MulGen:3:Muls|auto_generated|Mult0~12\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(22);
\MulGen:3:Muls|auto_generated|Mult0~13\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(23);
\MulGen:3:Muls|auto_generated|Mult0~14\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(24);
\MulGen:3:Muls|auto_generated|Mult0~15\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(25);
\MulGen:3:Muls|auto_generated|Mult0~16\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(26);
\MulGen:3:Muls|auto_generated|Mult0~17\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(27);
\MulGen:3:Muls|auto_generated|Mult0~18\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(28);
\MulGen:3:Muls|auto_generated|Mult0~19\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(29);
\MulGen:3:Muls|auto_generated|Mult0~20\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(30);
\MulGen:3:Muls|auto_generated|Mult0~21\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(31);
\MulGen:3:Muls|auto_generated|Mult0~22\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(32);
\MulGen:3:Muls|auto_generated|Mult0~23\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(33);
\MulGen:3:Muls|auto_generated|Mult0~24\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(34);
\MulGen:3:Muls|auto_generated|Mult0~25\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(35);
\MulGen:3:Muls|auto_generated|Mult0~26\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(36);
\MulGen:3:Muls|auto_generated|Mult0~27\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(37);
\MulGen:3:Muls|auto_generated|Mult0~28\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(38);
\MulGen:3:Muls|auto_generated|Mult0~29\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(39);
\MulGen:3:Muls|auto_generated|Mult0~30\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(40);
\MulGen:3:Muls|auto_generated|Mult0~31\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(41);
\MulGen:3:Muls|auto_generated|Mult0~32\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(42);
\MulGen:3:Muls|auto_generated|Mult0~33\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(43);
\MulGen:3:Muls|auto_generated|Mult0~34\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(44);
\MulGen:3:Muls|auto_generated|Mult0~35\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(45);
\MulGen:3:Muls|auto_generated|Mult0~36\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(46);
\MulGen:3:Muls|auto_generated|Mult0~37\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(47);
\MulGen:3:Muls|auto_generated|Mult0~38\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(48);
\MulGen:3:Muls|auto_generated|Mult0~39\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(49);
\MulGen:3:Muls|auto_generated|Mult0~40\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(50);
\MulGen:3:Muls|auto_generated|Mult0~41\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(51);
\MulGen:3:Muls|auto_generated|Mult0~42\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(52);
\MulGen:3:Muls|auto_generated|Mult0~43\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(53);
\MulGen:3:Muls|auto_generated|Mult0~44\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(54);
\MulGen:3:Muls|auto_generated|Mult0~45\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(55);
\MulGen:3:Muls|auto_generated|Mult0~46\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(56);
\MulGen:3:Muls|auto_generated|Mult0~47\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(57);
\MulGen:3:Muls|auto_generated|Mult0~48\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(58);
\MulGen:3:Muls|auto_generated|Mult0~49\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(59);
\MulGen:3:Muls|auto_generated|Mult0~50\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(60);
\MulGen:3:Muls|auto_generated|Mult0~51\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(61);
\MulGen:3:Muls|auto_generated|Mult0~52\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(62);
\MulGen:3:Muls|auto_generated|Mult0~53\ <= \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\(63);
\ALT_INV_c_in[7]~input_o\ <= NOT \c_in[7]~input_o\;
\ALT_INV_c_in[5]~input_o\ <= NOT \c_in[5]~input_o\;
\ALT_INV_c_in[1]~input_o\ <= NOT \c_in[1]~input_o\;
\ALT_INV_x_in[8]~input_o\ <= NOT \x_in[8]~input_o\;
\ALT_INV_x_in[7]~input_o\ <= NOT \x_in[7]~input_o\;
\ALT_INV_x_in[5]~input_o\ <= NOT \x_in[5]~input_o\;
\ALT_INV_x_in[3]~input_o\ <= NOT \x_in[3]~input_o\;
\ALT_INV_x_in[2]~input_o\ <= NOT \x_in[2]~input_o\;
\ALT_INV_x_in[1]~input_o\ <= NOT \x_in[1]~input_o\;
\ALT_INV_Load_x~input_o\ <= NOT \Load_x~input_o\;
\ALT_INV_x_in[0]~input_o\ <= NOT \x_in[0]~input_o\;
\ALT_INV_a[3][0]~q\ <= NOT \a[3][0]~q\;
\MulGen:2:Muls|auto_generated|ALT_INV_result_output_reg\(0) <= NOT \MulGen:2:Muls|auto_generated|result_output_reg\(0);
\ALT_INV_a[3][1]~q\ <= NOT \a[3][1]~q\;
\MulGen:2:Muls|auto_generated|ALT_INV_result_output_reg\(1) <= NOT \MulGen:2:Muls|auto_generated|result_output_reg\(1);
\MulGen:3:Muls|auto_generated|ALT_INV_result_output_reg\(2) <= NOT \MulGen:3:Muls|auto_generated|result_output_reg\(2);
\ALT_INV_a[2][0]~q\ <= NOT \a[2][0]~q\;
\MulGen:1:Muls|auto_generated|ALT_INV_result_output_reg\(0) <= NOT \MulGen:1:Muls|auto_generated|result_output_reg\(0);
\ALT_INV_a[3][2]~q\ <= NOT \a[3][2]~q\;
\MulGen:2:Muls|auto_generated|ALT_INV_result_output_reg\(2) <= NOT \MulGen:2:Muls|auto_generated|result_output_reg\(2);
\ALT_INV_a[2][1]~q\ <= NOT \a[2][1]~q\;
\MulGen:1:Muls|auto_generated|ALT_INV_result_output_reg\(1) <= NOT \MulGen:1:Muls|auto_generated|result_output_reg\(1);
\ALT_INV_a[3][3]~q\ <= NOT \a[3][3]~q\;
\MulGen:2:Muls|auto_generated|ALT_INV_result_output_reg\(3) <= NOT \MulGen:2:Muls|auto_generated|result_output_reg\(3);
\MulGen:3:Muls|auto_generated|ALT_INV_result_output_reg\(4) <= NOT \MulGen:3:Muls|auto_generated|result_output_reg\(4);
\ALT_INV_a[1][0]~q\ <= NOT \a[1][0]~q\;
\MulGen:0:Muls|auto_generated|ALT_INV_result_output_reg\(0) <= NOT \MulGen:0:Muls|auto_generated|result_output_reg\(0);
\ALT_INV_a[2][2]~q\ <= NOT \a[2][2]~q\;
\MulGen:1:Muls|auto_generated|ALT_INV_result_output_reg\(2) <= NOT \MulGen:1:Muls|auto_generated|result_output_reg\(2);
\ALT_INV_a[3][4]~q\ <= NOT \a[3][4]~q\;
\MulGen:2:Muls|auto_generated|ALT_INV_result_output_reg\(4) <= NOT \MulGen:2:Muls|auto_generated|result_output_reg\(4);
\ALT_INV_a[1][1]~q\ <= NOT \a[1][1]~q\;
\MulGen:0:Muls|auto_generated|ALT_INV_result_output_reg\(1) <= NOT \MulGen:0:Muls|auto_generated|result_output_reg\(1);
\ALT_INV_a[2][3]~q\ <= NOT \a[2][3]~q\;
\MulGen:1:Muls|auto_generated|ALT_INV_result_output_reg\(3) <= NOT \MulGen:1:Muls|auto_generated|result_output_reg\(3);
\ALT_INV_a[3][5]~q\ <= NOT \a[3][5]~q\;
\MulGen:2:Muls|auto_generated|ALT_INV_result_output_reg\(5) <= NOT \MulGen:2:Muls|auto_generated|result_output_reg\(5);
\MulGen:3:Muls|auto_generated|ALT_INV_result_output_reg\(6) <= NOT \MulGen:3:Muls|auto_generated|result_output_reg\(6);
\ALT_INV_a[1][2]~q\ <= NOT \a[1][2]~q\;
\MulGen:0:Muls|auto_generated|ALT_INV_result_output_reg\(2) <= NOT \MulGen:0:Muls|auto_generated|result_output_reg\(2);
\ALT_INV_a[2][4]~q\ <= NOT \a[2][4]~q\;
\MulGen:1:Muls|auto_generated|ALT_INV_result_output_reg\(4) <= NOT \MulGen:1:Muls|auto_generated|result_output_reg\(4);
\ALT_INV_a[3][6]~q\ <= NOT \a[3][6]~q\;
\MulGen:2:Muls|auto_generated|ALT_INV_result_output_reg\(6) <= NOT \MulGen:2:Muls|auto_generated|result_output_reg\(6);
\MulGen:3:Muls|auto_generated|ALT_INV_result_output_reg\(7) <= NOT \MulGen:3:Muls|auto_generated|result_output_reg\(7);
\ALT_INV_c[2][8]~q\ <= NOT \c[2][8]~q\;
\ALT_INV_c[2][7]~q\ <= NOT \c[2][7]~q\;
\MulGen:3:Muls|auto_generated|ALT_INV_result_output_reg\(17) <= NOT \MulGen:3:Muls|auto_generated|result_output_reg\(17);
\MulGen:3:Muls|auto_generated|ALT_INV_result_output_reg\(16) <= NOT \MulGen:3:Muls|auto_generated|result_output_reg\(16);
\MulGen:3:Muls|auto_generated|ALT_INV_result_output_reg\(14) <= NOT \MulGen:3:Muls|auto_generated|result_output_reg\(14);
\MulGen:3:Muls|auto_generated|ALT_INV_result_output_reg\(13) <= NOT \MulGen:3:Muls|auto_generated|result_output_reg\(13);
\MulGen:3:Muls|auto_generated|ALT_INV_result_output_reg\(12) <= NOT \MulGen:3:Muls|auto_generated|result_output_reg\(12);
\MulGen:3:Muls|auto_generated|ALT_INV_result_output_reg\(11) <= NOT \MulGen:3:Muls|auto_generated|result_output_reg\(11);
\MulGen:3:Muls|auto_generated|ALT_INV_result_output_reg\(10) <= NOT \MulGen:3:Muls|auto_generated|result_output_reg\(10);
\MulGen:3:Muls|auto_generated|ALT_INV_result_output_reg\(9) <= NOT \MulGen:3:Muls|auto_generated|result_output_reg\(9);
\ALT_INV_a[1][3]~q\ <= NOT \a[1][3]~q\;
\MulGen:0:Muls|auto_generated|ALT_INV_result_output_reg\(3) <= NOT \MulGen:0:Muls|auto_generated|result_output_reg\(3);
\ALT_INV_a[2][5]~q\ <= NOT \a[2][5]~q\;
\MulGen:1:Muls|auto_generated|ALT_INV_result_output_reg\(5) <= NOT \MulGen:1:Muls|auto_generated|result_output_reg\(5);
\ALT_INV_a[3][7]~q\ <= NOT \a[3][7]~q\;
\MulGen:2:Muls|auto_generated|ALT_INV_result_output_reg\(7) <= NOT \MulGen:2:Muls|auto_generated|result_output_reg\(7);
\ALT_INV_a[3][18]~q\ <= NOT \a[3][18]~q\;
\MulGen:2:Muls|auto_generated|ALT_INV_result_output_reg\(17) <= NOT \MulGen:2:Muls|auto_generated|result_output_reg\(17);
\ALT_INV_a[3][16]~q\ <= NOT \a[3][16]~q\;
\MulGen:2:Muls|auto_generated|ALT_INV_result_output_reg\(16) <= NOT \MulGen:2:Muls|auto_generated|result_output_reg\(16);
\ALT_INV_a[3][15]~q\ <= NOT \a[3][15]~q\;
\MulGen:2:Muls|auto_generated|ALT_INV_result_output_reg\(15) <= NOT \MulGen:2:Muls|auto_generated|result_output_reg\(15);
\ALT_INV_a[3][14]~q\ <= NOT \a[3][14]~q\;
\MulGen:2:Muls|auto_generated|ALT_INV_result_output_reg\(14) <= NOT \MulGen:2:Muls|auto_generated|result_output_reg\(14);
\ALT_INV_a[3][13]~q\ <= NOT \a[3][13]~q\;
\MulGen:2:Muls|auto_generated|ALT_INV_result_output_reg\(13) <= NOT \MulGen:2:Muls|auto_generated|result_output_reg\(13);
\ALT_INV_a[3][12]~q\ <= NOT \a[3][12]~q\;
\MulGen:2:Muls|auto_generated|ALT_INV_result_output_reg\(12) <= NOT \MulGen:2:Muls|auto_generated|result_output_reg\(12);
\ALT_INV_a[3][11]~q\ <= NOT \a[3][11]~q\;
\MulGen:2:Muls|auto_generated|ALT_INV_result_output_reg\(11) <= NOT \MulGen:2:Muls|auto_generated|result_output_reg\(11);
\ALT_INV_a[3][10]~q\ <= NOT \a[3][10]~q\;
\MulGen:2:Muls|auto_generated|ALT_INV_result_output_reg\(10) <= NOT \MulGen:2:Muls|auto_generated|result_output_reg\(10);
\ALT_INV_a[3][9]~q\ <= NOT \a[3][9]~q\;
\MulGen:2:Muls|auto_generated|ALT_INV_result_output_reg\(9) <= NOT \MulGen:2:Muls|auto_generated|result_output_reg\(9);
\ALT_INV_a[1][4]~q\ <= NOT \a[1][4]~q\;
\MulGen:0:Muls|auto_generated|ALT_INV_result_output_reg\(4) <= NOT \MulGen:0:Muls|auto_generated|result_output_reg\(4);
\ALT_INV_a[2][6]~q\ <= NOT \a[2][6]~q\;
\MulGen:1:Muls|auto_generated|ALT_INV_result_output_reg\(6) <= NOT \MulGen:1:Muls|auto_generated|result_output_reg\(6);
\ALT_INV_a[3][8]~q\ <= NOT \a[3][8]~q\;
\MulGen:2:Muls|auto_generated|ALT_INV_result_output_reg\(8) <= NOT \MulGen:2:Muls|auto_generated|result_output_reg\(8);
\ALT_INV_a[1][5]~q\ <= NOT \a[1][5]~q\;
\MulGen:0:Muls|auto_generated|ALT_INV_result_output_reg\(5) <= NOT \MulGen:0:Muls|auto_generated|result_output_reg\(5);
\ALT_INV_a[2][7]~q\ <= NOT \a[2][7]~q\;
\MulGen:1:Muls|auto_generated|ALT_INV_result_output_reg\(7) <= NOT \MulGen:1:Muls|auto_generated|result_output_reg\(7);
\ALT_INV_a[2][18]~q\ <= NOT \a[2][18]~q\;
\ALT_INV_a[2][17]~q\ <= NOT \a[2][17]~q\;
\MulGen:1:Muls|auto_generated|ALT_INV_result_output_reg\(17) <= NOT \MulGen:1:Muls|auto_generated|result_output_reg\(17);
\ALT_INV_a[2][16]~q\ <= NOT \a[2][16]~q\;
\MulGen:1:Muls|auto_generated|ALT_INV_result_output_reg\(16) <= NOT \MulGen:1:Muls|auto_generated|result_output_reg\(16);
\ALT_INV_a[2][15]~q\ <= NOT \a[2][15]~q\;
\MulGen:1:Muls|auto_generated|ALT_INV_result_output_reg\(15) <= NOT \MulGen:1:Muls|auto_generated|result_output_reg\(15);
\ALT_INV_a[2][14]~q\ <= NOT \a[2][14]~q\;
\MulGen:1:Muls|auto_generated|ALT_INV_result_output_reg\(14) <= NOT \MulGen:1:Muls|auto_generated|result_output_reg\(14);
\ALT_INV_a[2][13]~q\ <= NOT \a[2][13]~q\;
\MulGen:1:Muls|auto_generated|ALT_INV_result_output_reg\(13) <= NOT \MulGen:1:Muls|auto_generated|result_output_reg\(13);
\ALT_INV_a[2][12]~q\ <= NOT \a[2][12]~q\;
\MulGen:1:Muls|auto_generated|ALT_INV_result_output_reg\(12) <= NOT \MulGen:1:Muls|auto_generated|result_output_reg\(12);
\ALT_INV_a[2][11]~q\ <= NOT \a[2][11]~q\;
\MulGen:1:Muls|auto_generated|ALT_INV_result_output_reg\(11) <= NOT \MulGen:1:Muls|auto_generated|result_output_reg\(11);
\ALT_INV_a[2][10]~q\ <= NOT \a[2][10]~q\;
\MulGen:1:Muls|auto_generated|ALT_INV_result_output_reg\(10) <= NOT \MulGen:1:Muls|auto_generated|result_output_reg\(10);
\ALT_INV_a[2][9]~q\ <= NOT \a[2][9]~q\;
\MulGen:1:Muls|auto_generated|ALT_INV_result_output_reg\(9) <= NOT \MulGen:1:Muls|auto_generated|result_output_reg\(9);
\ALT_INV_a[1][6]~q\ <= NOT \a[1][6]~q\;
\MulGen:0:Muls|auto_generated|ALT_INV_result_output_reg\(6) <= NOT \MulGen:0:Muls|auto_generated|result_output_reg\(6);
\ALT_INV_a[2][8]~q\ <= NOT \a[2][8]~q\;
\MulGen:1:Muls|auto_generated|ALT_INV_result_output_reg\(8) <= NOT \MulGen:1:Muls|auto_generated|result_output_reg\(8);
\ALT_INV_a[1][7]~q\ <= NOT \a[1][7]~q\;
\MulGen:0:Muls|auto_generated|ALT_INV_result_output_reg\(7) <= NOT \MulGen:0:Muls|auto_generated|result_output_reg\(7);
\ALT_INV_a[1][18]~q\ <= NOT \a[1][18]~q\;
\ALT_INV_a[1][17]~q\ <= NOT \a[1][17]~q\;
\MulGen:0:Muls|auto_generated|ALT_INV_result_output_reg\(17) <= NOT \MulGen:0:Muls|auto_generated|result_output_reg\(17);
\ALT_INV_a[1][16]~q\ <= NOT \a[1][16]~q\;
\MulGen:0:Muls|auto_generated|ALT_INV_result_output_reg\(16) <= NOT \MulGen:0:Muls|auto_generated|result_output_reg\(16);
\ALT_INV_a[1][15]~q\ <= NOT \a[1][15]~q\;
\MulGen:0:Muls|auto_generated|ALT_INV_result_output_reg\(15) <= NOT \MulGen:0:Muls|auto_generated|result_output_reg\(15);
\ALT_INV_a[1][14]~q\ <= NOT \a[1][14]~q\;
\MulGen:0:Muls|auto_generated|ALT_INV_result_output_reg\(14) <= NOT \MulGen:0:Muls|auto_generated|result_output_reg\(14);
\ALT_INV_a[1][13]~q\ <= NOT \a[1][13]~q\;
\MulGen:0:Muls|auto_generated|ALT_INV_result_output_reg\(13) <= NOT \MulGen:0:Muls|auto_generated|result_output_reg\(13);
\ALT_INV_a[1][12]~q\ <= NOT \a[1][12]~q\;
\MulGen:0:Muls|auto_generated|ALT_INV_result_output_reg\(12) <= NOT \MulGen:0:Muls|auto_generated|result_output_reg\(12);
\ALT_INV_a[1][11]~q\ <= NOT \a[1][11]~q\;
\MulGen:0:Muls|auto_generated|ALT_INV_result_output_reg\(11) <= NOT \MulGen:0:Muls|auto_generated|result_output_reg\(11);
\ALT_INV_a[1][10]~q\ <= NOT \a[1][10]~q\;
\MulGen:0:Muls|auto_generated|ALT_INV_result_output_reg\(10) <= NOT \MulGen:0:Muls|auto_generated|result_output_reg\(10);
\ALT_INV_a[1][9]~q\ <= NOT \a[1][9]~q\;
\MulGen:0:Muls|auto_generated|ALT_INV_result_output_reg\(9) <= NOT \MulGen:0:Muls|auto_generated|result_output_reg\(9);
\ALT_INV_a[1][8]~q\ <= NOT \a[1][8]~q\;
\MulGen:0:Muls|auto_generated|ALT_INV_result_output_reg\(8) <= NOT \MulGen:0:Muls|auto_generated|result_output_reg\(8);
\MulGen:3:Muls|auto_generated|ALT_INV_result_extra0_reg\(16) <= NOT \MulGen:3:Muls|auto_generated|result_extra0_reg\(16);
\MulGen:3:Muls|auto_generated|ALT_INV_result_extra0_reg\(15) <= NOT \MulGen:3:Muls|auto_generated|result_extra0_reg\(15);
\MulGen:3:Muls|auto_generated|ALT_INV_result_extra0_reg\(14) <= NOT \MulGen:3:Muls|auto_generated|result_extra0_reg\(14);
\MulGen:3:Muls|auto_generated|ALT_INV_result_extra0_reg\(13) <= NOT \MulGen:3:Muls|auto_generated|result_extra0_reg\(13);
\MulGen:3:Muls|auto_generated|ALT_INV_result_extra0_reg\(12) <= NOT \MulGen:3:Muls|auto_generated|result_extra0_reg\(12);
\MulGen:3:Muls|auto_generated|ALT_INV_result_extra0_reg\(11) <= NOT \MulGen:3:Muls|auto_generated|result_extra0_reg\(11);
\MulGen:3:Muls|auto_generated|ALT_INV_result_extra0_reg\(9) <= NOT \MulGen:3:Muls|auto_generated|result_extra0_reg\(9);
\MulGen:3:Muls|auto_generated|ALT_INV_result_extra0_reg\(8) <= NOT \MulGen:3:Muls|auto_generated|result_extra0_reg\(8);
\MulGen:3:Muls|auto_generated|ALT_INV_result_extra0_reg\(7) <= NOT \MulGen:3:Muls|auto_generated|result_extra0_reg\(7);
\MulGen:3:Muls|auto_generated|ALT_INV_result_extra0_reg\(6) <= NOT \MulGen:3:Muls|auto_generated|result_extra0_reg\(6);
\MulGen:3:Muls|auto_generated|ALT_INV_result_extra0_reg\(5) <= NOT \MulGen:3:Muls|auto_generated|result_extra0_reg\(5);
\MulGen:3:Muls|auto_generated|ALT_INV_result_extra0_reg\(4) <= NOT \MulGen:3:Muls|auto_generated|result_extra0_reg\(4);
\MulGen:3:Muls|auto_generated|ALT_INV_result_extra0_reg\(2) <= NOT \MulGen:3:Muls|auto_generated|result_extra0_reg\(2);
\MulGen:3:Muls|auto_generated|ALT_INV_result_extra0_reg\(1) <= NOT \MulGen:3:Muls|auto_generated|result_extra0_reg\(1);
\MulGen:3:Muls|auto_generated|ALT_INV_result_extra0_reg\(0) <= NOT \MulGen:3:Muls|auto_generated|result_extra0_reg\(0);
\MulGen:2:Muls|auto_generated|ALT_INV_result_extra0_reg\(17) <= NOT \MulGen:2:Muls|auto_generated|result_extra0_reg\(17);
\MulGen:2:Muls|auto_generated|ALT_INV_result_extra0_reg\(16) <= NOT \MulGen:2:Muls|auto_generated|result_extra0_reg\(16);
\MulGen:2:Muls|auto_generated|ALT_INV_result_extra0_reg\(15) <= NOT \MulGen:2:Muls|auto_generated|result_extra0_reg\(15);
\MulGen:2:Muls|auto_generated|ALT_INV_result_extra0_reg\(14) <= NOT \MulGen:2:Muls|auto_generated|result_extra0_reg\(14);
\MulGen:2:Muls|auto_generated|ALT_INV_result_extra0_reg\(13) <= NOT \MulGen:2:Muls|auto_generated|result_extra0_reg\(13);
\MulGen:2:Muls|auto_generated|ALT_INV_result_extra0_reg\(11) <= NOT \MulGen:2:Muls|auto_generated|result_extra0_reg\(11);
\MulGen:2:Muls|auto_generated|ALT_INV_result_extra0_reg\(10) <= NOT \MulGen:2:Muls|auto_generated|result_extra0_reg\(10);
\MulGen:2:Muls|auto_generated|ALT_INV_result_extra0_reg\(9) <= NOT \MulGen:2:Muls|auto_generated|result_extra0_reg\(9);
\MulGen:2:Muls|auto_generated|ALT_INV_result_extra0_reg\(8) <= NOT \MulGen:2:Muls|auto_generated|result_extra0_reg\(8);
\MulGen:2:Muls|auto_generated|ALT_INV_result_extra0_reg\(4) <= NOT \MulGen:2:Muls|auto_generated|result_extra0_reg\(4);
\MulGen:1:Muls|auto_generated|ALT_INV_result_extra0_reg\(17) <= NOT \MulGen:1:Muls|auto_generated|result_extra0_reg\(17);
\MulGen:1:Muls|auto_generated|ALT_INV_result_extra0_reg\(15) <= NOT \MulGen:1:Muls|auto_generated|result_extra0_reg\(15);
\MulGen:1:Muls|auto_generated|ALT_INV_result_extra0_reg\(14) <= NOT \MulGen:1:Muls|auto_generated|result_extra0_reg\(14);
\MulGen:1:Muls|auto_generated|ALT_INV_result_extra0_reg\(13) <= NOT \MulGen:1:Muls|auto_generated|result_extra0_reg\(13);
\MulGen:1:Muls|auto_generated|ALT_INV_result_extra0_reg\(12) <= NOT \MulGen:1:Muls|auto_generated|result_extra0_reg\(12);
\MulGen:1:Muls|auto_generated|ALT_INV_result_extra0_reg\(11) <= NOT \MulGen:1:Muls|auto_generated|result_extra0_reg\(11);
\MulGen:1:Muls|auto_generated|ALT_INV_result_extra0_reg\(10) <= NOT \MulGen:1:Muls|auto_generated|result_extra0_reg\(10);
\MulGen:1:Muls|auto_generated|ALT_INV_result_extra0_reg\(9) <= NOT \MulGen:1:Muls|auto_generated|result_extra0_reg\(9);
\MulGen:1:Muls|auto_generated|ALT_INV_result_extra0_reg\(8) <= NOT \MulGen:1:Muls|auto_generated|result_extra0_reg\(8);
\MulGen:1:Muls|auto_generated|ALT_INV_result_extra0_reg\(7) <= NOT \MulGen:1:Muls|auto_generated|result_extra0_reg\(7);
\MulGen:1:Muls|auto_generated|ALT_INV_result_extra0_reg\(6) <= NOT \MulGen:1:Muls|auto_generated|result_extra0_reg\(6);
\MulGen:1:Muls|auto_generated|ALT_INV_result_extra0_reg\(4) <= NOT \MulGen:1:Muls|auto_generated|result_extra0_reg\(4);
\MulGen:1:Muls|auto_generated|ALT_INV_result_extra0_reg\(3) <= NOT \MulGen:1:Muls|auto_generated|result_extra0_reg\(3);
\MulGen:1:Muls|auto_generated|ALT_INV_result_extra0_reg\(1) <= NOT \MulGen:1:Muls|auto_generated|result_extra0_reg\(1);
\MulGen:0:Muls|auto_generated|ALT_INV_result_extra0_reg\(17) <= NOT \MulGen:0:Muls|auto_generated|result_extra0_reg\(17);
\MulGen:0:Muls|auto_generated|ALT_INV_result_extra0_reg\(16) <= NOT \MulGen:0:Muls|auto_generated|result_extra0_reg\(16);
\MulGen:0:Muls|auto_generated|ALT_INV_result_extra0_reg\(15) <= NOT \MulGen:0:Muls|auto_generated|result_extra0_reg\(15);
\MulGen:0:Muls|auto_generated|ALT_INV_result_extra0_reg\(14) <= NOT \MulGen:0:Muls|auto_generated|result_extra0_reg\(14);
\MulGen:0:Muls|auto_generated|ALT_INV_result_extra0_reg\(13) <= NOT \MulGen:0:Muls|auto_generated|result_extra0_reg\(13);
\MulGen:0:Muls|auto_generated|ALT_INV_result_extra0_reg\(12) <= NOT \MulGen:0:Muls|auto_generated|result_extra0_reg\(12);
\MulGen:0:Muls|auto_generated|ALT_INV_result_extra0_reg\(11) <= NOT \MulGen:0:Muls|auto_generated|result_extra0_reg\(11);
\MulGen:0:Muls|auto_generated|ALT_INV_result_extra0_reg\(8) <= NOT \MulGen:0:Muls|auto_generated|result_extra0_reg\(8);
\MulGen:0:Muls|auto_generated|ALT_INV_result_extra0_reg\(7) <= NOT \MulGen:0:Muls|auto_generated|result_extra0_reg\(7);
\MulGen:0:Muls|auto_generated|ALT_INV_result_extra0_reg\(6) <= NOT \MulGen:0:Muls|auto_generated|result_extra0_reg\(6);
\MulGen:0:Muls|auto_generated|ALT_INV_result_extra0_reg\(5) <= NOT \MulGen:0:Muls|auto_generated|result_extra0_reg\(5);

-- Location: IOOBUF_X89_Y9_N22
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

-- Location: IOOBUF_X89_Y8_N22
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

-- Location: IOOBUF_X76_Y0_N53
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

-- Location: IOOBUF_X89_Y6_N5
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

-- Location: IOOBUF_X89_Y9_N5
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

-- Location: IOOBUF_X89_Y9_N56
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

-- Location: IOOBUF_X78_Y0_N36
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

-- Location: IOOBUF_X89_Y9_N39
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

-- Location: IOOBUF_X89_Y6_N56
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

-- Location: IOOBUF_X82_Y0_N76
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

-- Location: IOOBUF_X80_Y0_N36
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

-- Location: IOIBUF_X82_Y0_N41
\x_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(0),
	o => \x_in[0]~input_o\);

-- Location: MLABCELL_X84_Y4_N24
\x[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[0]~feeder_combout\ = ( \x_in[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_x_in[0]~input_o\,
	combout => \x[0]~feeder_combout\);

-- Location: IOIBUF_X89_Y4_N61
\Load_x~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Load_x,
	o => \Load_x~input_o\);

-- Location: FF_X84_Y4_N26
\x[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x[0]~feeder_combout\,
	ena => \Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(0));

-- Location: IOIBUF_X88_Y0_N2
\x_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(1),
	o => \x_in[1]~input_o\);

-- Location: MLABCELL_X87_Y4_N51
\x[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[1]~feeder_combout\ = ( \x_in[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_x_in[1]~input_o\,
	combout => \x[1]~feeder_combout\);

-- Location: FF_X87_Y4_N53
\x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x[1]~feeder_combout\,
	ena => \Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(1));

-- Location: IOIBUF_X84_Y0_N1
\x_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(2),
	o => \x_in[2]~input_o\);

-- Location: MLABCELL_X84_Y4_N42
\x[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[2]~feeder_combout\ = ( \x_in[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_x_in[2]~input_o\,
	combout => \x[2]~feeder_combout\);

-- Location: FF_X84_Y4_N44
\x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x[2]~feeder_combout\,
	ena => \Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(2));

-- Location: IOIBUF_X84_Y0_N18
\x_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(3),
	o => \x_in[3]~input_o\);

-- Location: MLABCELL_X84_Y4_N33
\x[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[3]~feeder_combout\ = ( \x_in[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_x_in[3]~input_o\,
	combout => \x[3]~feeder_combout\);

-- Location: FF_X84_Y4_N35
\x[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x[3]~feeder_combout\,
	ena => \Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(3));

-- Location: IOIBUF_X82_Y0_N92
\x_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(4),
	o => \x_in[4]~input_o\);

-- Location: FF_X84_Y4_N56
\x[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x_in[4]~input_o\,
	sload => VCC,
	ena => \Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(4));

-- Location: IOIBUF_X84_Y0_N52
\x_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(5),
	o => \x_in[5]~input_o\);

-- Location: MLABCELL_X84_Y4_N36
\x[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[5]~feeder_combout\ = ( \x_in[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_x_in[5]~input_o\,
	combout => \x[5]~feeder_combout\);

-- Location: FF_X84_Y4_N38
\x[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x[5]~feeder_combout\,
	ena => \Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(5));

-- Location: IOIBUF_X89_Y4_N95
\x_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(6),
	o => \x_in[6]~input_o\);

-- Location: FF_X84_Y4_N23
\x[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x_in[6]~input_o\,
	sload => VCC,
	ena => \Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(6));

-- Location: IOIBUF_X84_Y0_N35
\x_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(7),
	o => \x_in[7]~input_o\);

-- Location: MLABCELL_X84_Y4_N48
\x[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[7]~feeder_combout\ = ( \x_in[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_x_in[7]~input_o\,
	combout => \x[7]~feeder_combout\);

-- Location: FF_X84_Y4_N50
\x[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x[7]~feeder_combout\,
	ena => \Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(7));

-- Location: IOIBUF_X89_Y4_N44
\x_in[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(8),
	o => \x_in[8]~input_o\);

-- Location: MLABCELL_X84_Y4_N9
\x[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[8]~feeder_combout\ = ( \x_in[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_x_in[8]~input_o\,
	combout => \x[8]~feeder_combout\);

-- Location: FF_X84_Y4_N11
\x[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x[8]~feeder_combout\,
	ena => \Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(8));

-- Location: IOIBUF_X80_Y0_N52
\c_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in(0),
	o => \c_in[0]~input_o\);

-- Location: FF_X83_Y4_N44
\c[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c_in[0]~input_o\,
	sload => VCC,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[3][0]~q\);

-- Location: FF_X83_Y4_N56
\c[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c[3][0]~q\,
	sload => VCC,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[2][0]~q\);

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

-- Location: MLABCELL_X87_Y4_N3
\c[3][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \c[3][1]~feeder_combout\ = ( \c_in[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_c_in[1]~input_o\,
	combout => \c[3][1]~feeder_combout\);

-- Location: FF_X87_Y4_N5
\c[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \c[3][1]~feeder_combout\,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[3][1]~q\);

-- Location: FF_X87_Y4_N2
\c[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c[3][1]~q\,
	sload => VCC,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[2][1]~q\);

-- Location: IOIBUF_X82_Y0_N58
\c_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in(2),
	o => \c_in[2]~input_o\);

-- Location: FF_X83_Y4_N20
\c[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c_in[2]~input_o\,
	sload => VCC,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[3][2]~q\);

-- Location: FF_X83_Y4_N23
\c[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c[3][2]~q\,
	sload => VCC,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[2][2]~q\);

-- Location: IOIBUF_X80_Y0_N18
\c_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in(3),
	o => \c_in[3]~input_o\);

-- Location: FF_X83_Y4_N35
\c[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c_in[3]~input_o\,
	sload => VCC,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[3][3]~q\);

-- Location: FF_X83_Y4_N32
\c[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c[3][3]~q\,
	sload => VCC,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[2][3]~q\);

-- Location: IOIBUF_X80_Y0_N1
\c_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in(4),
	o => \c_in[4]~input_o\);

-- Location: FF_X83_Y4_N50
\c[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c_in[4]~input_o\,
	sload => VCC,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[3][4]~q\);

-- Location: FF_X83_Y4_N53
\c[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c[3][4]~q\,
	sload => VCC,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[2][4]~q\);

-- Location: IOIBUF_X89_Y6_N21
\c_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in(5),
	o => \c_in[5]~input_o\);

-- Location: MLABCELL_X87_Y4_N21
\c[3][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \c[3][5]~feeder_combout\ = ( \c_in[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_c_in[5]~input_o\,
	combout => \c[3][5]~feeder_combout\);

-- Location: FF_X87_Y4_N23
\c[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \c[3][5]~feeder_combout\,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[3][5]~q\);

-- Location: FF_X87_Y4_N20
\c[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c[3][5]~q\,
	sload => VCC,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[2][5]~q\);

-- Location: IOIBUF_X88_Y0_N53
\c_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in(6),
	o => \c_in[6]~input_o\);

-- Location: FF_X87_Y4_N11
\c[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c_in[6]~input_o\,
	sload => VCC,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[3][6]~q\);

-- Location: FF_X87_Y4_N29
\c[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c[3][6]~q\,
	sload => VCC,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[2][6]~q\);

-- Location: IOIBUF_X88_Y0_N36
\c_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in(7),
	o => \c_in[7]~input_o\);

-- Location: MLABCELL_X87_Y4_N36
\c[3][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \c[3][7]~feeder_combout\ = \c_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_c_in[7]~input_o\,
	combout => \c[3][7]~feeder_combout\);

-- Location: FF_X87_Y4_N37
\c[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \c[3][7]~feeder_combout\,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[3][7]~q\);

-- Location: FF_X87_Y4_N38
\c[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c[3][7]~q\,
	sload => VCC,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[2][7]~q\);

-- Location: IOIBUF_X89_Y4_N78
\c_in[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in(8),
	o => \c_in[8]~input_o\);

-- Location: FF_X87_Y4_N44
\c[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c_in[8]~input_o\,
	sload => VCC,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[3][8]~q\);

-- Location: FF_X87_Y4_N59
\c[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c[3][8]~q\,
	sload => VCC,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[2][8]~q\);

-- Location: DSP_X86_Y4_N0
\MulGen:2:Muls|auto_generated|Mult0~mac\ : cyclonev_mac
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
	aclr => \MulGen:2:Muls|auto_generated|Mult0~mac_ACLR_bus\,
	clk => \MulGen:2:Muls|auto_generated|Mult0~mac_CLK_bus\,
	ena => \MulGen:2:Muls|auto_generated|Mult0~mac_ENA_bus\,
	ax => \MulGen:2:Muls|auto_generated|Mult0~mac_AX_bus\,
	ay => \MulGen:2:Muls|auto_generated|Mult0~mac_AY_bus\,
	bx => \MulGen:2:Muls|auto_generated|Mult0~mac_BX_bus\,
	by => \MulGen:2:Muls|auto_generated|Mult0~mac_BY_bus\,
	resulta => \MulGen:2:Muls|auto_generated|Mult0~mac_RESULTA_bus\);

-- Location: LABCELL_X85_Y5_N51
\MulGen:2:Muls|auto_generated|result_output_reg[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:2:Muls|auto_generated|result_output_reg[8]~feeder_combout\ = ( \MulGen:2:Muls|auto_generated|result_extra0_reg\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:2:Muls|auto_generated|ALT_INV_result_extra0_reg\(8),
	combout => \MulGen:2:Muls|auto_generated|result_output_reg[8]~feeder_combout\);

-- Location: FF_X85_Y5_N53
\MulGen:2:Muls|auto_generated|result_output_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:2:Muls|auto_generated|result_output_reg[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:2:Muls|auto_generated|result_output_reg\(8));

-- Location: DSP_X86_Y6_N0
\MulGen:3:Muls|auto_generated|Mult0~mac\ : cyclonev_mac
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
	aclr => \MulGen:3:Muls|auto_generated|Mult0~mac_ACLR_bus\,
	clk => \MulGen:3:Muls|auto_generated|Mult0~mac_CLK_bus\,
	ena => \MulGen:3:Muls|auto_generated|Mult0~mac_ENA_bus\,
	ax => \MulGen:3:Muls|auto_generated|Mult0~mac_AX_bus\,
	ay => \MulGen:3:Muls|auto_generated|Mult0~mac_AY_bus\,
	bx => \MulGen:3:Muls|auto_generated|Mult0~mac_BX_bus\,
	by => \MulGen:3:Muls|auto_generated|Mult0~mac_BY_bus\,
	resulta => \MulGen:3:Muls|auto_generated|Mult0~mac_RESULTA_bus\);

-- Location: MLABCELL_X87_Y6_N39
\MulGen:3:Muls|auto_generated|result_output_reg[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:3:Muls|auto_generated|result_output_reg[8]~feeder_combout\ = ( \MulGen:3:Muls|auto_generated|result_extra0_reg\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:3:Muls|auto_generated|ALT_INV_result_extra0_reg\(8),
	combout => \MulGen:3:Muls|auto_generated|result_output_reg[8]~feeder_combout\);

-- Location: FF_X87_Y6_N40
\MulGen:3:Muls|auto_generated|result_output_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:3:Muls|auto_generated|result_output_reg[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:3:Muls|auto_generated|result_output_reg\(8));

-- Location: FF_X85_Y5_N11
\a[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MulGen:3:Muls|auto_generated|result_output_reg\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[3][8]~q\);

-- Location: FF_X85_Y5_N41
\MulGen:2:Muls|auto_generated|result_output_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MulGen:2:Muls|auto_generated|result_extra0_reg\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:2:Muls|auto_generated|result_output_reg\(7));

-- Location: LABCELL_X85_Y6_N3
\MulGen:3:Muls|auto_generated|result_output_reg[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:3:Muls|auto_generated|result_output_reg[7]~feeder_combout\ = ( \MulGen:3:Muls|auto_generated|result_extra0_reg\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:3:Muls|auto_generated|ALT_INV_result_extra0_reg\(7),
	combout => \MulGen:3:Muls|auto_generated|result_output_reg[7]~feeder_combout\);

-- Location: FF_X85_Y6_N4
\MulGen:3:Muls|auto_generated|result_output_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:3:Muls|auto_generated|result_output_reg[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:3:Muls|auto_generated|result_output_reg\(7));

-- Location: LABCELL_X85_Y5_N15
\a[3][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \a[3][7]~feeder_combout\ = ( \MulGen:3:Muls|auto_generated|result_output_reg\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:3:Muls|auto_generated|ALT_INV_result_output_reg\(7),
	combout => \a[3][7]~feeder_combout\);

-- Location: FF_X85_Y5_N17
\a[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \a[3][7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[3][7]~q\);

-- Location: LABCELL_X85_Y6_N45
\MulGen:3:Muls|auto_generated|result_output_reg[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:3:Muls|auto_generated|result_output_reg[6]~feeder_combout\ = ( \MulGen:3:Muls|auto_generated|result_extra0_reg\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:3:Muls|auto_generated|ALT_INV_result_extra0_reg\(6),
	combout => \MulGen:3:Muls|auto_generated|result_output_reg[6]~feeder_combout\);

-- Location: FF_X85_Y6_N46
\MulGen:3:Muls|auto_generated|result_output_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:3:Muls|auto_generated|result_output_reg[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:3:Muls|auto_generated|result_output_reg\(6));

-- Location: LABCELL_X85_Y5_N45
\a[3][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \a[3][6]~feeder_combout\ = ( \MulGen:3:Muls|auto_generated|result_output_reg\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:3:Muls|auto_generated|ALT_INV_result_output_reg\(6),
	combout => \a[3][6]~feeder_combout\);

-- Location: FF_X85_Y5_N47
\a[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \a[3][6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[3][6]~q\);

-- Location: FF_X85_Y4_N26
\MulGen:2:Muls|auto_generated|result_output_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MulGen:2:Muls|auto_generated|result_extra0_reg\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:2:Muls|auto_generated|result_output_reg\(6));

-- Location: LABCELL_X85_Y6_N0
\MulGen:3:Muls|auto_generated|result_output_reg[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:3:Muls|auto_generated|result_output_reg[5]~feeder_combout\ = ( \MulGen:3:Muls|auto_generated|result_extra0_reg\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:3:Muls|auto_generated|ALT_INV_result_extra0_reg\(5),
	combout => \MulGen:3:Muls|auto_generated|result_output_reg[5]~feeder_combout\);

-- Location: FF_X85_Y6_N1
\MulGen:3:Muls|auto_generated|result_output_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:3:Muls|auto_generated|result_output_reg[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:3:Muls|auto_generated|result_output_reg\(5));

-- Location: FF_X85_Y5_N26
\a[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MulGen:3:Muls|auto_generated|result_output_reg\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[3][5]~q\);

-- Location: FF_X85_Y5_N4
\MulGen:2:Muls|auto_generated|result_output_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MulGen:2:Muls|auto_generated|result_extra0_reg\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:2:Muls|auto_generated|result_output_reg\(5));

-- Location: MLABCELL_X87_Y6_N30
\MulGen:3:Muls|auto_generated|result_output_reg[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:3:Muls|auto_generated|result_output_reg[4]~feeder_combout\ = ( \MulGen:3:Muls|auto_generated|result_extra0_reg\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:3:Muls|auto_generated|ALT_INV_result_extra0_reg\(4),
	combout => \MulGen:3:Muls|auto_generated|result_output_reg[4]~feeder_combout\);

-- Location: FF_X87_Y6_N31
\MulGen:3:Muls|auto_generated|result_output_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:3:Muls|auto_generated|result_output_reg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:3:Muls|auto_generated|result_output_reg\(4));

-- Location: LABCELL_X85_Y5_N30
\a[3][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \a[3][4]~feeder_combout\ = ( \MulGen:3:Muls|auto_generated|result_output_reg\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:3:Muls|auto_generated|ALT_INV_result_output_reg\(4),
	combout => \a[3][4]~feeder_combout\);

-- Location: FF_X85_Y5_N32
\a[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \a[3][4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[3][4]~q\);

-- Location: LABCELL_X85_Y5_N27
\MulGen:2:Muls|auto_generated|result_output_reg[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:2:Muls|auto_generated|result_output_reg[4]~feeder_combout\ = ( \MulGen:2:Muls|auto_generated|result_extra0_reg\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:2:Muls|auto_generated|ALT_INV_result_extra0_reg\(4),
	combout => \MulGen:2:Muls|auto_generated|result_output_reg[4]~feeder_combout\);

-- Location: FF_X85_Y5_N29
\MulGen:2:Muls|auto_generated|result_output_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:2:Muls|auto_generated|result_output_reg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:2:Muls|auto_generated|result_output_reg\(4));

-- Location: FF_X85_Y5_N14
\MulGen:2:Muls|auto_generated|result_output_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MulGen:2:Muls|auto_generated|result_extra0_reg\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:2:Muls|auto_generated|result_output_reg\(3));

-- Location: FF_X87_Y6_N49
\MulGen:3:Muls|auto_generated|result_output_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MulGen:3:Muls|auto_generated|result_extra0_reg\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:3:Muls|auto_generated|result_output_reg\(3));

-- Location: FF_X84_Y5_N29
\a[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MulGen:3:Muls|auto_generated|result_output_reg\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[3][3]~q\);

-- Location: FF_X85_Y5_N35
\MulGen:2:Muls|auto_generated|result_output_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MulGen:2:Muls|auto_generated|result_extra0_reg\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:2:Muls|auto_generated|result_output_reg\(2));

-- Location: MLABCELL_X87_Y6_N48
\MulGen:3:Muls|auto_generated|result_output_reg[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:3:Muls|auto_generated|result_output_reg[2]~feeder_combout\ = ( \MulGen:3:Muls|auto_generated|result_extra0_reg\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:3:Muls|auto_generated|ALT_INV_result_extra0_reg\(2),
	combout => \MulGen:3:Muls|auto_generated|result_output_reg[2]~feeder_combout\);

-- Location: FF_X87_Y6_N50
\MulGen:3:Muls|auto_generated|result_output_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:3:Muls|auto_generated|result_output_reg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:3:Muls|auto_generated|result_output_reg\(2));

-- Location: LABCELL_X85_Y5_N36
\a[3][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \a[3][2]~feeder_combout\ = ( \MulGen:3:Muls|auto_generated|result_output_reg\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:3:Muls|auto_generated|ALT_INV_result_output_reg\(2),
	combout => \a[3][2]~feeder_combout\);

-- Location: FF_X85_Y5_N38
\a[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \a[3][2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[3][2]~q\);

-- Location: LABCELL_X85_Y6_N39
\MulGen:3:Muls|auto_generated|result_output_reg[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:3:Muls|auto_generated|result_output_reg[1]~feeder_combout\ = ( \MulGen:3:Muls|auto_generated|result_extra0_reg\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:3:Muls|auto_generated|ALT_INV_result_extra0_reg\(1),
	combout => \MulGen:3:Muls|auto_generated|result_output_reg[1]~feeder_combout\);

-- Location: FF_X85_Y6_N40
\MulGen:3:Muls|auto_generated|result_output_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:3:Muls|auto_generated|result_output_reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:3:Muls|auto_generated|result_output_reg\(1));

-- Location: FF_X84_Y5_N53
\a[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MulGen:3:Muls|auto_generated|result_output_reg\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[3][1]~q\);

-- Location: FF_X85_Y5_N23
\MulGen:2:Muls|auto_generated|result_output_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MulGen:2:Muls|auto_generated|result_extra0_reg\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:2:Muls|auto_generated|result_output_reg\(1));

-- Location: FF_X85_Y5_N2
\MulGen:2:Muls|auto_generated|result_output_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MulGen:2:Muls|auto_generated|result_extra0_reg\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:2:Muls|auto_generated|result_output_reg\(0));

-- Location: LABCELL_X85_Y6_N9
\MulGen:3:Muls|auto_generated|result_output_reg[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:3:Muls|auto_generated|result_output_reg[0]~feeder_combout\ = ( \MulGen:3:Muls|auto_generated|result_extra0_reg\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:3:Muls|auto_generated|ALT_INV_result_extra0_reg\(0),
	combout => \MulGen:3:Muls|auto_generated|result_output_reg[0]~feeder_combout\);

-- Location: FF_X85_Y6_N10
\MulGen:3:Muls|auto_generated|result_output_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:3:Muls|auto_generated|result_output_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:3:Muls|auto_generated|result_output_reg\(0));

-- Location: FF_X84_Y5_N59
\a[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MulGen:3:Muls|auto_generated|result_output_reg\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[3][0]~q\);

-- Location: MLABCELL_X84_Y5_N0
\Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~73_sumout\ = SUM(( \a[3][0]~q\ ) + ( \MulGen:2:Muls|auto_generated|result_output_reg\(0) ) + ( !VCC ))
-- \Add2~74\ = CARRY(( \a[3][0]~q\ ) + ( \MulGen:2:Muls|auto_generated|result_output_reg\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MulGen:2:Muls|auto_generated|ALT_INV_result_output_reg\(0),
	datad => \ALT_INV_a[3][0]~q\,
	cin => GND,
	sumout => \Add2~73_sumout\,
	cout => \Add2~74\);

-- Location: MLABCELL_X84_Y5_N3
\Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~69_sumout\ = SUM(( \MulGen:2:Muls|auto_generated|result_output_reg\(1) ) + ( \a[3][1]~q\ ) + ( \Add2~74\ ))
-- \Add2~70\ = CARRY(( \MulGen:2:Muls|auto_generated|result_output_reg\(1) ) + ( \a[3][1]~q\ ) + ( \Add2~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[3][1]~q\,
	datad => \MulGen:2:Muls|auto_generated|ALT_INV_result_output_reg\(1),
	cin => \Add2~74\,
	sumout => \Add2~69_sumout\,
	cout => \Add2~70\);

-- Location: MLABCELL_X84_Y5_N6
\Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~65_sumout\ = SUM(( \a[3][2]~q\ ) + ( \MulGen:2:Muls|auto_generated|result_output_reg\(2) ) + ( \Add2~70\ ))
-- \Add2~66\ = CARRY(( \a[3][2]~q\ ) + ( \MulGen:2:Muls|auto_generated|result_output_reg\(2) ) + ( \Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MulGen:2:Muls|auto_generated|ALT_INV_result_output_reg\(2),
	datad => \ALT_INV_a[3][2]~q\,
	cin => \Add2~70\,
	sumout => \Add2~65_sumout\,
	cout => \Add2~66\);

-- Location: MLABCELL_X84_Y5_N9
\Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~61_sumout\ = SUM(( \a[3][3]~q\ ) + ( \MulGen:2:Muls|auto_generated|result_output_reg\(3) ) + ( \Add2~66\ ))
-- \Add2~62\ = CARRY(( \a[3][3]~q\ ) + ( \MulGen:2:Muls|auto_generated|result_output_reg\(3) ) + ( \Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MulGen:2:Muls|auto_generated|ALT_INV_result_output_reg\(3),
	datad => \ALT_INV_a[3][3]~q\,
	cin => \Add2~66\,
	sumout => \Add2~61_sumout\,
	cout => \Add2~62\);

-- Location: MLABCELL_X84_Y5_N12
\Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~57_sumout\ = SUM(( \MulGen:2:Muls|auto_generated|result_output_reg\(4) ) + ( \a[3][4]~q\ ) + ( \Add2~62\ ))
-- \Add2~58\ = CARRY(( \MulGen:2:Muls|auto_generated|result_output_reg\(4) ) + ( \a[3][4]~q\ ) + ( \Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[3][4]~q\,
	datad => \MulGen:2:Muls|auto_generated|ALT_INV_result_output_reg\(4),
	cin => \Add2~62\,
	sumout => \Add2~57_sumout\,
	cout => \Add2~58\);

-- Location: MLABCELL_X84_Y5_N15
\Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~53_sumout\ = SUM(( \MulGen:2:Muls|auto_generated|result_output_reg\(5) ) + ( \a[3][5]~q\ ) + ( \Add2~58\ ))
-- \Add2~54\ = CARRY(( \MulGen:2:Muls|auto_generated|result_output_reg\(5) ) + ( \a[3][5]~q\ ) + ( \Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[3][5]~q\,
	datad => \MulGen:2:Muls|auto_generated|ALT_INV_result_output_reg\(5),
	cin => \Add2~58\,
	sumout => \Add2~53_sumout\,
	cout => \Add2~54\);

-- Location: MLABCELL_X84_Y5_N18
\Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~49_sumout\ = SUM(( \MulGen:2:Muls|auto_generated|result_output_reg\(6) ) + ( \a[3][6]~q\ ) + ( \Add2~54\ ))
-- \Add2~50\ = CARRY(( \MulGen:2:Muls|auto_generated|result_output_reg\(6) ) + ( \a[3][6]~q\ ) + ( \Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[3][6]~q\,
	datad => \MulGen:2:Muls|auto_generated|ALT_INV_result_output_reg\(6),
	cin => \Add2~54\,
	sumout => \Add2~49_sumout\,
	cout => \Add2~50\);

-- Location: MLABCELL_X84_Y5_N21
\Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~45_sumout\ = SUM(( \a[3][7]~q\ ) + ( \MulGen:2:Muls|auto_generated|result_output_reg\(7) ) + ( \Add2~50\ ))
-- \Add2~46\ = CARRY(( \a[3][7]~q\ ) + ( \MulGen:2:Muls|auto_generated|result_output_reg\(7) ) + ( \Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MulGen:2:Muls|auto_generated|ALT_INV_result_output_reg\(7),
	datad => \ALT_INV_a[3][7]~q\,
	cin => \Add2~50\,
	sumout => \Add2~45_sumout\,
	cout => \Add2~46\);

-- Location: MLABCELL_X84_Y5_N24
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( \a[3][8]~q\ ) + ( \MulGen:2:Muls|auto_generated|result_output_reg\(8) ) + ( \Add2~46\ ))
-- \Add2~2\ = CARRY(( \a[3][8]~q\ ) + ( \MulGen:2:Muls|auto_generated|result_output_reg\(8) ) + ( \Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MulGen:2:Muls|auto_generated|ALT_INV_result_output_reg\(8),
	datad => \ALT_INV_a[3][8]~q\,
	cin => \Add2~46\,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: FF_X84_Y5_N26
\a[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][8]~q\);

-- Location: FF_X83_Y4_N41
\c[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c[2][0]~q\,
	sload => VCC,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[1][0]~q\);

-- Location: FF_X87_Y4_N32
\c[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c[2][1]~q\,
	sload => VCC,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[1][1]~q\);

-- Location: FF_X83_Y4_N26
\c[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c[2][2]~q\,
	sload => VCC,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[1][2]~q\);

-- Location: FF_X83_Y4_N11
\c[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c[2][3]~q\,
	sload => VCC,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[1][3]~q\);

-- Location: FF_X83_Y4_N17
\c[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c[2][4]~q\,
	sload => VCC,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[1][4]~q\);

-- Location: FF_X87_Y4_N17
\c[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c[2][5]~q\,
	sload => VCC,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[1][5]~q\);

-- Location: FF_X87_Y4_N26
\c[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c[2][6]~q\,
	sload => VCC,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[1][6]~q\);

-- Location: MLABCELL_X87_Y4_N39
\c[1][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \c[1][7]~feeder_combout\ = \c[2][7]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_c[2][7]~q\,
	combout => \c[1][7]~feeder_combout\);

-- Location: FF_X87_Y4_N41
\c[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \c[1][7]~feeder_combout\,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[1][7]~q\);

-- Location: LABCELL_X83_Y4_N0
\c[1][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \c[1][8]~feeder_combout\ = ( \c[2][8]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_c[2][8]~q\,
	combout => \c[1][8]~feeder_combout\);

-- Location: FF_X83_Y4_N1
\c[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \c[1][8]~feeder_combout\,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[1][8]~q\);

-- Location: DSP_X86_Y8_N0
\MulGen:1:Muls|auto_generated|Mult0~mac\ : cyclonev_mac
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
	aclr => \MulGen:1:Muls|auto_generated|Mult0~mac_ACLR_bus\,
	clk => \MulGen:1:Muls|auto_generated|Mult0~mac_CLK_bus\,
	ena => \MulGen:1:Muls|auto_generated|Mult0~mac_ENA_bus\,
	ax => \MulGen:1:Muls|auto_generated|Mult0~mac_AX_bus\,
	ay => \MulGen:1:Muls|auto_generated|Mult0~mac_AY_bus\,
	bx => \MulGen:1:Muls|auto_generated|Mult0~mac_BX_bus\,
	by => \MulGen:1:Muls|auto_generated|Mult0~mac_BY_bus\,
	resulta => \MulGen:1:Muls|auto_generated|Mult0~mac_RESULTA_bus\);

-- Location: LABCELL_X83_Y6_N12
\MulGen:1:Muls|auto_generated|result_output_reg[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:1:Muls|auto_generated|result_output_reg[8]~feeder_combout\ = ( \MulGen:1:Muls|auto_generated|result_extra0_reg\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:1:Muls|auto_generated|ALT_INV_result_extra0_reg\(8),
	combout => \MulGen:1:Muls|auto_generated|result_output_reg[8]~feeder_combout\);

-- Location: FF_X83_Y6_N13
\MulGen:1:Muls|auto_generated|result_output_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:1:Muls|auto_generated|result_output_reg[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:1:Muls|auto_generated|result_output_reg\(8));

-- Location: FF_X84_Y5_N22
\a[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][7]~q\);

-- Location: LABCELL_X83_Y6_N24
\MulGen:1:Muls|auto_generated|result_output_reg[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:1:Muls|auto_generated|result_output_reg[7]~feeder_combout\ = ( \MulGen:1:Muls|auto_generated|result_extra0_reg\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:1:Muls|auto_generated|ALT_INV_result_extra0_reg\(7),
	combout => \MulGen:1:Muls|auto_generated|result_output_reg[7]~feeder_combout\);

-- Location: FF_X83_Y6_N25
\MulGen:1:Muls|auto_generated|result_output_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:1:Muls|auto_generated|result_output_reg[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:1:Muls|auto_generated|result_output_reg\(7));

-- Location: LABCELL_X85_Y5_N48
\MulGen:1:Muls|auto_generated|result_output_reg[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:1:Muls|auto_generated|result_output_reg[6]~feeder_combout\ = ( \MulGen:1:Muls|auto_generated|result_extra0_reg\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:1:Muls|auto_generated|ALT_INV_result_extra0_reg\(6),
	combout => \MulGen:1:Muls|auto_generated|result_output_reg[6]~feeder_combout\);

-- Location: FF_X85_Y5_N49
\MulGen:1:Muls|auto_generated|result_output_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:1:Muls|auto_generated|result_output_reg[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:1:Muls|auto_generated|result_output_reg\(6));

-- Location: FF_X84_Y5_N19
\a[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][6]~q\);

-- Location: FF_X82_Y5_N19
\MulGen:1:Muls|auto_generated|result_output_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MulGen:1:Muls|auto_generated|result_extra0_reg\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:1:Muls|auto_generated|result_output_reg\(5));

-- Location: FF_X84_Y5_N17
\a[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][5]~q\);

-- Location: LABCELL_X81_Y5_N27
\MulGen:1:Muls|auto_generated|result_output_reg[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:1:Muls|auto_generated|result_output_reg[4]~feeder_combout\ = ( \MulGen:1:Muls|auto_generated|result_extra0_reg\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:1:Muls|auto_generated|ALT_INV_result_extra0_reg\(4),
	combout => \MulGen:1:Muls|auto_generated|result_output_reg[4]~feeder_combout\);

-- Location: FF_X81_Y5_N28
\MulGen:1:Muls|auto_generated|result_output_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:1:Muls|auto_generated|result_output_reg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:1:Muls|auto_generated|result_output_reg\(4));

-- Location: FF_X84_Y5_N13
\a[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][4]~q\);

-- Location: FF_X84_Y5_N10
\a[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][3]~q\);

-- Location: LABCELL_X83_Y6_N30
\MulGen:1:Muls|auto_generated|result_output_reg[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:1:Muls|auto_generated|result_output_reg[3]~feeder_combout\ = ( \MulGen:1:Muls|auto_generated|result_extra0_reg\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:1:Muls|auto_generated|ALT_INV_result_extra0_reg\(3),
	combout => \MulGen:1:Muls|auto_generated|result_output_reg[3]~feeder_combout\);

-- Location: FF_X83_Y6_N31
\MulGen:1:Muls|auto_generated|result_output_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:1:Muls|auto_generated|result_output_reg[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:1:Muls|auto_generated|result_output_reg\(3));

-- Location: FF_X84_Y5_N8
\a[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][2]~q\);

-- Location: FF_X82_Y5_N13
\MulGen:1:Muls|auto_generated|result_output_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MulGen:1:Muls|auto_generated|result_extra0_reg\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:1:Muls|auto_generated|result_output_reg\(2));

-- Location: FF_X84_Y5_N5
\a[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~69_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][1]~q\);

-- Location: LABCELL_X83_Y6_N18
\MulGen:1:Muls|auto_generated|result_output_reg[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:1:Muls|auto_generated|result_output_reg[1]~feeder_combout\ = ( \MulGen:1:Muls|auto_generated|result_extra0_reg\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:1:Muls|auto_generated|ALT_INV_result_extra0_reg\(1),
	combout => \MulGen:1:Muls|auto_generated|result_output_reg[1]~feeder_combout\);

-- Location: FF_X83_Y6_N19
\MulGen:1:Muls|auto_generated|result_output_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:1:Muls|auto_generated|result_output_reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:1:Muls|auto_generated|result_output_reg\(1));

-- Location: FF_X84_Y5_N2
\a[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~73_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][0]~q\);

-- Location: FF_X83_Y5_N59
\MulGen:1:Muls|auto_generated|result_output_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MulGen:1:Muls|auto_generated|result_extra0_reg\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:1:Muls|auto_generated|result_output_reg\(0));

-- Location: LABCELL_X83_Y5_N0
\Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~73_sumout\ = SUM(( \MulGen:1:Muls|auto_generated|result_output_reg\(0) ) + ( \a[2][0]~q\ ) + ( !VCC ))
-- \Add1~74\ = CARRY(( \MulGen:1:Muls|auto_generated|result_output_reg\(0) ) + ( \a[2][0]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[2][0]~q\,
	datad => \MulGen:1:Muls|auto_generated|ALT_INV_result_output_reg\(0),
	cin => GND,
	sumout => \Add1~73_sumout\,
	cout => \Add1~74\);

-- Location: LABCELL_X83_Y5_N3
\Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~69_sumout\ = SUM(( \MulGen:1:Muls|auto_generated|result_output_reg\(1) ) + ( \a[2][1]~q\ ) + ( \Add1~74\ ))
-- \Add1~70\ = CARRY(( \MulGen:1:Muls|auto_generated|result_output_reg\(1) ) + ( \a[2][1]~q\ ) + ( \Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[2][1]~q\,
	datad => \MulGen:1:Muls|auto_generated|ALT_INV_result_output_reg\(1),
	cin => \Add1~74\,
	sumout => \Add1~69_sumout\,
	cout => \Add1~70\);

-- Location: LABCELL_X83_Y5_N6
\Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~65_sumout\ = SUM(( \MulGen:1:Muls|auto_generated|result_output_reg\(2) ) + ( \a[2][2]~q\ ) + ( \Add1~70\ ))
-- \Add1~66\ = CARRY(( \MulGen:1:Muls|auto_generated|result_output_reg\(2) ) + ( \a[2][2]~q\ ) + ( \Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[2][2]~q\,
	datad => \MulGen:1:Muls|auto_generated|ALT_INV_result_output_reg\(2),
	cin => \Add1~70\,
	sumout => \Add1~65_sumout\,
	cout => \Add1~66\);

-- Location: LABCELL_X83_Y5_N9
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( \MulGen:1:Muls|auto_generated|result_output_reg\(3) ) + ( \a[2][3]~q\ ) + ( \Add1~66\ ))
-- \Add1~62\ = CARRY(( \MulGen:1:Muls|auto_generated|result_output_reg\(3) ) + ( \a[2][3]~q\ ) + ( \Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[2][3]~q\,
	datad => \MulGen:1:Muls|auto_generated|ALT_INV_result_output_reg\(3),
	cin => \Add1~66\,
	sumout => \Add1~61_sumout\,
	cout => \Add1~62\);

-- Location: LABCELL_X83_Y5_N12
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( \a[2][4]~q\ ) + ( \MulGen:1:Muls|auto_generated|result_output_reg\(4) ) + ( \Add1~62\ ))
-- \Add1~58\ = CARRY(( \a[2][4]~q\ ) + ( \MulGen:1:Muls|auto_generated|result_output_reg\(4) ) + ( \Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MulGen:1:Muls|auto_generated|ALT_INV_result_output_reg\(4),
	datad => \ALT_INV_a[2][4]~q\,
	cin => \Add1~62\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: LABCELL_X83_Y5_N15
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( \a[2][5]~q\ ) + ( \MulGen:1:Muls|auto_generated|result_output_reg\(5) ) + ( \Add1~58\ ))
-- \Add1~54\ = CARRY(( \a[2][5]~q\ ) + ( \MulGen:1:Muls|auto_generated|result_output_reg\(5) ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MulGen:1:Muls|auto_generated|ALT_INV_result_output_reg\(5),
	datad => \ALT_INV_a[2][5]~q\,
	cin => \Add1~58\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: LABCELL_X83_Y5_N18
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( \a[2][6]~q\ ) + ( \MulGen:1:Muls|auto_generated|result_output_reg\(6) ) + ( \Add1~54\ ))
-- \Add1~50\ = CARRY(( \a[2][6]~q\ ) + ( \MulGen:1:Muls|auto_generated|result_output_reg\(6) ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MulGen:1:Muls|auto_generated|ALT_INV_result_output_reg\(6),
	datad => \ALT_INV_a[2][6]~q\,
	cin => \Add1~54\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: LABCELL_X83_Y5_N21
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( \MulGen:1:Muls|auto_generated|result_output_reg\(7) ) + ( \a[2][7]~q\ ) + ( \Add1~50\ ))
-- \Add1~46\ = CARRY(( \MulGen:1:Muls|auto_generated|result_output_reg\(7) ) + ( \a[2][7]~q\ ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[2][7]~q\,
	datac => \MulGen:1:Muls|auto_generated|ALT_INV_result_output_reg\(7),
	cin => \Add1~50\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: LABCELL_X83_Y5_N24
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( \MulGen:1:Muls|auto_generated|result_output_reg\(8) ) + ( \a[2][8]~q\ ) + ( \Add1~46\ ))
-- \Add1~2\ = CARRY(( \MulGen:1:Muls|auto_generated|result_output_reg\(8) ) + ( \a[2][8]~q\ ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[2][8]~q\,
	datac => \MulGen:1:Muls|auto_generated|ALT_INV_result_output_reg\(8),
	cin => \Add1~46\,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: FF_X83_Y5_N26
\a[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[1][8]~q\);

-- Location: FF_X83_Y4_N37
\c[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c[1][0]~q\,
	sload => VCC,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[0][0]~q\);

-- Location: FF_X87_Y4_N34
\c[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c[1][1]~q\,
	sload => VCC,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[0][1]~q\);

-- Location: FF_X83_Y4_N28
\c[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c[1][2]~q\,
	sload => VCC,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[0][2]~q\);

-- Location: FF_X83_Y4_N8
\c[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c[1][3]~q\,
	sload => VCC,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[0][3]~q\);

-- Location: FF_X83_Y4_N13
\c[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c[1][4]~q\,
	sload => VCC,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[0][4]~q\);

-- Location: FF_X87_Y4_N13
\c[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c[1][5]~q\,
	sload => VCC,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[0][5]~q\);

-- Location: FF_X87_Y4_N7
\c[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c[1][6]~q\,
	sload => VCC,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[0][6]~q\);

-- Location: FF_X87_Y4_N40
\c[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c[1][7]~q\,
	sload => VCC,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[0][7]~q\);

-- Location: FF_X83_Y4_N5
\c[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \c[1][8]~q\,
	sload => VCC,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[0][8]~q\);

-- Location: DSP_X86_Y2_N0
\MulGen:0:Muls|auto_generated|Mult0~mac\ : cyclonev_mac
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
	aclr => \MulGen:0:Muls|auto_generated|Mult0~mac_ACLR_bus\,
	clk => \MulGen:0:Muls|auto_generated|Mult0~mac_CLK_bus\,
	ena => \MulGen:0:Muls|auto_generated|Mult0~mac_ENA_bus\,
	ax => \MulGen:0:Muls|auto_generated|Mult0~mac_AX_bus\,
	ay => \MulGen:0:Muls|auto_generated|Mult0~mac_AY_bus\,
	bx => \MulGen:0:Muls|auto_generated|Mult0~mac_BX_bus\,
	by => \MulGen:0:Muls|auto_generated|Mult0~mac_BY_bus\,
	resulta => \MulGen:0:Muls|auto_generated|Mult0~mac_RESULTA_bus\);

-- Location: LABCELL_X81_Y5_N48
\MulGen:0:Muls|auto_generated|result_output_reg[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:0:Muls|auto_generated|result_output_reg[8]~feeder_combout\ = ( \MulGen:0:Muls|auto_generated|result_extra0_reg\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:0:Muls|auto_generated|ALT_INV_result_extra0_reg\(8),
	combout => \MulGen:0:Muls|auto_generated|result_output_reg[8]~feeder_combout\);

-- Location: FF_X81_Y5_N49
\MulGen:0:Muls|auto_generated|result_output_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:0:Muls|auto_generated|result_output_reg[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:0:Muls|auto_generated|result_output_reg\(8));

-- Location: MLABCELL_X82_Y4_N33
\MulGen:0:Muls|auto_generated|result_output_reg[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:0:Muls|auto_generated|result_output_reg[7]~feeder_combout\ = ( \MulGen:0:Muls|auto_generated|result_extra0_reg\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:0:Muls|auto_generated|ALT_INV_result_extra0_reg\(7),
	combout => \MulGen:0:Muls|auto_generated|result_output_reg[7]~feeder_combout\);

-- Location: FF_X82_Y4_N35
\MulGen:0:Muls|auto_generated|result_output_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:0:Muls|auto_generated|result_output_reg[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:0:Muls|auto_generated|result_output_reg\(7));

-- Location: FF_X83_Y5_N22
\a[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[1][7]~q\);

-- Location: FF_X83_Y5_N19
\a[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[1][6]~q\);

-- Location: LABCELL_X81_Y5_N12
\MulGen:0:Muls|auto_generated|result_output_reg[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:0:Muls|auto_generated|result_output_reg[6]~feeder_combout\ = ( \MulGen:0:Muls|auto_generated|result_extra0_reg\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:0:Muls|auto_generated|ALT_INV_result_extra0_reg\(6),
	combout => \MulGen:0:Muls|auto_generated|result_output_reg[6]~feeder_combout\);

-- Location: FF_X81_Y5_N13
\MulGen:0:Muls|auto_generated|result_output_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:0:Muls|auto_generated|result_output_reg[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:0:Muls|auto_generated|result_output_reg\(6));

-- Location: LABCELL_X81_Y5_N42
\MulGen:0:Muls|auto_generated|result_output_reg[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:0:Muls|auto_generated|result_output_reg[5]~feeder_combout\ = ( \MulGen:0:Muls|auto_generated|result_extra0_reg\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:0:Muls|auto_generated|ALT_INV_result_extra0_reg\(5),
	combout => \MulGen:0:Muls|auto_generated|result_output_reg[5]~feeder_combout\);

-- Location: FF_X81_Y5_N43
\MulGen:0:Muls|auto_generated|result_output_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:0:Muls|auto_generated|result_output_reg[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:0:Muls|auto_generated|result_output_reg\(5));

-- Location: FF_X83_Y5_N17
\a[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[1][5]~q\);

-- Location: FF_X83_Y5_N14
\a[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[1][4]~q\);

-- Location: FF_X85_Y5_N58
\MulGen:0:Muls|auto_generated|result_output_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MulGen:0:Muls|auto_generated|result_extra0_reg\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:0:Muls|auto_generated|result_output_reg\(4));

-- Location: FF_X83_Y5_N10
\a[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[1][3]~q\);

-- Location: FF_X82_Y5_N11
\MulGen:0:Muls|auto_generated|result_output_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MulGen:0:Muls|auto_generated|result_extra0_reg\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:0:Muls|auto_generated|result_output_reg\(3));

-- Location: FF_X82_Y5_N8
\MulGen:0:Muls|auto_generated|result_output_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MulGen:0:Muls|auto_generated|result_extra0_reg\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:0:Muls|auto_generated|result_output_reg\(2));

-- Location: FF_X83_Y5_N8
\a[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[1][2]~q\);

-- Location: FF_X82_Y5_N5
\MulGen:0:Muls|auto_generated|result_output_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MulGen:0:Muls|auto_generated|result_extra0_reg\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:0:Muls|auto_generated|result_output_reg\(1));

-- Location: FF_X83_Y5_N5
\a[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~69_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[1][1]~q\);

-- Location: FF_X82_Y5_N2
\a[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add1~73_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[1][0]~q\);

-- Location: FF_X83_Y5_N2
\MulGen:0:Muls|auto_generated|result_output_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MulGen:0:Muls|auto_generated|result_extra0_reg\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:0:Muls|auto_generated|result_output_reg\(0));

-- Location: MLABCELL_X82_Y5_N0
\Add0~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~74_cout\ = CARRY(( \MulGen:0:Muls|auto_generated|result_output_reg\(0) ) + ( \a[1][0]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[1][0]~q\,
	datad => \MulGen:0:Muls|auto_generated|ALT_INV_result_output_reg\(0),
	cin => GND,
	cout => \Add0~74_cout\);

-- Location: MLABCELL_X82_Y5_N3
\Add0~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~70_cout\ = CARRY(( \a[1][1]~q\ ) + ( \MulGen:0:Muls|auto_generated|result_output_reg\(1) ) + ( \Add0~74_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MulGen:0:Muls|auto_generated|ALT_INV_result_output_reg\(1),
	datad => \ALT_INV_a[1][1]~q\,
	cin => \Add0~74_cout\,
	cout => \Add0~70_cout\);

-- Location: MLABCELL_X82_Y5_N6
\Add0~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~66_cout\ = CARRY(( \a[1][2]~q\ ) + ( \MulGen:0:Muls|auto_generated|result_output_reg\(2) ) + ( \Add0~70_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MulGen:0:Muls|auto_generated|ALT_INV_result_output_reg\(2),
	datad => \ALT_INV_a[1][2]~q\,
	cin => \Add0~70_cout\,
	cout => \Add0~66_cout\);

-- Location: MLABCELL_X82_Y5_N9
\Add0~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~62_cout\ = CARRY(( \MulGen:0:Muls|auto_generated|result_output_reg\(3) ) + ( \a[1][3]~q\ ) + ( \Add0~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1][3]~q\,
	datac => \MulGen:0:Muls|auto_generated|ALT_INV_result_output_reg\(3),
	cin => \Add0~66_cout\,
	cout => \Add0~62_cout\);

-- Location: MLABCELL_X82_Y5_N12
\Add0~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~58_cout\ = CARRY(( \MulGen:0:Muls|auto_generated|result_output_reg\(4) ) + ( \a[1][4]~q\ ) + ( \Add0~62_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[1][4]~q\,
	datad => \MulGen:0:Muls|auto_generated|ALT_INV_result_output_reg\(4),
	cin => \Add0~62_cout\,
	cout => \Add0~58_cout\);

-- Location: MLABCELL_X82_Y5_N15
\Add0~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~54_cout\ = CARRY(( \a[1][5]~q\ ) + ( \MulGen:0:Muls|auto_generated|result_output_reg\(5) ) + ( \Add0~58_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MulGen:0:Muls|auto_generated|ALT_INV_result_output_reg\(5),
	datad => \ALT_INV_a[1][5]~q\,
	cin => \Add0~58_cout\,
	cout => \Add0~54_cout\);

-- Location: MLABCELL_X82_Y5_N18
\Add0~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~50_cout\ = CARRY(( \MulGen:0:Muls|auto_generated|result_output_reg\(6) ) + ( \a[1][6]~q\ ) + ( \Add0~54_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[1][6]~q\,
	datad => \MulGen:0:Muls|auto_generated|ALT_INV_result_output_reg\(6),
	cin => \Add0~54_cout\,
	cout => \Add0~50_cout\);

-- Location: MLABCELL_X82_Y5_N21
\Add0~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~46_cout\ = CARRY(( \a[1][7]~q\ ) + ( \MulGen:0:Muls|auto_generated|result_output_reg\(7) ) + ( \Add0~50_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MulGen:0:Muls|auto_generated|ALT_INV_result_output_reg\(7),
	datad => \ALT_INV_a[1][7]~q\,
	cin => \Add0~50_cout\,
	cout => \Add0~46_cout\);

-- Location: MLABCELL_X82_Y5_N24
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \MulGen:0:Muls|auto_generated|result_output_reg\(8) ) + ( \a[1][8]~q\ ) + ( \Add0~46_cout\ ))
-- \Add0~2\ = CARRY(( \MulGen:0:Muls|auto_generated|result_output_reg\(8) ) + ( \a[1][8]~q\ ) + ( \Add0~46_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[1][8]~q\,
	datad => \MulGen:0:Muls|auto_generated|ALT_INV_result_output_reg\(8),
	cin => \Add0~46_cout\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X82_Y5_N25
\a[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[0][8]~q\);

-- Location: FF_X82_Y5_N17
\MulGen:0:Muls|auto_generated|result_output_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MulGen:0:Muls|auto_generated|result_extra0_reg\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:0:Muls|auto_generated|result_output_reg\(9));

-- Location: LABCELL_X85_Y4_N33
\MulGen:2:Muls|auto_generated|result_output_reg[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:2:Muls|auto_generated|result_output_reg[9]~feeder_combout\ = ( \MulGen:2:Muls|auto_generated|result_extra0_reg\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:2:Muls|auto_generated|ALT_INV_result_extra0_reg\(9),
	combout => \MulGen:2:Muls|auto_generated|result_output_reg[9]~feeder_combout\);

-- Location: FF_X85_Y4_N34
\MulGen:2:Muls|auto_generated|result_output_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:2:Muls|auto_generated|result_output_reg[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:2:Muls|auto_generated|result_output_reg\(9));

-- Location: LABCELL_X85_Y6_N6
\MulGen:3:Muls|auto_generated|result_output_reg[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:3:Muls|auto_generated|result_output_reg[9]~feeder_combout\ = ( \MulGen:3:Muls|auto_generated|result_extra0_reg\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:3:Muls|auto_generated|ALT_INV_result_extra0_reg\(9),
	combout => \MulGen:3:Muls|auto_generated|result_output_reg[9]~feeder_combout\);

-- Location: FF_X85_Y6_N8
\MulGen:3:Muls|auto_generated|result_output_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:3:Muls|auto_generated|result_output_reg[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:3:Muls|auto_generated|result_output_reg\(9));

-- Location: LABCELL_X85_Y5_N6
\a[3][9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \a[3][9]~feeder_combout\ = ( \MulGen:3:Muls|auto_generated|result_output_reg\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:3:Muls|auto_generated|ALT_INV_result_output_reg\(9),
	combout => \a[3][9]~feeder_combout\);

-- Location: FF_X85_Y5_N7
\a[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \a[3][9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[3][9]~q\);

-- Location: MLABCELL_X84_Y5_N27
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( \a[3][9]~q\ ) + ( \MulGen:2:Muls|auto_generated|result_output_reg\(9) ) + ( \Add2~2\ ))
-- \Add2~6\ = CARRY(( \a[3][9]~q\ ) + ( \MulGen:2:Muls|auto_generated|result_output_reg\(9) ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MulGen:2:Muls|auto_generated|ALT_INV_result_output_reg\(9),
	datad => \ALT_INV_a[3][9]~q\,
	cin => \Add2~2\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: FF_X84_Y5_N28
\a[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][9]~q\);

-- Location: LABCELL_X83_Y6_N39
\MulGen:1:Muls|auto_generated|result_output_reg[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:1:Muls|auto_generated|result_output_reg[9]~feeder_combout\ = ( \MulGen:1:Muls|auto_generated|result_extra0_reg\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:1:Muls|auto_generated|ALT_INV_result_extra0_reg\(9),
	combout => \MulGen:1:Muls|auto_generated|result_output_reg[9]~feeder_combout\);

-- Location: FF_X83_Y6_N41
\MulGen:1:Muls|auto_generated|result_output_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:1:Muls|auto_generated|result_output_reg[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:1:Muls|auto_generated|result_output_reg\(9));

-- Location: LABCELL_X83_Y5_N27
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( \MulGen:1:Muls|auto_generated|result_output_reg\(9) ) + ( \a[2][9]~q\ ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( \MulGen:1:Muls|auto_generated|result_output_reg\(9) ) + ( \a[2][9]~q\ ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[2][9]~q\,
	datad => \MulGen:1:Muls|auto_generated|ALT_INV_result_output_reg\(9),
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: FF_X83_Y5_N28
\a[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[1][9]~q\);

-- Location: MLABCELL_X82_Y5_N27
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \a[1][9]~q\ ) + ( \MulGen:0:Muls|auto_generated|result_output_reg\(9) ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( \a[1][9]~q\ ) + ( \MulGen:0:Muls|auto_generated|result_output_reg\(9) ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MulGen:0:Muls|auto_generated|ALT_INV_result_output_reg\(9),
	datad => \ALT_INV_a[1][9]~q\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X82_Y5_N28
\a[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[0][9]~q\);

-- Location: FF_X85_Y6_N13
\MulGen:3:Muls|auto_generated|result_output_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MulGen:3:Muls|auto_generated|result_extra0_reg\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:3:Muls|auto_generated|result_output_reg\(10));

-- Location: LABCELL_X85_Y5_N54
\a[3][10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \a[3][10]~feeder_combout\ = ( \MulGen:3:Muls|auto_generated|result_output_reg\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:3:Muls|auto_generated|ALT_INV_result_output_reg\(10),
	combout => \a[3][10]~feeder_combout\);

-- Location: FF_X85_Y5_N55
\a[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \a[3][10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[3][10]~q\);

-- Location: LABCELL_X85_Y4_N12
\MulGen:2:Muls|auto_generated|result_output_reg[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:2:Muls|auto_generated|result_output_reg[10]~feeder_combout\ = ( \MulGen:2:Muls|auto_generated|result_extra0_reg\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:2:Muls|auto_generated|ALT_INV_result_extra0_reg\(10),
	combout => \MulGen:2:Muls|auto_generated|result_output_reg[10]~feeder_combout\);

-- Location: FF_X85_Y4_N14
\MulGen:2:Muls|auto_generated|result_output_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:2:Muls|auto_generated|result_output_reg[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:2:Muls|auto_generated|result_output_reg\(10));

-- Location: MLABCELL_X84_Y5_N30
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( \MulGen:2:Muls|auto_generated|result_output_reg\(10) ) + ( \a[3][10]~q\ ) + ( \Add2~6\ ))
-- \Add2~10\ = CARRY(( \MulGen:2:Muls|auto_generated|result_output_reg\(10) ) + ( \a[3][10]~q\ ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[3][10]~q\,
	datad => \MulGen:2:Muls|auto_generated|ALT_INV_result_output_reg\(10),
	cin => \Add2~6\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: FF_X84_Y5_N31
\a[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][10]~q\);

-- Location: LABCELL_X83_Y6_N9
\MulGen:1:Muls|auto_generated|result_output_reg[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:1:Muls|auto_generated|result_output_reg[10]~feeder_combout\ = ( \MulGen:1:Muls|auto_generated|result_extra0_reg\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:1:Muls|auto_generated|ALT_INV_result_extra0_reg\(10),
	combout => \MulGen:1:Muls|auto_generated|result_output_reg[10]~feeder_combout\);

-- Location: FF_X83_Y6_N10
\MulGen:1:Muls|auto_generated|result_output_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:1:Muls|auto_generated|result_output_reg[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:1:Muls|auto_generated|result_output_reg\(10));

-- Location: LABCELL_X83_Y5_N30
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( \MulGen:1:Muls|auto_generated|result_output_reg\(10) ) + ( \a[2][10]~q\ ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( \MulGen:1:Muls|auto_generated|result_output_reg\(10) ) + ( \a[2][10]~q\ ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[2][10]~q\,
	datad => \MulGen:1:Muls|auto_generated|ALT_INV_result_output_reg\(10),
	cin => \Add1~6\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X83_Y5_N32
\a[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[1][10]~q\);

-- Location: FF_X82_Y5_N23
\MulGen:0:Muls|auto_generated|result_output_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MulGen:0:Muls|auto_generated|result_extra0_reg\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:0:Muls|auto_generated|result_output_reg\(10));

-- Location: MLABCELL_X82_Y5_N30
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \MulGen:0:Muls|auto_generated|result_output_reg\(10) ) + ( \a[1][10]~q\ ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( \MulGen:0:Muls|auto_generated|result_output_reg\(10) ) + ( \a[1][10]~q\ ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[1][10]~q\,
	datad => \MulGen:0:Muls|auto_generated|ALT_INV_result_output_reg\(10),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X82_Y5_N31
\a[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[0][10]~q\);

-- Location: MLABCELL_X82_Y4_N51
\MulGen:0:Muls|auto_generated|result_output_reg[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:0:Muls|auto_generated|result_output_reg[11]~feeder_combout\ = ( \MulGen:0:Muls|auto_generated|result_extra0_reg\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:0:Muls|auto_generated|ALT_INV_result_extra0_reg\(11),
	combout => \MulGen:0:Muls|auto_generated|result_output_reg[11]~feeder_combout\);

-- Location: FF_X82_Y4_N52
\MulGen:0:Muls|auto_generated|result_output_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:0:Muls|auto_generated|result_output_reg[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:0:Muls|auto_generated|result_output_reg\(11));

-- Location: LABCELL_X85_Y4_N3
\MulGen:2:Muls|auto_generated|result_output_reg[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:2:Muls|auto_generated|result_output_reg[11]~feeder_combout\ = ( \MulGen:2:Muls|auto_generated|result_extra0_reg\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:2:Muls|auto_generated|ALT_INV_result_extra0_reg\(11),
	combout => \MulGen:2:Muls|auto_generated|result_output_reg[11]~feeder_combout\);

-- Location: FF_X85_Y4_N4
\MulGen:2:Muls|auto_generated|result_output_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:2:Muls|auto_generated|result_output_reg[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:2:Muls|auto_generated|result_output_reg\(11));

-- Location: LABCELL_X85_Y6_N57
\MulGen:3:Muls|auto_generated|result_output_reg[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:3:Muls|auto_generated|result_output_reg[11]~feeder_combout\ = ( \MulGen:3:Muls|auto_generated|result_extra0_reg\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:3:Muls|auto_generated|ALT_INV_result_extra0_reg\(11),
	combout => \MulGen:3:Muls|auto_generated|result_output_reg[11]~feeder_combout\);

-- Location: FF_X85_Y6_N58
\MulGen:3:Muls|auto_generated|result_output_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:3:Muls|auto_generated|result_output_reg[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:3:Muls|auto_generated|result_output_reg\(11));

-- Location: LABCELL_X85_Y6_N51
\a[3][11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \a[3][11]~feeder_combout\ = ( \MulGen:3:Muls|auto_generated|result_output_reg\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:3:Muls|auto_generated|ALT_INV_result_output_reg\(11),
	combout => \a[3][11]~feeder_combout\);

-- Location: FF_X85_Y6_N53
\a[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \a[3][11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[3][11]~q\);

-- Location: MLABCELL_X84_Y5_N33
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( \a[3][11]~q\ ) + ( \MulGen:2:Muls|auto_generated|result_output_reg\(11) ) + ( \Add2~10\ ))
-- \Add2~14\ = CARRY(( \a[3][11]~q\ ) + ( \MulGen:2:Muls|auto_generated|result_output_reg\(11) ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MulGen:2:Muls|auto_generated|ALT_INV_result_output_reg\(11),
	datad => \ALT_INV_a[3][11]~q\,
	cin => \Add2~10\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: FF_X84_Y5_N34
\a[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][11]~q\);

-- Location: LABCELL_X83_Y6_N54
\MulGen:1:Muls|auto_generated|result_output_reg[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:1:Muls|auto_generated|result_output_reg[11]~feeder_combout\ = ( \MulGen:1:Muls|auto_generated|result_extra0_reg\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:1:Muls|auto_generated|ALT_INV_result_extra0_reg\(11),
	combout => \MulGen:1:Muls|auto_generated|result_output_reg[11]~feeder_combout\);

-- Location: FF_X83_Y6_N56
\MulGen:1:Muls|auto_generated|result_output_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:1:Muls|auto_generated|result_output_reg[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:1:Muls|auto_generated|result_output_reg\(11));

-- Location: LABCELL_X83_Y5_N33
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( \MulGen:1:Muls|auto_generated|result_output_reg\(11) ) + ( \a[2][11]~q\ ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( \MulGen:1:Muls|auto_generated|result_output_reg\(11) ) + ( \a[2][11]~q\ ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[2][11]~q\,
	datad => \MulGen:1:Muls|auto_generated|ALT_INV_result_output_reg\(11),
	cin => \Add1~10\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X83_Y5_N34
\a[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[1][11]~q\);

-- Location: MLABCELL_X82_Y5_N33
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \a[1][11]~q\ ) + ( \MulGen:0:Muls|auto_generated|result_output_reg\(11) ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( \a[1][11]~q\ ) + ( \MulGen:0:Muls|auto_generated|result_output_reg\(11) ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MulGen:0:Muls|auto_generated|ALT_INV_result_output_reg\(11),
	datad => \ALT_INV_a[1][11]~q\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X82_Y5_N34
\a[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[0][11]~q\);

-- Location: LABCELL_X81_Y5_N54
\MulGen:0:Muls|auto_generated|result_output_reg[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:0:Muls|auto_generated|result_output_reg[12]~feeder_combout\ = ( \MulGen:0:Muls|auto_generated|result_extra0_reg\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:0:Muls|auto_generated|ALT_INV_result_extra0_reg\(12),
	combout => \MulGen:0:Muls|auto_generated|result_output_reg[12]~feeder_combout\);

-- Location: FF_X81_Y5_N55
\MulGen:0:Muls|auto_generated|result_output_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:0:Muls|auto_generated|result_output_reg[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:0:Muls|auto_generated|result_output_reg\(12));

-- Location: MLABCELL_X84_Y6_N12
\MulGen:1:Muls|auto_generated|result_output_reg[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:1:Muls|auto_generated|result_output_reg[12]~feeder_combout\ = ( \MulGen:1:Muls|auto_generated|result_extra0_reg\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:1:Muls|auto_generated|ALT_INV_result_extra0_reg\(12),
	combout => \MulGen:1:Muls|auto_generated|result_output_reg[12]~feeder_combout\);

-- Location: FF_X84_Y6_N13
\MulGen:1:Muls|auto_generated|result_output_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:1:Muls|auto_generated|result_output_reg[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:1:Muls|auto_generated|result_output_reg\(12));

-- Location: FF_X85_Y4_N50
\MulGen:2:Muls|auto_generated|result_output_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MulGen:2:Muls|auto_generated|result_extra0_reg\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:2:Muls|auto_generated|result_output_reg\(12));

-- Location: LABCELL_X85_Y6_N48
\MulGen:3:Muls|auto_generated|result_output_reg[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:3:Muls|auto_generated|result_output_reg[12]~feeder_combout\ = ( \MulGen:3:Muls|auto_generated|result_extra0_reg\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:3:Muls|auto_generated|ALT_INV_result_extra0_reg\(12),
	combout => \MulGen:3:Muls|auto_generated|result_output_reg[12]~feeder_combout\);

-- Location: FF_X85_Y6_N49
\MulGen:3:Muls|auto_generated|result_output_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:3:Muls|auto_generated|result_output_reg[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:3:Muls|auto_generated|result_output_reg\(12));

-- Location: LABCELL_X85_Y5_N42
\a[3][12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \a[3][12]~feeder_combout\ = ( \MulGen:3:Muls|auto_generated|result_output_reg\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:3:Muls|auto_generated|ALT_INV_result_output_reg\(12),
	combout => \a[3][12]~feeder_combout\);

-- Location: FF_X85_Y5_N44
\a[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \a[3][12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[3][12]~q\);

-- Location: MLABCELL_X84_Y5_N36
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( \a[3][12]~q\ ) + ( \MulGen:2:Muls|auto_generated|result_output_reg\(12) ) + ( \Add2~14\ ))
-- \Add2~18\ = CARRY(( \a[3][12]~q\ ) + ( \MulGen:2:Muls|auto_generated|result_output_reg\(12) ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MulGen:2:Muls|auto_generated|ALT_INV_result_output_reg\(12),
	datad => \ALT_INV_a[3][12]~q\,
	cin => \Add2~14\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: FF_X84_Y5_N38
\a[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][12]~q\);

-- Location: LABCELL_X83_Y5_N36
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( \a[2][12]~q\ ) + ( \MulGen:1:Muls|auto_generated|result_output_reg\(12) ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( \a[2][12]~q\ ) + ( \MulGen:1:Muls|auto_generated|result_output_reg\(12) ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MulGen:1:Muls|auto_generated|ALT_INV_result_output_reg\(12),
	datad => \ALT_INV_a[2][12]~q\,
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X83_Y5_N38
\a[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[1][12]~q\);

-- Location: MLABCELL_X82_Y5_N36
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \a[1][12]~q\ ) + ( \MulGen:0:Muls|auto_generated|result_output_reg\(12) ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( \a[1][12]~q\ ) + ( \MulGen:0:Muls|auto_generated|result_output_reg\(12) ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MulGen:0:Muls|auto_generated|ALT_INV_result_output_reg\(12),
	datad => \ALT_INV_a[1][12]~q\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X82_Y5_N37
\a[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[0][12]~q\);

-- Location: LABCELL_X85_Y6_N30
\MulGen:3:Muls|auto_generated|result_output_reg[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:3:Muls|auto_generated|result_output_reg[13]~feeder_combout\ = ( \MulGen:3:Muls|auto_generated|result_extra0_reg\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:3:Muls|auto_generated|ALT_INV_result_extra0_reg\(13),
	combout => \MulGen:3:Muls|auto_generated|result_output_reg[13]~feeder_combout\);

-- Location: FF_X85_Y6_N31
\MulGen:3:Muls|auto_generated|result_output_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:3:Muls|auto_generated|result_output_reg[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:3:Muls|auto_generated|result_output_reg\(13));

-- Location: LABCELL_X85_Y5_N18
\a[3][13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \a[3][13]~feeder_combout\ = ( \MulGen:3:Muls|auto_generated|result_output_reg\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:3:Muls|auto_generated|ALT_INV_result_output_reg\(13),
	combout => \a[3][13]~feeder_combout\);

-- Location: FF_X85_Y5_N19
\a[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \a[3][13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[3][13]~q\);

-- Location: LABCELL_X85_Y4_N57
\MulGen:2:Muls|auto_generated|result_output_reg[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:2:Muls|auto_generated|result_output_reg[13]~feeder_combout\ = ( \MulGen:2:Muls|auto_generated|result_extra0_reg\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:2:Muls|auto_generated|ALT_INV_result_extra0_reg\(13),
	combout => \MulGen:2:Muls|auto_generated|result_output_reg[13]~feeder_combout\);

-- Location: FF_X85_Y4_N59
\MulGen:2:Muls|auto_generated|result_output_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:2:Muls|auto_generated|result_output_reg[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:2:Muls|auto_generated|result_output_reg\(13));

-- Location: MLABCELL_X84_Y5_N39
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( \MulGen:2:Muls|auto_generated|result_output_reg\(13) ) + ( \a[3][13]~q\ ) + ( \Add2~18\ ))
-- \Add2~22\ = CARRY(( \MulGen:2:Muls|auto_generated|result_output_reg\(13) ) + ( \a[3][13]~q\ ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[3][13]~q\,
	datad => \MulGen:2:Muls|auto_generated|ALT_INV_result_output_reg\(13),
	cin => \Add2~18\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: FF_X84_Y5_N41
\a[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][13]~q\);

-- Location: MLABCELL_X84_Y8_N24
\MulGen:1:Muls|auto_generated|result_output_reg[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:1:Muls|auto_generated|result_output_reg[13]~feeder_combout\ = ( \MulGen:1:Muls|auto_generated|result_extra0_reg\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:1:Muls|auto_generated|ALT_INV_result_extra0_reg\(13),
	combout => \MulGen:1:Muls|auto_generated|result_output_reg[13]~feeder_combout\);

-- Location: FF_X84_Y8_N25
\MulGen:1:Muls|auto_generated|result_output_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:1:Muls|auto_generated|result_output_reg[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:1:Muls|auto_generated|result_output_reg\(13));

-- Location: LABCELL_X83_Y5_N39
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( \MulGen:1:Muls|auto_generated|result_output_reg\(13) ) + ( \a[2][13]~q\ ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( \MulGen:1:Muls|auto_generated|result_output_reg\(13) ) + ( \a[2][13]~q\ ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[2][13]~q\,
	datad => \MulGen:1:Muls|auto_generated|ALT_INV_result_output_reg\(13),
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X83_Y5_N40
\a[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[1][13]~q\);

-- Location: LABCELL_X83_Y2_N39
\MulGen:0:Muls|auto_generated|result_output_reg[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:0:Muls|auto_generated|result_output_reg[13]~feeder_combout\ = ( \MulGen:0:Muls|auto_generated|result_extra0_reg\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:0:Muls|auto_generated|ALT_INV_result_extra0_reg\(13),
	combout => \MulGen:0:Muls|auto_generated|result_output_reg[13]~feeder_combout\);

-- Location: FF_X83_Y2_N41
\MulGen:0:Muls|auto_generated|result_output_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:0:Muls|auto_generated|result_output_reg[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:0:Muls|auto_generated|result_output_reg\(13));

-- Location: MLABCELL_X82_Y5_N39
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \MulGen:0:Muls|auto_generated|result_output_reg\(13) ) + ( \a[1][13]~q\ ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( \MulGen:0:Muls|auto_generated|result_output_reg\(13) ) + ( \a[1][13]~q\ ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[1][13]~q\,
	datad => \MulGen:0:Muls|auto_generated|ALT_INV_result_output_reg\(13),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X82_Y5_N40
\a[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[0][13]~q\);

-- Location: LABCELL_X83_Y2_N30
\MulGen:0:Muls|auto_generated|result_output_reg[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:0:Muls|auto_generated|result_output_reg[14]~feeder_combout\ = ( \MulGen:0:Muls|auto_generated|result_extra0_reg\(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:0:Muls|auto_generated|ALT_INV_result_extra0_reg\(14),
	combout => \MulGen:0:Muls|auto_generated|result_output_reg[14]~feeder_combout\);

-- Location: FF_X83_Y2_N32
\MulGen:0:Muls|auto_generated|result_output_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:0:Muls|auto_generated|result_output_reg[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:0:Muls|auto_generated|result_output_reg\(14));

-- Location: LABCELL_X83_Y8_N12
\MulGen:1:Muls|auto_generated|result_output_reg[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:1:Muls|auto_generated|result_output_reg[14]~feeder_combout\ = ( \MulGen:1:Muls|auto_generated|result_extra0_reg\(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:1:Muls|auto_generated|ALT_INV_result_extra0_reg\(14),
	combout => \MulGen:1:Muls|auto_generated|result_output_reg[14]~feeder_combout\);

-- Location: FF_X83_Y8_N14
\MulGen:1:Muls|auto_generated|result_output_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:1:Muls|auto_generated|result_output_reg[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:1:Muls|auto_generated|result_output_reg\(14));

-- Location: LABCELL_X85_Y6_N15
\MulGen:3:Muls|auto_generated|result_output_reg[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:3:Muls|auto_generated|result_output_reg[14]~feeder_combout\ = ( \MulGen:3:Muls|auto_generated|result_extra0_reg\(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:3:Muls|auto_generated|ALT_INV_result_extra0_reg\(14),
	combout => \MulGen:3:Muls|auto_generated|result_output_reg[14]~feeder_combout\);

-- Location: FF_X85_Y6_N17
\MulGen:3:Muls|auto_generated|result_output_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:3:Muls|auto_generated|result_output_reg[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:3:Muls|auto_generated|result_output_reg\(14));

-- Location: LABCELL_X85_Y6_N54
\a[3][14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \a[3][14]~feeder_combout\ = \MulGen:3:Muls|auto_generated|result_output_reg\(14)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MulGen:3:Muls|auto_generated|ALT_INV_result_output_reg\(14),
	combout => \a[3][14]~feeder_combout\);

-- Location: FF_X85_Y6_N55
\a[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \a[3][14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[3][14]~q\);

-- Location: LABCELL_X85_Y4_N42
\MulGen:2:Muls|auto_generated|result_output_reg[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:2:Muls|auto_generated|result_output_reg[14]~feeder_combout\ = ( \MulGen:2:Muls|auto_generated|result_extra0_reg\(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:2:Muls|auto_generated|ALT_INV_result_extra0_reg\(14),
	combout => \MulGen:2:Muls|auto_generated|result_output_reg[14]~feeder_combout\);

-- Location: FF_X85_Y4_N44
\MulGen:2:Muls|auto_generated|result_output_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:2:Muls|auto_generated|result_output_reg[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:2:Muls|auto_generated|result_output_reg\(14));

-- Location: MLABCELL_X84_Y5_N42
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( \MulGen:2:Muls|auto_generated|result_output_reg\(14) ) + ( \a[3][14]~q\ ) + ( \Add2~22\ ))
-- \Add2~26\ = CARRY(( \MulGen:2:Muls|auto_generated|result_output_reg\(14) ) + ( \a[3][14]~q\ ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[3][14]~q\,
	datac => \MulGen:2:Muls|auto_generated|ALT_INV_result_output_reg\(14),
	cin => \Add2~22\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: FF_X84_Y5_N43
\a[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][14]~q\);

-- Location: LABCELL_X83_Y5_N42
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( \a[2][14]~q\ ) + ( \MulGen:1:Muls|auto_generated|result_output_reg\(14) ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( \a[2][14]~q\ ) + ( \MulGen:1:Muls|auto_generated|result_output_reg\(14) ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MulGen:1:Muls|auto_generated|ALT_INV_result_output_reg\(14),
	datad => \ALT_INV_a[2][14]~q\,
	cin => \Add1~22\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X83_Y5_N44
\a[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[1][14]~q\);

-- Location: MLABCELL_X82_Y5_N42
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \a[1][14]~q\ ) + ( \MulGen:0:Muls|auto_generated|result_output_reg\(14) ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \a[1][14]~q\ ) + ( \MulGen:0:Muls|auto_generated|result_output_reg\(14) ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MulGen:0:Muls|auto_generated|ALT_INV_result_output_reg\(14),
	datad => \ALT_INV_a[1][14]~q\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X82_Y5_N43
\a[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[0][14]~q\);

-- Location: LABCELL_X85_Y4_N21
\MulGen:2:Muls|auto_generated|result_output_reg[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:2:Muls|auto_generated|result_output_reg[15]~feeder_combout\ = ( \MulGen:2:Muls|auto_generated|result_extra0_reg\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:2:Muls|auto_generated|ALT_INV_result_extra0_reg\(15),
	combout => \MulGen:2:Muls|auto_generated|result_output_reg[15]~feeder_combout\);

-- Location: FF_X85_Y4_N22
\MulGen:2:Muls|auto_generated|result_output_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:2:Muls|auto_generated|result_output_reg[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:2:Muls|auto_generated|result_output_reg\(15));

-- Location: LABCELL_X85_Y6_N36
\MulGen:3:Muls|auto_generated|result_output_reg[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:3:Muls|auto_generated|result_output_reg[15]~feeder_combout\ = ( \MulGen:3:Muls|auto_generated|result_extra0_reg\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:3:Muls|auto_generated|ALT_INV_result_extra0_reg\(15),
	combout => \MulGen:3:Muls|auto_generated|result_output_reg[15]~feeder_combout\);

-- Location: FF_X85_Y6_N38
\MulGen:3:Muls|auto_generated|result_output_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:3:Muls|auto_generated|result_output_reg[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:3:Muls|auto_generated|result_output_reg\(15));

-- Location: FF_X84_Y6_N31
\a[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MulGen:3:Muls|auto_generated|result_output_reg\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[3][15]~q\);

-- Location: MLABCELL_X84_Y5_N45
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( \a[3][15]~q\ ) + ( \MulGen:2:Muls|auto_generated|result_output_reg\(15) ) + ( \Add2~26\ ))
-- \Add2~30\ = CARRY(( \a[3][15]~q\ ) + ( \MulGen:2:Muls|auto_generated|result_output_reg\(15) ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MulGen:2:Muls|auto_generated|ALT_INV_result_output_reg\(15),
	datad => \ALT_INV_a[3][15]~q\,
	cin => \Add2~26\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: FF_X84_Y5_N47
\a[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][15]~q\);

-- Location: LABCELL_X83_Y8_N6
\MulGen:1:Muls|auto_generated|result_output_reg[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:1:Muls|auto_generated|result_output_reg[15]~feeder_combout\ = ( \MulGen:1:Muls|auto_generated|result_extra0_reg\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:1:Muls|auto_generated|ALT_INV_result_extra0_reg\(15),
	combout => \MulGen:1:Muls|auto_generated|result_output_reg[15]~feeder_combout\);

-- Location: FF_X83_Y8_N8
\MulGen:1:Muls|auto_generated|result_output_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:1:Muls|auto_generated|result_output_reg[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:1:Muls|auto_generated|result_output_reg\(15));

-- Location: LABCELL_X83_Y5_N45
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( \MulGen:1:Muls|auto_generated|result_output_reg\(15) ) + ( \a[2][15]~q\ ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( \MulGen:1:Muls|auto_generated|result_output_reg\(15) ) + ( \a[2][15]~q\ ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[2][15]~q\,
	datad => \MulGen:1:Muls|auto_generated|ALT_INV_result_output_reg\(15),
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X83_Y5_N47
\a[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[1][15]~q\);

-- Location: MLABCELL_X82_Y3_N0
\MulGen:0:Muls|auto_generated|result_output_reg[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:0:Muls|auto_generated|result_output_reg[15]~feeder_combout\ = ( \MulGen:0:Muls|auto_generated|result_extra0_reg\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:0:Muls|auto_generated|ALT_INV_result_extra0_reg\(15),
	combout => \MulGen:0:Muls|auto_generated|result_output_reg[15]~feeder_combout\);

-- Location: FF_X82_Y3_N2
\MulGen:0:Muls|auto_generated|result_output_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:0:Muls|auto_generated|result_output_reg[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:0:Muls|auto_generated|result_output_reg\(15));

-- Location: MLABCELL_X82_Y5_N45
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \MulGen:0:Muls|auto_generated|result_output_reg\(15) ) + ( \a[1][15]~q\ ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( \MulGen:0:Muls|auto_generated|result_output_reg\(15) ) + ( \a[1][15]~q\ ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1][15]~q\,
	datac => \MulGen:0:Muls|auto_generated|ALT_INV_result_output_reg\(15),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X82_Y5_N46
\a[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[0][15]~q\);

-- Location: LABCELL_X81_Y2_N39
\MulGen:0:Muls|auto_generated|result_output_reg[16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:0:Muls|auto_generated|result_output_reg[16]~feeder_combout\ = ( \MulGen:0:Muls|auto_generated|result_extra0_reg\(16) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:0:Muls|auto_generated|ALT_INV_result_extra0_reg\(16),
	combout => \MulGen:0:Muls|auto_generated|result_output_reg[16]~feeder_combout\);

-- Location: FF_X81_Y2_N40
\MulGen:0:Muls|auto_generated|result_output_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:0:Muls|auto_generated|result_output_reg[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:0:Muls|auto_generated|result_output_reg\(16));

-- Location: FF_X83_Y8_N25
\MulGen:1:Muls|auto_generated|result_output_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MulGen:1:Muls|auto_generated|result_extra0_reg\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:1:Muls|auto_generated|result_output_reg\(16));

-- Location: LABCELL_X85_Y6_N18
\MulGen:3:Muls|auto_generated|result_output_reg[16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:3:Muls|auto_generated|result_output_reg[16]~feeder_combout\ = ( \MulGen:3:Muls|auto_generated|result_extra0_reg\(16) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:3:Muls|auto_generated|ALT_INV_result_extra0_reg\(16),
	combout => \MulGen:3:Muls|auto_generated|result_output_reg[16]~feeder_combout\);

-- Location: FF_X85_Y6_N20
\MulGen:3:Muls|auto_generated|result_output_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:3:Muls|auto_generated|result_output_reg[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:3:Muls|auto_generated|result_output_reg\(16));

-- Location: MLABCELL_X84_Y6_N0
\a[3][16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \a[3][16]~feeder_combout\ = ( \MulGen:3:Muls|auto_generated|result_output_reg\(16) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:3:Muls|auto_generated|ALT_INV_result_output_reg\(16),
	combout => \a[3][16]~feeder_combout\);

-- Location: FF_X84_Y6_N2
\a[3][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \a[3][16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[3][16]~q\);

-- Location: LABCELL_X85_Y4_N36
\MulGen:2:Muls|auto_generated|result_output_reg[16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:2:Muls|auto_generated|result_output_reg[16]~feeder_combout\ = ( \MulGen:2:Muls|auto_generated|result_extra0_reg\(16) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:2:Muls|auto_generated|ALT_INV_result_extra0_reg\(16),
	combout => \MulGen:2:Muls|auto_generated|result_output_reg[16]~feeder_combout\);

-- Location: FF_X85_Y4_N38
\MulGen:2:Muls|auto_generated|result_output_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:2:Muls|auto_generated|result_output_reg[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:2:Muls|auto_generated|result_output_reg\(16));

-- Location: MLABCELL_X84_Y5_N48
\Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( \MulGen:2:Muls|auto_generated|result_output_reg\(16) ) + ( \a[3][16]~q\ ) + ( \Add2~30\ ))
-- \Add2~34\ = CARRY(( \MulGen:2:Muls|auto_generated|result_output_reg\(16) ) + ( \a[3][16]~q\ ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[3][16]~q\,
	datad => \MulGen:2:Muls|auto_generated|ALT_INV_result_output_reg\(16),
	cin => \Add2~30\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\);

-- Location: FF_X84_Y5_N50
\a[2][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][16]~q\);

-- Location: LABCELL_X83_Y5_N48
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( \a[2][16]~q\ ) + ( \MulGen:1:Muls|auto_generated|result_output_reg\(16) ) + ( \Add1~30\ ))
-- \Add1~34\ = CARRY(( \a[2][16]~q\ ) + ( \MulGen:1:Muls|auto_generated|result_output_reg\(16) ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MulGen:1:Muls|auto_generated|ALT_INV_result_output_reg\(16),
	datad => \ALT_INV_a[2][16]~q\,
	cin => \Add1~30\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: FF_X83_Y5_N50
\a[1][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[1][16]~q\);

-- Location: MLABCELL_X82_Y5_N48
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( \a[1][16]~q\ ) + ( \MulGen:0:Muls|auto_generated|result_output_reg\(16) ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( \a[1][16]~q\ ) + ( \MulGen:0:Muls|auto_generated|result_output_reg\(16) ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MulGen:0:Muls|auto_generated|ALT_INV_result_output_reg\(16),
	datad => \ALT_INV_a[1][16]~q\,
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X82_Y5_N49
\a[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[0][16]~q\);

-- Location: FF_X85_Y6_N25
\MulGen:3:Muls|auto_generated|result_output_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MulGen:3:Muls|auto_generated|result_extra0_reg\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:3:Muls|auto_generated|result_output_reg\(17));

-- Location: LABCELL_X85_Y6_N27
\a[3][18]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \a[3][18]~feeder_combout\ = ( \MulGen:3:Muls|auto_generated|result_output_reg\(17) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:3:Muls|auto_generated|ALT_INV_result_output_reg\(17),
	combout => \a[3][18]~feeder_combout\);

-- Location: FF_X85_Y6_N28
\a[3][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \a[3][18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[3][18]~q\);

-- Location: LABCELL_X85_Y4_N9
\MulGen:2:Muls|auto_generated|result_output_reg[17]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:2:Muls|auto_generated|result_output_reg[17]~feeder_combout\ = ( \MulGen:2:Muls|auto_generated|result_extra0_reg\(17) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:2:Muls|auto_generated|ALT_INV_result_extra0_reg\(17),
	combout => \MulGen:2:Muls|auto_generated|result_output_reg[17]~feeder_combout\);

-- Location: FF_X85_Y4_N10
\MulGen:2:Muls|auto_generated|result_output_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:2:Muls|auto_generated|result_output_reg[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:2:Muls|auto_generated|result_output_reg\(17));

-- Location: MLABCELL_X84_Y5_N51
\Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~37_sumout\ = SUM(( \MulGen:2:Muls|auto_generated|result_output_reg\(17) ) + ( \a[3][18]~q\ ) + ( \Add2~34\ ))
-- \Add2~38\ = CARRY(( \MulGen:2:Muls|auto_generated|result_output_reg\(17) ) + ( \a[3][18]~q\ ) + ( \Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[3][18]~q\,
	datad => \MulGen:2:Muls|auto_generated|ALT_INV_result_output_reg\(17),
	cin => \Add2~34\,
	sumout => \Add2~37_sumout\,
	cout => \Add2~38\);

-- Location: FF_X84_Y5_N52
\a[2][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][17]~q\);

-- Location: LABCELL_X83_Y8_N54
\MulGen:1:Muls|auto_generated|result_output_reg[17]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:1:Muls|auto_generated|result_output_reg[17]~feeder_combout\ = ( \MulGen:1:Muls|auto_generated|result_extra0_reg\(17) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:1:Muls|auto_generated|ALT_INV_result_extra0_reg\(17),
	combout => \MulGen:1:Muls|auto_generated|result_output_reg[17]~feeder_combout\);

-- Location: FF_X83_Y8_N56
\MulGen:1:Muls|auto_generated|result_output_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:1:Muls|auto_generated|result_output_reg[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:1:Muls|auto_generated|result_output_reg\(17));

-- Location: LABCELL_X83_Y5_N51
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( \MulGen:1:Muls|auto_generated|result_output_reg\(17) ) + ( \a[2][17]~q\ ) + ( \Add1~34\ ))
-- \Add1~38\ = CARRY(( \MulGen:1:Muls|auto_generated|result_output_reg\(17) ) + ( \a[2][17]~q\ ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[2][17]~q\,
	datac => \MulGen:1:Muls|auto_generated|ALT_INV_result_output_reg\(17),
	cin => \Add1~34\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: FF_X83_Y5_N52
\a[1][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[1][17]~q\);

-- Location: LABCELL_X83_Y2_N12
\MulGen:0:Muls|auto_generated|result_output_reg[17]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MulGen:0:Muls|auto_generated|result_output_reg[17]~feeder_combout\ = ( \MulGen:0:Muls|auto_generated|result_extra0_reg\(17) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MulGen:0:Muls|auto_generated|ALT_INV_result_extra0_reg\(17),
	combout => \MulGen:0:Muls|auto_generated|result_output_reg[17]~feeder_combout\);

-- Location: FF_X83_Y2_N14
\MulGen:0:Muls|auto_generated|result_output_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MulGen:0:Muls|auto_generated|result_output_reg[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MulGen:0:Muls|auto_generated|result_output_reg\(17));

-- Location: MLABCELL_X82_Y5_N51
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( \MulGen:0:Muls|auto_generated|result_output_reg\(17) ) + ( \a[1][17]~q\ ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( \MulGen:0:Muls|auto_generated|result_output_reg\(17) ) + ( \a[1][17]~q\ ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1][17]~q\,
	datac => \MulGen:0:Muls|auto_generated|ALT_INV_result_output_reg\(17),
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X82_Y5_N53
\a[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[0][17]~q\);

-- Location: MLABCELL_X84_Y5_N54
\Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~41_sumout\ = SUM(( \MulGen:2:Muls|auto_generated|result_output_reg\(17) ) + ( \a[3][18]~q\ ) + ( \Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[3][18]~q\,
	datad => \MulGen:2:Muls|auto_generated|ALT_INV_result_output_reg\(17),
	cin => \Add2~38\,
	sumout => \Add2~41_sumout\);

-- Location: FF_X84_Y5_N56
\a[2][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][18]~q\);

-- Location: LABCELL_X83_Y5_N54
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( \MulGen:1:Muls|auto_generated|result_output_reg\(17) ) + ( \a[2][18]~q\ ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MulGen:1:Muls|auto_generated|ALT_INV_result_output_reg\(17),
	datac => \ALT_INV_a[2][18]~q\,
	cin => \Add1~38\,
	sumout => \Add1~41_sumout\);

-- Location: FF_X83_Y5_N56
\a[1][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[1][18]~q\);

-- Location: MLABCELL_X82_Y5_N54
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( \a[1][18]~q\ ) + ( \MulGen:0:Muls|auto_generated|result_output_reg\(17) ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MulGen:0:Muls|auto_generated|ALT_INV_result_output_reg\(17),
	datad => \ALT_INV_a[1][18]~q\,
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\);

-- Location: FF_X82_Y5_N55
\a[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[0][18]~q\);

-- Location: MLABCELL_X6_Y7_N0
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


