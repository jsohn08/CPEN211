-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "09/26/2016 17:59:19"

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

ENTITY 	lab3_top IS
    PORT (
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	VGA_CLK : BUFFER std_logic;
	VGA_HS : BUFFER std_logic;
	VGA_VS : BUFFER std_logic;
	VGA_BLANK_N : BUFFER std_logic;
	VGA_SYNC_N : BUFFER std_logic;
	VGA_R : BUFFER std_logic_vector(7 DOWNTO 0);
	VGA_G : BUFFER std_logic_vector(7 DOWNTO 0);
	VGA_B : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END lab3_top;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_CLK	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_HS	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_VS	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_BLANK_N	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_SYNC_N	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[3]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[6]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[7]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[0]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[1]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[4]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[5]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[6]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[7]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[3]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[4]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[7]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab3_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_VGA_CLK : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_BLANK_N : std_logic;
SIGNAL ww_VGA_SYNC_N : std_logic;
SIGNAL ww_VGA_R : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(7 DOWNTO 0);
SIGNAL \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ram_block11a0_PORTADATAIN_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ram_block11a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ram_block11a0_PORTBADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \GFX|FB|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \GFX|FB|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \GFX|FB|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \GFX|FB|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \State|Add22~0_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \State|o_next[1]~1_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \State|x_next[1]~1_combout\ : std_logic;
SIGNAL \GameLogic|winx|topr|cout[1]~0_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \State|x_next[4]~4_combout\ : std_logic;
SIGNAL \State|x_next[2]~2_combout\ : std_logic;
SIGNAL \GameLogic|winx|leftc|cout[1]~0_combout\ : std_logic;
SIGNAL \GameLogic|winx|cout[2]~0_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \State|x_next[6]~6_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \State|xmov|out[5]~feeder_combout\ : std_logic;
SIGNAL \State|x_next[5]~5_combout\ : std_logic;
SIGNAL \GameLogic|blockx|cout[2]~10_combout\ : std_logic;
SIGNAL \GameLogic|blockx|cout[2]~11_combout\ : std_logic;
SIGNAL \GameLogic|adjacentx|WideNor0~3_combout\ : std_logic;
SIGNAL \GameLogic|winx|cout[2]~14_combout\ : std_logic;
SIGNAL \GameLogic|winx|cout[2]~6_combout\ : std_logic;
SIGNAL \GameLogic|winx|cout[4]~15_combout\ : std_logic;
SIGNAL \GameLogic|winx|cout[4]~7_combout\ : std_logic;
SIGNAL \GameLogic|winx|cout[0]~16_combout\ : std_logic;
SIGNAL \GameLogic|winx|cout[0]~12_combout\ : std_logic;
SIGNAL \GameLogic|comb|ra|g[26]~1_combout\ : std_logic;
SIGNAL \GameLogic|blockx|cout[6]~5_combout\ : std_logic;
SIGNAL \GameLogic|blockx|cout[6]~6_combout\ : std_logic;
SIGNAL \GameLogic|winx|cout[8]~11_combout\ : std_logic;
SIGNAL \GameLogic|winx|cout[6]~9_combout\ : std_logic;
SIGNAL \GameLogic|winx|cout[7]~10_combout\ : std_logic;
SIGNAL \GameLogic|comb|ra|g[33]~8_combout\ : std_logic;
SIGNAL \GameLogic|blockx|cout[7]~7_combout\ : std_logic;
SIGNAL \GameLogic|blockx|cout[8]~8_combout\ : std_logic;
SIGNAL \GameLogic|blockx|cout[8]~9_combout\ : std_logic;
SIGNAL \GameLogic|comb|out[6]~15_combout\ : std_logic;
SIGNAL \GameLogic|blockx|cout[5]~4_combout\ : std_logic;
SIGNAL \GameLogic|adjacentx|WideNor0~2_combout\ : std_logic;
SIGNAL \GameLogic|adjacentx|WideNor0~0_combout\ : std_logic;
SIGNAL \GameLogic|comb|ra|g[6]~7_combout\ : std_logic;
SIGNAL \GameLogic|winx|cout[4]~1_combout\ : std_logic;
SIGNAL \GameLogic|blockx|cout[4]~2_combout\ : std_logic;
SIGNAL \GameLogic|blockx|cout[4]~3_combout\ : std_logic;
SIGNAL \GameLogic|comb|out[6]~14_combout\ : std_logic;
SIGNAL \State|o_next[6]~6_combout\ : std_logic;
SIGNAL \GameLogic|winx|cout[6]~3_combout\ : std_logic;
SIGNAL \GameLogic|emptyx|ra|g[4]~1_combout\ : std_logic;
SIGNAL \GameLogic|emptyx|ra|g[4]~2_combout\ : std_logic;
SIGNAL \GameLogic|emptyx|ra|g[0]~6_combout\ : std_logic;
SIGNAL \GameLogic|winx|cout[8]~13_combout\ : std_logic;
SIGNAL \GameLogic|comb|out[7]~6_combout\ : std_logic;
SIGNAL \State|o_next[7]~7_combout\ : std_logic;
SIGNAL \GameLogic|adjacentx|WideNor0~1_combout\ : std_logic;
SIGNAL \GameLogic|adjacentx|WideNor0~4_combout\ : std_logic;
SIGNAL \GameLogic|comb|ra|g[21]~2_combout\ : std_logic;
SIGNAL \GameLogic|comb|ra|g[14]~4_combout\ : std_logic;
SIGNAL \GameLogic|comb|ra|g[32]~6_combout\ : std_logic;
SIGNAL \GameLogic|comb|out[5]~4_combout\ : std_logic;
SIGNAL \GameLogic|comb|ra|g[5]~5_combout\ : std_logic;
SIGNAL \GameLogic|comb|out[5]~5_combout\ : std_logic;
SIGNAL \State|o_next[5]~5_combout\ : std_logic;
SIGNAL \GameLogic|winx|cout[5]~2_combout\ : std_logic;
SIGNAL \GameLogic|winx|cout[7]~4_combout\ : std_logic;
SIGNAL \GameLogic|emptyx|ra|g[0]~3_combout\ : std_logic;
SIGNAL \GameLogic|comb|ra|c[5]~0_combout\ : std_logic;
SIGNAL \GameLogic|comb|ra|c[4]~1_combout\ : std_logic;
SIGNAL \GameLogic|comb|out[4]~10_combout\ : std_logic;
SIGNAL \GameLogic|comb|out[4]~3_combout\ : std_logic;
SIGNAL \State|o_next[4]~4_combout\ : std_logic;
SIGNAL \GameLogic|emptyx|ra|g[4]~0_combout\ : std_logic;
SIGNAL \GameLogic|emptyx|ra|g[0]~4_combout\ : std_logic;
SIGNAL \GameLogic|emptyx|ra|g[0]~5_combout\ : std_logic;
SIGNAL \GameLogic|comb|out[1]~13_combout\ : std_logic;
SIGNAL \GameLogic|comb|out[3]~2_combout\ : std_logic;
SIGNAL \State|o_next[3]~3_combout\ : std_logic;
SIGNAL \GameLogic|winx|cout[5]~8_combout\ : std_logic;
SIGNAL \GameLogic|comb|ra|g[31]~0_combout\ : std_logic;
SIGNAL \GameLogic|comb|out[2]~7_combout\ : std_logic;
SIGNAL \GameLogic|comb|out[2]~8_combout\ : std_logic;
SIGNAL \GameLogic|comb|out[2]~9_combout\ : std_logic;
SIGNAL \State|o_next[2]~2_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \State|x_update~1_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \State|x_update~2_combout\ : std_logic;
SIGNAL \State|x_update~0_combout\ : std_logic;
SIGNAL \State|x_update~3_combout\ : std_logic;
SIGNAL \State|x_next[0]~0_combout\ : std_logic;
SIGNAL \State|Add17~1_combout\ : std_logic;
SIGNAL \State|Add17~0_combout\ : std_logic;
SIGNAL \State|Add23~1_combout\ : std_logic;
SIGNAL \State|Add18~0_combout\ : std_logic;
SIGNAL \State|Add20~0_combout\ : std_logic;
SIGNAL \State|Add19~2_combout\ : std_logic;
SIGNAL \State|Add18~1_combout\ : std_logic;
SIGNAL \State|Add19~3_combout\ : std_logic;
SIGNAL \State|Add19~1_combout\ : std_logic;
SIGNAL \State|x_update~5_combout\ : std_logic;
SIGNAL \State|x_next[3]~3_combout\ : std_logic;
SIGNAL \Wins|WideAnd1~0_combout\ : std_logic;
SIGNAL \State|Add7~1_combout\ : std_logic;
SIGNAL \State|Add7~2_combout\ : std_logic;
SIGNAL \State|Add3~0_combout\ : std_logic;
SIGNAL \State|Add7~0_combout\ : std_logic;
SIGNAL \State|Add3~2_combout\ : std_logic;
SIGNAL \State|Add15~2_combout\ : std_logic;
SIGNAL \State|Add15~1_combout\ : std_logic;
SIGNAL \State|Add11~1_combout\ : std_logic;
SIGNAL \State|Add3~1_combout\ : std_logic;
SIGNAL \State|Add15~0_combout\ : std_logic;
SIGNAL \State|Add3~3_combout\ : std_logic;
SIGNAL \State|Add3~4_combout\ : std_logic;
SIGNAL \State|Add11~3_combout\ : std_logic;
SIGNAL \State|Add11~2_combout\ : std_logic;
SIGNAL \State|LessThan0~0_combout\ : std_logic;
SIGNAL \State|Add11~0_combout\ : std_logic;
SIGNAL \State|LessThan0~1_combout\ : std_logic;
SIGNAL \State|x_next[7]~7_combout\ : std_logic;
SIGNAL \State|Add22~1_combout\ : std_logic;
SIGNAL \State|Add23~0_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \State|Add19~0_combout\ : std_logic;
SIGNAL \WideOr0~1_combout\ : std_logic;
SIGNAL \State|x_update~4_combout\ : std_logic;
SIGNAL \State|x_next[8]~8_combout\ : std_logic;
SIGNAL \GameLogic|blockx|cout[0]~0_combout\ : std_logic;
SIGNAL \GameLogic|blockx|cout[0]~1_combout\ : std_logic;
SIGNAL \GameLogic|comb|ra|g[8]~9_combout\ : std_logic;
SIGNAL \GameLogic|comb|ra|g[8]~3_combout\ : std_logic;
SIGNAL \State|o_next[8]~8_combout\ : std_logic;
SIGNAL \GameLogic|winx|cout[8]~5_combout\ : std_logic;
SIGNAL \GameLogic|comb|out[1]~12_combout\ : std_logic;
SIGNAL \GameLogic|comb|out[1]~1_combout\ : std_logic;
SIGNAL \GameLogic|comb|out[0]~11_combout\ : std_logic;
SIGNAL \GameLogic|comb|out[0]~0_combout\ : std_logic;
SIGNAL \State|Add31~3_combout\ : std_logic;
SIGNAL \State|Add31~2_combout\ : std_logic;
SIGNAL \State|Add31~1_combout\ : std_logic;
SIGNAL \State|Add30~0_combout\ : std_logic;
SIGNAL \State|Add25~0_combout\ : std_logic;
SIGNAL \State|o_update~0_combout\ : std_logic;
SIGNAL \State|Add28~0_combout\ : std_logic;
SIGNAL \State|Add24~0_combout\ : std_logic;
SIGNAL \State|o_update~1_combout\ : std_logic;
SIGNAL \State|Add31~0_combout\ : std_logic;
SIGNAL \State|Add25~1_combout\ : std_logic;
SIGNAL \State|o_update~combout\ : std_logic;
SIGNAL \State|o_next[0]~0_combout\ : std_logic;
SIGNAL \GameLogic|blockx|topr|cout~0_combout\ : std_logic;
SIGNAL \GFX|FB|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\ : std_logic;
SIGNAL \GFX|FB|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\ : std_logic;
SIGNAL \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ : std_logic;
SIGNAL \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ : std_logic;
SIGNAL \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ : std_logic;
SIGNAL \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ : std_logic;
SIGNAL \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ : std_logic;
SIGNAL \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ : std_logic;
SIGNAL \GFX|FB|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\ : std_logic;
SIGNAL \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ : std_logic;
SIGNAL \GFX|FB|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\ : std_logic;
SIGNAL \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ : std_logic;
SIGNAL \GFX|FB|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\ : std_logic;
SIGNAL \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\ : std_logic;
SIGNAL \GFX|FB|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN6\ : std_logic;
SIGNAL \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\ : std_logic;
SIGNAL \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ : std_logic;
SIGNAL \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ : std_logic;
SIGNAL \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ : std_logic;
SIGNAL \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ : std_logic;
SIGNAL \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ : std_logic;
SIGNAL \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ : std_logic;
SIGNAL \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ : std_logic;
SIGNAL \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ : std_logic;
SIGNAL \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\ : std_logic;
SIGNAL \GFX|FB|VGA|Add1~21_sumout\ : std_logic;
SIGNAL \GFX|FB|VGA|Add1~22\ : std_logic;
SIGNAL \GFX|FB|VGA|Add1~29_sumout\ : std_logic;
SIGNAL \GFX|FB|VGA|Add1~30\ : std_logic;
SIGNAL \GFX|FB|VGA|Add1~33_sumout\ : std_logic;
SIGNAL \GFX|FB|VGA|Add1~34\ : std_logic;
SIGNAL \GFX|FB|VGA|Add1~25_sumout\ : std_logic;
SIGNAL \GFX|FB|VGA|Add1~26\ : std_logic;
SIGNAL \GFX|FB|VGA|Add1~1_sumout\ : std_logic;
SIGNAL \GFX|FB|VGA|Add1~2\ : std_logic;
SIGNAL \GFX|FB|VGA|Add1~9_sumout\ : std_logic;
SIGNAL \GFX|FB|VGA|Add1~10\ : std_logic;
SIGNAL \GFX|FB|VGA|Add1~13_sumout\ : std_logic;
SIGNAL \GFX|FB|VGA|Add1~14\ : std_logic;
SIGNAL \GFX|FB|VGA|Add1~5_sumout\ : std_logic;
SIGNAL \GFX|FB|VGA|Add1~6\ : std_logic;
SIGNAL \GFX|FB|VGA|Add1~17_sumout\ : std_logic;
SIGNAL \GFX|FB|VGA|Add1~18\ : std_logic;
SIGNAL \GFX|FB|VGA|Add1~37_sumout\ : std_logic;
SIGNAL \GFX|FB|VGA|pixel_counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \GFX|FB|VGA|Equal4~0_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|Equal0~0_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|Equal5~0_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|early_hsync_pulse~0_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|early_hsync_pulse~q\ : std_logic;
SIGNAL \GFX|FB|VGA|hsync_pulse~q\ : std_logic;
SIGNAL \GFX|FB|VGA|vga_h_sync~0_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|vga_h_sync~q\ : std_logic;
SIGNAL \GFX|FB|VGA|Add0~21_sumout\ : std_logic;
SIGNAL \GFX|FB|VGA|Add0~2\ : std_logic;
SIGNAL \GFX|FB|VGA|Add0~13_sumout\ : std_logic;
SIGNAL \GFX|FB|VGA|Add0~14\ : std_logic;
SIGNAL \GFX|FB|VGA|Add0~17_sumout\ : std_logic;
SIGNAL \GFX|FB|VGA|Add0~18\ : std_logic;
SIGNAL \GFX|FB|VGA|Add0~5_sumout\ : std_logic;
SIGNAL \GFX|FB|VGA|Add0~6\ : std_logic;
SIGNAL \GFX|FB|VGA|Add0~9_sumout\ : std_logic;
SIGNAL \GFX|FB|VGA|Add0~10\ : std_logic;
SIGNAL \GFX|FB|VGA|Add0~25_sumout\ : std_logic;
SIGNAL \GFX|FB|VGA|Add0~26\ : std_logic;
SIGNAL \GFX|FB|VGA|Add0~29_sumout\ : std_logic;
SIGNAL \GFX|FB|VGA|Add0~30\ : std_logic;
SIGNAL \GFX|FB|VGA|Add0~33_sumout\ : std_logic;
SIGNAL \GFX|FB|VGA|Add0~34\ : std_logic;
SIGNAL \GFX|FB|VGA|Add0~37_sumout\ : std_logic;
SIGNAL \GFX|FB|VGA|line_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \GFX|FB|VGA|Equal3~1_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|Equal3~0_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|Equal3~2_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|Add0~22\ : std_logic;
SIGNAL \GFX|FB|VGA|Add0~1_sumout\ : std_logic;
SIGNAL \GFX|FB|VGA|line_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \GFX|FB|VGA|Equal1~0_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|early_vsync_pulse~0_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|Equal2~0_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|early_vsync_pulse~1_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|early_vsync_pulse~q\ : std_logic;
SIGNAL \GFX|FB|VGA|vsync_pulse~q\ : std_logic;
SIGNAL \GFX|FB|VGA|vga_v_sync~0_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|vga_v_sync~q\ : std_logic;
SIGNAL \GFX|FB|VGA|Equal2~1_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|hblanking_pulse~0_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|hblanking_pulse~q\ : std_logic;
SIGNAL \GFX|FB|VGA|Equal1~1_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|vblanking_pulse~0_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|vblanking_pulse~q\ : std_logic;
SIGNAL \GFX|FB|VGA|blanking_pulse~0_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|blanking_pulse~q\ : std_logic;
SIGNAL \GFX|FB|VGA|vga_blank~0_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|vga_blank~q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a1~DUPLICATE_q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a5~q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a2~0_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a2~q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|_~2_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a5~0_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a5~DUPLICATE_q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg[5]~feeder_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor5~combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g[4]~feeder_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[4]~feeder_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe18a[4]~feeder_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor4~combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[3]~feeder_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor3~combout\ : std_logic;
SIGNAL \GFX|RASTER|raster_valid_next~0_combout\ : std_logic;
SIGNAL \GFX|SHADER|comb~12_combout\ : std_logic;
SIGNAL \GFX|SHADER|comb~6_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|_~1_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a4~q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a3~0_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a3~q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a4~0_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a4~DUPLICATE_q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|xor3~combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a5~0_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a5~q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g[5]~DUPLICATE_q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|xor2~combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ws_bwp|dffe15a[2]~feeder_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[2]~feeder_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg[2]~feeder_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor2~combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[1]~feeder_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor1~combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|xor1~combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|xor0~combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g[0]~0_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g[0]~DUPLICATE_q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[0]~feeder_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe18a[0]~feeder_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor0~combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|op_1~26_cout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|op_1~27\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|op_1~22_cout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|op_1~23\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|op_1~18_cout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|op_1~19\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|op_1~14_cout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|op_1~15\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|op_1~2\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|op_1~3\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|op_1~5_sumout\ : std_logic;
SIGNAL \GFX|FB|WideAnd0~0_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a1~q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a1~0_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a1~DUPLICATE_q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|_~2_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a6~0_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a6~q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a7~0_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a7~q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g[7]~DUPLICATE_q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|xor5~combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|xor4~combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|op_1~1_sumout\ : std_logic;
SIGNAL \GFX|FB|WideAnd0~combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a2~0_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a2~q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|_~5_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|_~4_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|_~3_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|parity9~q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|_~0_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a0~q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g[0]~0_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g[2]~DUPLICATE_q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a[2]~feeder_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|delayed_wrptr_g[3]~feeder_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe13a[3]~feeder_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|delayed_wrptr_g[1]~feeder_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_lsb_aeb~q\ : std_logic;
SIGNAL \GFX|RASTER|R_REG|out[0]~0_combout\ : std_logic;
SIGNAL \GFX|RASTER|Add0~25_sumout\ : std_logic;
SIGNAL \GFX|RASTER|X_REG|out[0]~6_combout\ : std_logic;
SIGNAL \GFX|RASTER|Add0~26\ : std_logic;
SIGNAL \GFX|RASTER|Add0~33_sumout\ : std_logic;
SIGNAL \GFX|RASTER|X_REG|out[1]~8_combout\ : std_logic;
SIGNAL \GFX|RASTER|Add0~34\ : std_logic;
SIGNAL \GFX|RASTER|Add0~29_sumout\ : std_logic;
SIGNAL \GFX|RASTER|X_REG|out[2]~7_combout\ : std_logic;
SIGNAL \GFX|RASTER|Add0~30\ : std_logic;
SIGNAL \GFX|RASTER|Add0~37_sumout\ : std_logic;
SIGNAL \GFX|RASTER|X_REG|out[3]~9_combout\ : std_logic;
SIGNAL \GFX|RASTER|Add0~38\ : std_logic;
SIGNAL \GFX|RASTER|Add0~21_sumout\ : std_logic;
SIGNAL \GFX|RASTER|X_REG|out[4]~5_combout\ : std_logic;
SIGNAL \GFX|RASTER|Add0~22\ : std_logic;
SIGNAL \GFX|RASTER|Add0~9_sumout\ : std_logic;
SIGNAL \GFX|RASTER|X_REG|out[5]~2_combout\ : std_logic;
SIGNAL \GFX|RASTER|Equal0~0_combout\ : std_logic;
SIGNAL \GFX|RASTER|Add0~10\ : std_logic;
SIGNAL \GFX|RASTER|Add0~6\ : std_logic;
SIGNAL \GFX|RASTER|Add0~13_sumout\ : std_logic;
SIGNAL \GFX|RASTER|X_REG|out[7]~3_combout\ : std_logic;
SIGNAL \GFX|RASTER|Add0~14\ : std_logic;
SIGNAL \GFX|RASTER|Add0~1_sumout\ : std_logic;
SIGNAL \GFX|RASTER|X_REG|out[8]~0_combout\ : std_logic;
SIGNAL \GFX|RASTER|Add0~2\ : std_logic;
SIGNAL \GFX|RASTER|Add0~17_sumout\ : std_logic;
SIGNAL \GFX|RASTER|X_REG|out[9]~4_combout\ : std_logic;
SIGNAL \GFX|RASTER|Equal0~1_combout\ : std_logic;
SIGNAL \GFX|RASTER|Add0~5_sumout\ : std_logic;
SIGNAL \GFX|RASTER|X_REG|out[6]~1_combout\ : std_logic;
SIGNAL \GFX|SHADER|comb~0_combout\ : std_logic;
SIGNAL \GFX|SHADER|comb~2_combout\ : std_logic;
SIGNAL \GFX|FB|data_in[24]~0_combout\ : std_logic;
SIGNAL \GFX|SHADER|board_position~1_combout\ : std_logic;
SIGNAL \GFX|SHADER|board_position~2_combout\ : std_logic;
SIGNAL \GFX|SHADER|board_position~5_combout\ : std_logic;
SIGNAL \GFX|SHADER|board_position~4_combout\ : std_logic;
SIGNAL \GFX|SHADER|board_position~3_combout\ : std_logic;
SIGNAL \GFX|SHADER|WideOr0~7_combout\ : std_logic;
SIGNAL \GFX|SHADER|board_position~0_combout\ : std_logic;
SIGNAL \GFX|SHADER|LessThan11~0_combout\ : std_logic;
SIGNAL \GFX|SHADER|on_yborder~3_combout\ : std_logic;
SIGNAL \GFX|SHADER|WideOr0~8_combout\ : std_logic;
SIGNAL \GFX|RASTER|Equal0~2_combout\ : std_logic;
SIGNAL \GFX|RASTER|Add1~13_sumout\ : std_logic;
SIGNAL \GFX|RASTER|y_new_reset[0]~3_combout\ : std_logic;
SIGNAL \GFX|RASTER|Add1~14\ : std_logic;
SIGNAL \GFX|RASTER|Add1~17_sumout\ : std_logic;
SIGNAL \GFX|RASTER|y_new_reset[1]~4_combout\ : std_logic;
SIGNAL \GFX|RASTER|Add1~18\ : std_logic;
SIGNAL \GFX|RASTER|Add1~21_sumout\ : std_logic;
SIGNAL \GFX|RASTER|y_new_reset[2]~5_combout\ : std_logic;
SIGNAL \GFX|RASTER|Add1~22\ : std_logic;
SIGNAL \GFX|RASTER|Add1~9_sumout\ : std_logic;
SIGNAL \GFX|RASTER|y_new_reset[3]~2_combout\ : std_logic;
SIGNAL \GFX|RASTER|Add1~10\ : std_logic;
SIGNAL \GFX|RASTER|Add1~29_sumout\ : std_logic;
SIGNAL \GFX|RASTER|y_new_reset[4]~7_combout\ : std_logic;
SIGNAL \GFX|RASTER|Equal1~0_combout\ : std_logic;
SIGNAL \GFX|RASTER|Add1~30\ : std_logic;
SIGNAL \GFX|RASTER|Add1~25_sumout\ : std_logic;
SIGNAL \GFX|RASTER|y_new_reset[5]~6_combout\ : std_logic;
SIGNAL \GFX|RASTER|Add1~26\ : std_logic;
SIGNAL \GFX|RASTER|Add1~34\ : std_logic;
SIGNAL \GFX|RASTER|Add1~5_sumout\ : std_logic;
SIGNAL \GFX|RASTER|y_new_reset[7]~1_combout\ : std_logic;
SIGNAL \GFX|RASTER|Add1~6\ : std_logic;
SIGNAL \GFX|RASTER|Add1~1_sumout\ : std_logic;
SIGNAL \GFX|RASTER|y_new_reset[8]~0_combout\ : std_logic;
SIGNAL \GFX|RASTER|Add1~2\ : std_logic;
SIGNAL \GFX|RASTER|Add1~37_sumout\ : std_logic;
SIGNAL \GFX|RASTER|y_new_reset[9]~9_combout\ : std_logic;
SIGNAL \GFX|RASTER|Equal1~1_combout\ : std_logic;
SIGNAL \GFX|RASTER|Selector18~0_combout\ : std_logic;
SIGNAL \GFX|RASTER|Add1~33_sumout\ : std_logic;
SIGNAL \GFX|RASTER|y_new_reset[6]~8_combout\ : std_logic;
SIGNAL \GFX|SHADER|YCD|out[7]~feeder_combout\ : std_logic;
SIGNAL \GFX|SHADER|LessThan10~1_combout\ : std_logic;
SIGNAL \GFX|SHADER|S_Y|out[0]~DUPLICATE_q\ : std_logic;
SIGNAL \GFX|SHADER|YCD|out[2]~feeder_combout\ : std_logic;
SIGNAL \GFX|SHADER|YCD|out[2]~DUPLICATE_q\ : std_logic;
SIGNAL \GFX|SHADER|LessThan7~0_combout\ : std_logic;
SIGNAL \GFX|SHADER|LessThan18~0_combout\ : std_logic;
SIGNAL \GFX|SHADER|WideOr0~6_combout\ : std_logic;
SIGNAL \GFX|SHADER|shader_pixel_rgba[9]~5_combout\ : std_logic;
SIGNAL \GFX|SHADER|WideOr0~4_combout\ : std_logic;
SIGNAL \GFX|SHADER|WideOr0~5_combout\ : std_logic;
SIGNAL \GFX|SHADER|Add6~34_cout\ : std_logic;
SIGNAL \GFX|SHADER|Add6~30_cout\ : std_logic;
SIGNAL \GFX|SHADER|Add6~26_cout\ : std_logic;
SIGNAL \GFX|SHADER|Add6~18\ : std_logic;
SIGNAL \GFX|SHADER|Add6~22\ : std_logic;
SIGNAL \GFX|SHADER|Add6~9_sumout\ : std_logic;
SIGNAL \GFX|SHADER|Add6~10\ : std_logic;
SIGNAL \GFX|SHADER|Add6~13_sumout\ : std_logic;
SIGNAL \GFX|SHADER|WideOr3~17_combout\ : std_logic;
SIGNAL \GFX|SHADER|Add6~21_sumout\ : std_logic;
SIGNAL \GFX|SHADER|Add6~17_sumout\ : std_logic;
SIGNAL \GFX|SHADER|WideOr3~4_combout\ : std_logic;
SIGNAL \GFX|SHADER|Add6~14\ : std_logic;
SIGNAL \GFX|SHADER|Add6~2\ : std_logic;
SIGNAL \GFX|SHADER|Add6~5_sumout\ : std_logic;
SIGNAL \GFX|SHADER|Add6~1_sumout\ : std_logic;
SIGNAL \GFX|SHADER|WideOr3~18_combout\ : std_logic;
SIGNAL \GFX|SHADER|on_yborder~1_combout\ : std_logic;
SIGNAL \GFX|SHADER|on_yborder~2_combout\ : std_logic;
SIGNAL \GFX|SHADER|on_yborder~0_combout\ : std_logic;
SIGNAL \GFX|SHADER|LessThan7~1_combout\ : std_logic;
SIGNAL \GFX|SHADER|on_xborder~0_combout\ : std_logic;
SIGNAL \GFX|SHADER|comb~1_combout\ : std_logic;
SIGNAL \GFX|SHADER|comb~3_combout\ : std_logic;
SIGNAL \GFX|SHADER|Add7~26_cout\ : std_logic;
SIGNAL \GFX|SHADER|Add7~18\ : std_logic;
SIGNAL \GFX|SHADER|Add7~22\ : std_logic;
SIGNAL \GFX|SHADER|Add7~10\ : std_logic;
SIGNAL \GFX|SHADER|Add7~14\ : std_logic;
SIGNAL \GFX|SHADER|Add7~1_sumout\ : std_logic;
SIGNAL \GFX|SHADER|Add7~2\ : std_logic;
SIGNAL \GFX|SHADER|Add7~5_sumout\ : std_logic;
SIGNAL \GFX|SHADER|Add7~9_sumout\ : std_logic;
SIGNAL \GFX|SHADER|Add7~13_sumout\ : std_logic;
SIGNAL \GFX|SHADER|WideOr3~0_combout\ : std_logic;
SIGNAL \GFX|SHADER|Add7~21_sumout\ : std_logic;
SIGNAL \GFX|SHADER|Add7~17_sumout\ : std_logic;
SIGNAL \GFX|SHADER|WideOr3~1_combout\ : std_logic;
SIGNAL \GFX|SHADER|WideOr3~2_combout\ : std_logic;
SIGNAL \GFX|SHADER|WideOr3~13_combout\ : std_logic;
SIGNAL \GFX|SHADER|WideOr3~8_combout\ : std_logic;
SIGNAL \GFX|SHADER|WideOr3~6_combout\ : std_logic;
SIGNAL \GFX|SHADER|WideOr3~11_combout\ : std_logic;
SIGNAL \GFX|SHADER|WideOr3~12_combout\ : std_logic;
SIGNAL \GFX|SHADER|WideOr3~10_combout\ : std_logic;
SIGNAL \GFX|SHADER|WideOr3~20_combout\ : std_logic;
SIGNAL \GFX|SHADER|WideOr3~7_combout\ : std_logic;
SIGNAL \GFX|SHADER|WideOr3~19_combout\ : std_logic;
SIGNAL \GFX|SHADER|WideOr3~21_combout\ : std_logic;
SIGNAL \GFX|SHADER|WideOr3~16_combout\ : std_logic;
SIGNAL \GFX|SHADER|shader_pixel_rgba[9]~4_combout\ : std_logic;
SIGNAL \GFX|SHADER|WideOr0~0_combout\ : std_logic;
SIGNAL \GFX|SHADER|LessThan8~0_combout\ : std_logic;
SIGNAL \GFX|SHADER|WideOr0~2_combout\ : std_logic;
SIGNAL \GFX|SHADER|WideOr0~1_combout\ : std_logic;
SIGNAL \GFX|SHADER|WideOr0~3_combout\ : std_logic;
SIGNAL \GFX|SHADER|Add1~1_combout\ : std_logic;
SIGNAL \GFX|SHADER|Add2~14\ : std_logic;
SIGNAL \GFX|SHADER|Add2~18\ : std_logic;
SIGNAL \GFX|SHADER|Add2~22\ : std_logic;
SIGNAL \GFX|SHADER|Add2~26\ : std_logic;
SIGNAL \GFX|SHADER|Add2~1_sumout\ : std_logic;
SIGNAL \GFX|SHADER|Add0~14\ : std_logic;
SIGNAL \GFX|SHADER|Add0~18\ : std_logic;
SIGNAL \GFX|SHADER|Add0~22\ : std_logic;
SIGNAL \GFX|SHADER|Add0~26\ : std_logic;
SIGNAL \GFX|SHADER|Add0~1_sumout\ : std_logic;
SIGNAL \GFX|SHADER|comb~8_combout\ : std_logic;
SIGNAL \GFX|SHADER|comb~9_combout\ : std_logic;
SIGNAL \GFX|SHADER|LessThan3~0_combout\ : std_logic;
SIGNAL \GFX|SHADER|Add1~0_combout\ : std_logic;
SIGNAL \GFX|SHADER|comb~10_combout\ : std_logic;
SIGNAL \GFX|SHADER|comb~7_combout\ : std_logic;
SIGNAL \GFX|SHADER|comb~17_combout\ : std_logic;
SIGNAL \GFX|SHADER|shader_addr[0]~0_combout\ : std_logic;
SIGNAL \GFX|SHADER|Add2~2\ : std_logic;
SIGNAL \GFX|SHADER|Add2~5_sumout\ : std_logic;
SIGNAL \GFX|SHADER|Add0~2\ : std_logic;
SIGNAL \GFX|SHADER|Add0~5_sumout\ : std_logic;
SIGNAL \GFX|SHADER|shader_addr[1]~1_combout\ : std_logic;
SIGNAL \GFX|SHADER|Add2~6\ : std_logic;
SIGNAL \GFX|SHADER|Add2~9_sumout\ : std_logic;
SIGNAL \GFX|SHADER|Add0~6\ : std_logic;
SIGNAL \GFX|SHADER|Add0~9_sumout\ : std_logic;
SIGNAL \GFX|SHADER|shader_addr[2]~9_combout\ : std_logic;
SIGNAL \GFX|SHADER|S_Y|out[8]~DUPLICATE_q\ : std_logic;
SIGNAL \GFX|SHADER|comb~11_combout\ : std_logic;
SIGNAL \GFX|SHADER|LessThan6~0_combout\ : std_logic;
SIGNAL \GFX|SHADER|comb~13_combout\ : std_logic;
SIGNAL \GFX|SHADER|LessThan6~1_combout\ : std_logic;
SIGNAL \GFX|SHADER|Add4~1_sumout\ : std_logic;
SIGNAL \GFX|SHADER|Add3~1_sumout\ : std_logic;
SIGNAL \GFX|SHADER|Add5~1_sumout\ : std_logic;
SIGNAL \GFX|SHADER|shader_addr[3]~2_combout\ : std_logic;
SIGNAL \GFX|SHADER|Add5~2\ : std_logic;
SIGNAL \GFX|SHADER|Add5~5_sumout\ : std_logic;
SIGNAL \GFX|SHADER|Add3~2\ : std_logic;
SIGNAL \GFX|SHADER|Add3~5_sumout\ : std_logic;
SIGNAL \GFX|SHADER|Add4~2\ : std_logic;
SIGNAL \GFX|SHADER|Add4~5_sumout\ : std_logic;
SIGNAL \GFX|SHADER|shader_addr[4]~3_combout\ : std_logic;
SIGNAL \GFX|SHADER|Add4~6\ : std_logic;
SIGNAL \GFX|SHADER|Add4~9_sumout\ : std_logic;
SIGNAL \GFX|SHADER|Add5~6\ : std_logic;
SIGNAL \GFX|SHADER|Add5~9_sumout\ : std_logic;
SIGNAL \GFX|SHADER|Add3~6\ : std_logic;
SIGNAL \GFX|SHADER|Add3~9_sumout\ : std_logic;
SIGNAL \GFX|SHADER|shader_addr[5]~4_combout\ : std_logic;
SIGNAL \GFX|SHADER|Add5~10\ : std_logic;
SIGNAL \GFX|SHADER|Add5~13_sumout\ : std_logic;
SIGNAL \GFX|SHADER|Add3~10\ : std_logic;
SIGNAL \GFX|SHADER|Add3~13_sumout\ : std_logic;
SIGNAL \GFX|SHADER|Add4~10\ : std_logic;
SIGNAL \GFX|SHADER|Add4~13_sumout\ : std_logic;
SIGNAL \GFX|SHADER|shader_addr[6]~5_combout\ : std_logic;
SIGNAL \GFX|SHADER|Add5~14\ : std_logic;
SIGNAL \GFX|SHADER|Add5~17_sumout\ : std_logic;
SIGNAL \GFX|SHADER|Add4~14\ : std_logic;
SIGNAL \GFX|SHADER|Add4~17_sumout\ : std_logic;
SIGNAL \GFX|SHADER|Add3~14\ : std_logic;
SIGNAL \GFX|SHADER|Add3~17_sumout\ : std_logic;
SIGNAL \GFX|SHADER|shader_addr[7]~6_combout\ : std_logic;
SIGNAL \GFX|SHADER|Add4~18\ : std_logic;
SIGNAL \GFX|SHADER|Add4~21_sumout\ : std_logic;
SIGNAL \GFX|SHADER|Add5~18\ : std_logic;
SIGNAL \GFX|SHADER|Add5~21_sumout\ : std_logic;
SIGNAL \GFX|SHADER|Add3~18\ : std_logic;
SIGNAL \GFX|SHADER|Add3~21_sumout\ : std_logic;
SIGNAL \GFX|SHADER|shader_addr[8]~7_combout\ : std_logic;
SIGNAL \GFX|SHADER|Add3~22\ : std_logic;
SIGNAL \GFX|SHADER|Add3~25_sumout\ : std_logic;
SIGNAL \GFX|SHADER|Add5~22\ : std_logic;
SIGNAL \GFX|SHADER|Add5~25_sumout\ : std_logic;
SIGNAL \GFX|SHADER|Add4~22\ : std_logic;
SIGNAL \GFX|SHADER|Add4~25_sumout\ : std_logic;
SIGNAL \GFX|SHADER|shader_addr[9]~8_combout\ : std_logic;
SIGNAL \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \GFX|SHADER|Add0~13_sumout\ : std_logic;
SIGNAL \GFX|SHADER|Add2~13_sumout\ : std_logic;
SIGNAL \GFX|SHADER|coor_ximg[0]~0_combout\ : std_logic;
SIGNAL \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \GFX|SHADER|Add2~17_sumout\ : std_logic;
SIGNAL \GFX|SHADER|Add0~17_sumout\ : std_logic;
SIGNAL \GFX|SHADER|coor_ximg[1]~1_combout\ : std_logic;
SIGNAL \GFX|SHADER|Mux0~1_combout\ : std_logic;
SIGNAL \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \GFX|SHADER|XD|out[0]~DUPLICATE_q\ : std_logic;
SIGNAL \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a0\ : std_logic;
SIGNAL \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \GFX|SHADER|Mux0~3_combout\ : std_logic;
SIGNAL \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a6~portadataout\ : std_logic;
SIGNAL \GFX|SHADER|Mux0~2_combout\ : std_logic;
SIGNAL \GFX|SHADER|Add0~25_sumout\ : std_logic;
SIGNAL \GFX|SHADER|Add2~25_sumout\ : std_logic;
SIGNAL \GFX|SHADER|coor_ximg[3]~3_combout\ : std_logic;
SIGNAL \GFX|SHADER|Add0~21_sumout\ : std_logic;
SIGNAL \GFX|SHADER|Add2~21_sumout\ : std_logic;
SIGNAL \GFX|SHADER|coor_ximg[2]~2_combout\ : std_logic;
SIGNAL \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \GFX|SHADER|Mux0~0_combout\ : std_logic;
SIGNAL \GFX|SHADER|Mux0~4_combout\ : std_logic;
SIGNAL \GFX|SHADER|LessThan10~0_combout\ : std_logic;
SIGNAL \GFX|SHADER|on_yborder~4_combout\ : std_logic;
SIGNAL \GFX|SHADER|WideOr0~9_combout\ : std_logic;
SIGNAL \GFX|SHADER|shader_pixel_rgba[9]~3_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g[3]~DUPLICATE_q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a0~_wirecell_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \GFX|SHADER|comb~4_combout\ : std_logic;
SIGNAL \GFX|SHADER|WideOr1~5_combout\ : std_logic;
SIGNAL \GFX|SHADER|WideOr1~6_combout\ : std_logic;
SIGNAL \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \GFX|SHADER|Mux1~2_combout\ : std_logic;
SIGNAL \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \GFX|SHADER|Mux1~0_combout\ : std_logic;
SIGNAL \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \GFX|SHADER|Mux1~3_combout\ : std_logic;
SIGNAL \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \GFX|SHADER|Mux1~1_combout\ : std_logic;
SIGNAL \GFX|SHADER|Mux1~4_combout\ : std_logic;
SIGNAL \GFX|SHADER|WideOr1~1_combout\ : std_logic;
SIGNAL \GFX|SHADER|WideOr1~0_combout\ : std_logic;
SIGNAL \GFX|SHADER|WideOr1~2_combout\ : std_logic;
SIGNAL \GFX|SHADER|WideOr1~3_combout\ : std_logic;
SIGNAL \GFX|SHADER|WideOr1~4_combout\ : std_logic;
SIGNAL \GFX|SHADER|comb~5_combout\ : std_logic;
SIGNAL \GFX|SHADER|WideOr3~14_combout\ : std_logic;
SIGNAL \GFX|SHADER|WideOr3~5_combout\ : std_logic;
SIGNAL \GFX|SHADER|WideOr3~9_combout\ : std_logic;
SIGNAL \GFX|SHADER|WideOr3~3_combout\ : std_logic;
SIGNAL \GFX|SHADER|WideOr3~15_combout\ : std_logic;
SIGNAL \GFX|SHADER|shader_pixel_rgba[8]~1_combout\ : std_logic;
SIGNAL \GFX|SHADER|shader_pixel_rgba[9]~2_combout\ : std_logic;
SIGNAL \GFX|SHADER|shader_pixel_rgba[16]~0_combout\ : std_logic;
SIGNAL \GFX|SHADER|Add12~18\ : std_logic;
SIGNAL \GFX|SHADER|Add12~19\ : std_logic;
SIGNAL \GFX|SHADER|Add12~22\ : std_logic;
SIGNAL \GFX|SHADER|Add12~23\ : std_logic;
SIGNAL \GFX|SHADER|Add12~26\ : std_logic;
SIGNAL \GFX|SHADER|Add12~27\ : std_logic;
SIGNAL \GFX|SHADER|Add12~30\ : std_logic;
SIGNAL \GFX|SHADER|Add12~31\ : std_logic;
SIGNAL \GFX|SHADER|Add12~34\ : std_logic;
SIGNAL \GFX|SHADER|Add12~35\ : std_logic;
SIGNAL \GFX|SHADER|Add12~38\ : std_logic;
SIGNAL \GFX|SHADER|Add12~39\ : std_logic;
SIGNAL \GFX|SHADER|Add12~42\ : std_logic;
SIGNAL \GFX|SHADER|Add12~43\ : std_logic;
SIGNAL \GFX|SHADER|Add12~46\ : std_logic;
SIGNAL \GFX|SHADER|Add12~47\ : std_logic;
SIGNAL \GFX|SHADER|Add12~50\ : std_logic;
SIGNAL \GFX|SHADER|Add12~51\ : std_logic;
SIGNAL \GFX|SHADER|Add12~1_sumout\ : std_logic;
SIGNAL \GFX|FB|data_in[24]~1_combout\ : std_logic;
SIGNAL \GFX|SHADER|Add12~29_sumout\ : std_logic;
SIGNAL \GFX|SHADER|Add12~21_sumout\ : std_logic;
SIGNAL \GFX|SHADER|Add12~25_sumout\ : std_logic;
SIGNAL \GFX|SHADER|Add12~17_sumout\ : std_logic;
SIGNAL \GFX|FB|data_in[24]~2_combout\ : std_logic;
SIGNAL \GFX|FB|data_in[24]~3_combout\ : std_logic;
SIGNAL \GFX|SHADER|Add12~41_sumout\ : std_logic;
SIGNAL \GFX|SHADER|Add12~33_sumout\ : std_logic;
SIGNAL \GFX|SHADER|Add12~49_sumout\ : std_logic;
SIGNAL \GFX|SHADER|Add12~45_sumout\ : std_logic;
SIGNAL \GFX|SHADER|Add12~37_sumout\ : std_logic;
SIGNAL \GFX|FB|data_in[24]~4_combout\ : std_logic;
SIGNAL \GFX|SHADER|Add12~2\ : std_logic;
SIGNAL \GFX|SHADER|Add12~3\ : std_logic;
SIGNAL \GFX|SHADER|Add12~5_sumout\ : std_logic;
SIGNAL \GFX|SHADER|Add12~6\ : std_logic;
SIGNAL \GFX|SHADER|Add12~7\ : std_logic;
SIGNAL \GFX|SHADER|Add12~10\ : std_logic;
SIGNAL \GFX|SHADER|Add12~11\ : std_logic;
SIGNAL \GFX|SHADER|Add12~13_sumout\ : std_logic;
SIGNAL \GFX|SHADER|Add12~9_sumout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g[7]~feeder_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe13a[7]~feeder_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a[6]~feeder_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_msb_mux|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_msb_mux|l1_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_msb_mux|l1_w0_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_msb_aeb~q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|int_rdempty~combout\ : std_logic;
SIGNAL \GFX|FB|VGA|always2~0_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|end_of_active_frame~q\ : std_logic;
SIGNAL \GFX|FB|VGA|always4~0_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|end_of_frame~q\ : std_logic;
SIGNAL \GFX|FB|WideOr0~0_combout\ : std_logic;
SIGNAL \GFX|FB|WideOr1~0_combout\ : std_logic;
SIGNAL \GFX|FB|comb~1_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a1~0_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a1~q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a3~0_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a3~q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a7~0_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a7~q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|_~4_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|_~3_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|parity6~q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|_~0_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a0~q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|_~1_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a4~0_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a4~q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a6~0_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a6~q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[6]~feeder_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg[6]~feeder_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[7]~feeder_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor6~combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|op_1~6\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|op_1~7\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|op_1~9_sumout\ : std_logic;
SIGNAL \GFX|FB|comb~0_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|vga_red[2]~feeder_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|vga_red[5]~feeder_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|vga_red[6]~feeder_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|vga_red[7]~feeder_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|vga_red[9]~feeder_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|vga_green[4]~feeder_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|vga_green[5]~feeder_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|vga_green[7]~feeder_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|vga_blue[3]~feeder_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|vga_blue[6]~feeder_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|vga_blue[8]~feeder_combout\ : std_logic;
SIGNAL \State|xreg|out\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \State|oreg|out\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \GFX|FB|data_in\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ws_bwp|dffe15a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \GFX|SHADER|S_CTRL2|out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \GFX|FB|VGA|vga_red\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \GFX|FB|VGA|vga_green\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \GFX|FB|VGA|vga_blue\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|sub_parity10a\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \GFX|FB|VGA|pixel_counter\ : std_logic_vector(10 DOWNTO 1);
SIGNAL \GFX|FB|VGA|line_counter\ : std_logic_vector(10 DOWNTO 1);
SIGNAL \GFX|SHADER|S_CTRL1|out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \GFX|FB|state\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \GFX|RASTER|CTRL|out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \State|xmov|out\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Wins|win_line\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \GameLogic|blockx|cout\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \GameLogic|winx|cout\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \GameLogic|comb|ra|g\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \GameLogic|comb|out\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \State|o_new\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ram_address_b\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \GFX|SHADER|YCD|out\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \GFX|SHADER|XCD|out\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \GFX|SHADER|XD|out\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe13a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ram_address_a\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \GFX|RASTER|Y_REG|out\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ws_brp|dffe15a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \GFX|SHADER|S_Y|out\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe18a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \GFX|SHADER|S_X|out\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \GFX|RASTER|X_REG|out\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|sub_parity7a\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \GFX|FB|Data_FIFO|auto_generated|delayed_wrptr_g\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \GFX|RASTER|R_REG|out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \GFX|FB|altera_pll_i|fboutclk_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \GFX|FB|altera_pll_i|outclk_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \GFX|SHADER|XCD|ALT_INV_out\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \GFX|SHADER|ALT_INV_on_xborder~0_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_LessThan18~0_combout\ : std_logic;
SIGNAL \GFX|SHADER|YCD|ALT_INV_out\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \GFX|SHADER|ALT_INV_LessThan7~1_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_LessThan7~0_combout\ : std_logic;
SIGNAL \GFX|FB|ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \GFX|FB|ALT_INV_state\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ALT_INV_rdemp_eq_comp_msb_aeb~q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ALT_INV_rdemp_eq_comp_lsb_aeb~q\ : std_logic;
SIGNAL \GFX|FB|VGA|ALT_INV_vblanking_pulse~q\ : std_logic;
SIGNAL \GFX|FB|VGA|ALT_INV_hblanking_pulse~q\ : std_logic;
SIGNAL \GFX|FB|VGA|ALT_INV_early_vsync_pulse~q\ : std_logic;
SIGNAL \GFX|FB|VGA|ALT_INV_early_hsync_pulse~q\ : std_logic;
SIGNAL \GFX|FB|VGA|ALT_INV_blanking_pulse~q\ : std_logic;
SIGNAL \GFX|FB|VGA|ALT_INV_vsync_pulse~q\ : std_logic;
SIGNAL \GFX|FB|VGA|ALT_INV_hsync_pulse~q\ : std_logic;
SIGNAL \GameLogic|comb|ALT_INV_out\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \GameLogic|comb|ra|ALT_INV_c[4]~1_combout\ : std_logic;
SIGNAL \State|ALT_INV_o_update~combout\ : std_logic;
SIGNAL \State|ALT_INV_o_update~1_combout\ : std_logic;
SIGNAL \State|ALT_INV_o_update~0_combout\ : std_logic;
SIGNAL \State|ALT_INV_Add31~3_combout\ : std_logic;
SIGNAL \State|ALT_INV_Add31~2_combout\ : std_logic;
SIGNAL \State|ALT_INV_Add31~1_combout\ : std_logic;
SIGNAL \State|ALT_INV_Add31~0_combout\ : std_logic;
SIGNAL \State|ALT_INV_o_new\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \State|ALT_INV_Add25~1_combout\ : std_logic;
SIGNAL \State|ALT_INV_Add30~0_combout\ : std_logic;
SIGNAL \GameLogic|comb|ALT_INV_out[7]~6_combout\ : std_logic;
SIGNAL \GameLogic|winx|ALT_INV_cout[8]~13_combout\ : std_logic;
SIGNAL \GameLogic|emptyx|ra|ALT_INV_g[0]~6_combout\ : std_logic;
SIGNAL \State|ALT_INV_Add28~0_combout\ : std_logic;
SIGNAL \GameLogic|comb|ra|ALT_INV_g[33]~8_combout\ : std_logic;
SIGNAL \GameLogic|comb|ra|ALT_INV_g[6]~7_combout\ : std_logic;
SIGNAL \GameLogic|comb|ALT_INV_out[5]~5_combout\ : std_logic;
SIGNAL \GameLogic|comb|ALT_INV_out[5]~4_combout\ : std_logic;
SIGNAL \GameLogic|comb|ra|ALT_INV_g[32]~6_combout\ : std_logic;
SIGNAL \GameLogic|comb|ra|ALT_INV_g[5]~5_combout\ : std_logic;
SIGNAL \GameLogic|comb|ra|ALT_INV_g[14]~4_combout\ : std_logic;
SIGNAL \State|ALT_INV_Add25~0_combout\ : std_logic;
SIGNAL \GameLogic|comb|ALT_INV_out[4]~3_combout\ : std_logic;
SIGNAL \GameLogic|comb|ALT_INV_out[3]~2_combout\ : std_logic;
SIGNAL \GameLogic|emptyx|ra|ALT_INV_g[0]~5_combout\ : std_logic;
SIGNAL \GameLogic|emptyx|ra|ALT_INV_g[0]~4_combout\ : std_logic;
SIGNAL \State|ALT_INV_Add24~0_combout\ : std_logic;
SIGNAL \GameLogic|comb|ALT_INV_out[1]~1_combout\ : std_logic;
SIGNAL \GameLogic|comb|ALT_INV_out[0]~0_combout\ : std_logic;
SIGNAL \GameLogic|comb|ra|ALT_INV_g\ : std_logic_vector(27 DOWNTO 27);
SIGNAL \GameLogic|comb|ra|ALT_INV_c[5]~0_combout\ : std_logic;
SIGNAL \GameLogic|emptyx|ra|ALT_INV_g[0]~3_combout\ : std_logic;
SIGNAL \GameLogic|comb|ra|ALT_INV_g[8]~3_combout\ : std_logic;
SIGNAL \GameLogic|adjacentx|ALT_INV_WideNor0~4_combout\ : std_logic;
SIGNAL \GameLogic|adjacentx|ALT_INV_WideNor0~3_combout\ : std_logic;
SIGNAL \GameLogic|adjacentx|ALT_INV_WideNor0~2_combout\ : std_logic;
SIGNAL \GameLogic|adjacentx|ALT_INV_WideNor0~1_combout\ : std_logic;
SIGNAL \GameLogic|adjacentx|ALT_INV_WideNor0~0_combout\ : std_logic;
SIGNAL \GameLogic|blockx|ALT_INV_cout[2]~11_combout\ : std_logic;
SIGNAL \GameLogic|blockx|ALT_INV_cout[2]~10_combout\ : std_logic;
SIGNAL \GameLogic|comb|ra|ALT_INV_g[21]~2_combout\ : std_logic;
SIGNAL \GameLogic|comb|ra|ALT_INV_g[26]~1_combout\ : std_logic;
SIGNAL \GameLogic|winx|ALT_INV_cout[0]~12_combout\ : std_logic;
SIGNAL \GameLogic|comb|ra|ALT_INV_g[31]~0_combout\ : std_logic;
SIGNAL \GameLogic|winx|ALT_INV_cout[8]~11_combout\ : std_logic;
SIGNAL \GameLogic|winx|ALT_INV_cout[7]~10_combout\ : std_logic;
SIGNAL \GameLogic|winx|ALT_INV_cout[6]~9_combout\ : std_logic;
SIGNAL \GameLogic|winx|ALT_INV_cout[5]~8_combout\ : std_logic;
SIGNAL \GameLogic|winx|ALT_INV_cout[4]~7_combout\ : std_logic;
SIGNAL \GameLogic|winx|ALT_INV_cout\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \GameLogic|winx|ALT_INV_cout[2]~6_combout\ : std_logic;
SIGNAL \GameLogic|blockx|ALT_INV_cout[8]~9_combout\ : std_logic;
SIGNAL \GameLogic|blockx|ALT_INV_cout[8]~8_combout\ : std_logic;
SIGNAL \GameLogic|blockx|ALT_INV_cout[7]~7_combout\ : std_logic;
SIGNAL \GameLogic|blockx|ALT_INV_cout[6]~6_combout\ : std_logic;
SIGNAL \GameLogic|blockx|ALT_INV_cout[6]~5_combout\ : std_logic;
SIGNAL \GameLogic|blockx|ALT_INV_cout[5]~4_combout\ : std_logic;
SIGNAL \GameLogic|blockx|ALT_INV_cout[4]~3_combout\ : std_logic;
SIGNAL \GameLogic|blockx|ALT_INV_cout[4]~2_combout\ : std_logic;
SIGNAL \GameLogic|blockx|ALT_INV_cout\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \GameLogic|blockx|ALT_INV_cout[0]~1_combout\ : std_logic;
SIGNAL \GameLogic|blockx|ALT_INV_cout[0]~0_combout\ : std_logic;
SIGNAL \GameLogic|emptyx|ra|ALT_INV_g[4]~2_combout\ : std_logic;
SIGNAL \GameLogic|emptyx|ra|ALT_INV_g[4]~1_combout\ : std_logic;
SIGNAL \GameLogic|emptyx|ra|ALT_INV_g[4]~0_combout\ : std_logic;
SIGNAL \State|ALT_INV_x_update~5_combout\ : std_logic;
SIGNAL \State|ALT_INV_Add23~1_combout\ : std_logic;
SIGNAL \State|ALT_INV_Add19~3_combout\ : std_logic;
SIGNAL \State|ALT_INV_Add19~2_combout\ : std_logic;
SIGNAL \State|ALT_INV_x_update~4_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr0~1_combout\ : std_logic;
SIGNAL \Wins|ALT_INV_win_line\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \State|ALT_INV_Add23~0_combout\ : std_logic;
SIGNAL \State|ALT_INV_Add17~1_combout\ : std_logic;
SIGNAL \State|ALT_INV_Add22~1_combout\ : std_logic;
SIGNAL \State|ALT_INV_Add19~1_combout\ : std_logic;
SIGNAL \State|ALT_INV_Add18~1_combout\ : std_logic;
SIGNAL \State|ALT_INV_Add19~0_combout\ : std_logic;
SIGNAL \State|ALT_INV_Add20~0_combout\ : std_logic;
SIGNAL \State|ALT_INV_Add18~0_combout\ : std_logic;
SIGNAL \State|ALT_INV_Add17~0_combout\ : std_logic;
SIGNAL \State|ALT_INV_Add22~0_combout\ : std_logic;
SIGNAL \State|ALT_INV_x_update~3_combout\ : std_logic;
SIGNAL \State|ALT_INV_x_update~2_combout\ : std_logic;
SIGNAL \State|xmov|ALT_INV_out\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \State|ALT_INV_x_update~1_combout\ : std_logic;
SIGNAL \State|ALT_INV_x_update~0_combout\ : std_logic;
SIGNAL \State|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \State|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \State|ALT_INV_Add3~4_combout\ : std_logic;
SIGNAL \State|ALT_INV_Add11~3_combout\ : std_logic;
SIGNAL \State|ALT_INV_Add3~3_combout\ : std_logic;
SIGNAL \State|ALT_INV_Add11~2_combout\ : std_logic;
SIGNAL \State|ALT_INV_Add3~2_combout\ : std_logic;
SIGNAL \State|ALT_INV_Add3~1_combout\ : std_logic;
SIGNAL \State|ALT_INV_Add3~0_combout\ : std_logic;
SIGNAL \State|ALT_INV_Add7~2_combout\ : std_logic;
SIGNAL \State|ALT_INV_Add7~1_combout\ : std_logic;
SIGNAL \State|ALT_INV_Add7~0_combout\ : std_logic;
SIGNAL \Wins|ALT_INV_WideAnd1~0_combout\ : std_logic;
SIGNAL \State|ALT_INV_Add11~1_combout\ : std_logic;
SIGNAL \State|ALT_INV_Add15~2_combout\ : std_logic;
SIGNAL \State|ALT_INV_Add15~1_combout\ : std_logic;
SIGNAL \State|ALT_INV_Add15~0_combout\ : std_logic;
SIGNAL \State|ALT_INV_Add11~0_combout\ : std_logic;
SIGNAL \GameLogic|winx|ALT_INV_cout[8]~5_combout\ : std_logic;
SIGNAL \GameLogic|winx|ALT_INV_cout[7]~4_combout\ : std_logic;
SIGNAL \GameLogic|winx|ALT_INV_cout[6]~3_combout\ : std_logic;
SIGNAL \GameLogic|winx|ALT_INV_cout[5]~2_combout\ : std_logic;
SIGNAL \GameLogic|winx|ALT_INV_cout[4]~1_combout\ : std_logic;
SIGNAL \GameLogic|winx|leftc|ALT_INV_cout[1]~0_combout\ : std_logic;
SIGNAL \GameLogic|winx|ALT_INV_cout[2]~0_combout\ : std_logic;
SIGNAL \GameLogic|winx|topr|ALT_INV_cout[1]~0_combout\ : std_logic;
SIGNAL \GameLogic|blockx|topr|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_WideOr0~9_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_comb~17_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_comb~13_combout\ : std_logic;
SIGNAL \GFX|RASTER|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \GFX|RASTER|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \GFX|RASTER|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \GFX|RASTER|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \GFX|RASTER|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \GFX|RASTER|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \GFX|RASTER|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \GFX|RASTER|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \GFX|RASTER|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \GFX|RASTER|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \GFX|RASTER|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \GFX|RASTER|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \GFX|RASTER|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \GFX|RASTER|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \GFX|RASTER|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \GFX|RASTER|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \GFX|RASTER|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \GFX|RASTER|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \GFX|RASTER|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \GFX|RASTER|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \GFX|RASTER|CTRL|ALT_INV_out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \GFX|SHADER|ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add4~25_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add5~25_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add3~25_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add4~21_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add5~21_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add3~21_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add4~17_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add5~17_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add3~17_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add4~13_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add5~13_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add4~9_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add5~9_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add4~5_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add5~5_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add3~5_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add4~1_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add5~1_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add3~1_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add12~49_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add12~45_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add12~41_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add12~37_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add12~33_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add12~29_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add12~25_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add12~21_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add12~17_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add12~13_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add12~9_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add12~5_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add12~1_sumout\ : std_logic;
SIGNAL \GFX|SHADER|S_CTRL1|ALT_INV_out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \GFX|FB|VGA|ALT_INV_line_counter\ : std_logic_vector(10 DOWNTO 1);
SIGNAL \GFX|FB|VGA|ALT_INV_pixel_counter\ : std_logic_vector(10 DOWNTO 1);
SIGNAL \GFX|SHADER|ALT_INV_Add7~21_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add7~17_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add6~21_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add6~17_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add7~13_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add7~9_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add6~13_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add6~9_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add7~5_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add7~1_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add6~5_sumout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add6~1_sumout\ : std_logic;
SIGNAL \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a4\ : std_logic;
SIGNAL \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\ : std_logic;
SIGNAL \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a2\ : std_logic;
SIGNAL \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a5\ : std_logic;
SIGNAL \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a6\ : std_logic;
SIGNAL \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a8\ : std_logic;
SIGNAL \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a9\ : std_logic;
SIGNAL \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a10\ : std_logic;
SIGNAL \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a12\ : std_logic;
SIGNAL \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a13\ : std_logic;
SIGNAL \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a14\ : std_logic;
SIGNAL \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\ : std_logic;
SIGNAL \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a7\ : std_logic;
SIGNAL \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a11\ : std_logic;
SIGNAL \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a15\ : std_logic;
SIGNAL \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a0\ : std_logic;
SIGNAL \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a1\ : std_logic;
SIGNAL \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a2\ : std_logic;
SIGNAL \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a3\ : std_logic;
SIGNAL \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a4\ : std_logic;
SIGNAL \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a5\ : std_logic;
SIGNAL \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\ : std_logic;
SIGNAL \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a7\ : std_logic;
SIGNAL \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a8\ : std_logic;
SIGNAL \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a9\ : std_logic;
SIGNAL \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a10\ : std_logic;
SIGNAL \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a11\ : std_logic;
SIGNAL \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a12\ : std_logic;
SIGNAL \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a13\ : std_logic;
SIGNAL \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a14\ : std_logic;
SIGNAL \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a15\ : std_logic;
SIGNAL \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a6~portadataout\ : std_logic;
SIGNAL \GFX|SHADER|S_CTRL2|ALT_INV_out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ALT_INV_op_1~9_sumout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ALT_INV_op_1~5_sumout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ALT_INV_op_1~1_sumout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ALT_INV_q_b\ : std_logic_vector(24 DOWNTO 1);
SIGNAL \State|oreg|ALT_INV_out\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \State|xreg|ALT_INV_out\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a4~DUPLICATE_q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a1~DUPLICATE_q\ : std_logic;
SIGNAL \GFX|SHADER|S_Y|ALT_INV_out[0]~DUPLICATE_q\ : std_logic;
SIGNAL \GFX|SHADER|S_Y|ALT_INV_out[8]~DUPLICATE_q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ALT_INV_rdptr_g[0]~DUPLICATE_q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a5~DUPLICATE_q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a1~DUPLICATE_q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ALT_INV_wrptr_g[7]~DUPLICATE_q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ALT_INV_wrptr_g[5]~DUPLICATE_q\ : std_logic;
SIGNAL \GFX|SHADER|XD|ALT_INV_out[0]~DUPLICATE_q\ : std_logic;
SIGNAL \GFX|SHADER|YCD|ALT_INV_out[2]~DUPLICATE_q\ : std_logic;
SIGNAL \GFX|FB|VGA|ALT_INV_line_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \GFX|FB|VGA|ALT_INV_line_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \GFX|FB|VGA|ALT_INV_pixel_counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \GFX|FB|altera_pll_i|ALT_INV_outclk_wire[0]~CLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_LessThan6~1_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_shader_pixel_rgba[9]~5_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_shader_pixel_rgba[9]~4_combout\ : std_logic;
SIGNAL \GameLogic|comb|ALT_INV_out[6]~15_combout\ : std_logic;
SIGNAL \GameLogic|comb|ALT_INV_out[6]~14_combout\ : std_logic;
SIGNAL \GameLogic|comb|ALT_INV_out[1]~13_combout\ : std_logic;
SIGNAL \GameLogic|comb|ALT_INV_out[1]~12_combout\ : std_logic;
SIGNAL \GameLogic|comb|ALT_INV_out[0]~11_combout\ : std_logic;
SIGNAL \GameLogic|comb|ra|ALT_INV_g[8]~9_combout\ : std_logic;
SIGNAL \GameLogic|comb|ALT_INV_out[4]~10_combout\ : std_logic;
SIGNAL \GameLogic|comb|ALT_INV_out[2]~9_combout\ : std_logic;
SIGNAL \GameLogic|comb|ALT_INV_out[2]~8_combout\ : std_logic;
SIGNAL \GameLogic|comb|ALT_INV_out[2]~7_combout\ : std_logic;
SIGNAL \GameLogic|winx|ALT_INV_cout[0]~16_combout\ : std_logic;
SIGNAL \GameLogic|winx|ALT_INV_cout[4]~15_combout\ : std_logic;
SIGNAL \GameLogic|winx|ALT_INV_cout[2]~14_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|ALT_INV_dffe17a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ALT_INV_ws_dgrp_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ws_bwp|ALT_INV_dffe15a\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ws_brp|ALT_INV_dffe15a\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|ALT_INV_dffe18a\ : std_logic_vector(6 DOWNTO 2);
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|ALT_INV_xor2~combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|ALT_INV_xor2~combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_sub_parity10a\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \GFX|RASTER|R_REG|ALT_INV_out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \GFX|RASTER|ALT_INV_Selector18~0_combout\ : std_logic;
SIGNAL \GFX|RASTER|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \GFX|RASTER|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \GFX|RASTER|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \GFX|RASTER|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \GFX|RASTER|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ALT_INV_delayed_wrptr_g\ : std_logic_vector(7 DOWNTO 3);
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_sub_parity7a\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV__~2_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV__~1_combout\ : std_logic;
SIGNAL \GFX|FB|ALT_INV_WideAnd0~combout\ : std_logic;
SIGNAL \GFX|FB|ALT_INV_WideAnd0~0_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_parity9~q\ : std_logic;
SIGNAL \GFX|RASTER|X_REG|ALT_INV_out\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \GFX|RASTER|Y_REG|ALT_INV_out\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|ALT_INV_dffe13a\ : std_logic_vector(6 DOWNTO 2);
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|ALT_INV_xor5~combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|ALT_INV_xor5~combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|ALT_INV_xor6~combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV__~2_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV__~1_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_parity6~q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a6~q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a7~q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a5~q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a4~q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a3~q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a2~q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a1~q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a0~q\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_comb~11_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_LessThan6~0_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add1~1_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_comb~10_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_comb~9_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_comb~8_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_comb~7_combout\ : std_logic;
SIGNAL \GFX|SHADER|S_X|ALT_INV_out\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \GFX|SHADER|S_Y|ALT_INV_out\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \GFX|FB|ALT_INV_data_in[24]~4_combout\ : std_logic;
SIGNAL \GFX|FB|ALT_INV_data_in[24]~3_combout\ : std_logic;
SIGNAL \GFX|FB|ALT_INV_data_in[24]~2_combout\ : std_logic;
SIGNAL \GFX|FB|ALT_INV_data_in[24]~1_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|ALT_INV_end_of_active_frame~q\ : std_logic;
SIGNAL \GFX|FB|VGA|ALT_INV_end_of_frame~q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ALT_INV_int_rdempty~combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_msb_mux|ALT_INV_l1_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_msb_mux|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|ALT_INV_dffe14a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ALT_INV_rdptr_g\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_lsb_mux|ALT_INV_l1_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_lsb_mux|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|ALT_INV_Equal3~2_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|ALT_INV_early_vsync_pulse~0_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \GFX|FB|VGA|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_WideOr3~21_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_WideOr3~20_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_WideOr3~19_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_WideOr3~18_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_WideOr3~17_combout\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a7~q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a6~q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a5~q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a4~q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a3~q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a2~q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a1~q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a0~q\ : std_logic;
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ALT_INV_ram_address_a\ : std_logic_vector(6 DOWNTO 6);
SIGNAL \GFX|FB|Data_FIFO|auto_generated|ALT_INV_wrptr_g\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \GFX|SHADER|ALT_INV_WideOr3~16_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_WideOr3~15_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_WideOr3~14_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_WideOr3~13_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_WideOr3~12_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_WideOr3~11_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_WideOr3~10_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_WideOr3~9_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_WideOr3~8_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_WideOr3~7_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_WideOr3~6_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_WideOr3~5_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_WideOr3~4_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_WideOr3~3_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_WideOr3~2_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_WideOr3~1_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_WideOr3~0_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_comb~5_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_WideOr1~6_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_WideOr1~5_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_WideOr1~4_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_WideOr1~3_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_WideOr1~2_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_WideOr1~1_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Mux1~4_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Mux1~3_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_comb~4_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_WideOr0~8_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_WideOr0~7_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_WideOr0~6_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_LessThan10~1_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_LessThan10~0_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_on_yborder~4_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_WideOr0~5_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_WideOr0~4_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_board_position~5_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_WideOr0~3_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_WideOr0~2_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_LessThan8~0_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_WideOr0~1_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_board_position~4_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_board_position~3_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_board_position~2_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_board_position~1_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_board_position~0_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_on_yborder~3_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \GFX|SHADER|XD|ALT_INV_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \GFX|SHADER|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_on_yborder~2_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_on_yborder~1_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \GFX|FB|ALT_INV_data_in[24]~0_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_on_yborder~0_combout\ : std_logic;
SIGNAL \GFX|SHADER|ALT_INV_LessThan11~0_combout\ : std_logic;

BEGIN

ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
ww_CLOCK_50 <= CLOCK_50;
VGA_CLK <= ww_VGA_CLK;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
VGA_BLANK_N <= ww_VGA_BLANK_N;
VGA_SYNC_N <= ww_VGA_SYNC_N;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\GFX|FB|Data_FIFO|auto_generated|fifo_ram|ram_block11a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \GFX|FB|data_in\(24) & \GFX|SHADER|shader_pixel_rgba[16]~0_combout\ & 
\GFX|SHADER|shader_pixel_rgba[16]~0_combout\ & \GFX|SHADER|shader_pixel_rgba[16]~0_combout\ & \GFX|SHADER|shader_pixel_rgba[16]~0_combout\ & \GFX|SHADER|shader_pixel_rgba[16]~0_combout\ & \GFX|SHADER|shader_pixel_rgba[16]~0_combout\ & 
\GFX|SHADER|shader_pixel_rgba[16]~0_combout\ & \GFX|SHADER|shader_pixel_rgba[16]~0_combout\ & \GFX|SHADER|shader_pixel_rgba[9]~2_combout\ & \GFX|SHADER|shader_pixel_rgba[9]~2_combout\ & \GFX|SHADER|shader_pixel_rgba[9]~2_combout\ & 
\GFX|SHADER|shader_pixel_rgba[9]~2_combout\ & \GFX|SHADER|shader_pixel_rgba[9]~2_combout\ & \GFX|SHADER|shader_pixel_rgba[9]~2_combout\ & \GFX|SHADER|shader_pixel_rgba[9]~2_combout\ & \GFX|SHADER|shader_pixel_rgba[8]~1_combout\ & 
\GFX|SHADER|shader_pixel_rgba[9]~3_combout\ & \GFX|SHADER|shader_pixel_rgba[9]~3_combout\ & \GFX|SHADER|shader_pixel_rgba[9]~3_combout\ & \GFX|SHADER|shader_pixel_rgba[9]~3_combout\ & \GFX|SHADER|shader_pixel_rgba[9]~3_combout\ & 
\GFX|SHADER|shader_pixel_rgba[9]~3_combout\ & \GFX|SHADER|shader_pixel_rgba[9]~3_combout\ & \GFX|SHADER|shader_pixel_rgba[9]~3_combout\);

\GFX|FB|Data_FIFO|auto_generated|fifo_ram|ram_block11a0_PORTAADDR_bus\ <= (\GFX|FB|Data_FIFO|auto_generated|ram_address_a\(6) & \GFX|FB|Data_FIFO|auto_generated|wrptr_g[5]~DUPLICATE_q\ & \GFX|FB|Data_FIFO|auto_generated|wrptr_g\(4) & 
\GFX|FB|Data_FIFO|auto_generated|wrptr_g[3]~DUPLICATE_q\ & \GFX|FB|Data_FIFO|auto_generated|wrptr_g[2]~DUPLICATE_q\ & \GFX|FB|Data_FIFO|auto_generated|wrptr_g\(1) & \GFX|FB|Data_FIFO|auto_generated|wrptr_g\(0));

\GFX|FB|Data_FIFO|auto_generated|fifo_ram|ram_block11a0_PORTBADDR_bus\ <= (\GFX|FB|Data_FIFO|auto_generated|ram_address_b\(6) & \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a5~DUPLICATE_q\ & \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a4~q\
& \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a3~q\ & \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a2~q\ & \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a1~DUPLICATE_q\ & 
\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a0~_wirecell_combout\);

\GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(0) <= \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(0);
\GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(1) <= \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(1);
\GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(2) <= \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(2);
\GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(3) <= \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(3);
\GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(4) <= \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(4);
\GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(5) <= \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(5);
\GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(6) <= \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(6);
\GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(7) <= \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(7);
\GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(8) <= \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(8);
\GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(9) <= \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(9);
\GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(10) <= \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(10);
\GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(11) <= \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(11);
\GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(12) <= \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(12);
\GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(13) <= \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(13);
\GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(14) <= \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(14);
\GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(15) <= \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(15);
\GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(16) <= \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(16);
\GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(17) <= \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(17);
\GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(18) <= \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(18);
\GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(19) <= \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(19);
\GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(20) <= \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(20);
\GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(21) <= \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(21);
\GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(22) <= \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(22);
\GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(23) <= \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(23);
\GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(24) <= \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(24);

\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\GFX|SHADER|shader_addr[9]~8_combout\ & \GFX|SHADER|shader_addr[8]~7_combout\ & \GFX|SHADER|shader_addr[7]~6_combout\ & \GFX|SHADER|shader_addr[6]~5_combout\ & 
\GFX|SHADER|shader_addr[5]~4_combout\ & \GFX|SHADER|shader_addr[4]~3_combout\ & \GFX|SHADER|shader_addr[3]~2_combout\ & \GFX|SHADER|shader_addr[2]~9_combout\ & \GFX|SHADER|shader_addr[1]~1_combout\ & \GFX|SHADER|shader_addr[0]~0_combout\);

\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a6~portadataout\ <= \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);
\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a7\ <= \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\(1);
\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a8\ <= \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\(2);
\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a9\ <= \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\(3);
\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a10\ <= \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\(4);
\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a11\ <= \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\(5);
\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a12\ <= \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\(6);
\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a13\ <= \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\(7);
\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a14\ <= \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\(8);
\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a15\ <= \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\(9);

\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\GFX|SHADER|shader_addr[9]~8_combout\ & \GFX|SHADER|shader_addr[8]~7_combout\ & \GFX|SHADER|shader_addr[7]~6_combout\ & \GFX|SHADER|shader_addr[6]~5_combout\ & 
\GFX|SHADER|shader_addr[5]~4_combout\ & \GFX|SHADER|shader_addr[4]~3_combout\ & \GFX|SHADER|shader_addr[3]~2_combout\ & \GFX|SHADER|shader_addr[2]~9_combout\ & \GFX|SHADER|shader_addr[1]~1_combout\ & \GFX|SHADER|shader_addr[0]~0_combout\);

\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a3~portadataout\ <= \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);
\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a7\ <= \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\(1);
\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a11\ <= \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\(2);
\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a15\ <= \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\(3);
\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a0\ <= \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\(4);
\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a1\ <= \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\(5);
\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a2\ <= \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\(6);
\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a3\ <= \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\(7);
\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a4\ <= \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\(8);
\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a5\ <= \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\(9);

\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\GFX|SHADER|shader_addr[9]~8_combout\ & \GFX|SHADER|shader_addr[8]~7_combout\ & \GFX|SHADER|shader_addr[7]~6_combout\ & \GFX|SHADER|shader_addr[6]~5_combout\ & 
\GFX|SHADER|shader_addr[5]~4_combout\ & \GFX|SHADER|shader_addr[4]~3_combout\ & \GFX|SHADER|shader_addr[3]~2_combout\ & \GFX|SHADER|shader_addr[2]~9_combout\ & \GFX|SHADER|shader_addr[1]~1_combout\ & \GFX|SHADER|shader_addr[0]~0_combout\);

\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a1~portadataout\ <= \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);
\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a2\ <= \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(1);
\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a5\ <= \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(2);
\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a6\ <= \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(3);
\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a8\ <= \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(4);
\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a9\ <= \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(5);
\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a10\ <= \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(6);
\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a12\ <= \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(7);
\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a13\ <= \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(8);
\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a14\ <= \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(9);

\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\GFX|SHADER|shader_addr[9]~8_combout\ & \GFX|SHADER|shader_addr[8]~7_combout\ & \GFX|SHADER|shader_addr[7]~6_combout\ & \GFX|SHADER|shader_addr[6]~5_combout\ & 
\GFX|SHADER|shader_addr[5]~4_combout\ & \GFX|SHADER|shader_addr[4]~3_combout\ & \GFX|SHADER|shader_addr[3]~2_combout\ & \GFX|SHADER|shader_addr[2]~9_combout\ & \GFX|SHADER|shader_addr[1]~1_combout\ & \GFX|SHADER|shader_addr[0]~0_combout\);

\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a4\ <= \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);

\GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ <= \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(0);
\GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ <= \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(1);
\GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ <= \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(2);
\GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ <= \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(3);
\GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ <= \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(4);
\GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ <= \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(5);
\GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ <= \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(6);
\GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ <= \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(7);

\GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ <= \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(0);
\GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ <= \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(1);
\GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ <= \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(2);
\GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ <= \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(3);
\GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ <= \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(4);
\GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ <= \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(5);
\GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ <= \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(6);
\GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ <= \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(7);

\GFX|FB|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ <= (gnd & gnd & gnd & \CLOCK_50~input_o\);

\GFX|FB|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ <= (\GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ & \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ & \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ & 
\GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ & \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ & \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ & \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ & 
\GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\);

\GFX|FB|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN6\ <= \GFX|FB|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\(6);

\GFX|FB|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ <= (\GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ & \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ & 
\GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ & \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ & \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ & \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\
& \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ & \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\);
\GFX|SHADER|XCD|ALT_INV_out\(6) <= NOT \GFX|SHADER|XCD|out\(6);
\GFX|SHADER|XCD|ALT_INV_out\(8) <= NOT \GFX|SHADER|XCD|out\(8);
\GFX|SHADER|ALT_INV_on_xborder~0_combout\ <= NOT \GFX|SHADER|on_xborder~0_combout\;
\GFX|SHADER|ALT_INV_LessThan18~0_combout\ <= NOT \GFX|SHADER|LessThan18~0_combout\;
\GFX|SHADER|YCD|ALT_INV_out\(9) <= NOT \GFX|SHADER|YCD|out\(9);
\GFX|SHADER|ALT_INV_LessThan7~1_combout\ <= NOT \GFX|SHADER|LessThan7~1_combout\;
\GFX|SHADER|YCD|ALT_INV_out\(6) <= NOT \GFX|SHADER|YCD|out\(6);
\GFX|SHADER|YCD|ALT_INV_out\(4) <= NOT \GFX|SHADER|YCD|out\(4);
\GFX|SHADER|YCD|ALT_INV_out\(5) <= NOT \GFX|SHADER|YCD|out\(5);
\GFX|SHADER|ALT_INV_LessThan7~0_combout\ <= NOT \GFX|SHADER|LessThan7~0_combout\;
\GFX|SHADER|YCD|ALT_INV_out\(2) <= NOT \GFX|SHADER|YCD|out\(2);
\GFX|SHADER|YCD|ALT_INV_out\(1) <= NOT \GFX|SHADER|YCD|out\(1);
\GFX|SHADER|YCD|ALT_INV_out\(0) <= NOT \GFX|SHADER|YCD|out\(0);
\GFX|SHADER|YCD|ALT_INV_out\(3) <= NOT \GFX|SHADER|YCD|out\(3);
\GFX|SHADER|YCD|ALT_INV_out\(7) <= NOT \GFX|SHADER|YCD|out\(7);
\GFX|SHADER|YCD|ALT_INV_out\(8) <= NOT \GFX|SHADER|YCD|out\(8);
\GFX|FB|ALT_INV_comb~1_combout\ <= NOT \GFX|FB|comb~1_combout\;
\GFX|FB|ALT_INV_state\(0) <= NOT \GFX|FB|state\(0);
\GFX|FB|ALT_INV_state\(1) <= NOT \GFX|FB|state\(1);
\GFX|FB|Data_FIFO|auto_generated|ALT_INV_rdemp_eq_comp_msb_aeb~q\ <= NOT \GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_msb_aeb~q\;
\GFX|FB|Data_FIFO|auto_generated|ALT_INV_rdemp_eq_comp_lsb_aeb~q\ <= NOT \GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_lsb_aeb~q\;
\GFX|FB|VGA|ALT_INV_vblanking_pulse~q\ <= NOT \GFX|FB|VGA|vblanking_pulse~q\;
\GFX|FB|VGA|ALT_INV_hblanking_pulse~q\ <= NOT \GFX|FB|VGA|hblanking_pulse~q\;
\GFX|FB|VGA|ALT_INV_early_vsync_pulse~q\ <= NOT \GFX|FB|VGA|early_vsync_pulse~q\;
\GFX|FB|VGA|ALT_INV_early_hsync_pulse~q\ <= NOT \GFX|FB|VGA|early_hsync_pulse~q\;
\GFX|FB|VGA|ALT_INV_blanking_pulse~q\ <= NOT \GFX|FB|VGA|blanking_pulse~q\;
\GFX|FB|VGA|ALT_INV_vsync_pulse~q\ <= NOT \GFX|FB|VGA|vsync_pulse~q\;
\GFX|FB|VGA|ALT_INV_hsync_pulse~q\ <= NOT \GFX|FB|VGA|hsync_pulse~q\;
\GameLogic|comb|ALT_INV_out\(8) <= NOT \GameLogic|comb|out\(8);
\GameLogic|comb|ra|ALT_INV_c[4]~1_combout\ <= NOT \GameLogic|comb|ra|c[4]~1_combout\;
\State|ALT_INV_o_update~combout\ <= NOT \State|o_update~combout\;
\State|ALT_INV_o_update~1_combout\ <= NOT \State|o_update~1_combout\;
\State|ALT_INV_o_update~0_combout\ <= NOT \State|o_update~0_combout\;
\State|ALT_INV_Add31~3_combout\ <= NOT \State|Add31~3_combout\;
\State|ALT_INV_Add31~2_combout\ <= NOT \State|Add31~2_combout\;
\State|ALT_INV_Add31~1_combout\ <= NOT \State|Add31~1_combout\;
\State|ALT_INV_Add31~0_combout\ <= NOT \State|Add31~0_combout\;
\State|ALT_INV_o_new\(3) <= NOT \State|o_new\(3);
\State|ALT_INV_o_new\(2) <= NOT \State|o_new\(2);
\State|ALT_INV_o_new\(0) <= NOT \State|o_new\(0);
\State|ALT_INV_Add25~1_combout\ <= NOT \State|Add25~1_combout\;
\State|ALT_INV_Add30~0_combout\ <= NOT \State|Add30~0_combout\;
\State|ALT_INV_o_new\(8) <= NOT \State|o_new\(8);
\State|ALT_INV_o_new\(7) <= NOT \State|o_new\(7);
\GameLogic|comb|ALT_INV_out[7]~6_combout\ <= NOT \GameLogic|comb|out[7]~6_combout\;
\GameLogic|winx|ALT_INV_cout[8]~13_combout\ <= NOT \GameLogic|winx|cout[8]~13_combout\;
\GameLogic|emptyx|ra|ALT_INV_g[0]~6_combout\ <= NOT \GameLogic|emptyx|ra|g[0]~6_combout\;
\State|ALT_INV_Add28~0_combout\ <= NOT \State|Add28~0_combout\;
\State|ALT_INV_o_new\(6) <= NOT \State|o_new\(6);
\GameLogic|comb|ALT_INV_out\(6) <= NOT \GameLogic|comb|out\(6);
\GameLogic|comb|ra|ALT_INV_g[33]~8_combout\ <= NOT \GameLogic|comb|ra|g[33]~8_combout\;
\GameLogic|comb|ra|ALT_INV_g[6]~7_combout\ <= NOT \GameLogic|comb|ra|g[6]~7_combout\;
\GameLogic|comb|ALT_INV_out[5]~5_combout\ <= NOT \GameLogic|comb|out[5]~5_combout\;
\GameLogic|comb|ALT_INV_out[5]~4_combout\ <= NOT \GameLogic|comb|out[5]~4_combout\;
\GameLogic|comb|ra|ALT_INV_g[32]~6_combout\ <= NOT \GameLogic|comb|ra|g[32]~6_combout\;
\GameLogic|comb|ra|ALT_INV_g[5]~5_combout\ <= NOT \GameLogic|comb|ra|g[5]~5_combout\;
\GameLogic|comb|ra|ALT_INV_g[14]~4_combout\ <= NOT \GameLogic|comb|ra|g[14]~4_combout\;
\State|ALT_INV_Add25~0_combout\ <= NOT \State|Add25~0_combout\;
\State|ALT_INV_o_new\(4) <= NOT \State|o_new\(4);
\GameLogic|comb|ALT_INV_out[4]~3_combout\ <= NOT \GameLogic|comb|out[4]~3_combout\;
\GameLogic|comb|ALT_INV_out\(3) <= NOT \GameLogic|comb|out\(3);
\GameLogic|comb|ALT_INV_out[3]~2_combout\ <= NOT \GameLogic|comb|out[3]~2_combout\;
\GameLogic|emptyx|ra|ALT_INV_g[0]~5_combout\ <= NOT \GameLogic|emptyx|ra|g[0]~5_combout\;
\GameLogic|emptyx|ra|ALT_INV_g[0]~4_combout\ <= NOT \GameLogic|emptyx|ra|g[0]~4_combout\;
\GameLogic|comb|ALT_INV_out\(2) <= NOT \GameLogic|comb|out\(2);
\State|ALT_INV_Add24~0_combout\ <= NOT \State|Add24~0_combout\;
\GameLogic|comb|ALT_INV_out\(1) <= NOT \GameLogic|comb|out\(1);
\GameLogic|comb|ALT_INV_out[1]~1_combout\ <= NOT \GameLogic|comb|out[1]~1_combout\;
\GameLogic|comb|ALT_INV_out\(0) <= NOT \GameLogic|comb|out\(0);
\GameLogic|comb|ALT_INV_out[0]~0_combout\ <= NOT \GameLogic|comb|out[0]~0_combout\;
\GameLogic|comb|ra|ALT_INV_g\(27) <= NOT \GameLogic|comb|ra|g\(27);
\GameLogic|comb|ra|ALT_INV_c[5]~0_combout\ <= NOT \GameLogic|comb|ra|c[5]~0_combout\;
\GameLogic|emptyx|ra|ALT_INV_g[0]~3_combout\ <= NOT \GameLogic|emptyx|ra|g[0]~3_combout\;
\GameLogic|comb|ra|ALT_INV_g[8]~3_combout\ <= NOT \GameLogic|comb|ra|g[8]~3_combout\;
\GameLogic|adjacentx|ALT_INV_WideNor0~4_combout\ <= NOT \GameLogic|adjacentx|WideNor0~4_combout\;
\GameLogic|adjacentx|ALT_INV_WideNor0~3_combout\ <= NOT \GameLogic|adjacentx|WideNor0~3_combout\;
\GameLogic|adjacentx|ALT_INV_WideNor0~2_combout\ <= NOT \GameLogic|adjacentx|WideNor0~2_combout\;
\GameLogic|adjacentx|ALT_INV_WideNor0~1_combout\ <= NOT \GameLogic|adjacentx|WideNor0~1_combout\;
\GameLogic|adjacentx|ALT_INV_WideNor0~0_combout\ <= NOT \GameLogic|adjacentx|WideNor0~0_combout\;
\GameLogic|blockx|ALT_INV_cout[2]~11_combout\ <= NOT \GameLogic|blockx|cout[2]~11_combout\;
\GameLogic|blockx|ALT_INV_cout[2]~10_combout\ <= NOT \GameLogic|blockx|cout[2]~10_combout\;
\GameLogic|comb|ra|ALT_INV_g[21]~2_combout\ <= NOT \GameLogic|comb|ra|g[21]~2_combout\;
\GameLogic|comb|ra|ALT_INV_g[26]~1_combout\ <= NOT \GameLogic|comb|ra|g[26]~1_combout\;
\GameLogic|winx|ALT_INV_cout[0]~12_combout\ <= NOT \GameLogic|winx|cout[0]~12_combout\;
\GameLogic|comb|ra|ALT_INV_g[31]~0_combout\ <= NOT \GameLogic|comb|ra|g[31]~0_combout\;
\GameLogic|winx|ALT_INV_cout[8]~11_combout\ <= NOT \GameLogic|winx|cout[8]~11_combout\;
\GameLogic|winx|ALT_INV_cout[7]~10_combout\ <= NOT \GameLogic|winx|cout[7]~10_combout\;
\GameLogic|winx|ALT_INV_cout[6]~9_combout\ <= NOT \GameLogic|winx|cout[6]~9_combout\;
\GameLogic|winx|ALT_INV_cout[5]~8_combout\ <= NOT \GameLogic|winx|cout[5]~8_combout\;
\GameLogic|winx|ALT_INV_cout[4]~7_combout\ <= NOT \GameLogic|winx|cout[4]~7_combout\;
\GameLogic|winx|ALT_INV_cout\(3) <= NOT \GameLogic|winx|cout\(3);
\GameLogic|winx|ALT_INV_cout[2]~6_combout\ <= NOT \GameLogic|winx|cout[2]~6_combout\;
\GameLogic|winx|ALT_INV_cout\(1) <= NOT \GameLogic|winx|cout\(1);
\GameLogic|blockx|ALT_INV_cout[8]~9_combout\ <= NOT \GameLogic|blockx|cout[8]~9_combout\;
\GameLogic|blockx|ALT_INV_cout[8]~8_combout\ <= NOT \GameLogic|blockx|cout[8]~8_combout\;
\GameLogic|blockx|ALT_INV_cout[7]~7_combout\ <= NOT \GameLogic|blockx|cout[7]~7_combout\;
\GameLogic|blockx|ALT_INV_cout[6]~6_combout\ <= NOT \GameLogic|blockx|cout[6]~6_combout\;
\GameLogic|blockx|ALT_INV_cout[6]~5_combout\ <= NOT \GameLogic|blockx|cout[6]~5_combout\;
\GameLogic|blockx|ALT_INV_cout[5]~4_combout\ <= NOT \GameLogic|blockx|cout[5]~4_combout\;
\GameLogic|blockx|ALT_INV_cout[4]~3_combout\ <= NOT \GameLogic|blockx|cout[4]~3_combout\;
\GameLogic|blockx|ALT_INV_cout[4]~2_combout\ <= NOT \GameLogic|blockx|cout[4]~2_combout\;
\GameLogic|blockx|ALT_INV_cout\(3) <= NOT \GameLogic|blockx|cout\(3);
\GameLogic|blockx|ALT_INV_cout\(1) <= NOT \GameLogic|blockx|cout\(1);
\GameLogic|blockx|ALT_INV_cout[0]~1_combout\ <= NOT \GameLogic|blockx|cout[0]~1_combout\;
\GameLogic|blockx|ALT_INV_cout[0]~0_combout\ <= NOT \GameLogic|blockx|cout[0]~0_combout\;
\GameLogic|emptyx|ra|ALT_INV_g[4]~2_combout\ <= NOT \GameLogic|emptyx|ra|g[4]~2_combout\;
\GameLogic|emptyx|ra|ALT_INV_g[4]~1_combout\ <= NOT \GameLogic|emptyx|ra|g[4]~1_combout\;
\GameLogic|emptyx|ra|ALT_INV_g[4]~0_combout\ <= NOT \GameLogic|emptyx|ra|g[4]~0_combout\;
\State|ALT_INV_x_update~5_combout\ <= NOT \State|x_update~5_combout\;
\State|ALT_INV_Add23~1_combout\ <= NOT \State|Add23~1_combout\;
\State|ALT_INV_Add19~3_combout\ <= NOT \State|Add19~3_combout\;
\State|ALT_INV_Add19~2_combout\ <= NOT \State|Add19~2_combout\;
\State|ALT_INV_x_update~4_combout\ <= NOT \State|x_update~4_combout\;
\ALT_INV_WideOr0~1_combout\ <= NOT \WideOr0~1_combout\;
\Wins|ALT_INV_win_line\(7) <= NOT \Wins|win_line\(7);
\Wins|ALT_INV_win_line\(5) <= NOT \Wins|win_line\(5);
\ALT_INV_WideOr0~0_combout\ <= NOT \WideOr0~0_combout\;
\Wins|ALT_INV_win_line\(4) <= NOT \Wins|win_line\(4);
\Wins|ALT_INV_win_line\(3) <= NOT \Wins|win_line\(3);
\Wins|ALT_INV_win_line\(2) <= NOT \Wins|win_line\(2);
\Wins|ALT_INV_win_line\(1) <= NOT \Wins|win_line\(1);
\Wins|ALT_INV_win_line\(0) <= NOT \Wins|win_line\(0);
\State|ALT_INV_Add23~0_combout\ <= NOT \State|Add23~0_combout\;
\State|ALT_INV_Add17~1_combout\ <= NOT \State|Add17~1_combout\;
\State|ALT_INV_Add22~1_combout\ <= NOT \State|Add22~1_combout\;
\State|ALT_INV_Add19~1_combout\ <= NOT \State|Add19~1_combout\;
\State|ALT_INV_Add18~1_combout\ <= NOT \State|Add18~1_combout\;
\State|ALT_INV_Add19~0_combout\ <= NOT \State|Add19~0_combout\;
\State|ALT_INV_Add20~0_combout\ <= NOT \State|Add20~0_combout\;
\State|ALT_INV_Add18~0_combout\ <= NOT \State|Add18~0_combout\;
\State|ALT_INV_Add17~0_combout\ <= NOT \State|Add17~0_combout\;
\State|ALT_INV_Add22~0_combout\ <= NOT \State|Add22~0_combout\;
\Wins|ALT_INV_win_line\(6) <= NOT \Wins|win_line\(6);
\State|ALT_INV_x_update~3_combout\ <= NOT \State|x_update~3_combout\;
\State|ALT_INV_x_update~2_combout\ <= NOT \State|x_update~2_combout\;
\State|xmov|ALT_INV_out\(4) <= NOT \State|xmov|out\(4);
\State|xmov|ALT_INV_out\(3) <= NOT \State|xmov|out\(3);
\State|ALT_INV_x_update~1_combout\ <= NOT \State|x_update~1_combout\;
\State|xmov|ALT_INV_out\(2) <= NOT \State|xmov|out\(2);
\State|xmov|ALT_INV_out\(1) <= NOT \State|xmov|out\(1);
\State|ALT_INV_x_update~0_combout\ <= NOT \State|x_update~0_combout\;
\State|xmov|ALT_INV_out\(8) <= NOT \State|xmov|out\(8);
\State|xmov|ALT_INV_out\(7) <= NOT \State|xmov|out\(7);
\State|xmov|ALT_INV_out\(6) <= NOT \State|xmov|out\(6);
\State|xmov|ALT_INV_out\(5) <= NOT \State|xmov|out\(5);
\State|ALT_INV_LessThan0~1_combout\ <= NOT \State|LessThan0~1_combout\;
\State|ALT_INV_LessThan0~0_combout\ <= NOT \State|LessThan0~0_combout\;
\State|ALT_INV_Add3~4_combout\ <= NOT \State|Add3~4_combout\;
\State|ALT_INV_Add11~3_combout\ <= NOT \State|Add11~3_combout\;
\State|ALT_INV_Add3~3_combout\ <= NOT \State|Add3~3_combout\;
\State|ALT_INV_Add11~2_combout\ <= NOT \State|Add11~2_combout\;
\State|ALT_INV_Add3~2_combout\ <= NOT \State|Add3~2_combout\;
\State|ALT_INV_Add3~1_combout\ <= NOT \State|Add3~1_combout\;
\State|ALT_INV_Add3~0_combout\ <= NOT \State|Add3~0_combout\;
\State|ALT_INV_Add7~2_combout\ <= NOT \State|Add7~2_combout\;
\State|ALT_INV_Add7~1_combout\ <= NOT \State|Add7~1_combout\;
\State|ALT_INV_Add7~0_combout\ <= NOT \State|Add7~0_combout\;
\Wins|ALT_INV_WideAnd1~0_combout\ <= NOT \Wins|WideAnd1~0_combout\;
\State|ALT_INV_Add11~1_combout\ <= NOT \State|Add11~1_combout\;
\State|ALT_INV_Add15~2_combout\ <= NOT \State|Add15~2_combout\;
\State|ALT_INV_Add15~1_combout\ <= NOT \State|Add15~1_combout\;
\State|ALT_INV_Add15~0_combout\ <= NOT \State|Add15~0_combout\;
\State|ALT_INV_Add11~0_combout\ <= NOT \State|Add11~0_combout\;
\State|xmov|ALT_INV_out\(0) <= NOT \State|xmov|out\(0);
\GameLogic|winx|ALT_INV_cout[8]~5_combout\ <= NOT \GameLogic|winx|cout[8]~5_combout\;
\GameLogic|winx|ALT_INV_cout[7]~4_combout\ <= NOT \GameLogic|winx|cout[7]~4_combout\;
\GameLogic|winx|ALT_INV_cout[6]~3_combout\ <= NOT \GameLogic|winx|cout[6]~3_combout\;
\GameLogic|winx|ALT_INV_cout[5]~2_combout\ <= NOT \GameLogic|winx|cout[5]~2_combout\;
\GameLogic|winx|ALT_INV_cout[4]~1_combout\ <= NOT \GameLogic|winx|cout[4]~1_combout\;
\GameLogic|winx|leftc|ALT_INV_cout[1]~0_combout\ <= NOT \GameLogic|winx|leftc|cout[1]~0_combout\;
\GameLogic|winx|ALT_INV_cout[2]~0_combout\ <= NOT \GameLogic|winx|cout[2]~0_combout\;
\GameLogic|winx|topr|ALT_INV_cout[1]~0_combout\ <= NOT \GameLogic|winx|topr|cout[1]~0_combout\;
\GameLogic|blockx|topr|ALT_INV_cout~0_combout\ <= NOT \GameLogic|blockx|topr|cout~0_combout\;
\GFX|SHADER|ALT_INV_WideOr0~9_combout\ <= NOT \GFX|SHADER|WideOr0~9_combout\;
\GFX|SHADER|ALT_INV_comb~17_combout\ <= NOT \GFX|SHADER|comb~17_combout\;
\GFX|SHADER|ALT_INV_comb~13_combout\ <= NOT \GFX|SHADER|comb~13_combout\;
\GFX|RASTER|ALT_INV_Add0~37_sumout\ <= NOT \GFX|RASTER|Add0~37_sumout\;
\GFX|RASTER|ALT_INV_Add0~33_sumout\ <= NOT \GFX|RASTER|Add0~33_sumout\;
\GFX|RASTER|ALT_INV_Add0~29_sumout\ <= NOT \GFX|RASTER|Add0~29_sumout\;
\GFX|RASTER|ALT_INV_Add0~25_sumout\ <= NOT \GFX|RASTER|Add0~25_sumout\;
\GFX|RASTER|ALT_INV_Add0~21_sumout\ <= NOT \GFX|RASTER|Add0~21_sumout\;
\GFX|RASTER|ALT_INV_Add0~17_sumout\ <= NOT \GFX|RASTER|Add0~17_sumout\;
\GFX|RASTER|ALT_INV_Add0~13_sumout\ <= NOT \GFX|RASTER|Add0~13_sumout\;
\GFX|RASTER|ALT_INV_Add0~9_sumout\ <= NOT \GFX|RASTER|Add0~9_sumout\;
\GFX|RASTER|ALT_INV_Add0~5_sumout\ <= NOT \GFX|RASTER|Add0~5_sumout\;
\GFX|RASTER|ALT_INV_Add0~1_sumout\ <= NOT \GFX|RASTER|Add0~1_sumout\;
\GFX|RASTER|ALT_INV_Add1~37_sumout\ <= NOT \GFX|RASTER|Add1~37_sumout\;
\GFX|RASTER|ALT_INV_Add1~33_sumout\ <= NOT \GFX|RASTER|Add1~33_sumout\;
\GFX|RASTER|ALT_INV_Add1~29_sumout\ <= NOT \GFX|RASTER|Add1~29_sumout\;
\GFX|RASTER|ALT_INV_Add1~25_sumout\ <= NOT \GFX|RASTER|Add1~25_sumout\;
\GFX|RASTER|ALT_INV_Add1~21_sumout\ <= NOT \GFX|RASTER|Add1~21_sumout\;
\GFX|RASTER|ALT_INV_Add1~17_sumout\ <= NOT \GFX|RASTER|Add1~17_sumout\;
\GFX|RASTER|ALT_INV_Add1~13_sumout\ <= NOT \GFX|RASTER|Add1~13_sumout\;
\GFX|RASTER|ALT_INV_Add1~9_sumout\ <= NOT \GFX|RASTER|Add1~9_sumout\;
\GFX|RASTER|ALT_INV_Add1~5_sumout\ <= NOT \GFX|RASTER|Add1~5_sumout\;
\GFX|RASTER|ALT_INV_Add1~1_sumout\ <= NOT \GFX|RASTER|Add1~1_sumout\;
\GFX|RASTER|CTRL|ALT_INV_out\(0) <= NOT \GFX|RASTER|CTRL|out\(0);
\GFX|SHADER|ALT_INV_Add2~25_sumout\ <= NOT \GFX|SHADER|Add2~25_sumout\;
\GFX|SHADER|ALT_INV_Add0~25_sumout\ <= NOT \GFX|SHADER|Add0~25_sumout\;
\GFX|SHADER|ALT_INV_Add2~21_sumout\ <= NOT \GFX|SHADER|Add2~21_sumout\;
\GFX|SHADER|ALT_INV_Add0~21_sumout\ <= NOT \GFX|SHADER|Add0~21_sumout\;
\GFX|SHADER|ALT_INV_Add2~17_sumout\ <= NOT \GFX|SHADER|Add2~17_sumout\;
\GFX|SHADER|ALT_INV_Add0~17_sumout\ <= NOT \GFX|SHADER|Add0~17_sumout\;
\GFX|SHADER|ALT_INV_Add2~13_sumout\ <= NOT \GFX|SHADER|Add2~13_sumout\;
\GFX|SHADER|ALT_INV_Add0~13_sumout\ <= NOT \GFX|SHADER|Add0~13_sumout\;
\GFX|SHADER|ALT_INV_Add4~25_sumout\ <= NOT \GFX|SHADER|Add4~25_sumout\;
\GFX|SHADER|ALT_INV_Add5~25_sumout\ <= NOT \GFX|SHADER|Add5~25_sumout\;
\GFX|SHADER|ALT_INV_Add3~25_sumout\ <= NOT \GFX|SHADER|Add3~25_sumout\;
\GFX|SHADER|ALT_INV_Add4~21_sumout\ <= NOT \GFX|SHADER|Add4~21_sumout\;
\GFX|SHADER|ALT_INV_Add5~21_sumout\ <= NOT \GFX|SHADER|Add5~21_sumout\;
\GFX|SHADER|ALT_INV_Add3~21_sumout\ <= NOT \GFX|SHADER|Add3~21_sumout\;
\GFX|SHADER|ALT_INV_Add4~17_sumout\ <= NOT \GFX|SHADER|Add4~17_sumout\;
\GFX|SHADER|ALT_INV_Add5~17_sumout\ <= NOT \GFX|SHADER|Add5~17_sumout\;
\GFX|SHADER|ALT_INV_Add3~17_sumout\ <= NOT \GFX|SHADER|Add3~17_sumout\;
\GFX|SHADER|ALT_INV_Add4~13_sumout\ <= NOT \GFX|SHADER|Add4~13_sumout\;
\GFX|SHADER|ALT_INV_Add5~13_sumout\ <= NOT \GFX|SHADER|Add5~13_sumout\;
\GFX|SHADER|ALT_INV_Add3~13_sumout\ <= NOT \GFX|SHADER|Add3~13_sumout\;
\GFX|SHADER|ALT_INV_Add4~9_sumout\ <= NOT \GFX|SHADER|Add4~9_sumout\;
\GFX|SHADER|ALT_INV_Add5~9_sumout\ <= NOT \GFX|SHADER|Add5~9_sumout\;
\GFX|SHADER|ALT_INV_Add3~9_sumout\ <= NOT \GFX|SHADER|Add3~9_sumout\;
\GFX|SHADER|ALT_INV_Add4~5_sumout\ <= NOT \GFX|SHADER|Add4~5_sumout\;
\GFX|SHADER|ALT_INV_Add5~5_sumout\ <= NOT \GFX|SHADER|Add5~5_sumout\;
\GFX|SHADER|ALT_INV_Add3~5_sumout\ <= NOT \GFX|SHADER|Add3~5_sumout\;
\GFX|SHADER|ALT_INV_Add4~1_sumout\ <= NOT \GFX|SHADER|Add4~1_sumout\;
\GFX|SHADER|ALT_INV_Add5~1_sumout\ <= NOT \GFX|SHADER|Add5~1_sumout\;
\GFX|SHADER|ALT_INV_Add3~1_sumout\ <= NOT \GFX|SHADER|Add3~1_sumout\;
\GFX|SHADER|ALT_INV_Add2~9_sumout\ <= NOT \GFX|SHADER|Add2~9_sumout\;
\GFX|SHADER|ALT_INV_Add0~9_sumout\ <= NOT \GFX|SHADER|Add0~9_sumout\;
\GFX|SHADER|ALT_INV_Add2~5_sumout\ <= NOT \GFX|SHADER|Add2~5_sumout\;
\GFX|SHADER|ALT_INV_Add0~5_sumout\ <= NOT \GFX|SHADER|Add0~5_sumout\;
\GFX|SHADER|ALT_INV_Add2~1_sumout\ <= NOT \GFX|SHADER|Add2~1_sumout\;
\GFX|SHADER|ALT_INV_Add0~1_sumout\ <= NOT \GFX|SHADER|Add0~1_sumout\;
\GFX|SHADER|ALT_INV_Add12~49_sumout\ <= NOT \GFX|SHADER|Add12~49_sumout\;
\GFX|SHADER|ALT_INV_Add12~45_sumout\ <= NOT \GFX|SHADER|Add12~45_sumout\;
\GFX|SHADER|ALT_INV_Add12~41_sumout\ <= NOT \GFX|SHADER|Add12~41_sumout\;
\GFX|SHADER|ALT_INV_Add12~37_sumout\ <= NOT \GFX|SHADER|Add12~37_sumout\;
\GFX|SHADER|ALT_INV_Add12~33_sumout\ <= NOT \GFX|SHADER|Add12~33_sumout\;
\GFX|SHADER|ALT_INV_Add12~29_sumout\ <= NOT \GFX|SHADER|Add12~29_sumout\;
\GFX|SHADER|ALT_INV_Add12~25_sumout\ <= NOT \GFX|SHADER|Add12~25_sumout\;
\GFX|SHADER|ALT_INV_Add12~21_sumout\ <= NOT \GFX|SHADER|Add12~21_sumout\;
\GFX|SHADER|ALT_INV_Add12~17_sumout\ <= NOT \GFX|SHADER|Add12~17_sumout\;
\GFX|SHADER|ALT_INV_Add12~13_sumout\ <= NOT \GFX|SHADER|Add12~13_sumout\;
\GFX|SHADER|ALT_INV_Add12~9_sumout\ <= NOT \GFX|SHADER|Add12~9_sumout\;
\GFX|SHADER|ALT_INV_Add12~5_sumout\ <= NOT \GFX|SHADER|Add12~5_sumout\;
\GFX|SHADER|ALT_INV_Add12~1_sumout\ <= NOT \GFX|SHADER|Add12~1_sumout\;
\GFX|SHADER|S_CTRL1|ALT_INV_out\(0) <= NOT \GFX|SHADER|S_CTRL1|out\(0);
\GFX|FB|VGA|ALT_INV_line_counter\(10) <= NOT \GFX|FB|VGA|line_counter\(10);
\GFX|FB|VGA|ALT_INV_line_counter\(9) <= NOT \GFX|FB|VGA|line_counter\(9);
\GFX|FB|VGA|ALT_INV_line_counter\(8) <= NOT \GFX|FB|VGA|line_counter\(8);
\GFX|FB|VGA|ALT_INV_line_counter\(7) <= NOT \GFX|FB|VGA|line_counter\(7);
\GFX|FB|VGA|ALT_INV_line_counter\(1) <= NOT \GFX|FB|VGA|line_counter\(1);
\GFX|FB|VGA|ALT_INV_line_counter\(4) <= NOT \GFX|FB|VGA|line_counter\(4);
\GFX|FB|VGA|ALT_INV_line_counter\(3) <= NOT \GFX|FB|VGA|line_counter\(3);
\GFX|FB|VGA|ALT_INV_line_counter\(6) <= NOT \GFX|FB|VGA|line_counter\(6);
\GFX|FB|VGA|ALT_INV_line_counter\(5) <= NOT \GFX|FB|VGA|line_counter\(5);
\GFX|FB|VGA|ALT_INV_line_counter\(2) <= NOT \GFX|FB|VGA|line_counter\(2);
\GFX|FB|VGA|ALT_INV_pixel_counter\(10) <= NOT \GFX|FB|VGA|pixel_counter\(10);
\GFX|FB|VGA|ALT_INV_pixel_counter\(3) <= NOT \GFX|FB|VGA|pixel_counter\(3);
\GFX|FB|VGA|ALT_INV_pixel_counter\(2) <= NOT \GFX|FB|VGA|pixel_counter\(2);
\GFX|FB|VGA|ALT_INV_pixel_counter\(4) <= NOT \GFX|FB|VGA|pixel_counter\(4);
\GFX|FB|VGA|ALT_INV_pixel_counter\(1) <= NOT \GFX|FB|VGA|pixel_counter\(1);
\GFX|FB|VGA|ALT_INV_pixel_counter\(9) <= NOT \GFX|FB|VGA|pixel_counter\(9);
\GFX|FB|VGA|ALT_INV_pixel_counter\(7) <= NOT \GFX|FB|VGA|pixel_counter\(7);
\GFX|FB|VGA|ALT_INV_pixel_counter\(6) <= NOT \GFX|FB|VGA|pixel_counter\(6);
\GFX|FB|VGA|ALT_INV_pixel_counter\(8) <= NOT \GFX|FB|VGA|pixel_counter\(8);
\GFX|FB|VGA|ALT_INV_pixel_counter\(5) <= NOT \GFX|FB|VGA|pixel_counter\(5);
\GFX|SHADER|ALT_INV_Add7~21_sumout\ <= NOT \GFX|SHADER|Add7~21_sumout\;
\GFX|SHADER|ALT_INV_Add7~17_sumout\ <= NOT \GFX|SHADER|Add7~17_sumout\;
\GFX|SHADER|ALT_INV_Add6~21_sumout\ <= NOT \GFX|SHADER|Add6~21_sumout\;
\GFX|SHADER|ALT_INV_Add6~17_sumout\ <= NOT \GFX|SHADER|Add6~17_sumout\;
\GFX|SHADER|ALT_INV_Add7~13_sumout\ <= NOT \GFX|SHADER|Add7~13_sumout\;
\GFX|SHADER|ALT_INV_Add7~9_sumout\ <= NOT \GFX|SHADER|Add7~9_sumout\;
\GFX|SHADER|ALT_INV_Add6~13_sumout\ <= NOT \GFX|SHADER|Add6~13_sumout\;
\GFX|SHADER|ALT_INV_Add6~9_sumout\ <= NOT \GFX|SHADER|Add6~9_sumout\;
\GFX|SHADER|ALT_INV_Add7~5_sumout\ <= NOT \GFX|SHADER|Add7~5_sumout\;
\GFX|SHADER|ALT_INV_Add7~1_sumout\ <= NOT \GFX|SHADER|Add7~1_sumout\;
\GFX|SHADER|ALT_INV_Add6~5_sumout\ <= NOT \GFX|SHADER|Add6~5_sumout\;
\GFX|SHADER|ALT_INV_Add6~1_sumout\ <= NOT \GFX|SHADER|Add6~1_sumout\;
\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a4\ <= NOT \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a4\;
\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\ <= NOT \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a0~portadataout\;
\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a2\ <= NOT \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a2\;
\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a5\ <= NOT \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a5\;
\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a6\ <= NOT \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a6\;
\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a8\ <= NOT \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a8\;
\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a9\ <= NOT \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a9\;
\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a10\ <= NOT \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a10\;
\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a12\ <= NOT \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a12\;
\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a13\ <= NOT \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a13\;
\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a14\ <= NOT \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a14\;
\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\ <= NOT \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a1~portadataout\;
\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a7\ <= NOT \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a7\;
\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a11\ <= NOT \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a11\;
\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a15\ <= NOT \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a15\;
\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a0\ <= NOT \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a0\;
\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a1\ <= NOT \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a1\;
\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a2\ <= NOT \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a2\;
\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a3\ <= NOT \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a3\;
\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a4\ <= NOT \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a4\;
\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a5\ <= NOT \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a5\;
\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\ <= NOT \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a3~portadataout\;
\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a7\ <= NOT \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a7\;
\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a8\ <= NOT \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a8\;
\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a9\ <= NOT \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a9\;
\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a10\ <= NOT \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a10\;
\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a11\ <= NOT \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a11\;
\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a12\ <= NOT \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a12\;
\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a13\ <= NOT \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a13\;
\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a14\ <= NOT \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a14\;
\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a15\ <= NOT \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a15\;
\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a6~portadataout\ <= NOT \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a6~portadataout\;
\GFX|SHADER|S_CTRL2|ALT_INV_out\(0) <= NOT \GFX|SHADER|S_CTRL2|out\(0);
\GFX|FB|Data_FIFO|auto_generated|ALT_INV_op_1~9_sumout\ <= NOT \GFX|FB|Data_FIFO|auto_generated|op_1~9_sumout\;
\GFX|FB|Data_FIFO|auto_generated|ALT_INV_op_1~5_sumout\ <= NOT \GFX|FB|Data_FIFO|auto_generated|op_1~5_sumout\;
\GFX|FB|Data_FIFO|auto_generated|ALT_INV_op_1~1_sumout\ <= NOT \GFX|FB|Data_FIFO|auto_generated|op_1~1_sumout\;
\GFX|FB|Data_FIFO|auto_generated|fifo_ram|ALT_INV_q_b\(1) <= NOT \GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(1);
\GFX|FB|Data_FIFO|auto_generated|fifo_ram|ALT_INV_q_b\(4) <= NOT \GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(4);
\GFX|FB|Data_FIFO|auto_generated|fifo_ram|ALT_INV_q_b\(6) <= NOT \GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(6);
\GFX|FB|Data_FIFO|auto_generated|fifo_ram|ALT_INV_q_b\(10) <= NOT \GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(10);
\GFX|FB|Data_FIFO|auto_generated|fifo_ram|ALT_INV_q_b\(11) <= NOT \GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(11);
\GFX|FB|Data_FIFO|auto_generated|fifo_ram|ALT_INV_q_b\(13) <= NOT \GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(13);
\GFX|FB|Data_FIFO|auto_generated|fifo_ram|ALT_INV_q_b\(16) <= NOT \GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(16);
\GFX|FB|Data_FIFO|auto_generated|fifo_ram|ALT_INV_q_b\(19) <= NOT \GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(19);
\GFX|FB|Data_FIFO|auto_generated|fifo_ram|ALT_INV_q_b\(20) <= NOT \GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(20);
\GFX|FB|Data_FIFO|auto_generated|fifo_ram|ALT_INV_q_b\(21) <= NOT \GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(21);
\GFX|FB|Data_FIFO|auto_generated|fifo_ram|ALT_INV_q_b\(23) <= NOT \GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(23);
\GFX|FB|Data_FIFO|auto_generated|fifo_ram|ALT_INV_q_b\(24) <= NOT \GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(24);
\State|oreg|ALT_INV_out\(8) <= NOT \State|oreg|out\(8);
\State|xreg|ALT_INV_out\(8) <= NOT \State|xreg|out\(8);
\State|oreg|ALT_INV_out\(7) <= NOT \State|oreg|out\(7);
\State|xreg|ALT_INV_out\(7) <= NOT \State|xreg|out\(7);
\State|oreg|ALT_INV_out\(6) <= NOT \State|oreg|out\(6);
\State|xreg|ALT_INV_out\(6) <= NOT \State|xreg|out\(6);
\State|oreg|ALT_INV_out\(5) <= NOT \State|oreg|out\(5);
\State|xreg|ALT_INV_out\(5) <= NOT \State|xreg|out\(5);
\State|oreg|ALT_INV_out\(4) <= NOT \State|oreg|out\(4);
\State|xreg|ALT_INV_out\(4) <= NOT \State|xreg|out\(4);
\State|oreg|ALT_INV_out\(3) <= NOT \State|oreg|out\(3);
\State|xreg|ALT_INV_out\(3) <= NOT \State|xreg|out\(3);
\State|xreg|ALT_INV_out\(2) <= NOT \State|xreg|out\(2);
\State|oreg|ALT_INV_out\(2) <= NOT \State|oreg|out\(2);
\State|oreg|ALT_INV_out\(1) <= NOT \State|oreg|out\(1);
\State|xreg|ALT_INV_out\(1) <= NOT \State|xreg|out\(1);
\State|oreg|ALT_INV_out\(0) <= NOT \State|oreg|out\(0);
\State|xreg|ALT_INV_out\(0) <= NOT \State|xreg|out\(0);
\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a4~DUPLICATE_q\ <= NOT \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a4~DUPLICATE_q\;
\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a1~DUPLICATE_q\ <= NOT \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a1~DUPLICATE_q\;
\GFX|SHADER|S_Y|ALT_INV_out[0]~DUPLICATE_q\ <= NOT \GFX|SHADER|S_Y|out[0]~DUPLICATE_q\;
\GFX|SHADER|S_Y|ALT_INV_out[8]~DUPLICATE_q\ <= NOT \GFX|SHADER|S_Y|out[8]~DUPLICATE_q\;
\GFX|FB|Data_FIFO|auto_generated|ALT_INV_rdptr_g[0]~DUPLICATE_q\ <= NOT \GFX|FB|Data_FIFO|auto_generated|rdptr_g[0]~DUPLICATE_q\;
\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a5~DUPLICATE_q\ <= NOT \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a5~DUPLICATE_q\;
\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a1~DUPLICATE_q\ <= NOT \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a1~DUPLICATE_q\;
\GFX|FB|Data_FIFO|auto_generated|ALT_INV_wrptr_g[7]~DUPLICATE_q\ <= NOT \GFX|FB|Data_FIFO|auto_generated|wrptr_g[7]~DUPLICATE_q\;
\GFX|FB|Data_FIFO|auto_generated|ALT_INV_wrptr_g[5]~DUPLICATE_q\ <= NOT \GFX|FB|Data_FIFO|auto_generated|wrptr_g[5]~DUPLICATE_q\;
\GFX|SHADER|XD|ALT_INV_out[0]~DUPLICATE_q\ <= NOT \GFX|SHADER|XD|out[0]~DUPLICATE_q\;
\GFX|SHADER|YCD|ALT_INV_out[2]~DUPLICATE_q\ <= NOT \GFX|SHADER|YCD|out[2]~DUPLICATE_q\;
\GFX|FB|VGA|ALT_INV_line_counter[1]~DUPLICATE_q\ <= NOT \GFX|FB|VGA|line_counter[1]~DUPLICATE_q\;
\GFX|FB|VGA|ALT_INV_line_counter[2]~DUPLICATE_q\ <= NOT \GFX|FB|VGA|line_counter[2]~DUPLICATE_q\;
\GFX|FB|VGA|ALT_INV_pixel_counter[4]~DUPLICATE_q\ <= NOT \GFX|FB|VGA|pixel_counter[4]~DUPLICATE_q\;
\GFX|FB|altera_pll_i|ALT_INV_outclk_wire[0]~CLKENA0_outclk\ <= NOT \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\GFX|SHADER|ALT_INV_LessThan6~1_combout\ <= NOT \GFX|SHADER|LessThan6~1_combout\;
\GFX|SHADER|ALT_INV_shader_pixel_rgba[9]~5_combout\ <= NOT \GFX|SHADER|shader_pixel_rgba[9]~5_combout\;
\GFX|SHADER|ALT_INV_shader_pixel_rgba[9]~4_combout\ <= NOT \GFX|SHADER|shader_pixel_rgba[9]~4_combout\;
\GameLogic|comb|ALT_INV_out[6]~15_combout\ <= NOT \GameLogic|comb|out[6]~15_combout\;
\GameLogic|comb|ALT_INV_out[6]~14_combout\ <= NOT \GameLogic|comb|out[6]~14_combout\;
\GameLogic|comb|ALT_INV_out[1]~13_combout\ <= NOT \GameLogic|comb|out[1]~13_combout\;
\GameLogic|comb|ALT_INV_out[1]~12_combout\ <= NOT \GameLogic|comb|out[1]~12_combout\;
\GameLogic|comb|ALT_INV_out[0]~11_combout\ <= NOT \GameLogic|comb|out[0]~11_combout\;
\GameLogic|comb|ra|ALT_INV_g[8]~9_combout\ <= NOT \GameLogic|comb|ra|g[8]~9_combout\;
\GameLogic|comb|ALT_INV_out[4]~10_combout\ <= NOT \GameLogic|comb|out[4]~10_combout\;
\GameLogic|comb|ALT_INV_out[2]~9_combout\ <= NOT \GameLogic|comb|out[2]~9_combout\;
\GameLogic|comb|ALT_INV_out[2]~8_combout\ <= NOT \GameLogic|comb|out[2]~8_combout\;
\GameLogic|comb|ALT_INV_out[2]~7_combout\ <= NOT \GameLogic|comb|out[2]~7_combout\;
\GameLogic|winx|ALT_INV_cout[0]~16_combout\ <= NOT \GameLogic|winx|cout[0]~16_combout\;
\GameLogic|winx|ALT_INV_cout[4]~15_combout\ <= NOT \GameLogic|winx|cout[4]~15_combout\;
\GameLogic|winx|ALT_INV_cout[2]~14_combout\ <= NOT \GameLogic|winx|cout[2]~14_combout\;
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|ALT_INV_dffe17a\(0) <= NOT \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a\(0);
\GFX|FB|Data_FIFO|auto_generated|ALT_INV_ws_dgrp_reg\(0) <= NOT \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg\(0);
\GFX|FB|Data_FIFO|auto_generated|ws_bwp|ALT_INV_dffe15a\(0) <= NOT \GFX|FB|Data_FIFO|auto_generated|ws_bwp|dffe15a\(0);
\GFX|FB|Data_FIFO|auto_generated|ws_brp|ALT_INV_dffe15a\(0) <= NOT \GFX|FB|Data_FIFO|auto_generated|ws_brp|dffe15a\(0);
\GFX|FB|Data_FIFO|auto_generated|ALT_INV_ws_dgrp_reg\(1) <= NOT \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg\(1);
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|ALT_INV_dffe18a\(2) <= NOT \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe18a\(2);
\GFX|FB|Data_FIFO|auto_generated|ws_bwp|ALT_INV_dffe15a\(1) <= NOT \GFX|FB|Data_FIFO|auto_generated|ws_bwp|dffe15a\(1);
\GFX|FB|Data_FIFO|auto_generated|ws_brp|ALT_INV_dffe15a\(1) <= NOT \GFX|FB|Data_FIFO|auto_generated|ws_brp|dffe15a\(1);
\GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|ALT_INV_xor2~combout\ <= NOT \GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|xor2~combout\;
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|ALT_INV_xor2~combout\ <= NOT \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor2~combout\;
\GFX|FB|Data_FIFO|auto_generated|ALT_INV_ws_dgrp_reg\(2) <= NOT \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg\(2);
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|ALT_INV_dffe17a\(4) <= NOT \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a\(4);
\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_sub_parity10a\(0) <= NOT \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|sub_parity10a\(0);
\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_sub_parity10a\(1) <= NOT \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|sub_parity10a\(1);
\GFX|RASTER|R_REG|ALT_INV_out\(0) <= NOT \GFX|RASTER|R_REG|out\(0);
\GFX|RASTER|ALT_INV_Selector18~0_combout\ <= NOT \GFX|RASTER|Selector18~0_combout\;
\GFX|RASTER|ALT_INV_Equal1~1_combout\ <= NOT \GFX|RASTER|Equal1~1_combout\;
\GFX|RASTER|ALT_INV_Equal1~0_combout\ <= NOT \GFX|RASTER|Equal1~0_combout\;
\GFX|RASTER|ALT_INV_Equal0~2_combout\ <= NOT \GFX|RASTER|Equal0~2_combout\;
\GFX|RASTER|ALT_INV_Equal0~1_combout\ <= NOT \GFX|RASTER|Equal0~1_combout\;
\GFX|RASTER|ALT_INV_Equal0~0_combout\ <= NOT \GFX|RASTER|Equal0~0_combout\;
\GFX|FB|Data_FIFO|auto_generated|ALT_INV_delayed_wrptr_g\(7) <= NOT \GFX|FB|Data_FIFO|auto_generated|delayed_wrptr_g\(7);
\GFX|FB|Data_FIFO|auto_generated|ALT_INV_delayed_wrptr_g\(3) <= NOT \GFX|FB|Data_FIFO|auto_generated|delayed_wrptr_g\(3);
\GFX|FB|Data_FIFO|auto_generated|ws_bwp|ALT_INV_dffe15a\(2) <= NOT \GFX|FB|Data_FIFO|auto_generated|ws_bwp|dffe15a\(2);
\GFX|FB|Data_FIFO|auto_generated|ws_brp|ALT_INV_dffe15a\(2) <= NOT \GFX|FB|Data_FIFO|auto_generated|ws_brp|dffe15a\(2);
\GFX|FB|Data_FIFO|auto_generated|ALT_INV_ws_dgrp_reg\(3) <= NOT \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg\(3);
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|ALT_INV_dffe18a\(6) <= NOT \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe18a\(6);
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|ALT_INV_dffe18a\(5) <= NOT \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe18a\(5);
\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_sub_parity7a\(0) <= NOT \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|sub_parity7a\(0);
\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_sub_parity7a\(1) <= NOT \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|sub_parity7a\(1);
\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV__~2_combout\ <= NOT \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|_~2_combout\;
\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV__~1_combout\ <= NOT \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|_~1_combout\;
\GFX|FB|ALT_INV_WideAnd0~combout\ <= NOT \GFX|FB|WideAnd0~combout\;
\GFX|FB|ALT_INV_WideAnd0~0_combout\ <= NOT \GFX|FB|WideAnd0~0_combout\;
\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_parity9~q\ <= NOT \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|parity9~q\;
\GFX|RASTER|X_REG|ALT_INV_out\(3) <= NOT \GFX|RASTER|X_REG|out\(3);
\GFX|RASTER|X_REG|ALT_INV_out\(1) <= NOT \GFX|RASTER|X_REG|out\(1);
\GFX|RASTER|X_REG|ALT_INV_out\(2) <= NOT \GFX|RASTER|X_REG|out\(2);
\GFX|RASTER|X_REG|ALT_INV_out\(0) <= NOT \GFX|RASTER|X_REG|out\(0);
\GFX|RASTER|X_REG|ALT_INV_out\(4) <= NOT \GFX|RASTER|X_REG|out\(4);
\GFX|RASTER|X_REG|ALT_INV_out\(9) <= NOT \GFX|RASTER|X_REG|out\(9);
\GFX|RASTER|X_REG|ALT_INV_out\(7) <= NOT \GFX|RASTER|X_REG|out\(7);
\GFX|RASTER|X_REG|ALT_INV_out\(5) <= NOT \GFX|RASTER|X_REG|out\(5);
\GFX|RASTER|X_REG|ALT_INV_out\(6) <= NOT \GFX|RASTER|X_REG|out\(6);
\GFX|RASTER|X_REG|ALT_INV_out\(8) <= NOT \GFX|RASTER|X_REG|out\(8);
\GFX|RASTER|Y_REG|ALT_INV_out\(9) <= NOT \GFX|RASTER|Y_REG|out\(9);
\GFX|RASTER|Y_REG|ALT_INV_out\(6) <= NOT \GFX|RASTER|Y_REG|out\(6);
\GFX|RASTER|Y_REG|ALT_INV_out\(4) <= NOT \GFX|RASTER|Y_REG|out\(4);
\GFX|RASTER|Y_REG|ALT_INV_out\(5) <= NOT \GFX|RASTER|Y_REG|out\(5);
\GFX|RASTER|Y_REG|ALT_INV_out\(2) <= NOT \GFX|RASTER|Y_REG|out\(2);
\GFX|RASTER|Y_REG|ALT_INV_out\(1) <= NOT \GFX|RASTER|Y_REG|out\(1);
\GFX|RASTER|Y_REG|ALT_INV_out\(0) <= NOT \GFX|RASTER|Y_REG|out\(0);
\GFX|RASTER|Y_REG|ALT_INV_out\(3) <= NOT \GFX|RASTER|Y_REG|out\(3);
\GFX|RASTER|Y_REG|ALT_INV_out\(7) <= NOT \GFX|RASTER|Y_REG|out\(7);
\GFX|RASTER|Y_REG|ALT_INV_out\(8) <= NOT \GFX|RASTER|Y_REG|out\(8);
\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|ALT_INV_dffe13a\(6) <= NOT \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe13a\(6);
\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|ALT_INV_dffe13a\(2) <= NOT \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe13a\(2);
\GFX|FB|Data_FIFO|auto_generated|ws_bwp|ALT_INV_dffe15a\(3) <= NOT \GFX|FB|Data_FIFO|auto_generated|ws_bwp|dffe15a\(3);
\GFX|FB|Data_FIFO|auto_generated|ws_brp|ALT_INV_dffe15a\(3) <= NOT \GFX|FB|Data_FIFO|auto_generated|ws_brp|dffe15a\(3);
\GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|ALT_INV_xor5~combout\ <= NOT \GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|xor5~combout\;
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|ALT_INV_xor5~combout\ <= NOT \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor5~combout\;
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|ALT_INV_xor6~combout\ <= NOT \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor6~combout\;
\GFX|FB|Data_FIFO|auto_generated|ALT_INV_ws_dgrp_reg\(6) <= NOT \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg\(6);
\GFX|FB|Data_FIFO|auto_generated|ALT_INV_ws_dgrp_reg\(7) <= NOT \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg\(7);
\GFX|FB|Data_FIFO|auto_generated|ALT_INV_ws_dgrp_reg\(5) <= NOT \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg\(5);
\GFX|FB|Data_FIFO|auto_generated|ALT_INV_ws_dgrp_reg\(4) <= NOT \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg\(4);
\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV__~2_combout\ <= NOT \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|_~2_combout\;
\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV__~1_combout\ <= NOT \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|_~1_combout\;
\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_parity6~q\ <= NOT \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|parity6~q\;
\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a6~q\ <= NOT \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a6~q\;
\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a7~q\ <= NOT \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a7~q\;
\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a5~q\ <= NOT \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a5~q\;
\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a4~q\ <= NOT \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a4~q\;
\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a3~q\ <= NOT \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a3~q\;
\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a2~q\ <= NOT \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a2~q\;
\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a1~q\ <= NOT \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a1~q\;
\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a0~q\ <= NOT \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a0~q\;
\GFX|SHADER|ALT_INV_comb~11_combout\ <= NOT \GFX|SHADER|comb~11_combout\;
\GFX|SHADER|ALT_INV_LessThan6~0_combout\ <= NOT \GFX|SHADER|LessThan6~0_combout\;
\GFX|SHADER|ALT_INV_Add1~1_combout\ <= NOT \GFX|SHADER|Add1~1_combout\;
\GFX|SHADER|ALT_INV_comb~10_combout\ <= NOT \GFX|SHADER|comb~10_combout\;
\GFX|SHADER|ALT_INV_LessThan3~0_combout\ <= NOT \GFX|SHADER|LessThan3~0_combout\;
\GFX|SHADER|ALT_INV_comb~9_combout\ <= NOT \GFX|SHADER|comb~9_combout\;
\GFX|SHADER|ALT_INV_Add1~0_combout\ <= NOT \GFX|SHADER|Add1~0_combout\;
\GFX|SHADER|ALT_INV_comb~8_combout\ <= NOT \GFX|SHADER|comb~8_combout\;
\GFX|SHADER|ALT_INV_comb~7_combout\ <= NOT \GFX|SHADER|comb~7_combout\;
\GFX|SHADER|S_X|ALT_INV_out\(3) <= NOT \GFX|SHADER|S_X|out\(3);
\GFX|SHADER|S_X|ALT_INV_out\(1) <= NOT \GFX|SHADER|S_X|out\(1);
\GFX|SHADER|S_X|ALT_INV_out\(2) <= NOT \GFX|SHADER|S_X|out\(2);
\GFX|SHADER|S_X|ALT_INV_out\(0) <= NOT \GFX|SHADER|S_X|out\(0);
\GFX|SHADER|S_X|ALT_INV_out\(4) <= NOT \GFX|SHADER|S_X|out\(4);
\GFX|SHADER|S_X|ALT_INV_out\(9) <= NOT \GFX|SHADER|S_X|out\(9);
\GFX|SHADER|S_X|ALT_INV_out\(7) <= NOT \GFX|SHADER|S_X|out\(7);
\GFX|SHADER|S_X|ALT_INV_out\(5) <= NOT \GFX|SHADER|S_X|out\(5);
\GFX|SHADER|S_X|ALT_INV_out\(6) <= NOT \GFX|SHADER|S_X|out\(6);
\GFX|SHADER|S_X|ALT_INV_out\(8) <= NOT \GFX|SHADER|S_X|out\(8);
\GFX|SHADER|S_Y|ALT_INV_out\(9) <= NOT \GFX|SHADER|S_Y|out\(9);
\GFX|SHADER|S_Y|ALT_INV_out\(6) <= NOT \GFX|SHADER|S_Y|out\(6);
\GFX|SHADER|S_Y|ALT_INV_out\(4) <= NOT \GFX|SHADER|S_Y|out\(4);
\GFX|SHADER|S_Y|ALT_INV_out\(5) <= NOT \GFX|SHADER|S_Y|out\(5);
\GFX|SHADER|S_Y|ALT_INV_out\(2) <= NOT \GFX|SHADER|S_Y|out\(2);
\GFX|SHADER|S_Y|ALT_INV_out\(1) <= NOT \GFX|SHADER|S_Y|out\(1);
\GFX|SHADER|S_Y|ALT_INV_out\(0) <= NOT \GFX|SHADER|S_Y|out\(0);
\GFX|SHADER|S_Y|ALT_INV_out\(3) <= NOT \GFX|SHADER|S_Y|out\(3);
\GFX|SHADER|S_Y|ALT_INV_out\(7) <= NOT \GFX|SHADER|S_Y|out\(7);
\GFX|FB|ALT_INV_data_in[24]~4_combout\ <= NOT \GFX|FB|data_in[24]~4_combout\;
\GFX|FB|ALT_INV_data_in[24]~3_combout\ <= NOT \GFX|FB|data_in[24]~3_combout\;
\GFX|FB|ALT_INV_data_in[24]~2_combout\ <= NOT \GFX|FB|data_in[24]~2_combout\;
\GFX|FB|ALT_INV_data_in[24]~1_combout\ <= NOT \GFX|FB|data_in[24]~1_combout\;
\GFX|FB|VGA|ALT_INV_end_of_active_frame~q\ <= NOT \GFX|FB|VGA|end_of_active_frame~q\;
\GFX|FB|VGA|ALT_INV_end_of_frame~q\ <= NOT \GFX|FB|VGA|end_of_frame~q\;
\GFX|FB|Data_FIFO|auto_generated|ALT_INV_int_rdempty~combout\ <= NOT \GFX|FB|Data_FIFO|auto_generated|int_rdempty~combout\;
\GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_msb_mux|ALT_INV_l1_w0_n0_mux_dataout~1_combout\ <= NOT \GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_msb_mux|l1_w0_n0_mux_dataout~1_combout\;
\GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_msb_mux|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_msb_mux|l1_w0_n0_mux_dataout~0_combout\;
\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|ALT_INV_dffe14a\(4) <= NOT \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(4);
\GFX|FB|Data_FIFO|auto_generated|ALT_INV_rdptr_g\(4) <= NOT \GFX|FB|Data_FIFO|auto_generated|rdptr_g\(4);
\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|ALT_INV_dffe14a\(7) <= NOT \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(7);
\GFX|FB|Data_FIFO|auto_generated|ALT_INV_rdptr_g\(7) <= NOT \GFX|FB|Data_FIFO|auto_generated|rdptr_g\(7);
\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|ALT_INV_dffe14a\(6) <= NOT \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(6);
\GFX|FB|Data_FIFO|auto_generated|ALT_INV_rdptr_g\(6) <= NOT \GFX|FB|Data_FIFO|auto_generated|rdptr_g\(6);
\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|ALT_INV_dffe14a\(5) <= NOT \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(5);
\GFX|FB|Data_FIFO|auto_generated|ALT_INV_rdptr_g\(5) <= NOT \GFX|FB|Data_FIFO|auto_generated|rdptr_g\(5);
\GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_lsb_mux|ALT_INV_l1_w0_n0_mux_dataout~1_combout\ <= NOT \GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~1_combout\;
\GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_lsb_mux|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~0_combout\;
\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|ALT_INV_dffe14a\(0) <= NOT \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(0);
\GFX|FB|Data_FIFO|auto_generated|ALT_INV_rdptr_g\(0) <= NOT \GFX|FB|Data_FIFO|auto_generated|rdptr_g\(0);
\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|ALT_INV_dffe14a\(3) <= NOT \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(3);
\GFX|FB|Data_FIFO|auto_generated|ALT_INV_rdptr_g\(3) <= NOT \GFX|FB|Data_FIFO|auto_generated|rdptr_g\(3);
\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|ALT_INV_dffe14a\(2) <= NOT \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(2);
\GFX|FB|Data_FIFO|auto_generated|ALT_INV_rdptr_g\(2) <= NOT \GFX|FB|Data_FIFO|auto_generated|rdptr_g\(2);
\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|ALT_INV_dffe14a\(1) <= NOT \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(1);
\GFX|FB|Data_FIFO|auto_generated|ALT_INV_rdptr_g\(1) <= NOT \GFX|FB|Data_FIFO|auto_generated|rdptr_g\(1);
\GFX|FB|Data_FIFO|auto_generated|ws_bwp|ALT_INV_dffe15a\(6) <= NOT \GFX|FB|Data_FIFO|auto_generated|ws_bwp|dffe15a\(6);
\GFX|FB|Data_FIFO|auto_generated|ws_brp|ALT_INV_dffe15a\(6) <= NOT \GFX|FB|Data_FIFO|auto_generated|ws_brp|dffe15a\(6);
\GFX|FB|Data_FIFO|auto_generated|ws_bwp|ALT_INV_dffe15a\(5) <= NOT \GFX|FB|Data_FIFO|auto_generated|ws_bwp|dffe15a\(5);
\GFX|FB|Data_FIFO|auto_generated|ws_brp|ALT_INV_dffe15a\(5) <= NOT \GFX|FB|Data_FIFO|auto_generated|ws_brp|dffe15a\(5);
\GFX|FB|Data_FIFO|auto_generated|ws_bwp|ALT_INV_dffe15a\(4) <= NOT \GFX|FB|Data_FIFO|auto_generated|ws_bwp|dffe15a\(4);
\GFX|FB|Data_FIFO|auto_generated|ws_brp|ALT_INV_dffe15a\(4) <= NOT \GFX|FB|Data_FIFO|auto_generated|ws_brp|dffe15a\(4);
\GFX|FB|VGA|ALT_INV_Equal3~2_combout\ <= NOT \GFX|FB|VGA|Equal3~2_combout\;
\GFX|FB|VGA|ALT_INV_Equal3~1_combout\ <= NOT \GFX|FB|VGA|Equal3~1_combout\;
\GFX|FB|VGA|ALT_INV_Equal3~0_combout\ <= NOT \GFX|FB|VGA|Equal3~0_combout\;
\GFX|FB|VGA|ALT_INV_Equal1~1_combout\ <= NOT \GFX|FB|VGA|Equal1~1_combout\;
\GFX|FB|VGA|ALT_INV_Equal2~1_combout\ <= NOT \GFX|FB|VGA|Equal2~1_combout\;
\GFX|FB|VGA|ALT_INV_Equal1~0_combout\ <= NOT \GFX|FB|VGA|Equal1~0_combout\;
\GFX|FB|VGA|ALT_INV_early_vsync_pulse~0_combout\ <= NOT \GFX|FB|VGA|early_vsync_pulse~0_combout\;
\GFX|FB|VGA|ALT_INV_Equal4~0_combout\ <= NOT \GFX|FB|VGA|Equal4~0_combout\;
\GFX|FB|VGA|ALT_INV_Equal2~0_combout\ <= NOT \GFX|FB|VGA|Equal2~0_combout\;
\GFX|FB|VGA|ALT_INV_Equal5~0_combout\ <= NOT \GFX|FB|VGA|Equal5~0_combout\;
\GFX|SHADER|ALT_INV_WideOr3~21_combout\ <= NOT \GFX|SHADER|WideOr3~21_combout\;
\GFX|SHADER|ALT_INV_WideOr3~20_combout\ <= NOT \GFX|SHADER|WideOr3~20_combout\;
\GFX|SHADER|ALT_INV_WideOr3~19_combout\ <= NOT \GFX|SHADER|WideOr3~19_combout\;
\GFX|SHADER|ALT_INV_WideOr3~18_combout\ <= NOT \GFX|SHADER|WideOr3~18_combout\;
\GFX|SHADER|ALT_INV_WideOr3~17_combout\ <= NOT \GFX|SHADER|WideOr3~17_combout\;
\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a7~q\ <= NOT \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a7~q\;
\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a6~q\ <= NOT \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a6~q\;
\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a5~q\ <= NOT \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a5~q\;
\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a4~q\ <= NOT \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a4~q\;
\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a3~q\ <= NOT \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a3~q\;
\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a2~q\ <= NOT \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a2~q\;
\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a1~q\ <= NOT \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a1~q\;
\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a0~q\ <= NOT \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a0~q\;
\GFX|FB|Data_FIFO|auto_generated|ALT_INV_ram_address_a\(6) <= NOT \GFX|FB|Data_FIFO|auto_generated|ram_address_a\(6);
\GFX|FB|Data_FIFO|auto_generated|ALT_INV_wrptr_g\(6) <= NOT \GFX|FB|Data_FIFO|auto_generated|wrptr_g\(6);
\GFX|FB|Data_FIFO|auto_generated|ALT_INV_wrptr_g\(4) <= NOT \GFX|FB|Data_FIFO|auto_generated|wrptr_g\(4);
\GFX|FB|Data_FIFO|auto_generated|ALT_INV_wrptr_g\(3) <= NOT \GFX|FB|Data_FIFO|auto_generated|wrptr_g\(3);
\GFX|FB|Data_FIFO|auto_generated|ALT_INV_wrptr_g\(2) <= NOT \GFX|FB|Data_FIFO|auto_generated|wrptr_g\(2);
\GFX|FB|Data_FIFO|auto_generated|ALT_INV_wrptr_g\(1) <= NOT \GFX|FB|Data_FIFO|auto_generated|wrptr_g\(1);
\GFX|FB|Data_FIFO|auto_generated|ALT_INV_wrptr_g\(0) <= NOT \GFX|FB|Data_FIFO|auto_generated|wrptr_g\(0);
\GFX|SHADER|ALT_INV_WideOr3~16_combout\ <= NOT \GFX|SHADER|WideOr3~16_combout\;
\GFX|SHADER|ALT_INV_WideOr3~15_combout\ <= NOT \GFX|SHADER|WideOr3~15_combout\;
\GFX|SHADER|ALT_INV_WideOr3~14_combout\ <= NOT \GFX|SHADER|WideOr3~14_combout\;
\GFX|SHADER|ALT_INV_WideOr3~13_combout\ <= NOT \GFX|SHADER|WideOr3~13_combout\;
\GFX|SHADER|ALT_INV_WideOr3~12_combout\ <= NOT \GFX|SHADER|WideOr3~12_combout\;
\GFX|SHADER|ALT_INV_WideOr3~11_combout\ <= NOT \GFX|SHADER|WideOr3~11_combout\;
\GFX|SHADER|ALT_INV_WideOr3~10_combout\ <= NOT \GFX|SHADER|WideOr3~10_combout\;
\GFX|SHADER|ALT_INV_WideOr3~9_combout\ <= NOT \GFX|SHADER|WideOr3~9_combout\;
\GFX|SHADER|ALT_INV_WideOr3~8_combout\ <= NOT \GFX|SHADER|WideOr3~8_combout\;
\GFX|SHADER|ALT_INV_WideOr3~7_combout\ <= NOT \GFX|SHADER|WideOr3~7_combout\;
\GFX|SHADER|ALT_INV_WideOr3~6_combout\ <= NOT \GFX|SHADER|WideOr3~6_combout\;
\GFX|SHADER|ALT_INV_WideOr3~5_combout\ <= NOT \GFX|SHADER|WideOr3~5_combout\;
\GFX|SHADER|ALT_INV_WideOr3~4_combout\ <= NOT \GFX|SHADER|WideOr3~4_combout\;
\GFX|SHADER|ALT_INV_WideOr3~3_combout\ <= NOT \GFX|SHADER|WideOr3~3_combout\;
\GFX|SHADER|ALT_INV_WideOr3~2_combout\ <= NOT \GFX|SHADER|WideOr3~2_combout\;
\GFX|SHADER|ALT_INV_WideOr3~1_combout\ <= NOT \GFX|SHADER|WideOr3~1_combout\;
\GFX|SHADER|ALT_INV_WideOr3~0_combout\ <= NOT \GFX|SHADER|WideOr3~0_combout\;
\GFX|SHADER|ALT_INV_comb~5_combout\ <= NOT \GFX|SHADER|comb~5_combout\;
\GFX|SHADER|ALT_INV_WideOr1~6_combout\ <= NOT \GFX|SHADER|WideOr1~6_combout\;
\GFX|SHADER|ALT_INV_WideOr1~5_combout\ <= NOT \GFX|SHADER|WideOr1~5_combout\;
\GFX|SHADER|ALT_INV_WideOr1~4_combout\ <= NOT \GFX|SHADER|WideOr1~4_combout\;
\GFX|SHADER|ALT_INV_WideOr1~3_combout\ <= NOT \GFX|SHADER|WideOr1~3_combout\;
\GFX|SHADER|ALT_INV_WideOr1~2_combout\ <= NOT \GFX|SHADER|WideOr1~2_combout\;
\GFX|SHADER|ALT_INV_WideOr1~1_combout\ <= NOT \GFX|SHADER|WideOr1~1_combout\;
\GFX|SHADER|ALT_INV_WideOr1~0_combout\ <= NOT \GFX|SHADER|WideOr1~0_combout\;
\GFX|SHADER|ALT_INV_Mux1~4_combout\ <= NOT \GFX|SHADER|Mux1~4_combout\;
\GFX|SHADER|ALT_INV_Mux1~3_combout\ <= NOT \GFX|SHADER|Mux1~3_combout\;
\GFX|SHADER|ALT_INV_Mux1~2_combout\ <= NOT \GFX|SHADER|Mux1~2_combout\;
\GFX|SHADER|ALT_INV_Mux1~1_combout\ <= NOT \GFX|SHADER|Mux1~1_combout\;
\GFX|SHADER|ALT_INV_Mux1~0_combout\ <= NOT \GFX|SHADER|Mux1~0_combout\;
\GFX|SHADER|ALT_INV_comb~4_combout\ <= NOT \GFX|SHADER|comb~4_combout\;
\GFX|SHADER|ALT_INV_WideOr0~8_combout\ <= NOT \GFX|SHADER|WideOr0~8_combout\;
\GFX|SHADER|ALT_INV_WideOr0~7_combout\ <= NOT \GFX|SHADER|WideOr0~7_combout\;
\GFX|SHADER|ALT_INV_WideOr0~6_combout\ <= NOT \GFX|SHADER|WideOr0~6_combout\;
\GFX|SHADER|ALT_INV_LessThan10~1_combout\ <= NOT \GFX|SHADER|LessThan10~1_combout\;
\GFX|SHADER|ALT_INV_LessThan10~0_combout\ <= NOT \GFX|SHADER|LessThan10~0_combout\;
\GFX|SHADER|ALT_INV_on_yborder~4_combout\ <= NOT \GFX|SHADER|on_yborder~4_combout\;
\GFX|SHADER|ALT_INV_WideOr0~5_combout\ <= NOT \GFX|SHADER|WideOr0~5_combout\;
\GFX|SHADER|ALT_INV_WideOr0~4_combout\ <= NOT \GFX|SHADER|WideOr0~4_combout\;
\GFX|SHADER|ALT_INV_board_position~5_combout\ <= NOT \GFX|SHADER|board_position~5_combout\;
\GFX|SHADER|ALT_INV_WideOr0~3_combout\ <= NOT \GFX|SHADER|WideOr0~3_combout\;
\GFX|SHADER|ALT_INV_WideOr0~2_combout\ <= NOT \GFX|SHADER|WideOr0~2_combout\;
\GFX|SHADER|ALT_INV_LessThan8~0_combout\ <= NOT \GFX|SHADER|LessThan8~0_combout\;
\GFX|SHADER|ALT_INV_WideOr0~1_combout\ <= NOT \GFX|SHADER|WideOr0~1_combout\;
\GFX|SHADER|ALT_INV_board_position~4_combout\ <= NOT \GFX|SHADER|board_position~4_combout\;
\GFX|SHADER|ALT_INV_board_position~3_combout\ <= NOT \GFX|SHADER|board_position~3_combout\;
\GFX|SHADER|ALT_INV_WideOr0~0_combout\ <= NOT \GFX|SHADER|WideOr0~0_combout\;
\GFX|SHADER|ALT_INV_board_position~2_combout\ <= NOT \GFX|SHADER|board_position~2_combout\;
\GFX|SHADER|ALT_INV_board_position~1_combout\ <= NOT \GFX|SHADER|board_position~1_combout\;
\GFX|SHADER|ALT_INV_board_position~0_combout\ <= NOT \GFX|SHADER|board_position~0_combout\;
\GFX|SHADER|ALT_INV_on_yborder~3_combout\ <= NOT \GFX|SHADER|on_yborder~3_combout\;
\GFX|SHADER|ALT_INV_Mux0~4_combout\ <= NOT \GFX|SHADER|Mux0~4_combout\;
\GFX|SHADER|XD|ALT_INV_out\(3) <= NOT \GFX|SHADER|XD|out\(3);
\GFX|SHADER|XD|ALT_INV_out\(2) <= NOT \GFX|SHADER|XD|out\(2);
\GFX|SHADER|ALT_INV_Mux0~3_combout\ <= NOT \GFX|SHADER|Mux0~3_combout\;
\GFX|SHADER|ALT_INV_Mux0~2_combout\ <= NOT \GFX|SHADER|Mux0~2_combout\;
\GFX|SHADER|ALT_INV_Mux0~1_combout\ <= NOT \GFX|SHADER|Mux0~1_combout\;
\GFX|SHADER|ALT_INV_Mux0~0_combout\ <= NOT \GFX|SHADER|Mux0~0_combout\;
\GFX|SHADER|XD|ALT_INV_out\(1) <= NOT \GFX|SHADER|XD|out\(1);
\GFX|SHADER|XD|ALT_INV_out\(0) <= NOT \GFX|SHADER|XD|out\(0);
\GFX|SHADER|ALT_INV_comb~3_combout\ <= NOT \GFX|SHADER|comb~3_combout\;
\GFX|SHADER|ALT_INV_on_yborder~2_combout\ <= NOT \GFX|SHADER|on_yborder~2_combout\;
\GFX|SHADER|ALT_INV_on_yborder~1_combout\ <= NOT \GFX|SHADER|on_yborder~1_combout\;
\GFX|SHADER|ALT_INV_comb~2_combout\ <= NOT \GFX|SHADER|comb~2_combout\;
\GFX|SHADER|ALT_INV_comb~1_combout\ <= NOT \GFX|SHADER|comb~1_combout\;
\GFX|SHADER|ALT_INV_comb~0_combout\ <= NOT \GFX|SHADER|comb~0_combout\;
\GFX|FB|ALT_INV_data_in[24]~0_combout\ <= NOT \GFX|FB|data_in[24]~0_combout\;
\GFX|SHADER|ALT_INV_on_yborder~0_combout\ <= NOT \GFX|SHADER|on_yborder~0_combout\;
\GFX|SHADER|ALT_INV_LessThan11~0_combout\ <= NOT \GFX|SHADER|LessThan11~0_combout\;
\GFX|SHADER|XCD|ALT_INV_out\(3) <= NOT \GFX|SHADER|XCD|out\(3);
\GFX|SHADER|XCD|ALT_INV_out\(1) <= NOT \GFX|SHADER|XCD|out\(1);
\GFX|SHADER|XCD|ALT_INV_out\(2) <= NOT \GFX|SHADER|XCD|out\(2);
\GFX|SHADER|XCD|ALT_INV_out\(0) <= NOT \GFX|SHADER|XCD|out\(0);
\GFX|SHADER|XCD|ALT_INV_out\(4) <= NOT \GFX|SHADER|XCD|out\(4);
\GFX|SHADER|XCD|ALT_INV_out\(9) <= NOT \GFX|SHADER|XCD|out\(9);
\GFX|SHADER|XCD|ALT_INV_out\(7) <= NOT \GFX|SHADER|XCD|out\(7);
\GFX|SHADER|XCD|ALT_INV_out\(5) <= NOT \GFX|SHADER|XCD|out\(5);

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GameLogic|blockx|topr|ALT_INV_cout~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X52_Y0_N19
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GameLogic|winx|topr|cout[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X60_Y0_N2
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GameLogic|winx|cout[2]~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X80_Y0_N2
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GameLogic|winx|leftc|cout[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X60_Y0_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GameLogic|winx|cout[4]~1_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X80_Y0_N19
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GameLogic|winx|cout[5]~2_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X84_Y0_N2
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GameLogic|winx|cout[6]~3_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X89_Y6_N5
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GameLogic|winx|cout[7]~4_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X89_Y8_N5
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GameLogic|winx|cout[8]~5_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X89_Y6_N22
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X38_Y81_N36
\VGA_CLK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	devoe => ww_devoe,
	o => ww_VGA_CLK);

-- Location: IOOBUF_X36_Y81_N53
\VGA_HS~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GFX|FB|VGA|vga_h_sync~q\,
	devoe => ww_devoe,
	o => ww_VGA_HS);

-- Location: IOOBUF_X34_Y81_N42
\VGA_VS~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GFX|FB|VGA|vga_v_sync~q\,
	devoe => ww_devoe,
	o => ww_VGA_VS);

-- Location: IOOBUF_X6_Y81_N19
\VGA_BLANK_N~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GFX|FB|VGA|vga_blank~q\,
	devoe => ww_devoe,
	o => ww_VGA_BLANK_N);

-- Location: IOOBUF_X28_Y81_N36
\VGA_SYNC_N~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_SYNC_N);

-- Location: IOOBUF_X40_Y81_N53
\VGA_R[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GFX|FB|VGA|vga_red\(2),
	devoe => ww_devoe,
	o => ww_VGA_R(0));

-- Location: IOOBUF_X38_Y81_N2
\VGA_R[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GFX|FB|VGA|vga_red\(3),
	devoe => ww_devoe,
	o => ww_VGA_R(1));

-- Location: IOOBUF_X26_Y81_N59
\VGA_R[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GFX|FB|VGA|vga_red\(4),
	devoe => ww_devoe,
	o => ww_VGA_R(2));

-- Location: IOOBUF_X38_Y81_N19
\VGA_R[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GFX|FB|VGA|vga_red\(5),
	devoe => ww_devoe,
	o => ww_VGA_R(3));

-- Location: IOOBUF_X36_Y81_N36
\VGA_R[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GFX|FB|VGA|vga_red\(6),
	devoe => ww_devoe,
	o => ww_VGA_R(4));

-- Location: IOOBUF_X22_Y81_N19
\VGA_R[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GFX|FB|VGA|vga_red\(7),
	devoe => ww_devoe,
	o => ww_VGA_R(5));

-- Location: IOOBUF_X22_Y81_N2
\VGA_R[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GFX|FB|VGA|vga_red\(8),
	devoe => ww_devoe,
	o => ww_VGA_R(6));

-- Location: IOOBUF_X26_Y81_N42
\VGA_R[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GFX|FB|VGA|vga_red\(9),
	devoe => ww_devoe,
	o => ww_VGA_R(7));

-- Location: IOOBUF_X4_Y81_N19
\VGA_G[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GFX|FB|VGA|vga_green\(2),
	devoe => ww_devoe,
	o => ww_VGA_G(0));

-- Location: IOOBUF_X4_Y81_N2
\VGA_G[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GFX|FB|VGA|vga_green\(3),
	devoe => ww_devoe,
	o => ww_VGA_G(1));

-- Location: IOOBUF_X20_Y81_N19
\VGA_G[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GFX|FB|VGA|vga_green\(4),
	devoe => ww_devoe,
	o => ww_VGA_G(2));

-- Location: IOOBUF_X6_Y81_N2
\VGA_G[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GFX|FB|VGA|vga_green\(5),
	devoe => ww_devoe,
	o => ww_VGA_G(3));

-- Location: IOOBUF_X10_Y81_N59
\VGA_G[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GFX|FB|VGA|vga_green\(6),
	devoe => ww_devoe,
	o => ww_VGA_G(4));

-- Location: IOOBUF_X10_Y81_N42
\VGA_G[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GFX|FB|VGA|vga_green\(7),
	devoe => ww_devoe,
	o => ww_VGA_G(5));

-- Location: IOOBUF_X18_Y81_N42
\VGA_G[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GFX|FB|VGA|vga_green\(8),
	devoe => ww_devoe,
	o => ww_VGA_G(6));

-- Location: IOOBUF_X18_Y81_N59
\VGA_G[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GFX|FB|VGA|vga_green\(9),
	devoe => ww_devoe,
	o => ww_VGA_G(7));

-- Location: IOOBUF_X40_Y81_N36
\VGA_B[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GFX|FB|VGA|vga_blue\(2),
	devoe => ww_devoe,
	o => ww_VGA_B(0));

-- Location: IOOBUF_X28_Y81_N19
\VGA_B[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GFX|FB|VGA|vga_blue\(3),
	devoe => ww_devoe,
	o => ww_VGA_B(1));

-- Location: IOOBUF_X20_Y81_N2
\VGA_B[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GFX|FB|VGA|vga_blue\(4),
	devoe => ww_devoe,
	o => ww_VGA_B(2));

-- Location: IOOBUF_X36_Y81_N19
\VGA_B[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GFX|FB|VGA|vga_blue\(5),
	devoe => ww_devoe,
	o => ww_VGA_B(3));

-- Location: IOOBUF_X28_Y81_N2
\VGA_B[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GFX|FB|VGA|vga_blue\(6),
	devoe => ww_devoe,
	o => ww_VGA_B(4));

-- Location: IOOBUF_X36_Y81_N2
\VGA_B[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GFX|FB|VGA|vga_blue\(7),
	devoe => ww_devoe,
	o => ww_VGA_B(5));

-- Location: IOOBUF_X40_Y81_N19
\VGA_B[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GFX|FB|VGA|vga_blue\(8),
	devoe => ww_devoe,
	o => ww_VGA_B(6));

-- Location: IOOBUF_X32_Y81_N19
\VGA_B[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GFX|FB|VGA|vga_blue\(9),
	devoe => ww_devoe,
	o => ww_VGA_B(7));

-- Location: IOIBUF_X32_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G5
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: IOIBUF_X4_Y0_N18
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: FF_X31_Y2_N2
\State|xmov|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State|xmov|out\(8));

-- Location: IOIBUF_X4_Y0_N1
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: FF_X31_Y2_N56
\State|xmov|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State|xmov|out\(7));

-- Location: LABCELL_X33_Y2_N6
\State|Add22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|Add22~0_combout\ = ( \State|xreg|out\(7) & ( (!\State|xreg|out\(8) & \State|xmov|out\(8)) ) ) # ( !\State|xreg|out\(7) & ( !\State|xmov|out\(7) $ (((!\State|xmov|out\(8)) # (\State|xreg|out\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100100111001001110010011100100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|xreg|ALT_INV_out\(8),
	datab => \State|xmov|ALT_INV_out\(7),
	datac => \State|xmov|ALT_INV_out\(8),
	dataf => \State|xreg|ALT_INV_out\(7),
	combout => \State|Add22~0_combout\);

-- Location: IOIBUF_X8_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: FF_X30_Y2_N50
\State|xmov|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State|xmov|out\(2));

-- Location: LABCELL_X30_Y2_N3
\State|o_next[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|o_next[1]~1_combout\ = ( \State|o_update~combout\ & ( (!\GameLogic|comb|out\(1)) # (\State|oreg|out\(1)) ) ) # ( !\State|o_update~combout\ & ( \State|oreg|out\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GameLogic|comb|ALT_INV_out\(1),
	datad => \State|oreg|ALT_INV_out\(1),
	dataf => \State|ALT_INV_o_update~combout\,
	combout => \State|o_next[1]~1_combout\);

-- Location: IOIBUF_X36_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: FF_X30_Y2_N5
\State|oreg|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \State|o_next[1]~1_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State|oreg|out\(1));

-- Location: IOIBUF_X16_Y0_N1
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: FF_X30_Y2_N32
\State|xmov|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State|xmov|out\(1));

-- Location: LABCELL_X33_Y2_N39
\State|x_next[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|x_next[1]~1_combout\ = ( \State|xreg|out\(1) & ( \State|xmov|out\(1) ) ) # ( !\State|xreg|out\(1) & ( \State|xmov|out\(1) & ( (\State|x_update~4_combout\ & (\State|x_update~5_combout\ & (\State|x_update~3_combout\ & !\State|LessThan0~1_combout\))) 
-- ) ) ) # ( \State|xreg|out\(1) & ( !\State|xmov|out\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000001000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|ALT_INV_x_update~4_combout\,
	datab => \State|ALT_INV_x_update~5_combout\,
	datac => \State|ALT_INV_x_update~3_combout\,
	datad => \State|ALT_INV_LessThan0~1_combout\,
	datae => \State|xreg|ALT_INV_out\(1),
	dataf => \State|xmov|ALT_INV_out\(1),
	combout => \State|x_next[1]~1_combout\);

-- Location: FF_X33_Y2_N41
\State|xreg|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \State|x_next[1]~1_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State|xreg|out\(1));

-- Location: LABCELL_X33_Y2_N0
\GameLogic|winx|topr|cout[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|winx|topr|cout[1]~0_combout\ = ( !\State|xreg|out\(1) & ( !\State|oreg|out\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \State|oreg|ALT_INV_out\(1),
	dataf => \State|xreg|ALT_INV_out\(1),
	combout => \GameLogic|winx|topr|cout[1]~0_combout\);

-- Location: IOIBUF_X2_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: FF_X30_Y2_N8
\State|xmov|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State|xmov|out\(4));

-- Location: LABCELL_X33_Y2_N15
\State|x_next[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|x_next[4]~4_combout\ = ( \State|xreg|out\(4) & ( \State|xmov|out\(4) ) ) # ( !\State|xreg|out\(4) & ( \State|xmov|out\(4) & ( (\State|x_update~4_combout\ & (\State|x_update~5_combout\ & (\State|x_update~3_combout\ & !\State|LessThan0~1_combout\))) 
-- ) ) ) # ( \State|xreg|out\(4) & ( !\State|xmov|out\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000001000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|ALT_INV_x_update~4_combout\,
	datab => \State|ALT_INV_x_update~5_combout\,
	datac => \State|ALT_INV_x_update~3_combout\,
	datad => \State|ALT_INV_LessThan0~1_combout\,
	datae => \State|xreg|ALT_INV_out\(4),
	dataf => \State|xmov|ALT_INV_out\(4),
	combout => \State|x_next[4]~4_combout\);

-- Location: FF_X33_Y2_N17
\State|xreg|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \State|x_next[4]~4_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State|xreg|out\(4));

-- Location: LABCELL_X33_Y2_N33
\State|x_next[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|x_next[2]~2_combout\ = ( \State|xreg|out\(2) & ( \State|xmov|out\(2) ) ) # ( !\State|xreg|out\(2) & ( \State|xmov|out\(2) & ( (\State|x_update~4_combout\ & (\State|x_update~5_combout\ & (\State|x_update~3_combout\ & !\State|LessThan0~1_combout\))) 
-- ) ) ) # ( \State|xreg|out\(2) & ( !\State|xmov|out\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000001000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|ALT_INV_x_update~4_combout\,
	datab => \State|ALT_INV_x_update~5_combout\,
	datac => \State|ALT_INV_x_update~3_combout\,
	datad => \State|ALT_INV_LessThan0~1_combout\,
	datae => \State|xreg|ALT_INV_out\(2),
	dataf => \State|xmov|ALT_INV_out\(2),
	combout => \State|x_next[2]~2_combout\);

-- Location: FF_X33_Y2_N35
\State|xreg|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \State|x_next[2]~2_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State|xreg|out\(2));

-- Location: LABCELL_X31_Y2_N33
\GameLogic|winx|leftc|cout[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|winx|leftc|cout[1]~0_combout\ = ( !\State|xreg|out\(3) & ( !\State|oreg|out\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \State|oreg|ALT_INV_out\(3),
	dataf => \State|xreg|ALT_INV_out\(3),
	combout => \GameLogic|winx|leftc|cout[1]~0_combout\);

-- Location: LABCELL_X30_Y4_N9
\GameLogic|winx|cout[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|winx|cout[2]~0_combout\ = ( !\State|xreg|out\(2) & ( !\State|oreg|out\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \State|oreg|ALT_INV_out\(2),
	dataf => \State|xreg|ALT_INV_out\(2),
	combout => \GameLogic|winx|cout[2]~0_combout\);

-- Location: IOIBUF_X4_Y0_N35
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: FF_X31_Y2_N53
\State|xmov|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State|xmov|out\(6));

-- Location: LABCELL_X33_Y2_N21
\State|x_next[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|x_next[6]~6_combout\ = ( \State|xreg|out\(6) & ( \State|xmov|out\(6) ) ) # ( !\State|xreg|out\(6) & ( \State|xmov|out\(6) & ( (\State|x_update~4_combout\ & (\State|x_update~5_combout\ & (\State|x_update~3_combout\ & !\State|LessThan0~1_combout\))) 
-- ) ) ) # ( \State|xreg|out\(6) & ( !\State|xmov|out\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000001000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|ALT_INV_x_update~4_combout\,
	datab => \State|ALT_INV_x_update~5_combout\,
	datac => \State|ALT_INV_x_update~3_combout\,
	datad => \State|ALT_INV_LessThan0~1_combout\,
	datae => \State|xreg|ALT_INV_out\(6),
	dataf => \State|xmov|ALT_INV_out\(6),
	combout => \State|x_next[6]~6_combout\);

-- Location: FF_X33_Y2_N23
\State|xreg|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \State|x_next[6]~6_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State|xreg|out\(6));

-- Location: IOIBUF_X16_Y0_N18
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: MLABCELL_X25_Y2_N3
\State|xmov|out[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|xmov|out[5]~feeder_combout\ = ( \SW[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \State|xmov|out[5]~feeder_combout\);

-- Location: FF_X25_Y2_N5
\State|xmov|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \State|xmov|out[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State|xmov|out\(5));

-- Location: LABCELL_X33_Y2_N18
\State|x_next[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|x_next[5]~5_combout\ = ( \State|xreg|out\(5) & ( \State|xmov|out\(5) ) ) # ( !\State|xreg|out\(5) & ( \State|xmov|out\(5) & ( (\State|x_update~4_combout\ & (\State|x_update~5_combout\ & (!\State|LessThan0~1_combout\ & \State|x_update~3_combout\))) 
-- ) ) ) # ( \State|xreg|out\(5) & ( !\State|xmov|out\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|ALT_INV_x_update~4_combout\,
	datab => \State|ALT_INV_x_update~5_combout\,
	datac => \State|ALT_INV_LessThan0~1_combout\,
	datad => \State|ALT_INV_x_update~3_combout\,
	datae => \State|xreg|ALT_INV_out\(5),
	dataf => \State|xmov|ALT_INV_out\(5),
	combout => \State|x_next[5]~5_combout\);

-- Location: FF_X33_Y2_N20
\State|xreg|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \State|x_next[5]~5_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State|xreg|out\(5));

-- Location: LABCELL_X33_Y3_N39
\GameLogic|blockx|cout[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|blockx|cout[2]~10_combout\ = ( \State|xreg|out\(0) & ( ((\State|xreg|out\(8) & \State|xreg|out\(5))) # (\State|xreg|out\(1)) ) ) # ( !\State|xreg|out\(0) & ( (\State|xreg|out\(8) & \State|xreg|out\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100110111001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|xreg|ALT_INV_out\(8),
	datab => \State|xreg|ALT_INV_out\(1),
	datac => \State|xreg|ALT_INV_out\(5),
	dataf => \State|xreg|ALT_INV_out\(0),
	combout => \GameLogic|blockx|cout[2]~10_combout\);

-- Location: LABCELL_X33_Y3_N33
\GameLogic|blockx|cout[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|blockx|cout[2]~11_combout\ = ( \GameLogic|blockx|cout[2]~10_combout\ & ( \GameLogic|winx|cout[2]~0_combout\ ) ) # ( !\GameLogic|blockx|cout[2]~10_combout\ & ( (\State|xreg|out\(4) & (\GameLogic|winx|cout[2]~0_combout\ & \State|xreg|out\(6))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \State|xreg|ALT_INV_out\(4),
	datac => \GameLogic|winx|ALT_INV_cout[2]~0_combout\,
	datad => \State|xreg|ALT_INV_out\(6),
	dataf => \GameLogic|blockx|ALT_INV_cout[2]~10_combout\,
	combout => \GameLogic|blockx|cout[2]~11_combout\);

-- Location: LABCELL_X33_Y3_N30
\GameLogic|blockx|cout[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|blockx|cout\(1) = ( \State|xreg|out\(2) & ( (\GameLogic|winx|topr|cout[1]~0_combout\ & (((\State|xreg|out\(4) & \State|xreg|out\(7))) # (\State|xreg|out\(0)))) ) ) # ( !\State|xreg|out\(2) & ( (\GameLogic|winx|topr|cout[1]~0_combout\ & 
-- (\State|xreg|out\(4) & \State|xreg|out\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000101000101010000010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|winx|topr|ALT_INV_cout[1]~0_combout\,
	datab => \State|xreg|ALT_INV_out\(4),
	datac => \State|xreg|ALT_INV_out\(0),
	datad => \State|xreg|ALT_INV_out\(7),
	dataf => \State|xreg|ALT_INV_out\(2),
	combout => \GameLogic|blockx|cout\(1));

-- Location: LABCELL_X33_Y3_N18
\GameLogic|blockx|cout[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|blockx|cout\(3) = ( \State|xreg|out\(4) & ( (\GameLogic|winx|leftc|cout[1]~0_combout\ & (((\State|xreg|out\(6) & \State|xreg|out\(0))) # (\State|xreg|out\(5)))) ) ) # ( !\State|xreg|out\(4) & ( (\State|xreg|out\(6) & 
-- (\GameLogic|winx|leftc|cout[1]~0_combout\ & \State|xreg|out\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001001100110000000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|xreg|ALT_INV_out\(6),
	datab => \GameLogic|winx|leftc|ALT_INV_cout[1]~0_combout\,
	datac => \State|xreg|ALT_INV_out\(0),
	datad => \State|xreg|ALT_INV_out\(5),
	dataf => \State|xreg|ALT_INV_out\(4),
	combout => \GameLogic|blockx|cout\(3));

-- Location: LABCELL_X31_Y3_N30
\GameLogic|adjacentx|WideNor0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|adjacentx|WideNor0~3_combout\ = ( !\State|xreg|out\(0) & ( \State|xreg|out\(6) & ( (!\State|oreg|out\(3) & (!\State|xreg|out\(3) & (\State|xreg|out\(2) & !\State|xreg|out\(8)))) ) ) ) # ( \State|xreg|out\(0) & ( !\State|xreg|out\(6) & ( 
-- (!\State|oreg|out\(3) & (!\State|xreg|out\(3) & (!\State|xreg|out\(2) & \State|xreg|out\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|oreg|ALT_INV_out\(3),
	datab => \State|xreg|ALT_INV_out\(3),
	datac => \State|xreg|ALT_INV_out\(2),
	datad => \State|xreg|ALT_INV_out\(8),
	datae => \State|xreg|ALT_INV_out\(0),
	dataf => \State|xreg|ALT_INV_out\(6),
	combout => \GameLogic|adjacentx|WideNor0~3_combout\);

-- Location: LABCELL_X30_Y3_N48
\GameLogic|winx|cout[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|winx|cout\(1) = ( \State|oreg|out\(7) & ( !\State|oreg|out\(1) & ( (!\State|xreg|out\(1) & (((\State|oreg|out\(0) & \State|oreg|out\(2))) # (\State|oreg|out\(4)))) ) ) ) # ( !\State|oreg|out\(7) & ( !\State|oreg|out\(1) & ( 
-- (!\State|xreg|out\(1) & (\State|oreg|out\(0) & \State|oreg|out\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|xreg|ALT_INV_out\(1),
	datab => \State|oreg|ALT_INV_out\(0),
	datac => \State|oreg|ALT_INV_out\(2),
	datad => \State|oreg|ALT_INV_out\(4),
	datae => \State|oreg|ALT_INV_out\(7),
	dataf => \State|oreg|ALT_INV_out\(1),
	combout => \GameLogic|winx|cout\(1));

-- Location: LABCELL_X30_Y2_N54
\GameLogic|winx|cout[2]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|winx|cout[2]~14_combout\ = (!\State|oreg|out\(8) & (\State|oreg|out\(0) & (\State|oreg|out\(1)))) # (\State|oreg|out\(8) & (((\State|oreg|out\(0) & \State|oreg|out\(1))) # (\State|oreg|out\(5))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110101011100000011010101110000001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|oreg|ALT_INV_out\(8),
	datab => \State|oreg|ALT_INV_out\(0),
	datac => \State|oreg|ALT_INV_out\(1),
	datad => \State|oreg|ALT_INV_out\(5),
	combout => \GameLogic|winx|cout[2]~14_combout\);

-- Location: LABCELL_X30_Y2_N18
\GameLogic|winx|cout[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|winx|cout[2]~6_combout\ = ( \State|oreg|out\(4) & ( (!\State|oreg|out\(2) & (!\State|xreg|out\(2) & ((\GameLogic|winx|cout[2]~14_combout\) # (\State|oreg|out\(6))))) ) ) # ( !\State|oreg|out\(4) & ( (!\State|oreg|out\(2) & 
-- (\GameLogic|winx|cout[2]~14_combout\ & !\State|xreg|out\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000101010000000000010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|oreg|ALT_INV_out\(2),
	datab => \State|oreg|ALT_INV_out\(6),
	datac => \GameLogic|winx|ALT_INV_cout[2]~14_combout\,
	datad => \State|xreg|ALT_INV_out\(2),
	dataf => \State|oreg|ALT_INV_out\(4),
	combout => \GameLogic|winx|cout[2]~6_combout\);

-- Location: LABCELL_X30_Y2_N6
\GameLogic|winx|cout[4]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|winx|cout[4]~15_combout\ = ( \State|oreg|out\(2) & ( \State|oreg|out\(7) & ( (!\State|oreg|out\(6) & (!\State|oreg|out\(1) & ((!\State|oreg|out\(5)) # (!\State|oreg|out\(3))))) ) ) ) # ( !\State|oreg|out\(2) & ( \State|oreg|out\(7) & ( 
-- (!\State|oreg|out\(1) & ((!\State|oreg|out\(5)) # (!\State|oreg|out\(3)))) ) ) ) # ( \State|oreg|out\(2) & ( !\State|oreg|out\(7) & ( (!\State|oreg|out\(6) & ((!\State|oreg|out\(5)) # (!\State|oreg|out\(3)))) ) ) ) # ( !\State|oreg|out\(2) & ( 
-- !\State|oreg|out\(7) & ( (!\State|oreg|out\(5)) # (!\State|oreg|out\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010110011001000100011110000101000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|oreg|ALT_INV_out\(5),
	datab => \State|oreg|ALT_INV_out\(6),
	datac => \State|oreg|ALT_INV_out\(1),
	datad => \State|oreg|ALT_INV_out\(3),
	datae => \State|oreg|ALT_INV_out\(2),
	dataf => \State|oreg|ALT_INV_out\(7),
	combout => \GameLogic|winx|cout[4]~15_combout\);

-- Location: LABCELL_X30_Y2_N57
\GameLogic|winx|cout[4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|winx|cout[4]~7_combout\ = ( !\State|oreg|out\(4) & ( (!\State|xreg|out\(4) & ((!\GameLogic|winx|cout[4]~15_combout\) # ((\State|oreg|out\(8) & \State|oreg|out\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000100000000111100010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|oreg|ALT_INV_out\(8),
	datab => \State|oreg|ALT_INV_out\(0),
	datac => \GameLogic|winx|ALT_INV_cout[4]~15_combout\,
	datad => \State|xreg|ALT_INV_out\(4),
	dataf => \State|oreg|ALT_INV_out\(4),
	combout => \GameLogic|winx|cout[4]~7_combout\);

-- Location: LABCELL_X30_Y3_N21
\GameLogic|winx|cout[0]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|winx|cout[0]~16_combout\ = ( \State|oreg|out\(2) & ( ((\State|oreg|out\(3) & \State|oreg|out\(6))) # (\State|oreg|out\(1)) ) ) # ( !\State|oreg|out\(2) & ( (\State|oreg|out\(3) & \State|oreg|out\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|oreg|ALT_INV_out\(1),
	datac => \State|oreg|ALT_INV_out\(3),
	datad => \State|oreg|ALT_INV_out\(6),
	dataf => \State|oreg|ALT_INV_out\(2),
	combout => \GameLogic|winx|cout[0]~16_combout\);

-- Location: LABCELL_X30_Y3_N12
\GameLogic|winx|cout[0]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|winx|cout[0]~12_combout\ = ( \State|oreg|out\(4) & ( (!\State|oreg|out\(0) & (!\State|xreg|out\(0) & ((\GameLogic|winx|cout[0]~16_combout\) # (\State|oreg|out\(8))))) ) ) # ( !\State|oreg|out\(4) & ( (!\State|oreg|out\(0) & 
-- (!\State|xreg|out\(0) & \GameLogic|winx|cout[0]~16_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000100000101000000010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|oreg|ALT_INV_out\(0),
	datab => \State|oreg|ALT_INV_out\(8),
	datac => \State|xreg|ALT_INV_out\(0),
	datad => \GameLogic|winx|ALT_INV_cout[0]~16_combout\,
	dataf => \State|oreg|ALT_INV_out\(4),
	combout => \GameLogic|winx|cout[0]~12_combout\);

-- Location: LABCELL_X29_Y4_N18
\GameLogic|winx|cout[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|winx|cout\(3) = ( \State|oreg|out\(6) & ( !\State|xreg|out\(3) & ( (!\State|oreg|out\(3) & (((\State|oreg|out\(4) & \State|oreg|out\(5))) # (\State|oreg|out\(0)))) ) ) ) # ( !\State|oreg|out\(6) & ( !\State|xreg|out\(3) & ( (\State|oreg|out\(4) 
-- & (!\State|oreg|out\(3) & \State|oreg|out\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000011000100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|oreg|ALT_INV_out\(4),
	datab => \State|oreg|ALT_INV_out\(3),
	datac => \State|oreg|ALT_INV_out\(0),
	datad => \State|oreg|ALT_INV_out\(5),
	datae => \State|oreg|ALT_INV_out\(6),
	dataf => \State|xreg|ALT_INV_out\(3),
	combout => \GameLogic|winx|cout\(3));

-- Location: MLABCELL_X34_Y4_N0
\GameLogic|comb|ra|g[26]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|comb|ra|g[26]~1_combout\ = ( !\GameLogic|winx|cout\(3) & ( \GameLogic|comb|ra|g[31]~0_combout\ & ( (!\GameLogic|winx|cout\(1) & (!\GameLogic|winx|cout[2]~6_combout\ & (!\GameLogic|winx|cout[4]~7_combout\ & 
-- !\GameLogic|winx|cout[0]~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|winx|ALT_INV_cout\(1),
	datab => \GameLogic|winx|ALT_INV_cout[2]~6_combout\,
	datac => \GameLogic|winx|ALT_INV_cout[4]~7_combout\,
	datad => \GameLogic|winx|ALT_INV_cout[0]~12_combout\,
	datae => \GameLogic|winx|ALT_INV_cout\(3),
	dataf => \GameLogic|comb|ra|ALT_INV_g[31]~0_combout\,
	combout => \GameLogic|comb|ra|g[26]~1_combout\);

-- Location: LABCELL_X33_Y3_N6
\GameLogic|blockx|cout[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|blockx|cout[6]~5_combout\ = ( \State|xreg|out\(8) & ( ((\State|xreg|out\(0) & \State|xreg|out\(3))) # (\State|xreg|out\(7)) ) ) # ( !\State|xreg|out\(8) & ( (\State|xreg|out\(0) & \State|xreg|out\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|xreg|ALT_INV_out\(0),
	datac => \State|xreg|ALT_INV_out\(3),
	datad => \State|xreg|ALT_INV_out\(7),
	dataf => \State|xreg|ALT_INV_out\(8),
	combout => \GameLogic|blockx|cout[6]~5_combout\);

-- Location: LABCELL_X33_Y3_N9
\GameLogic|blockx|cout[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|blockx|cout[6]~6_combout\ = ( \GameLogic|blockx|cout[6]~5_combout\ & ( \GameLogic|winx|cout[6]~3_combout\ ) ) # ( !\GameLogic|blockx|cout[6]~5_combout\ & ( (\State|xreg|out\(2) & (\State|xreg|out\(4) & \GameLogic|winx|cout[6]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \State|xreg|ALT_INV_out\(2),
	datac => \State|xreg|ALT_INV_out\(4),
	datad => \GameLogic|winx|ALT_INV_cout[6]~3_combout\,
	dataf => \GameLogic|blockx|ALT_INV_cout[6]~5_combout\,
	combout => \GameLogic|blockx|cout[6]~6_combout\);

-- Location: LABCELL_X31_Y3_N24
\GameLogic|winx|cout[8]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|winx|cout[8]~11_combout\ = ( \State|oreg|out\(5) & ( \State|oreg|out\(4) & ( (!\State|oreg|out\(0) & (!\State|oreg|out\(2) & ((!\State|oreg|out\(6)) # (!\State|oreg|out\(7))))) ) ) ) # ( !\State|oreg|out\(5) & ( \State|oreg|out\(4) & ( 
-- (!\State|oreg|out\(0) & ((!\State|oreg|out\(6)) # (!\State|oreg|out\(7)))) ) ) ) # ( \State|oreg|out\(5) & ( !\State|oreg|out\(4) & ( (!\State|oreg|out\(2) & ((!\State|oreg|out\(6)) # (!\State|oreg|out\(7)))) ) ) ) # ( !\State|oreg|out\(5) & ( 
-- !\State|oreg|out\(4) & ( (!\State|oreg|out\(6)) # (!\State|oreg|out\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100111100001100000010101010100010001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|oreg|ALT_INV_out\(0),
	datab => \State|oreg|ALT_INV_out\(6),
	datac => \State|oreg|ALT_INV_out\(2),
	datad => \State|oreg|ALT_INV_out\(7),
	datae => \State|oreg|ALT_INV_out\(5),
	dataf => \State|oreg|ALT_INV_out\(4),
	combout => \GameLogic|winx|cout[8]~11_combout\);

-- Location: LABCELL_X29_Y4_N54
\GameLogic|winx|cout[6]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|winx|cout[6]~9_combout\ = ( \State|oreg|out\(3) & ( \State|oreg|out\(4) & ( (!\State|oreg|out\(2) & (!\State|oreg|out\(0) & ((!\State|oreg|out\(7)) # (!\State|oreg|out\(8))))) ) ) ) # ( !\State|oreg|out\(3) & ( \State|oreg|out\(4) & ( 
-- (!\State|oreg|out\(2) & ((!\State|oreg|out\(7)) # (!\State|oreg|out\(8)))) ) ) ) # ( \State|oreg|out\(3) & ( !\State|oreg|out\(4) & ( (!\State|oreg|out\(0) & ((!\State|oreg|out\(7)) # (!\State|oreg|out\(8)))) ) ) ) # ( !\State|oreg|out\(3) & ( 
-- !\State|oreg|out\(4) & ( (!\State|oreg|out\(7)) # (!\State|oreg|out\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100111100001100000010101010100010001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|oreg|ALT_INV_out\(2),
	datab => \State|oreg|ALT_INV_out\(7),
	datac => \State|oreg|ALT_INV_out\(0),
	datad => \State|oreg|ALT_INV_out\(8),
	datae => \State|oreg|ALT_INV_out\(3),
	dataf => \State|oreg|ALT_INV_out\(4),
	combout => \GameLogic|winx|cout[6]~9_combout\);

-- Location: LABCELL_X30_Y3_N24
\GameLogic|winx|cout[7]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|winx|cout[7]~10_combout\ = ( !\State|xreg|out\(7) & ( \State|oreg|out\(1) & ( (!\State|oreg|out\(7) & (((\State|oreg|out\(8) & \State|oreg|out\(6))) # (\State|oreg|out\(4)))) ) ) ) # ( !\State|xreg|out\(7) & ( !\State|oreg|out\(1) & ( 
-- (!\State|oreg|out\(7) & (\State|oreg|out\(8) & \State|oreg|out\(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000000000000000000010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|oreg|ALT_INV_out\(7),
	datab => \State|oreg|ALT_INV_out\(8),
	datac => \State|oreg|ALT_INV_out\(6),
	datad => \State|oreg|ALT_INV_out\(4),
	datae => \State|xreg|ALT_INV_out\(7),
	dataf => \State|oreg|ALT_INV_out\(1),
	combout => \GameLogic|winx|cout[7]~10_combout\);

-- Location: MLABCELL_X34_Y3_N30
\GameLogic|comb|ra|g[33]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|comb|ra|g[33]~8_combout\ = ( \GameLogic|winx|cout[6]~3_combout\ & ( (!\GameLogic|winx|cout[6]~9_combout\ & (!\GameLogic|winx|cout[7]~10_combout\ & ((!\GameLogic|winx|cout[8]~5_combout\) # (\GameLogic|winx|cout[8]~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010110000000000001011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|winx|ALT_INV_cout[8]~5_combout\,
	datab => \GameLogic|winx|ALT_INV_cout[8]~11_combout\,
	datac => \GameLogic|winx|ALT_INV_cout[6]~9_combout\,
	datad => \GameLogic|winx|ALT_INV_cout[7]~10_combout\,
	dataf => \GameLogic|winx|ALT_INV_cout[6]~3_combout\,
	combout => \GameLogic|comb|ra|g[33]~8_combout\);

-- Location: LABCELL_X33_Y3_N12
\GameLogic|blockx|cout[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|blockx|cout[7]~7_combout\ = ( !\State|oreg|out\(7) & ( \State|xreg|out\(1) & ( (!\State|xreg|out\(7) & (((\State|xreg|out\(8) & \State|xreg|out\(6))) # (\State|xreg|out\(4)))) ) ) ) # ( !\State|oreg|out\(7) & ( !\State|xreg|out\(1) & ( 
-- (\State|xreg|out\(8) & (\State|xreg|out\(6) & !\State|xreg|out\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000000000000000000110111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|xreg|ALT_INV_out\(8),
	datab => \State|xreg|ALT_INV_out\(4),
	datac => \State|xreg|ALT_INV_out\(6),
	datad => \State|xreg|ALT_INV_out\(7),
	datae => \State|oreg|ALT_INV_out\(7),
	dataf => \State|xreg|ALT_INV_out\(1),
	combout => \GameLogic|blockx|cout[7]~7_combout\);

-- Location: LABCELL_X31_Y2_N42
\GameLogic|blockx|cout[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|blockx|cout[8]~8_combout\ = ( \State|xreg|out\(7) & ( ((\State|xreg|out\(4) & \State|xreg|out\(0))) # (\State|xreg|out\(6)) ) ) # ( !\State|xreg|out\(7) & ( (\State|xreg|out\(4) & \State|xreg|out\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|xreg|ALT_INV_out\(6),
	datab => \State|xreg|ALT_INV_out\(4),
	datac => \State|xreg|ALT_INV_out\(0),
	dataf => \State|xreg|ALT_INV_out\(7),
	combout => \GameLogic|blockx|cout[8]~8_combout\);

-- Location: LABCELL_X33_Y2_N54
\GameLogic|blockx|cout[8]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|blockx|cout[8]~9_combout\ = ( \GameLogic|winx|cout[8]~5_combout\ & ( ((\State|xreg|out\(5) & \State|xreg|out\(2))) # (\GameLogic|blockx|cout[8]~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GameLogic|blockx|ALT_INV_cout[8]~8_combout\,
	datac => \State|xreg|ALT_INV_out\(5),
	datad => \State|xreg|ALT_INV_out\(2),
	dataf => \GameLogic|winx|ALT_INV_cout[8]~5_combout\,
	combout => \GameLogic|blockx|cout[8]~9_combout\);

-- Location: MLABCELL_X34_Y3_N15
\GameLogic|comb|out[6]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|comb|out[6]~15_combout\ = (!\GameLogic|blockx|cout[7]~7_combout\ & !\GameLogic|blockx|cout[8]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|blockx|ALT_INV_cout[7]~7_combout\,
	datab => \GameLogic|blockx|ALT_INV_cout[8]~9_combout\,
	combout => \GameLogic|comb|out[6]~15_combout\);

-- Location: LABCELL_X31_Y4_N36
\GameLogic|blockx|cout[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|blockx|cout[5]~4_combout\ = ( !\State|xreg|out\(5) & ( \State|xreg|out\(8) & ( (!\State|oreg|out\(5) & (((\State|xreg|out\(3) & \State|xreg|out\(4))) # (\State|xreg|out\(2)))) ) ) ) # ( !\State|xreg|out\(5) & ( !\State|xreg|out\(8) & ( 
-- (!\State|oreg|out\(5) & (\State|xreg|out\(3) & \State|xreg|out\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000000001000100010011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|xreg|ALT_INV_out\(2),
	datab => \State|oreg|ALT_INV_out\(5),
	datac => \State|xreg|ALT_INV_out\(3),
	datad => \State|xreg|ALT_INV_out\(4),
	datae => \State|xreg|ALT_INV_out\(5),
	dataf => \State|xreg|ALT_INV_out\(8),
	combout => \GameLogic|blockx|cout[5]~4_combout\);

-- Location: LABCELL_X30_Y2_N21
\GameLogic|adjacentx|WideNor0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|adjacentx|WideNor0~2_combout\ = ( !\State|oreg|out\(8) & ( (!\State|oreg|out\(2) & (!\State|oreg|out\(6) & (!\State|oreg|out\(0) & !\State|xreg|out\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|oreg|ALT_INV_out\(2),
	datab => \State|oreg|ALT_INV_out\(6),
	datac => \State|oreg|ALT_INV_out\(0),
	datad => \State|xreg|ALT_INV_out\(4),
	dataf => \State|oreg|ALT_INV_out\(8),
	combout => \GameLogic|adjacentx|WideNor0~2_combout\);

-- Location: LABCELL_X30_Y3_N57
\GameLogic|adjacentx|WideNor0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|adjacentx|WideNor0~0_combout\ = ( \State|oreg|out\(4) & ( (!\State|oreg|out\(1) & !\State|xreg|out\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|oreg|ALT_INV_out\(1),
	datad => \State|xreg|ALT_INV_out\(1),
	dataf => \State|oreg|ALT_INV_out\(4),
	combout => \GameLogic|adjacentx|WideNor0~0_combout\);

-- Location: LABCELL_X33_Y3_N48
\GameLogic|comb|ra|g[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|comb|ra|g[6]~7_combout\ = ( \GameLogic|adjacentx|WideNor0~3_combout\ & ( \GameLogic|adjacentx|WideNor0~1_combout\ & ( (\GameLogic|winx|cout[6]~3_combout\ & (\GameLogic|emptyx|ra|g[4]~0_combout\ & ((!\GameLogic|adjacentx|WideNor0~2_combout\) # 
-- (!\GameLogic|adjacentx|WideNor0~0_combout\)))) ) ) ) # ( !\GameLogic|adjacentx|WideNor0~3_combout\ & ( \GameLogic|adjacentx|WideNor0~1_combout\ & ( (\GameLogic|winx|cout[6]~3_combout\ & \GameLogic|emptyx|ra|g[4]~0_combout\) ) ) ) # ( 
-- \GameLogic|adjacentx|WideNor0~3_combout\ & ( !\GameLogic|adjacentx|WideNor0~1_combout\ & ( (\GameLogic|winx|cout[6]~3_combout\ & \GameLogic|emptyx|ra|g[4]~0_combout\) ) ) ) # ( !\GameLogic|adjacentx|WideNor0~3_combout\ & ( 
-- !\GameLogic|adjacentx|WideNor0~1_combout\ & ( (\GameLogic|winx|cout[6]~3_combout\ & \GameLogic|emptyx|ra|g[4]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|winx|ALT_INV_cout[6]~3_combout\,
	datab => \GameLogic|adjacentx|ALT_INV_WideNor0~2_combout\,
	datac => \GameLogic|emptyx|ra|ALT_INV_g[4]~0_combout\,
	datad => \GameLogic|adjacentx|ALT_INV_WideNor0~0_combout\,
	datae => \GameLogic|adjacentx|ALT_INV_WideNor0~3_combout\,
	dataf => \GameLogic|adjacentx|ALT_INV_WideNor0~1_combout\,
	combout => \GameLogic|comb|ra|g[6]~7_combout\);

-- Location: LABCELL_X33_Y2_N9
\GameLogic|winx|cout[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|winx|cout[4]~1_combout\ = ( !\State|oreg|out\(4) & ( !\State|xreg|out\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \State|xreg|ALT_INV_out\(4),
	dataf => \State|oreg|ALT_INV_out\(4),
	combout => \GameLogic|winx|cout[4]~1_combout\);

-- Location: LABCELL_X33_Y3_N42
\GameLogic|blockx|cout[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|blockx|cout[4]~2_combout\ = ( \State|xreg|out\(3) & ( ((\State|xreg|out\(2) & \State|xreg|out\(6))) # (\State|xreg|out\(5)) ) ) # ( !\State|xreg|out\(3) & ( (\State|xreg|out\(2) & \State|xreg|out\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \State|xreg|ALT_INV_out\(2),
	datac => \State|xreg|ALT_INV_out\(6),
	datad => \State|xreg|ALT_INV_out\(5),
	dataf => \State|xreg|ALT_INV_out\(3),
	combout => \GameLogic|blockx|cout[4]~2_combout\);

-- Location: LABCELL_X30_Y2_N42
\GameLogic|blockx|cout[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|blockx|cout[4]~3_combout\ = ( \GameLogic|winx|cout[4]~1_combout\ & ( \GameLogic|blockx|cout[4]~2_combout\ ) ) # ( \GameLogic|winx|cout[4]~1_combout\ & ( !\GameLogic|blockx|cout[4]~2_combout\ & ( (!\State|xreg|out\(1) & (\State|xreg|out\(8) & 
-- (\State|xreg|out\(0)))) # (\State|xreg|out\(1) & (((\State|xreg|out\(8) & \State|xreg|out\(0))) # (\State|xreg|out\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110101011100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|xreg|ALT_INV_out\(1),
	datab => \State|xreg|ALT_INV_out\(8),
	datac => \State|xreg|ALT_INV_out\(0),
	datad => \State|xreg|ALT_INV_out\(7),
	datae => \GameLogic|winx|ALT_INV_cout[4]~1_combout\,
	dataf => \GameLogic|blockx|ALT_INV_cout[4]~2_combout\,
	combout => \GameLogic|blockx|cout[4]~3_combout\);

-- Location: MLABCELL_X34_Y3_N24
\GameLogic|comb|out[6]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|comb|out[6]~14_combout\ = ( !\GameLogic|blockx|cout[4]~3_combout\ & ( !\GameLogic|blockx|cout\(3) & ( (!\GameLogic|blockx|cout[7]~7_combout\ & (!\GameLogic|blockx|cout[5]~4_combout\ & (\GameLogic|comb|ra|g[6]~7_combout\ & 
-- !\GameLogic|blockx|cout[2]~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|blockx|ALT_INV_cout[7]~7_combout\,
	datab => \GameLogic|blockx|ALT_INV_cout[5]~4_combout\,
	datac => \GameLogic|comb|ra|ALT_INV_g[6]~7_combout\,
	datad => \GameLogic|blockx|ALT_INV_cout[2]~11_combout\,
	datae => \GameLogic|blockx|ALT_INV_cout[4]~3_combout\,
	dataf => \GameLogic|blockx|ALT_INV_cout\(3),
	combout => \GameLogic|comb|out[6]~14_combout\);

-- Location: LABCELL_X33_Y3_N54
\GameLogic|comb|out[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|comb|out\(6) = ( \GameLogic|comb|out[6]~15_combout\ & ( \GameLogic|comb|out[6]~14_combout\ & ( (!\GameLogic|comb|ra|g[33]~8_combout\ & ((!\GameLogic|comb|ra|g[26]~1_combout\) # ((!\GameLogic|blockx|cout[6]~6_combout\ & 
-- \GameLogic|blockx|cout\(1))))) ) ) ) # ( !\GameLogic|comb|out[6]~15_combout\ & ( \GameLogic|comb|out[6]~14_combout\ & ( !\GameLogic|comb|ra|g[33]~8_combout\ ) ) ) # ( \GameLogic|comb|out[6]~15_combout\ & ( !\GameLogic|comb|out[6]~14_combout\ & ( 
-- (!\GameLogic|comb|ra|g[33]~8_combout\ & ((!\GameLogic|comb|ra|g[26]~1_combout\) # (!\GameLogic|blockx|cout[6]~6_combout\))) ) ) ) # ( !\GameLogic|comb|out[6]~15_combout\ & ( !\GameLogic|comb|out[6]~14_combout\ & ( !\GameLogic|comb|ra|g[33]~8_combout\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111000001110000011110000111100001010000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|comb|ra|ALT_INV_g[26]~1_combout\,
	datab => \GameLogic|blockx|ALT_INV_cout[6]~6_combout\,
	datac => \GameLogic|comb|ra|ALT_INV_g[33]~8_combout\,
	datad => \GameLogic|blockx|ALT_INV_cout\(1),
	datae => \GameLogic|comb|ALT_INV_out[6]~15_combout\,
	dataf => \GameLogic|comb|ALT_INV_out[6]~14_combout\,
	combout => \GameLogic|comb|out\(6));

-- Location: LABCELL_X30_Y2_N12
\State|o_next[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|o_next[6]~6_combout\ = ( \State|o_update~combout\ & ( (!\GameLogic|comb|out\(6)) # (\State|oreg|out\(6)) ) ) # ( !\State|o_update~combout\ & ( \State|oreg|out\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GameLogic|comb|ALT_INV_out\(6),
	datad => \State|oreg|ALT_INV_out\(6),
	dataf => \State|ALT_INV_o_update~combout\,
	combout => \State|o_next[6]~6_combout\);

-- Location: FF_X30_Y2_N14
\State|oreg|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \State|o_next[6]~6_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State|oreg|out\(6));

-- Location: LABCELL_X33_Y3_N3
\GameLogic|winx|cout[6]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|winx|cout[6]~3_combout\ = ( !\State|xreg|out\(6) & ( !\State|oreg|out\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \State|oreg|ALT_INV_out\(6),
	dataf => \State|xreg|ALT_INV_out\(6),
	combout => \GameLogic|winx|cout[6]~3_combout\);

-- Location: LABCELL_X31_Y2_N15
\GameLogic|emptyx|ra|g[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|emptyx|ra|g[4]~1_combout\ = ( !\GameLogic|winx|cout[6]~3_combout\ & ( \GameLogic|emptyx|ra|g[4]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GameLogic|emptyx|ra|ALT_INV_g[4]~0_combout\,
	dataf => \GameLogic|winx|ALT_INV_cout[6]~3_combout\,
	combout => \GameLogic|emptyx|ra|g[4]~1_combout\);

-- Location: LABCELL_X33_Y4_N42
\GameLogic|emptyx|ra|g[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|emptyx|ra|g[4]~2_combout\ = ( \GameLogic|winx|cout[8]~5_combout\ & ( \GameLogic|emptyx|ra|g[4]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GameLogic|emptyx|ra|ALT_INV_g[4]~1_combout\,
	dataf => \GameLogic|winx|ALT_INV_cout[8]~5_combout\,
	combout => \GameLogic|emptyx|ra|g[4]~2_combout\);

-- Location: MLABCELL_X34_Y4_N15
\GameLogic|emptyx|ra|g[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|emptyx|ra|g[0]~6_combout\ = ( !\GameLogic|winx|topr|cout[1]~0_combout\ & ( (\GameLogic|emptyx|ra|g[0]~3_combout\ & \GameLogic|emptyx|ra|g[0]~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GameLogic|emptyx|ra|ALT_INV_g[0]~3_combout\,
	datad => \GameLogic|emptyx|ra|ALT_INV_g[0]~4_combout\,
	dataf => \GameLogic|winx|topr|ALT_INV_cout[1]~0_combout\,
	combout => \GameLogic|emptyx|ra|g[0]~6_combout\);

-- Location: MLABCELL_X34_Y3_N33
\GameLogic|winx|cout[8]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|winx|cout[8]~13_combout\ = (\GameLogic|winx|cout[8]~5_combout\ & !\GameLogic|winx|cout[8]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|winx|ALT_INV_cout[8]~5_combout\,
	datab => \GameLogic|winx|ALT_INV_cout[8]~11_combout\,
	combout => \GameLogic|winx|cout[8]~13_combout\);

-- Location: MLABCELL_X34_Y3_N6
\GameLogic|comb|out[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|comb|out[7]~6_combout\ = ( \GameLogic|comb|ra|g[26]~1_combout\ & ( (!\GameLogic|blockx|cout[7]~7_combout\ & (((!\GameLogic|winx|cout[8]~13_combout\ & \GameLogic|winx|cout[7]~10_combout\)))) # (\GameLogic|blockx|cout[7]~7_combout\ & 
-- ((!\GameLogic|blockx|cout[8]~9_combout\) # ((!\GameLogic|winx|cout[8]~13_combout\ & \GameLogic|winx|cout[7]~10_combout\)))) ) ) # ( !\GameLogic|comb|ra|g[26]~1_combout\ & ( (!\GameLogic|winx|cout[8]~13_combout\ & \GameLogic|winx|cout[7]~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000001000100111101000100010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|blockx|ALT_INV_cout[7]~7_combout\,
	datab => \GameLogic|blockx|ALT_INV_cout[8]~9_combout\,
	datac => \GameLogic|winx|ALT_INV_cout[8]~13_combout\,
	datad => \GameLogic|winx|ALT_INV_cout[7]~10_combout\,
	dataf => \GameLogic|comb|ra|ALT_INV_g[26]~1_combout\,
	combout => \GameLogic|comb|out[7]~6_combout\);

-- Location: LABCELL_X33_Y4_N6
\State|o_next[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|o_next[7]~7_combout\ = ( \State|oreg|out\(7) & ( \GameLogic|comb|out[7]~6_combout\ ) ) # ( !\State|oreg|out\(7) & ( \GameLogic|comb|out[7]~6_combout\ & ( \State|o_update~combout\ ) ) ) # ( \State|oreg|out\(7) & ( !\GameLogic|comb|out[7]~6_combout\ 
-- ) ) # ( !\State|oreg|out\(7) & ( !\GameLogic|comb|out[7]~6_combout\ & ( (\GameLogic|comb|ra|g[8]~3_combout\ & (!\GameLogic|emptyx|ra|g[4]~2_combout\ & (\GameLogic|emptyx|ra|g[0]~6_combout\ & \State|o_update~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100111111111111111100000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|comb|ra|ALT_INV_g[8]~3_combout\,
	datab => \GameLogic|emptyx|ra|ALT_INV_g[4]~2_combout\,
	datac => \GameLogic|emptyx|ra|ALT_INV_g[0]~6_combout\,
	datad => \State|ALT_INV_o_update~combout\,
	datae => \State|oreg|ALT_INV_out\(7),
	dataf => \GameLogic|comb|ALT_INV_out[7]~6_combout\,
	combout => \State|o_next[7]~7_combout\);

-- Location: FF_X33_Y4_N8
\State|oreg|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \State|o_next[7]~7_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State|oreg|out\(7));

-- Location: LABCELL_X29_Y4_N30
\GameLogic|adjacentx|WideNor0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|adjacentx|WideNor0~1_combout\ = ( !\State|oreg|out\(7) & ( (!\State|xreg|out\(7) & (!\State|xreg|out\(5) & !\State|oreg|out\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \State|xreg|ALT_INV_out\(7),
	datac => \State|xreg|ALT_INV_out\(5),
	datad => \State|oreg|ALT_INV_out\(5),
	dataf => \State|oreg|ALT_INV_out\(7),
	combout => \GameLogic|adjacentx|WideNor0~1_combout\);

-- Location: LABCELL_X33_Y3_N24
\GameLogic|adjacentx|WideNor0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|adjacentx|WideNor0~4_combout\ = ( \GameLogic|adjacentx|WideNor0~0_combout\ & ( (\GameLogic|adjacentx|WideNor0~3_combout\ & (\GameLogic|adjacentx|WideNor0~1_combout\ & \GameLogic|adjacentx|WideNor0~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GameLogic|adjacentx|ALT_INV_WideNor0~3_combout\,
	datac => \GameLogic|adjacentx|ALT_INV_WideNor0~1_combout\,
	datad => \GameLogic|adjacentx|ALT_INV_WideNor0~2_combout\,
	dataf => \GameLogic|adjacentx|ALT_INV_WideNor0~0_combout\,
	combout => \GameLogic|adjacentx|WideNor0~4_combout\);

-- Location: MLABCELL_X34_Y3_N36
\GameLogic|comb|ra|g[21]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|comb|ra|g[21]~2_combout\ = ( !\GameLogic|blockx|cout[5]~4_combout\ & ( \GameLogic|comb|ra|g[26]~1_combout\ & ( (!\GameLogic|blockx|cout[4]~3_combout\ & (!\GameLogic|blockx|cout[6]~6_combout\ & (!\GameLogic|blockx|cout[7]~7_combout\ & 
-- !\GameLogic|blockx|cout[8]~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|blockx|ALT_INV_cout[4]~3_combout\,
	datab => \GameLogic|blockx|ALT_INV_cout[6]~6_combout\,
	datac => \GameLogic|blockx|ALT_INV_cout[7]~7_combout\,
	datad => \GameLogic|blockx|ALT_INV_cout[8]~9_combout\,
	datae => \GameLogic|blockx|ALT_INV_cout[5]~4_combout\,
	dataf => \GameLogic|comb|ra|ALT_INV_g[26]~1_combout\,
	combout => \GameLogic|comb|ra|g[21]~2_combout\);

-- Location: MLABCELL_X34_Y4_N6
\GameLogic|comb|ra|g[14]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|comb|ra|g[14]~4_combout\ = ( \GameLogic|adjacentx|WideNor0~4_combout\ & ( \GameLogic|comb|ra|g[21]~2_combout\ & ( (!\GameLogic|blockx|cout[0]~1_combout\ & (!\GameLogic|blockx|cout[2]~11_combout\ & (!\GameLogic|blockx|cout\(1) & 
-- !\GameLogic|blockx|cout\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|blockx|ALT_INV_cout[0]~1_combout\,
	datab => \GameLogic|blockx|ALT_INV_cout[2]~11_combout\,
	datac => \GameLogic|blockx|ALT_INV_cout\(1),
	datad => \GameLogic|blockx|ALT_INV_cout\(3),
	datae => \GameLogic|adjacentx|ALT_INV_WideNor0~4_combout\,
	dataf => \GameLogic|comb|ra|ALT_INV_g[21]~2_combout\,
	combout => \GameLogic|comb|ra|g[14]~4_combout\);

-- Location: MLABCELL_X34_Y3_N18
\GameLogic|comb|ra|g[32]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|comb|ra|g[32]~6_combout\ = ( !\GameLogic|winx|cout[7]~10_combout\ & ( \GameLogic|winx|cout[8]~5_combout\ & ( (\GameLogic|winx|cout[5]~8_combout\ & (\GameLogic|winx|cout[8]~11_combout\ & ((!\GameLogic|winx|cout[6]~3_combout\) # 
-- (\GameLogic|winx|cout[6]~9_combout\)))) ) ) ) # ( !\GameLogic|winx|cout[7]~10_combout\ & ( !\GameLogic|winx|cout[8]~5_combout\ & ( (\GameLogic|winx|cout[5]~8_combout\ & ((!\GameLogic|winx|cout[6]~3_combout\) # (\GameLogic|winx|cout[6]~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000101000000000000000000010001000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|winx|ALT_INV_cout[5]~8_combout\,
	datab => \GameLogic|winx|ALT_INV_cout[8]~11_combout\,
	datac => \GameLogic|winx|ALT_INV_cout[6]~9_combout\,
	datad => \GameLogic|winx|ALT_INV_cout[6]~3_combout\,
	datae => \GameLogic|winx|ALT_INV_cout[7]~10_combout\,
	dataf => \GameLogic|winx|ALT_INV_cout[8]~5_combout\,
	combout => \GameLogic|comb|ra|g[32]~6_combout\);

-- Location: MLABCELL_X34_Y3_N54
\GameLogic|comb|out[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|comb|out[5]~4_combout\ = ( \GameLogic|blockx|cout[5]~4_combout\ & ( \GameLogic|comb|ra|g[26]~1_combout\ & ( (!\GameLogic|comb|ra|g[32]~6_combout\ & (((\GameLogic|blockx|cout[6]~6_combout\) # (\GameLogic|blockx|cout[7]~7_combout\)) # 
-- (\GameLogic|blockx|cout[8]~9_combout\))) ) ) ) # ( !\GameLogic|blockx|cout[5]~4_combout\ & ( \GameLogic|comb|ra|g[26]~1_combout\ & ( !\GameLogic|comb|ra|g[32]~6_combout\ ) ) ) # ( \GameLogic|blockx|cout[5]~4_combout\ & ( 
-- !\GameLogic|comb|ra|g[26]~1_combout\ & ( !\GameLogic|comb|ra|g[32]~6_combout\ ) ) ) # ( !\GameLogic|blockx|cout[5]~4_combout\ & ( !\GameLogic|comb|ra|g[26]~1_combout\ & ( !\GameLogic|comb|ra|g[32]~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010100010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|comb|ra|ALT_INV_g[32]~6_combout\,
	datab => \GameLogic|blockx|ALT_INV_cout[8]~9_combout\,
	datac => \GameLogic|blockx|ALT_INV_cout[7]~7_combout\,
	datad => \GameLogic|blockx|ALT_INV_cout[6]~6_combout\,
	datae => \GameLogic|blockx|ALT_INV_cout[5]~4_combout\,
	dataf => \GameLogic|comb|ra|ALT_INV_g[26]~1_combout\,
	combout => \GameLogic|comb|out[5]~4_combout\);

-- Location: LABCELL_X29_Y4_N39
\GameLogic|comb|ra|g[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|comb|ra|g[5]~5_combout\ = ( !\GameLogic|winx|leftc|cout[1]~0_combout\ & ( \GameLogic|winx|cout[5]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GameLogic|winx|ALT_INV_cout[5]~2_combout\,
	dataf => \GameLogic|winx|leftc|ALT_INV_cout[1]~0_combout\,
	combout => \GameLogic|comb|ra|g[5]~5_combout\);

-- Location: LABCELL_X33_Y4_N12
\GameLogic|comb|out[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|comb|out[5]~5_combout\ = ( \GameLogic|emptyx|ra|g[0]~5_combout\ & ( \GameLogic|comb|ra|g[5]~5_combout\ & ( (\GameLogic|comb|out[5]~4_combout\ & ((!\GameLogic|comb|ra|g[8]~3_combout\) # ((\GameLogic|comb|ra|c[5]~0_combout\) # 
-- (\GameLogic|emptyx|ra|g[4]~2_combout\)))) ) ) ) # ( !\GameLogic|emptyx|ra|g[0]~5_combout\ & ( \GameLogic|comb|ra|g[5]~5_combout\ & ( \GameLogic|comb|out[5]~4_combout\ ) ) ) # ( \GameLogic|emptyx|ra|g[0]~5_combout\ & ( !\GameLogic|comb|ra|g[5]~5_combout\ & 
-- ( \GameLogic|comb|out[5]~4_combout\ ) ) ) # ( !\GameLogic|emptyx|ra|g[0]~5_combout\ & ( !\GameLogic|comb|ra|g[5]~5_combout\ & ( \GameLogic|comb|out[5]~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000101100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|comb|ra|ALT_INV_g[8]~3_combout\,
	datab => \GameLogic|emptyx|ra|ALT_INV_g[4]~2_combout\,
	datac => \GameLogic|comb|ALT_INV_out[5]~4_combout\,
	datad => \GameLogic|comb|ra|ALT_INV_c[5]~0_combout\,
	datae => \GameLogic|emptyx|ra|ALT_INV_g[0]~5_combout\,
	dataf => \GameLogic|comb|ra|ALT_INV_g[5]~5_combout\,
	combout => \GameLogic|comb|out[5]~5_combout\);

-- Location: LABCELL_X31_Y4_N30
\State|o_next[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|o_next[5]~5_combout\ = ( \State|oreg|out\(5) & ( \State|o_update~combout\ ) ) # ( !\State|oreg|out\(5) & ( \State|o_update~combout\ & ( (!\GameLogic|comb|out[5]~5_combout\) # (\GameLogic|comb|ra|g[14]~4_combout\) ) ) ) # ( \State|oreg|out\(5) & ( 
-- !\State|o_update~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111110011111100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GameLogic|comb|ra|ALT_INV_g[14]~4_combout\,
	datac => \GameLogic|comb|ALT_INV_out[5]~5_combout\,
	datae => \State|oreg|ALT_INV_out\(5),
	dataf => \State|ALT_INV_o_update~combout\,
	combout => \State|o_next[5]~5_combout\);

-- Location: FF_X31_Y4_N32
\State|oreg|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \State|o_next[5]~5_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State|oreg|out\(5));

-- Location: LABCELL_X29_Y4_N9
\GameLogic|winx|cout[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|winx|cout[5]~2_combout\ = ( !\State|oreg|out\(5) & ( !\State|xreg|out\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \State|oreg|ALT_INV_out\(5),
	dataf => \State|xreg|ALT_INV_out\(5),
	combout => \GameLogic|winx|cout[5]~2_combout\);

-- Location: LABCELL_X29_Y4_N12
\GameLogic|winx|cout[7]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|winx|cout[7]~4_combout\ = ( !\State|oreg|out\(7) & ( !\State|xreg|out\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \State|xreg|ALT_INV_out\(7),
	dataf => \State|oreg|ALT_INV_out\(7),
	combout => \GameLogic|winx|cout[7]~4_combout\);

-- Location: LABCELL_X29_Y4_N15
\GameLogic|emptyx|ra|g[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|emptyx|ra|g[0]~3_combout\ = ( \GameLogic|winx|cout[7]~4_combout\ & ( (!\GameLogic|winx|leftc|cout[1]~0_combout\ & !\GameLogic|winx|cout[5]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|winx|leftc|ALT_INV_cout[1]~0_combout\,
	datac => \GameLogic|winx|ALT_INV_cout[5]~2_combout\,
	dataf => \GameLogic|winx|ALT_INV_cout[7]~4_combout\,
	combout => \GameLogic|emptyx|ra|g[0]~3_combout\);

-- Location: LABCELL_X33_Y4_N45
\GameLogic|comb|ra|c[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|comb|ra|c[5]~0_combout\ = ( \GameLogic|winx|topr|cout[1]~0_combout\ & ( (\GameLogic|winx|cout[6]~3_combout\ & \GameLogic|emptyx|ra|g[4]~0_combout\) ) ) # ( !\GameLogic|winx|topr|cout[1]~0_combout\ & ( (\GameLogic|emptyx|ra|g[4]~0_combout\ & 
-- (((!\GameLogic|winx|cout[8]~5_combout\ & \GameLogic|emptyx|ra|g[0]~3_combout\)) # (\GameLogic|winx|cout[6]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101111000000000010111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|winx|ALT_INV_cout[8]~5_combout\,
	datab => \GameLogic|emptyx|ra|ALT_INV_g[0]~3_combout\,
	datac => \GameLogic|winx|ALT_INV_cout[6]~3_combout\,
	datad => \GameLogic|emptyx|ra|ALT_INV_g[4]~0_combout\,
	dataf => \GameLogic|winx|topr|ALT_INV_cout[1]~0_combout\,
	combout => \GameLogic|comb|ra|c[5]~0_combout\);

-- Location: LABCELL_X33_Y4_N30
\GameLogic|comb|ra|c[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|comb|ra|c[4]~1_combout\ = ( !\GameLogic|emptyx|ra|g[4]~2_combout\ & ( (!\GameLogic|comb|ra|c[5]~0_combout\ & (\GameLogic|winx|cout[4]~1_combout\ & \GameLogic|comb|ra|g[8]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GameLogic|comb|ra|ALT_INV_c[5]~0_combout\,
	datac => \GameLogic|winx|ALT_INV_cout[4]~1_combout\,
	datad => \GameLogic|comb|ra|ALT_INV_g[8]~3_combout\,
	dataf => \GameLogic|emptyx|ra|ALT_INV_g[4]~2_combout\,
	combout => \GameLogic|comb|ra|c[4]~1_combout\);

-- Location: MLABCELL_X34_Y3_N12
\GameLogic|comb|out[4]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|comb|out[4]~10_combout\ = (!\GameLogic|blockx|cout[7]~7_combout\ & (!\GameLogic|blockx|cout[8]~9_combout\ & !\GameLogic|blockx|cout[5]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|blockx|ALT_INV_cout[7]~7_combout\,
	datab => \GameLogic|blockx|ALT_INV_cout[8]~9_combout\,
	datad => \GameLogic|blockx|ALT_INV_cout[5]~4_combout\,
	combout => \GameLogic|comb|out[4]~10_combout\);

-- Location: MLABCELL_X34_Y3_N42
\GameLogic|comb|out[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|comb|out[4]~3_combout\ = ( \GameLogic|winx|cout[4]~7_combout\ & ( \GameLogic|comb|ra|g[26]~1_combout\ & ( ((!\GameLogic|blockx|cout[6]~6_combout\ & (\GameLogic|blockx|cout[4]~3_combout\ & \GameLogic|comb|out[4]~10_combout\))) # 
-- (\GameLogic|comb|ra|g[31]~0_combout\) ) ) ) # ( !\GameLogic|winx|cout[4]~7_combout\ & ( \GameLogic|comb|ra|g[26]~1_combout\ & ( (!\GameLogic|blockx|cout[6]~6_combout\ & (\GameLogic|blockx|cout[4]~3_combout\ & \GameLogic|comb|out[4]~10_combout\)) ) ) ) # ( 
-- \GameLogic|winx|cout[4]~7_combout\ & ( !\GameLogic|comb|ra|g[26]~1_combout\ & ( \GameLogic|comb|ra|g[31]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000011000101010101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|comb|ra|ALT_INV_g[31]~0_combout\,
	datab => \GameLogic|blockx|ALT_INV_cout[6]~6_combout\,
	datac => \GameLogic|blockx|ALT_INV_cout[4]~3_combout\,
	datad => \GameLogic|comb|ALT_INV_out[4]~10_combout\,
	datae => \GameLogic|winx|ALT_INV_cout[4]~7_combout\,
	dataf => \GameLogic|comb|ra|ALT_INV_g[26]~1_combout\,
	combout => \GameLogic|comb|out[4]~3_combout\);

-- Location: LABCELL_X33_Y4_N33
\State|o_next[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|o_next[4]~4_combout\ = ( \GameLogic|comb|out[4]~3_combout\ & ( (\State|oreg|out\(4)) # (\State|o_update~combout\) ) ) # ( !\GameLogic|comb|out[4]~3_combout\ & ( ((\State|o_update~combout\ & \GameLogic|comb|ra|c[4]~1_combout\)) # 
-- (\State|oreg|out\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|ALT_INV_o_update~combout\,
	datac => \GameLogic|comb|ra|ALT_INV_c[4]~1_combout\,
	datad => \State|oreg|ALT_INV_out\(4),
	dataf => \GameLogic|comb|ALT_INV_out[4]~3_combout\,
	combout => \State|o_next[4]~4_combout\);

-- Location: FF_X33_Y4_N35
\State|oreg|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \State|o_next[4]~4_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State|oreg|out\(4));

-- Location: LABCELL_X30_Y3_N42
\GameLogic|emptyx|ra|g[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|emptyx|ra|g[4]~0_combout\ = ( \State|xreg|out\(2) & ( \State|oreg|out\(4) & ( (\State|oreg|out\(0)) # (\State|xreg|out\(0)) ) ) ) # ( !\State|xreg|out\(2) & ( \State|oreg|out\(4) & ( (\State|oreg|out\(2) & ((\State|oreg|out\(0)) # 
-- (\State|xreg|out\(0)))) ) ) ) # ( \State|xreg|out\(2) & ( !\State|oreg|out\(4) & ( (\State|xreg|out\(4) & ((\State|oreg|out\(0)) # (\State|xreg|out\(0)))) ) ) ) # ( !\State|xreg|out\(2) & ( !\State|oreg|out\(4) & ( (\State|oreg|out\(2) & 
-- (\State|xreg|out\(4) & ((\State|oreg|out\(0)) # (\State|xreg|out\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111000000000111011100000111000001110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|xreg|ALT_INV_out\(0),
	datab => \State|oreg|ALT_INV_out\(0),
	datac => \State|oreg|ALT_INV_out\(2),
	datad => \State|xreg|ALT_INV_out\(4),
	datae => \State|xreg|ALT_INV_out\(2),
	dataf => \State|oreg|ALT_INV_out\(4),
	combout => \GameLogic|emptyx|ra|g[4]~0_combout\);

-- Location: LABCELL_X33_Y2_N45
\GameLogic|emptyx|ra|g[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|emptyx|ra|g[0]~4_combout\ = ( !\GameLogic|winx|cout[8]~5_combout\ & ( (\GameLogic|emptyx|ra|g[4]~0_combout\ & !\GameLogic|winx|cout[6]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GameLogic|emptyx|ra|ALT_INV_g[4]~0_combout\,
	datad => \GameLogic|winx|ALT_INV_cout[6]~3_combout\,
	dataf => \GameLogic|winx|ALT_INV_cout[8]~5_combout\,
	combout => \GameLogic|emptyx|ra|g[0]~4_combout\);

-- Location: LABCELL_X33_Y2_N57
\GameLogic|emptyx|ra|g[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|emptyx|ra|g[0]~5_combout\ = (!\GameLogic|winx|topr|cout[1]~0_combout\ & \GameLogic|emptyx|ra|g[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|winx|topr|ALT_INV_cout[1]~0_combout\,
	datac => \GameLogic|emptyx|ra|ALT_INV_g[0]~4_combout\,
	combout => \GameLogic|emptyx|ra|g[0]~5_combout\);

-- Location: MLABCELL_X34_Y3_N9
\GameLogic|comb|out[1]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|comb|out[1]~13_combout\ = ( !\GameLogic|blockx|cout[6]~6_combout\ & ( (!\GameLogic|blockx|cout[7]~7_combout\ & (!\GameLogic|blockx|cout[8]~9_combout\ & (!\GameLogic|blockx|cout[5]~4_combout\ & !\GameLogic|blockx|cout[4]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|blockx|ALT_INV_cout[7]~7_combout\,
	datab => \GameLogic|blockx|ALT_INV_cout[8]~9_combout\,
	datac => \GameLogic|blockx|ALT_INV_cout[5]~4_combout\,
	datad => \GameLogic|blockx|ALT_INV_cout[4]~3_combout\,
	dataf => \GameLogic|blockx|ALT_INV_cout[6]~6_combout\,
	combout => \GameLogic|comb|out[1]~13_combout\);

-- Location: MLABCELL_X34_Y4_N36
\GameLogic|comb|out[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|comb|out[3]~2_combout\ = ( \GameLogic|comb|ra|g[26]~1_combout\ & ( \GameLogic|comb|ra|g[31]~0_combout\ & ( (!\GameLogic|winx|cout\(3) & (\GameLogic|blockx|cout\(3) & (\GameLogic|comb|out[1]~13_combout\))) # (\GameLogic|winx|cout\(3) & 
-- ((!\GameLogic|winx|cout[4]~7_combout\) # ((\GameLogic|blockx|cout\(3) & \GameLogic|comb|out[1]~13_combout\)))) ) ) ) # ( !\GameLogic|comb|ra|g[26]~1_combout\ & ( \GameLogic|comb|ra|g[31]~0_combout\ & ( (\GameLogic|winx|cout\(3) & 
-- !\GameLogic|winx|cout[4]~7_combout\) ) ) ) # ( \GameLogic|comb|ra|g[26]~1_combout\ & ( !\GameLogic|comb|ra|g[31]~0_combout\ & ( (\GameLogic|blockx|cout\(3) & \GameLogic|comb|out[1]~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001101010101000000000101011100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|winx|ALT_INV_cout\(3),
	datab => \GameLogic|blockx|ALT_INV_cout\(3),
	datac => \GameLogic|comb|ALT_INV_out[1]~13_combout\,
	datad => \GameLogic|winx|ALT_INV_cout[4]~7_combout\,
	datae => \GameLogic|comb|ra|ALT_INV_g[26]~1_combout\,
	dataf => \GameLogic|comb|ra|ALT_INV_g[31]~0_combout\,
	combout => \GameLogic|comb|out[3]~2_combout\);

-- Location: LABCELL_X33_Y4_N0
\GameLogic|comb|out[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|comb|out\(3) = ( \GameLogic|winx|leftc|cout[1]~0_combout\ & ( !\GameLogic|comb|out[3]~2_combout\ & ( (!\GameLogic|emptyx|ra|g[0]~5_combout\) # (((!\GameLogic|comb|ra|g[8]~3_combout\) # (\GameLogic|comb|ra|c[5]~0_combout\)) # 
-- (\GameLogic|emptyx|ra|g[4]~2_combout\)) ) ) ) # ( !\GameLogic|winx|leftc|cout[1]~0_combout\ & ( !\GameLogic|comb|out[3]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|emptyx|ra|ALT_INV_g[0]~5_combout\,
	datab => \GameLogic|emptyx|ra|ALT_INV_g[4]~2_combout\,
	datac => \GameLogic|comb|ra|ALT_INV_g[8]~3_combout\,
	datad => \GameLogic|comb|ra|ALT_INV_c[5]~0_combout\,
	datae => \GameLogic|winx|leftc|ALT_INV_cout[1]~0_combout\,
	dataf => \GameLogic|comb|ALT_INV_out[3]~2_combout\,
	combout => \GameLogic|comb|out\(3));

-- Location: LABCELL_X30_Y2_N39
\State|o_next[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|o_next[3]~3_combout\ = ( \State|oreg|out\(3) & ( \State|o_update~combout\ ) ) # ( !\State|oreg|out\(3) & ( \State|o_update~combout\ & ( !\GameLogic|comb|out\(3) ) ) ) # ( \State|oreg|out\(3) & ( !\State|o_update~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111110101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|comb|ALT_INV_out\(3),
	datae => \State|oreg|ALT_INV_out\(3),
	dataf => \State|ALT_INV_o_update~combout\,
	combout => \State|o_next[3]~3_combout\);

-- Location: FF_X30_Y2_N41
\State|oreg|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \State|o_next[3]~3_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State|oreg|out\(3));

-- Location: LABCELL_X31_Y3_N18
\GameLogic|winx|cout[5]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|winx|cout[5]~8_combout\ = ( !\State|oreg|out\(5) & ( !\State|xreg|out\(5) & ( (!\State|oreg|out\(2) & (((\State|oreg|out\(3) & \State|oreg|out\(4))))) # (\State|oreg|out\(2) & (((\State|oreg|out\(3) & \State|oreg|out\(4))) # 
-- (\State|oreg|out\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|oreg|ALT_INV_out\(2),
	datab => \State|oreg|ALT_INV_out\(8),
	datac => \State|oreg|ALT_INV_out\(3),
	datad => \State|oreg|ALT_INV_out\(4),
	datae => \State|oreg|ALT_INV_out\(5),
	dataf => \State|xreg|ALT_INV_out\(5),
	combout => \GameLogic|winx|cout[5]~8_combout\);

-- Location: MLABCELL_X34_Y3_N0
\GameLogic|comb|ra|g[31]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|comb|ra|g[31]~0_combout\ = ( !\GameLogic|winx|cout[7]~10_combout\ & ( \GameLogic|winx|cout[6]~3_combout\ & ( (!\GameLogic|winx|cout[5]~8_combout\ & (\GameLogic|winx|cout[6]~9_combout\ & ((!\GameLogic|winx|cout[8]~5_combout\) # 
-- (\GameLogic|winx|cout[8]~11_combout\)))) ) ) ) # ( !\GameLogic|winx|cout[7]~10_combout\ & ( !\GameLogic|winx|cout[6]~3_combout\ & ( (!\GameLogic|winx|cout[5]~8_combout\ & ((!\GameLogic|winx|cout[8]~5_combout\) # (\GameLogic|winx|cout[8]~11_combout\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000100010000000000000000000001010000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|winx|ALT_INV_cout[5]~8_combout\,
	datab => \GameLogic|winx|ALT_INV_cout[8]~11_combout\,
	datac => \GameLogic|winx|ALT_INV_cout[6]~9_combout\,
	datad => \GameLogic|winx|ALT_INV_cout[8]~5_combout\,
	datae => \GameLogic|winx|ALT_INV_cout[7]~10_combout\,
	dataf => \GameLogic|winx|ALT_INV_cout[6]~3_combout\,
	combout => \GameLogic|comb|ra|g[31]~0_combout\);

-- Location: LABCELL_X33_Y3_N0
\GameLogic|comb|out[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|comb|out[2]~7_combout\ = ( !\GameLogic|blockx|cout\(1) & ( (!\GameLogic|winx|cout[4]~1_combout\ & (\GameLogic|winx|cout[2]~0_combout\ & (!\GameLogic|blockx|cout[0]~1_combout\ & \GameLogic|blockx|topr|cout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|winx|ALT_INV_cout[4]~1_combout\,
	datab => \GameLogic|winx|ALT_INV_cout[2]~0_combout\,
	datac => \GameLogic|blockx|ALT_INV_cout[0]~1_combout\,
	datad => \GameLogic|blockx|topr|ALT_INV_cout~0_combout\,
	dataf => \GameLogic|blockx|ALT_INV_cout\(1),
	combout => \GameLogic|comb|out[2]~7_combout\);

-- Location: MLABCELL_X34_Y4_N48
\GameLogic|comb|out[2]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|comb|out[2]~8_combout\ = ( \GameLogic|winx|cout\(3) & ( \GameLogic|comb|ra|g[31]~0_combout\ & ( (\GameLogic|blockx|cout[2]~11_combout\ & !\GameLogic|blockx|cout\(3)) ) ) ) # ( !\GameLogic|winx|cout\(3) & ( \GameLogic|comb|ra|g[31]~0_combout\ & 
-- ( (!\GameLogic|blockx|cout[2]~11_combout\ & (\GameLogic|winx|cout[2]~6_combout\ & (!\GameLogic|winx|cout[4]~7_combout\))) # (\GameLogic|blockx|cout[2]~11_combout\ & ((!\GameLogic|blockx|cout\(3)) # ((\GameLogic|winx|cout[2]~6_combout\ & 
-- !\GameLogic|winx|cout[4]~7_combout\)))) ) ) ) # ( \GameLogic|winx|cout\(3) & ( !\GameLogic|comb|ra|g[31]~0_combout\ & ( (\GameLogic|blockx|cout[2]~11_combout\ & !\GameLogic|blockx|cout\(3)) ) ) ) # ( !\GameLogic|winx|cout\(3) & ( 
-- !\GameLogic|comb|ra|g[31]~0_combout\ & ( (\GameLogic|blockx|cout[2]~11_combout\ & !\GameLogic|blockx|cout\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001110101001100000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|blockx|ALT_INV_cout[2]~11_combout\,
	datab => \GameLogic|winx|ALT_INV_cout[2]~6_combout\,
	datac => \GameLogic|winx|ALT_INV_cout[4]~7_combout\,
	datad => \GameLogic|blockx|ALT_INV_cout\(3),
	datae => \GameLogic|winx|ALT_INV_cout\(3),
	dataf => \GameLogic|comb|ra|ALT_INV_g[31]~0_combout\,
	combout => \GameLogic|comb|out[2]~8_combout\);

-- Location: MLABCELL_X34_Y4_N54
\GameLogic|comb|out[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|comb|out[2]~9_combout\ = ( \GameLogic|adjacentx|WideNor0~4_combout\ & ( !\GameLogic|comb|out[2]~8_combout\ ) ) # ( !\GameLogic|adjacentx|WideNor0~4_combout\ & ( !\GameLogic|comb|out[2]~8_combout\ & ( (((!\GameLogic|comb|out[2]~7_combout\) # 
-- (\GameLogic|emptyx|ra|g[4]~2_combout\)) # (\GameLogic|blockx|cout\(3))) # (\GameLogic|comb|ra|c[5]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|comb|ra|ALT_INV_c[5]~0_combout\,
	datab => \GameLogic|blockx|ALT_INV_cout\(3),
	datac => \GameLogic|comb|ALT_INV_out[2]~7_combout\,
	datad => \GameLogic|emptyx|ra|ALT_INV_g[4]~2_combout\,
	datae => \GameLogic|adjacentx|ALT_INV_WideNor0~4_combout\,
	dataf => \GameLogic|comb|ALT_INV_out[2]~8_combout\,
	combout => \GameLogic|comb|out[2]~9_combout\);

-- Location: MLABCELL_X34_Y4_N30
\GameLogic|comb|out[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|comb|out\(2) = ( !\GameLogic|comb|out[2]~9_combout\ & ( \GameLogic|winx|cout[4]~7_combout\ & ( \GameLogic|comb|ra|g[21]~2_combout\ ) ) ) # ( \GameLogic|comb|out[2]~9_combout\ & ( !\GameLogic|winx|cout[4]~7_combout\ & ( 
-- (\GameLogic|comb|ra|g[31]~0_combout\ & (\GameLogic|winx|cout[2]~6_combout\ & (!\GameLogic|winx|cout\(3) & !\GameLogic|comb|ra|g[21]~2_combout\))) ) ) ) # ( !\GameLogic|comb|out[2]~9_combout\ & ( !\GameLogic|winx|cout[4]~7_combout\ & ( 
-- ((\GameLogic|comb|ra|g[31]~0_combout\ & (\GameLogic|winx|cout[2]~6_combout\ & !\GameLogic|winx|cout\(3)))) # (\GameLogic|comb|ra|g[21]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011111111000100000000000000000000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|comb|ra|ALT_INV_g[31]~0_combout\,
	datab => \GameLogic|winx|ALT_INV_cout[2]~6_combout\,
	datac => \GameLogic|winx|ALT_INV_cout\(3),
	datad => \GameLogic|comb|ra|ALT_INV_g[21]~2_combout\,
	datae => \GameLogic|comb|ALT_INV_out[2]~9_combout\,
	dataf => \GameLogic|winx|ALT_INV_cout[4]~7_combout\,
	combout => \GameLogic|comb|out\(2));

-- Location: LABCELL_X30_Y3_N33
\State|o_next[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|o_next[2]~2_combout\ = ( \GameLogic|comb|out\(2) & ( (\State|oreg|out\(2)) # (\State|o_update~combout\) ) ) # ( !\GameLogic|comb|out\(2) & ( \State|oreg|out\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|ALT_INV_o_update~combout\,
	datad => \State|oreg|ALT_INV_out\(2),
	dataf => \GameLogic|comb|ALT_INV_out\(2),
	combout => \State|o_next[2]~2_combout\);

-- Location: FF_X30_Y3_N35
\State|oreg|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \State|o_next[2]~2_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State|oreg|out\(2));

-- Location: IOIBUF_X12_Y0_N18
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X31_Y2_N11
\State|xmov|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State|xmov|out\(0));

-- Location: LABCELL_X30_Y2_N33
\State|x_update~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|x_update~1_combout\ = ( \State|xmov|out\(0) & ( \State|xmov|out\(2) & ( (!\State|oreg|out\(0) & (!\State|oreg|out\(2) & ((!\State|oreg|out\(1)) # (!\State|xmov|out\(1))))) ) ) ) # ( !\State|xmov|out\(0) & ( \State|xmov|out\(2) & ( 
-- (!\State|oreg|out\(2) & ((!\State|oreg|out\(1)) # (!\State|xmov|out\(1)))) ) ) ) # ( \State|xmov|out\(0) & ( !\State|xmov|out\(2) & ( (!\State|oreg|out\(0) & ((!\State|oreg|out\(1)) # (!\State|xmov|out\(1)))) ) ) ) # ( !\State|xmov|out\(0) & ( 
-- !\State|xmov|out\(2) & ( (!\State|oreg|out\(1)) # (!\State|xmov|out\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010110010001100100011111010000000001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|oreg|ALT_INV_out\(1),
	datab => \State|oreg|ALT_INV_out\(0),
	datac => \State|xmov|ALT_INV_out\(1),
	datad => \State|oreg|ALT_INV_out\(2),
	datae => \State|xmov|ALT_INV_out\(0),
	dataf => \State|xmov|ALT_INV_out\(2),
	combout => \State|x_update~1_combout\);

-- Location: IOIBUF_X4_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: FF_X33_Y2_N50
\State|xmov|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State|xmov|out\(3));

-- Location: LABCELL_X30_Y2_N48
\State|x_update~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|x_update~2_combout\ = ( \State|xmov|out\(4) & ( ((\State|xmov|out\(3) & \State|oreg|out\(3))) # (\State|oreg|out\(4)) ) ) # ( !\State|xmov|out\(4) & ( (\State|xmov|out\(3) & \State|oreg|out\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|xmov|ALT_INV_out\(3),
	datab => \State|oreg|ALT_INV_out\(3),
	datac => \State|oreg|ALT_INV_out\(4),
	dataf => \State|xmov|ALT_INV_out\(4),
	combout => \State|x_update~2_combout\);

-- Location: LABCELL_X30_Y2_N24
\State|x_update~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|x_update~0_combout\ = ( !\State|xmov|out\(7) & ( \State|oreg|out\(7) & ( (!\State|xmov|out\(6) & (((!\State|oreg|out\(8)) # (!\State|xmov|out\(8))))) # (\State|xmov|out\(6) & (!\State|oreg|out\(6) & ((!\State|oreg|out\(8)) # 
-- (!\State|xmov|out\(8))))) ) ) ) # ( \State|xmov|out\(7) & ( !\State|oreg|out\(7) & ( (!\State|xmov|out\(6) & (((!\State|oreg|out\(8)) # (!\State|xmov|out\(8))))) # (\State|xmov|out\(6) & (!\State|oreg|out\(6) & ((!\State|oreg|out\(8)) # 
-- (!\State|xmov|out\(8))))) ) ) ) # ( !\State|xmov|out\(7) & ( !\State|oreg|out\(7) & ( (!\State|xmov|out\(6) & (((!\State|oreg|out\(8)) # (!\State|xmov|out\(8))))) # (\State|xmov|out\(6) & (!\State|oreg|out\(6) & ((!\State|oreg|out\(8)) # 
-- (!\State|xmov|out\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011100000111011101110000011101110111000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|xmov|ALT_INV_out\(6),
	datab => \State|oreg|ALT_INV_out\(6),
	datac => \State|oreg|ALT_INV_out\(8),
	datad => \State|xmov|ALT_INV_out\(8),
	datae => \State|xmov|ALT_INV_out\(7),
	dataf => \State|oreg|ALT_INV_out\(7),
	combout => \State|x_update~0_combout\);

-- Location: LABCELL_X30_Y2_N0
\State|x_update~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|x_update~3_combout\ = ( \State|xmov|out\(5) & ( (\State|x_update~1_combout\ & (!\State|x_update~2_combout\ & (\State|x_update~0_combout\ & !\State|oreg|out\(5)))) ) ) # ( !\State|xmov|out\(5) & ( (\State|x_update~1_combout\ & 
-- (!\State|x_update~2_combout\ & \State|x_update~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|ALT_INV_x_update~1_combout\,
	datab => \State|ALT_INV_x_update~2_combout\,
	datac => \State|ALT_INV_x_update~0_combout\,
	datad => \State|oreg|ALT_INV_out\(5),
	dataf => \State|xmov|ALT_INV_out\(5),
	combout => \State|x_update~3_combout\);

-- Location: LABCELL_X33_Y2_N30
\State|x_next[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|x_next[0]~0_combout\ = ( \State|xreg|out\(0) & ( \State|xmov|out\(0) ) ) # ( !\State|xreg|out\(0) & ( \State|xmov|out\(0) & ( (\State|x_update~4_combout\ & (\State|x_update~5_combout\ & (!\State|LessThan0~1_combout\ & \State|x_update~3_combout\))) 
-- ) ) ) # ( \State|xreg|out\(0) & ( !\State|xmov|out\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|ALT_INV_x_update~4_combout\,
	datab => \State|ALT_INV_x_update~5_combout\,
	datac => \State|ALT_INV_LessThan0~1_combout\,
	datad => \State|ALT_INV_x_update~3_combout\,
	datae => \State|xreg|ALT_INV_out\(0),
	dataf => \State|xmov|ALT_INV_out\(0),
	combout => \State|x_next[0]~0_combout\);

-- Location: FF_X33_Y2_N32
\State|xreg|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \State|x_next[0]~0_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State|xreg|out\(0));

-- Location: LABCELL_X33_Y2_N48
\State|Add17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|Add17~1_combout\ = ( \State|xreg|out\(2) & ( \State|xmov|out\(1) & ( (!\State|xreg|out\(0) & (\State|xmov|out\(0) & !\State|xreg|out\(1))) ) ) ) # ( !\State|xreg|out\(2) & ( \State|xmov|out\(1) & ( (!\State|xmov|out\(2) & (!\State|xreg|out\(0) & 
-- (\State|xmov|out\(0) & !\State|xreg|out\(1)))) # (\State|xmov|out\(2) & ((!\State|xreg|out\(1)) # ((!\State|xreg|out\(0) & \State|xmov|out\(0))))) ) ) ) # ( !\State|xreg|out\(2) & ( !\State|xmov|out\(1) & ( (\State|xmov|out\(2) & (!\State|xreg|out\(0) & 
-- \State|xmov|out\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000000000000000001011101000001000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|xmov|ALT_INV_out\(2),
	datab => \State|xreg|ALT_INV_out\(0),
	datac => \State|xmov|ALT_INV_out\(0),
	datad => \State|xreg|ALT_INV_out\(1),
	datae => \State|xreg|ALT_INV_out\(2),
	dataf => \State|xmov|ALT_INV_out\(1),
	combout => \State|Add17~1_combout\);

-- Location: LABCELL_X31_Y2_N39
\State|Add17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|Add17~0_combout\ = ( \State|xreg|out\(2) & ( \State|xreg|out\(0) & ( (\State|xmov|out\(1) & !\State|xreg|out\(1)) ) ) ) # ( !\State|xreg|out\(2) & ( \State|xreg|out\(0) & ( !\State|xmov|out\(2) $ (((!\State|xmov|out\(1)) # (\State|xreg|out\(1)))) ) 
-- ) ) # ( \State|xreg|out\(2) & ( !\State|xreg|out\(0) & ( !\State|xmov|out\(0) $ (((!\State|xmov|out\(1)) # (\State|xreg|out\(1)))) ) ) ) # ( !\State|xreg|out\(2) & ( !\State|xreg|out\(0) & ( !\State|xmov|out\(0) $ (!\State|xmov|out\(2) $ 
-- (((\State|xmov|out\(1) & !\State|xreg|out\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101110110100010010110100101101000100101110110100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|xmov|ALT_INV_out\(1),
	datab => \State|xreg|ALT_INV_out\(1),
	datac => \State|xmov|ALT_INV_out\(0),
	datad => \State|xmov|ALT_INV_out\(2),
	datae => \State|xreg|ALT_INV_out\(2),
	dataf => \State|xreg|ALT_INV_out\(0),
	combout => \State|Add17~0_combout\);

-- Location: LABCELL_X31_Y2_N0
\State|Add23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|Add23~1_combout\ = ( \State|Add17~0_combout\ & ( !\State|Add22~0_combout\ $ (!\State|Add22~1_combout\ $ (\State|Add17~1_combout\)) ) ) # ( !\State|Add17~0_combout\ & ( !\State|Add22~1_combout\ $ (!\State|Add17~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110001101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|ALT_INV_Add22~0_combout\,
	datab => \State|ALT_INV_Add22~1_combout\,
	datac => \State|ALT_INV_Add17~1_combout\,
	dataf => \State|ALT_INV_Add17~0_combout\,
	combout => \State|Add23~1_combout\);

-- Location: LABCELL_X31_Y2_N9
\State|Add18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|Add18~0_combout\ = ( \State|xreg|out\(4) & ( (!\State|xreg|out\(3) & \State|xmov|out\(3)) ) ) # ( !\State|xreg|out\(4) & ( !\State|xmov|out\(4) $ (((!\State|xmov|out\(3)) # (\State|xreg|out\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100100111001001110010011100100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|xreg|ALT_INV_out\(3),
	datab => \State|xmov|ALT_INV_out\(4),
	datac => \State|xmov|ALT_INV_out\(3),
	dataf => \State|xreg|ALT_INV_out\(4),
	combout => \State|Add18~0_combout\);

-- Location: LABCELL_X31_Y2_N45
\State|Add20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|Add20~0_combout\ = ( \State|xreg|out\(5) & ( (!\State|xreg|out\(6) & \State|xmov|out\(6)) ) ) # ( !\State|xreg|out\(5) & ( !\State|xmov|out\(5) $ (((!\State|xmov|out\(6)) # (\State|xreg|out\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011110101000010101111010100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|xreg|ALT_INV_out\(6),
	datac => \State|xmov|ALT_INV_out\(6),
	datad => \State|xmov|ALT_INV_out\(5),
	dataf => \State|xreg|ALT_INV_out\(5),
	combout => \State|Add20~0_combout\);

-- Location: LABCELL_X31_Y2_N18
\State|Add19~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|Add19~2_combout\ = (!\State|Add22~0_combout\ & (\State|Add17~0_combout\ & (!\State|Add18~0_combout\ $ (!\State|Add20~0_combout\)))) # (\State|Add22~0_combout\ & (!\State|Add17~0_combout\ & (!\State|Add18~0_combout\ $ (!\State|Add20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001100000000001100110000000000110011000000000011001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|ALT_INV_Add22~0_combout\,
	datab => \State|ALT_INV_Add17~0_combout\,
	datac => \State|ALT_INV_Add18~0_combout\,
	datad => \State|ALT_INV_Add20~0_combout\,
	combout => \State|Add19~2_combout\);

-- Location: LABCELL_X31_Y2_N6
\State|Add18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|Add18~1_combout\ = ( !\State|xreg|out\(4) & ( (!\State|xreg|out\(3) & (\State|xmov|out\(4) & \State|xmov|out\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|xreg|ALT_INV_out\(3),
	datab => \State|xmov|ALT_INV_out\(4),
	datad => \State|xmov|ALT_INV_out\(3),
	dataf => \State|xreg|ALT_INV_out\(4),
	combout => \State|Add18~1_combout\);

-- Location: LABCELL_X31_Y2_N54
\State|Add19~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|Add19~3_combout\ = ( \State|Add18~0_combout\ & ( \State|xreg|out\(5) & ( !\State|Add18~1_combout\ $ (((!\State|xmov|out\(6)) # (\State|xreg|out\(6)))) ) ) ) # ( !\State|Add18~0_combout\ & ( \State|xreg|out\(5) & ( \State|Add18~1_combout\ ) ) ) # ( 
-- \State|Add18~0_combout\ & ( !\State|xreg|out\(5) & ( !\State|Add18~1_combout\ $ (((!\State|xmov|out\(5) & ((!\State|xmov|out\(6)) # (\State|xreg|out\(6)))))) ) ) ) # ( !\State|Add18~0_combout\ & ( !\State|xreg|out\(5) & ( !\State|Add18~1_combout\ $ 
-- (((!\State|xmov|out\(6)) # ((!\State|xmov|out\(5)) # (\State|xreg|out\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101100011011000111100110000110011001100110110001101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|xmov|ALT_INV_out\(6),
	datab => \State|ALT_INV_Add18~1_combout\,
	datac => \State|xreg|ALT_INV_out\(6),
	datad => \State|xmov|ALT_INV_out\(5),
	datae => \State|ALT_INV_Add18~0_combout\,
	dataf => \State|xreg|ALT_INV_out\(5),
	combout => \State|Add19~3_combout\);

-- Location: LABCELL_X31_Y2_N24
\State|Add19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|Add19~1_combout\ = ( \State|xmov|out\(5) & ( !\State|xreg|out\(5) & ( (!\State|xreg|out\(6) & (\State|Add18~1_combout\ & \State|xmov|out\(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|xreg|ALT_INV_out\(6),
	datab => \State|ALT_INV_Add18~1_combout\,
	datac => \State|xmov|ALT_INV_out\(6),
	datae => \State|xmov|ALT_INV_out\(5),
	dataf => \State|xreg|ALT_INV_out\(5),
	combout => \State|Add19~1_combout\);

-- Location: LABCELL_X31_Y2_N30
\State|x_update~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|x_update~5_combout\ = ( \State|Add19~1_combout\ & ( (!\State|Add23~1_combout\ & (!\State|Add19~2_combout\ & (!\State|Add19~3_combout\ & \State|Add23~0_combout\))) ) ) # ( !\State|Add19~1_combout\ & ( (!\State|Add23~1_combout\ & 
-- (!\State|Add19~2_combout\ & (!\State|Add19~3_combout\ & !\State|Add23~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|ALT_INV_Add23~1_combout\,
	datab => \State|ALT_INV_Add19~2_combout\,
	datac => \State|ALT_INV_Add19~3_combout\,
	datad => \State|ALT_INV_Add23~0_combout\,
	dataf => \State|ALT_INV_Add19~1_combout\,
	combout => \State|x_update~5_combout\);

-- Location: LABCELL_X33_Y2_N12
\State|x_next[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|x_next[3]~3_combout\ = ( \State|xreg|out\(3) & ( \State|xmov|out\(3) ) ) # ( !\State|xreg|out\(3) & ( \State|xmov|out\(3) & ( (\State|x_update~4_combout\ & (\State|x_update~5_combout\ & (!\State|LessThan0~1_combout\ & \State|x_update~3_combout\))) 
-- ) ) ) # ( \State|xreg|out\(3) & ( !\State|xmov|out\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|ALT_INV_x_update~4_combout\,
	datab => \State|ALT_INV_x_update~5_combout\,
	datac => \State|ALT_INV_LessThan0~1_combout\,
	datad => \State|ALT_INV_x_update~3_combout\,
	datae => \State|xreg|ALT_INV_out\(3),
	dataf => \State|xmov|ALT_INV_out\(3),
	combout => \State|x_next[3]~3_combout\);

-- Location: FF_X33_Y2_N14
\State|xreg|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \State|x_next[3]~3_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State|xreg|out\(3));

-- Location: LABCELL_X31_Y5_N33
\Wins|WideAnd1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Wins|WideAnd1~0_combout\ = ( \State|xreg|out\(4) & ( \State|xreg|out\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|xreg|ALT_INV_out\(3),
	dataf => \State|xreg|ALT_INV_out\(4),
	combout => \Wins|WideAnd1~0_combout\);

-- Location: LABCELL_X33_Y3_N45
\State|Add7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|Add7~1_combout\ = ( \State|xreg|out\(8) & ( !\State|xreg|out\(0) $ (!\State|xreg|out\(2) $ (!\State|xreg|out\(7) $ (\State|xreg|out\(1)))) ) ) # ( !\State|xreg|out\(8) & ( !\State|xreg|out\(0) $ (!\State|xreg|out\(2) $ (!\State|xreg|out\(7) $ 
-- (!\State|xreg|out\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011010010110011010011001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|xreg|ALT_INV_out\(0),
	datab => \State|xreg|ALT_INV_out\(2),
	datac => \State|xreg|ALT_INV_out\(7),
	datad => \State|xreg|ALT_INV_out\(1),
	dataf => \State|xreg|ALT_INV_out\(8),
	combout => \State|Add7~1_combout\);

-- Location: LABCELL_X31_Y2_N12
\State|Add7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|Add7~2_combout\ = ( \State|xreg|out\(0) & ( (!\State|xreg|out\(8) & ((!\State|xreg|out\(7) & (!\State|xreg|out\(2) & !\State|xreg|out\(1))) # (\State|xreg|out\(7) & (\State|xreg|out\(2) & \State|xreg|out\(1))))) # (\State|xreg|out\(8) & 
-- ((!\State|xreg|out\(7) & (\State|xreg|out\(2) & \State|xreg|out\(1))) # (\State|xreg|out\(7) & ((\State|xreg|out\(1)) # (\State|xreg|out\(2)))))) ) ) # ( !\State|xreg|out\(0) & ( (!\State|xreg|out\(8) & ((!\State|xreg|out\(7) & ((!\State|xreg|out\(2)) # 
-- (!\State|xreg|out\(1)))) # (\State|xreg|out\(7) & (!\State|xreg|out\(2) & !\State|xreg|out\(1))))) # (\State|xreg|out\(8) & ((!\State|xreg|out\(7) & (!\State|xreg|out\(2) & !\State|xreg|out\(1))) # (\State|xreg|out\(7) & (\State|xreg|out\(2) & 
-- \State|xreg|out\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100010000001111010001000000110000001000101111000000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|xreg|ALT_INV_out\(8),
	datab => \State|xreg|ALT_INV_out\(7),
	datac => \State|xreg|ALT_INV_out\(2),
	datad => \State|xreg|ALT_INV_out\(1),
	dataf => \State|xreg|ALT_INV_out\(0),
	combout => \State|Add7~2_combout\);

-- Location: LABCELL_X31_Y5_N42
\State|Add3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|Add3~0_combout\ = ( \State|xreg|out\(5) & ( \State|Add7~2_combout\ & ( (\State|Add7~1_combout\ & ((!\State|xreg|out\(6) & (\State|xreg|out\(4) & \State|xreg|out\(3))) # (\State|xreg|out\(6) & (!\State|xreg|out\(4) $ (!\State|xreg|out\(3)))))) ) ) ) 
-- # ( !\State|xreg|out\(5) & ( \State|Add7~2_combout\ & ( (\State|xreg|out\(6) & (\State|xreg|out\(4) & (\State|xreg|out\(3) & \State|Add7~1_combout\))) ) ) ) # ( \State|xreg|out\(5) & ( !\State|Add7~2_combout\ & ( (!\State|xreg|out\(6) & 
-- (((\State|Add7~1_combout\) # (\State|xreg|out\(3))) # (\State|xreg|out\(4)))) # (\State|xreg|out\(6) & ((!\State|xreg|out\(4)) # ((!\State|xreg|out\(3))))) ) ) ) # ( !\State|xreg|out\(5) & ( !\State|Add7~2_combout\ & ( (!\State|xreg|out\(6) & 
-- ((!\State|xreg|out\(4) & (\State|xreg|out\(3) & \State|Add7~1_combout\)) # (\State|xreg|out\(4) & ((\State|Add7~1_combout\) # (\State|xreg|out\(3)))))) # (\State|xreg|out\(6) & (((\State|Add7~1_combout\) # (\State|xreg|out\(3))) # (\State|xreg|out\(4)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011101111111011111101111111000000000000000010000000000010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|xreg|ALT_INV_out\(6),
	datab => \State|xreg|ALT_INV_out\(4),
	datac => \State|xreg|ALT_INV_out\(3),
	datad => \State|ALT_INV_Add7~1_combout\,
	datae => \State|xreg|ALT_INV_out\(5),
	dataf => \State|ALT_INV_Add7~2_combout\,
	combout => \State|Add3~0_combout\);

-- Location: LABCELL_X33_Y3_N36
\State|Add7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|Add7~0_combout\ = ( \State|xreg|out\(2) & ( (!\State|xreg|out\(8) & (\State|xreg|out\(1) & (\State|xreg|out\(0) & \State|xreg|out\(7)))) # (\State|xreg|out\(8) & ((!\State|xreg|out\(1) & (\State|xreg|out\(0) & \State|xreg|out\(7))) # 
-- (\State|xreg|out\(1) & ((\State|xreg|out\(7)) # (\State|xreg|out\(0)))))) ) ) # ( !\State|xreg|out\(2) & ( (\State|xreg|out\(8) & (\State|xreg|out\(1) & (\State|xreg|out\(0) & \State|xreg|out\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000001000101110000000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|xreg|ALT_INV_out\(8),
	datab => \State|xreg|ALT_INV_out\(1),
	datac => \State|xreg|ALT_INV_out\(0),
	datad => \State|xreg|ALT_INV_out\(7),
	dataf => \State|xreg|ALT_INV_out\(2),
	combout => \State|Add7~0_combout\);

-- Location: LABCELL_X31_Y5_N21
\State|Add3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|Add3~2_combout\ = ( \State|Add7~0_combout\ & ( !\State|Add3~0_combout\ $ (((\Wins|WideAnd1~0_combout\ & (\State|xreg|out\(6) & \State|xreg|out\(5))))) ) ) # ( !\State|Add7~0_combout\ & ( !\State|Add3~0_combout\ $ (((!\Wins|WideAnd1~0_combout\) # 
-- ((!\State|xreg|out\(6)) # (!\State|xreg|out\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110110001100110011011011001100110010011100110011001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Wins|ALT_INV_WideAnd1~0_combout\,
	datab => \State|ALT_INV_Add3~0_combout\,
	datac => \State|xreg|ALT_INV_out\(6),
	datad => \State|xreg|ALT_INV_out\(5),
	dataf => \State|ALT_INV_Add7~0_combout\,
	combout => \State|Add3~2_combout\);

-- Location: LABCELL_X30_Y3_N54
\State|Add15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|Add15~2_combout\ = ( \State|oreg|out\(0) & ( (!\State|oreg|out\(1) & ((!\State|oreg|out\(8) & (!\State|oreg|out\(2) & !\State|oreg|out\(7))) # (\State|oreg|out\(8) & (\State|oreg|out\(2) & \State|oreg|out\(7))))) # (\State|oreg|out\(1) & 
-- ((!\State|oreg|out\(8) & (\State|oreg|out\(2) & \State|oreg|out\(7))) # (\State|oreg|out\(8) & ((\State|oreg|out\(7)) # (\State|oreg|out\(2)))))) ) ) # ( !\State|oreg|out\(0) & ( (!\State|oreg|out\(1) & ((!\State|oreg|out\(8) & ((!\State|oreg|out\(2)) # 
-- (!\State|oreg|out\(7)))) # (\State|oreg|out\(8) & (!\State|oreg|out\(2) & !\State|oreg|out\(7))))) # (\State|oreg|out\(1) & ((!\State|oreg|out\(8) & (!\State|oreg|out\(2) & !\State|oreg|out\(7))) # (\State|oreg|out\(8) & (\State|oreg|out\(2) & 
-- \State|oreg|out\(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100010000001111010001000000110000001000101111000000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|oreg|ALT_INV_out\(1),
	datab => \State|oreg|ALT_INV_out\(8),
	datac => \State|oreg|ALT_INV_out\(2),
	datad => \State|oreg|ALT_INV_out\(7),
	dataf => \State|oreg|ALT_INV_out\(0),
	combout => \State|Add15~2_combout\);

-- Location: LABCELL_X30_Y3_N18
\State|Add15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|Add15~1_combout\ = ( \State|oreg|out\(0) & ( !\State|oreg|out\(1) $ (!\State|oreg|out\(8) $ (!\State|oreg|out\(2) $ (\State|oreg|out\(7)))) ) ) # ( !\State|oreg|out\(0) & ( !\State|oreg|out\(1) $ (!\State|oreg|out\(8) $ (!\State|oreg|out\(2) $ 
-- (!\State|oreg|out\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011010010110011010011001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|oreg|ALT_INV_out\(1),
	datab => \State|oreg|ALT_INV_out\(8),
	datac => \State|oreg|ALT_INV_out\(2),
	datad => \State|oreg|ALT_INV_out\(7),
	dataf => \State|oreg|ALT_INV_out\(0),
	combout => \State|Add15~1_combout\);

-- Location: LABCELL_X31_Y5_N6
\State|Add11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|Add11~1_combout\ = ( \State|oreg|out\(3) & ( \State|oreg|out\(4) & ( (!\State|Add15~2_combout\ & ((!\State|oreg|out\(6)) # ((!\State|oreg|out\(5))))) # (\State|Add15~2_combout\ & (\State|Add15~1_combout\ & (!\State|oreg|out\(6) $ 
-- (!\State|oreg|out\(5))))) ) ) ) # ( !\State|oreg|out\(3) & ( \State|oreg|out\(4) & ( (!\State|oreg|out\(6) & (!\State|Add15~2_combout\ & ((\State|Add15~1_combout\) # (\State|oreg|out\(5))))) # (\State|oreg|out\(6) & ((!\State|Add15~2_combout\) # 
-- ((\State|oreg|out\(5) & \State|Add15~1_combout\)))) ) ) ) # ( \State|oreg|out\(3) & ( !\State|oreg|out\(4) & ( (!\State|oreg|out\(6) & (!\State|Add15~2_combout\ & ((\State|Add15~1_combout\) # (\State|oreg|out\(5))))) # (\State|oreg|out\(6) & 
-- ((!\State|Add15~2_combout\) # ((\State|oreg|out\(5) & \State|Add15~1_combout\)))) ) ) ) # ( !\State|oreg|out\(3) & ( !\State|oreg|out\(4) & ( (!\State|Add15~2_combout\ & ((!\State|oreg|out\(6) & (\State|oreg|out\(5) & \State|Add15~1_combout\)) # 
-- (\State|oreg|out\(6) & ((\State|Add15~1_combout\) # (\State|oreg|out\(5)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001110000011100001111000101110000111100011110000011100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|oreg|ALT_INV_out\(6),
	datab => \State|oreg|ALT_INV_out\(5),
	datac => \State|ALT_INV_Add15~2_combout\,
	datad => \State|ALT_INV_Add15~1_combout\,
	datae => \State|oreg|ALT_INV_out\(3),
	dataf => \State|oreg|ALT_INV_out\(4),
	combout => \State|Add11~1_combout\);

-- Location: LABCELL_X31_Y5_N18
\State|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|Add3~1_combout\ = ( \State|Add7~0_combout\ & ( ((\Wins|WideAnd1~0_combout\ & (\State|xreg|out\(6) & \State|xreg|out\(5)))) # (\State|Add3~0_combout\) ) ) # ( !\State|Add7~0_combout\ & ( (\Wins|WideAnd1~0_combout\ & (\State|Add3~0_combout\ & 
-- (\State|xreg|out\(6) & \State|xreg|out\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100110011001101110011001100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Wins|ALT_INV_WideAnd1~0_combout\,
	datab => \State|ALT_INV_Add3~0_combout\,
	datac => \State|xreg|ALT_INV_out\(6),
	datad => \State|xreg|ALT_INV_out\(5),
	dataf => \State|ALT_INV_Add7~0_combout\,
	combout => \State|Add3~1_combout\);

-- Location: LABCELL_X30_Y3_N15
\State|Add15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|Add15~0_combout\ = ( \State|oreg|out\(1) & ( (!\State|oreg|out\(0) & (\State|oreg|out\(8) & (\State|oreg|out\(2) & \State|oreg|out\(7)))) # (\State|oreg|out\(0) & ((!\State|oreg|out\(8) & (\State|oreg|out\(2) & \State|oreg|out\(7))) # 
-- (\State|oreg|out\(8) & ((\State|oreg|out\(7)) # (\State|oreg|out\(2)))))) ) ) # ( !\State|oreg|out\(1) & ( (\State|oreg|out\(0) & (\State|oreg|out\(8) & (\State|oreg|out\(2) & \State|oreg|out\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000001000101110000000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|oreg|ALT_INV_out\(0),
	datab => \State|oreg|ALT_INV_out\(8),
	datac => \State|oreg|ALT_INV_out\(2),
	datad => \State|oreg|ALT_INV_out\(7),
	dataf => \State|oreg|ALT_INV_out\(1),
	combout => \State|Add15~0_combout\);

-- Location: LABCELL_X31_Y5_N3
\State|Add3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|Add3~3_combout\ = ( \State|xreg|out\(4) & ( !\State|xreg|out\(3) $ (!\State|xreg|out\(5) $ (!\State|xreg|out\(6))) ) ) # ( !\State|xreg|out\(4) & ( !\State|xreg|out\(3) $ (!\State|xreg|out\(5) $ (\State|xreg|out\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|xreg|ALT_INV_out\(3),
	datac => \State|xreg|ALT_INV_out\(5),
	datad => \State|xreg|ALT_INV_out\(6),
	dataf => \State|xreg|ALT_INV_out\(4),
	combout => \State|Add3~3_combout\);

-- Location: LABCELL_X31_Y5_N0
\State|Add3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|Add3~4_combout\ = ( \State|xreg|out\(4) & ( !\State|Add7~2_combout\ $ (((!\State|xreg|out\(3) & ((\State|xreg|out\(6)) # (\State|xreg|out\(5)))) # (\State|xreg|out\(3) & ((!\State|xreg|out\(5)) # (!\State|xreg|out\(6)))))) ) ) # ( 
-- !\State|xreg|out\(4) & ( !\State|Add7~2_combout\ $ (((!\State|xreg|out\(3) & (\State|xreg|out\(5) & \State|xreg|out\(6))) # (\State|xreg|out\(3) & ((\State|xreg|out\(6)) # (\State|xreg|out\(5)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000110000111111000011000011110000111000111101000011100011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|xreg|ALT_INV_out\(3),
	datab => \State|xreg|ALT_INV_out\(5),
	datac => \State|ALT_INV_Add7~2_combout\,
	datad => \State|xreg|ALT_INV_out\(6),
	dataf => \State|xreg|ALT_INV_out\(4),
	combout => \State|Add3~4_combout\);

-- Location: LABCELL_X31_Y5_N27
\State|Add11~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|Add11~3_combout\ = ( \State|oreg|out\(4) & ( !\State|Add15~2_combout\ $ (((!\State|oreg|out\(6) & ((\State|oreg|out\(3)) # (\State|oreg|out\(5)))) # (\State|oreg|out\(6) & ((!\State|oreg|out\(5)) # (!\State|oreg|out\(3)))))) ) ) # ( 
-- !\State|oreg|out\(4) & ( !\State|Add15~2_combout\ $ (((!\State|oreg|out\(6) & (\State|oreg|out\(5) & \State|oreg|out\(3))) # (\State|oreg|out\(6) & ((\State|oreg|out\(3)) # (\State|oreg|out\(5)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100000010111111010000001011110000001011111101000000101111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|oreg|ALT_INV_out\(6),
	datab => \State|oreg|ALT_INV_out\(5),
	datac => \State|oreg|ALT_INV_out\(3),
	datad => \State|ALT_INV_Add15~2_combout\,
	dataf => \State|oreg|ALT_INV_out\(4),
	combout => \State|Add11~3_combout\);

-- Location: LABCELL_X31_Y5_N24
\State|Add11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|Add11~2_combout\ = ( \State|oreg|out\(4) & ( !\State|oreg|out\(6) $ (!\State|oreg|out\(5) $ (!\State|oreg|out\(3))) ) ) # ( !\State|oreg|out\(4) & ( !\State|oreg|out\(6) $ (!\State|oreg|out\(5) $ (\State|oreg|out\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|oreg|ALT_INV_out\(6),
	datab => \State|oreg|ALT_INV_out\(5),
	datad => \State|oreg|ALT_INV_out\(3),
	dataf => \State|oreg|ALT_INV_out\(4),
	combout => \State|Add11~2_combout\);

-- Location: LABCELL_X31_Y5_N36
\State|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|LessThan0~0_combout\ = ( \State|Add11~3_combout\ & ( \State|Add11~2_combout\ & ( (\State|Add15~1_combout\ & ((!\State|Add3~3_combout\ & ((\State|Add3~4_combout\) # (\State|Add7~1_combout\))) # (\State|Add3~3_combout\ & ((!\State|Add7~1_combout\) # 
-- (!\State|Add3~4_combout\))))) ) ) ) # ( !\State|Add11~3_combout\ & ( \State|Add11~2_combout\ & ( (!\State|Add15~1_combout\ & (!\State|Add3~4_combout\ $ (((!\State|Add3~3_combout\) # (!\State|Add7~1_combout\))))) # (\State|Add15~1_combout\ & 
-- (\State|Add3~4_combout\ & (!\State|Add3~3_combout\ $ (!\State|Add7~1_combout\)))) ) ) ) # ( \State|Add11~3_combout\ & ( !\State|Add11~2_combout\ & ( (\State|Add3~4_combout\ & (!\State|Add15~1_combout\ & (!\State|Add3~3_combout\ $ 
-- (!\State|Add7~1_combout\)))) ) ) ) # ( !\State|Add11~3_combout\ & ( !\State|Add11~2_combout\ & ( (!\State|Add3~3_combout\ & (((\State|Add7~1_combout\ & !\State|Add15~1_combout\)) # (\State|Add3~4_combout\))) # (\State|Add3~3_combout\ & 
-- ((!\State|Add7~1_combout\ & ((!\State|Add15~1_combout\) # (\State|Add3~4_combout\))) # (\State|Add7~1_combout\ & (!\State|Add3~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111000011110000001100000000000011110000001100000000001111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|ALT_INV_Add3~3_combout\,
	datab => \State|ALT_INV_Add7~1_combout\,
	datac => \State|ALT_INV_Add3~4_combout\,
	datad => \State|ALT_INV_Add15~1_combout\,
	datae => \State|ALT_INV_Add11~3_combout\,
	dataf => \State|ALT_INV_Add11~2_combout\,
	combout => \State|LessThan0~0_combout\);

-- Location: LABCELL_X31_Y5_N30
\State|Add11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|Add11~0_combout\ = ( \State|oreg|out\(4) & ( (\State|oreg|out\(5) & (\State|oreg|out\(6) & \State|oreg|out\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \State|oreg|ALT_INV_out\(5),
	datac => \State|oreg|ALT_INV_out\(6),
	datad => \State|oreg|ALT_INV_out\(3),
	dataf => \State|oreg|ALT_INV_out\(4),
	combout => \State|Add11~0_combout\);

-- Location: LABCELL_X31_Y5_N12
\State|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|LessThan0~1_combout\ = ( \State|LessThan0~0_combout\ & ( \State|Add11~0_combout\ & ( (!\State|Add3~2_combout\ & (\State|Add3~1_combout\ & ((!\State|Add11~1_combout\) # (!\State|Add15~0_combout\)))) # (\State|Add3~2_combout\ & 
-- (((!\State|Add11~1_combout\ & !\State|Add15~0_combout\)) # (\State|Add3~1_combout\))) ) ) ) # ( !\State|LessThan0~0_combout\ & ( \State|Add11~0_combout\ & ( (\State|Add3~1_combout\ & ((!\State|Add3~2_combout\ & (!\State|Add11~1_combout\ & 
-- !\State|Add15~0_combout\)) # (\State|Add3~2_combout\ & ((!\State|Add11~1_combout\) # (!\State|Add15~0_combout\))))) ) ) ) # ( \State|LessThan0~0_combout\ & ( !\State|Add11~0_combout\ & ( ((!\State|Add3~2_combout\ & (!\State|Add11~1_combout\ & 
-- !\State|Add15~0_combout\)) # (\State|Add3~2_combout\ & ((!\State|Add11~1_combout\) # (!\State|Add15~0_combout\)))) # (\State|Add3~1_combout\) ) ) ) # ( !\State|LessThan0~0_combout\ & ( !\State|Add11~0_combout\ & ( (!\State|Add3~2_combout\ & 
-- (\State|Add3~1_combout\ & ((!\State|Add11~1_combout\) # (!\State|Add15~0_combout\)))) # (\State|Add3~2_combout\ & (((!\State|Add11~1_combout\ & !\State|Add15~0_combout\)) # (\State|Add3~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111100001101110111110100111100001101000001000100111100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|ALT_INV_Add3~2_combout\,
	datab => \State|ALT_INV_Add11~1_combout\,
	datac => \State|ALT_INV_Add3~1_combout\,
	datad => \State|ALT_INV_Add15~0_combout\,
	datae => \State|ALT_INV_LessThan0~0_combout\,
	dataf => \State|ALT_INV_Add11~0_combout\,
	combout => \State|LessThan0~1_combout\);

-- Location: LABCELL_X33_Y2_N24
\State|x_next[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|x_next[7]~7_combout\ = ( \State|xreg|out\(7) & ( \State|x_update~3_combout\ ) ) # ( !\State|xreg|out\(7) & ( \State|x_update~3_combout\ & ( (!\State|LessThan0~1_combout\ & (\State|x_update~5_combout\ & (\State|x_update~4_combout\ & 
-- \State|xmov|out\(7)))) ) ) ) # ( \State|xreg|out\(7) & ( !\State|x_update~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|ALT_INV_LessThan0~1_combout\,
	datab => \State|ALT_INV_x_update~5_combout\,
	datac => \State|ALT_INV_x_update~4_combout\,
	datad => \State|xmov|ALT_INV_out\(7),
	datae => \State|xreg|ALT_INV_out\(7),
	dataf => \State|ALT_INV_x_update~3_combout\,
	combout => \State|x_next[7]~7_combout\);

-- Location: FF_X33_Y2_N26
\State|xreg|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \State|x_next[7]~7_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State|xreg|out\(7));

-- Location: LABCELL_X33_Y2_N3
\State|Add22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|Add22~1_combout\ = ( !\State|xreg|out\(7) & ( (\State|xmov|out\(8) & (\State|xmov|out\(7) & !\State|xreg|out\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|xmov|ALT_INV_out\(8),
	datac => \State|xmov|ALT_INV_out\(7),
	datad => \State|xreg|ALT_INV_out\(8),
	dataf => \State|xreg|ALT_INV_out\(7),
	combout => \State|Add22~1_combout\);

-- Location: LABCELL_X31_Y2_N3
\State|Add23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|Add23~0_combout\ = ( \State|Add17~1_combout\ & ( ((\State|Add17~0_combout\ & \State|Add22~0_combout\)) # (\State|Add22~1_combout\) ) ) # ( !\State|Add17~1_combout\ & ( (\State|Add22~1_combout\ & (\State|Add17~0_combout\ & \State|Add22~0_combout\)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \State|ALT_INV_Add22~1_combout\,
	datac => \State|ALT_INV_Add17~0_combout\,
	datad => \State|ALT_INV_Add22~0_combout\,
	dataf => \State|ALT_INV_Add17~1_combout\,
	combout => \State|Add23~0_combout\);

-- Location: LABCELL_X30_Y3_N6
\Wins|win_line[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Wins|win_line\(3) = ( \State|xreg|out\(2) & ( \State|xreg|out\(8) & ( ((\State|oreg|out\(8) & (\State|oreg|out\(2) & \State|oreg|out\(5)))) # (\State|xreg|out\(5)) ) ) ) # ( !\State|xreg|out\(2) & ( \State|xreg|out\(8) & ( (\State|oreg|out\(8) & 
-- (\State|oreg|out\(2) & \State|oreg|out\(5))) ) ) ) # ( \State|xreg|out\(2) & ( !\State|xreg|out\(8) & ( (\State|oreg|out\(8) & (\State|oreg|out\(2) & \State|oreg|out\(5))) ) ) ) # ( !\State|xreg|out\(2) & ( !\State|xreg|out\(8) & ( (\State|oreg|out\(8) & 
-- (\State|oreg|out\(2) & \State|oreg|out\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000110101010101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|xreg|ALT_INV_out\(5),
	datab => \State|oreg|ALT_INV_out\(8),
	datac => \State|oreg|ALT_INV_out\(2),
	datad => \State|oreg|ALT_INV_out\(5),
	datae => \State|xreg|ALT_INV_out\(2),
	dataf => \State|xreg|ALT_INV_out\(8),
	combout => \Wins|win_line\(3));

-- Location: LABCELL_X29_Y2_N30
\Wins|win_line[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Wins|win_line\(0) = ( \State|xreg|out\(8) & ( \State|oreg|out\(7) & ( (!\State|oreg|out\(6) & (\State|xreg|out\(7) & (\State|xreg|out\(6)))) # (\State|oreg|out\(6) & (((\State|xreg|out\(7) & \State|xreg|out\(6))) # (\State|oreg|out\(8)))) ) ) ) # ( 
-- !\State|xreg|out\(8) & ( \State|oreg|out\(7) & ( (\State|oreg|out\(6) & \State|oreg|out\(8)) ) ) ) # ( \State|xreg|out\(8) & ( !\State|oreg|out\(7) & ( (\State|xreg|out\(7) & \State|xreg|out\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000010101010000001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|oreg|ALT_INV_out\(6),
	datab => \State|xreg|ALT_INV_out\(7),
	datac => \State|xreg|ALT_INV_out\(6),
	datad => \State|oreg|ALT_INV_out\(8),
	datae => \State|xreg|ALT_INV_out\(8),
	dataf => \State|oreg|ALT_INV_out\(7),
	combout => \Wins|win_line\(0));

-- Location: LABCELL_X30_Y3_N0
\Wins|win_line[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Wins|win_line\(2) = ( \State|xreg|out\(1) & ( \State|xreg|out\(0) & ( ((\State|oreg|out\(1) & (\State|oreg|out\(0) & \State|oreg|out\(2)))) # (\State|xreg|out\(2)) ) ) ) # ( !\State|xreg|out\(1) & ( \State|xreg|out\(0) & ( (\State|oreg|out\(1) & 
-- (\State|oreg|out\(0) & \State|oreg|out\(2))) ) ) ) # ( \State|xreg|out\(1) & ( !\State|xreg|out\(0) & ( (\State|oreg|out\(1) & (\State|oreg|out\(0) & \State|oreg|out\(2))) ) ) ) # ( !\State|xreg|out\(1) & ( !\State|xreg|out\(0) & ( (\State|oreg|out\(1) & 
-- (\State|oreg|out\(0) & \State|oreg|out\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|oreg|ALT_INV_out\(1),
	datab => \State|oreg|ALT_INV_out\(0),
	datac => \State|oreg|ALT_INV_out\(2),
	datad => \State|xreg|ALT_INV_out\(2),
	datae => \State|xreg|ALT_INV_out\(1),
	dataf => \State|xreg|ALT_INV_out\(0),
	combout => \Wins|win_line\(2));

-- Location: LABCELL_X31_Y5_N48
\Wins|win_line[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Wins|win_line\(1) = ( \State|oreg|out\(3) & ( \State|oreg|out\(4) & ( ((\State|xreg|out\(5) & (\State|xreg|out\(3) & \State|xreg|out\(4)))) # (\State|oreg|out\(5)) ) ) ) # ( !\State|oreg|out\(3) & ( \State|oreg|out\(4) & ( (\State|xreg|out\(5) & 
-- (\State|xreg|out\(3) & \State|xreg|out\(4))) ) ) ) # ( \State|oreg|out\(3) & ( !\State|oreg|out\(4) & ( (\State|xreg|out\(5) & (\State|xreg|out\(3) & \State|xreg|out\(4))) ) ) ) # ( !\State|oreg|out\(3) & ( !\State|oreg|out\(4) & ( (\State|xreg|out\(5) & 
-- (\State|xreg|out\(3) & \State|xreg|out\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000001010011001100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|xreg|ALT_INV_out\(5),
	datab => \State|oreg|ALT_INV_out\(5),
	datac => \State|xreg|ALT_INV_out\(3),
	datad => \State|xreg|ALT_INV_out\(4),
	datae => \State|oreg|ALT_INV_out\(3),
	dataf => \State|oreg|ALT_INV_out\(4),
	combout => \Wins|win_line\(1));

-- Location: LABCELL_X29_Y2_N6
\Wins|win_line[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Wins|win_line\(4) = ( \State|xreg|out\(4) & ( \State|oreg|out\(4) & ( (!\State|xreg|out\(1) & (((\State|oreg|out\(1) & \State|oreg|out\(7))))) # (\State|xreg|out\(1) & (((\State|oreg|out\(1) & \State|oreg|out\(7))) # (\State|xreg|out\(7)))) ) ) ) # ( 
-- !\State|xreg|out\(4) & ( \State|oreg|out\(4) & ( (\State|oreg|out\(1) & \State|oreg|out\(7)) ) ) ) # ( \State|xreg|out\(4) & ( !\State|oreg|out\(4) & ( (\State|xreg|out\(1) & \State|xreg|out\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010001000100000000000011110001000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|xreg|ALT_INV_out\(1),
	datab => \State|xreg|ALT_INV_out\(7),
	datac => \State|oreg|ALT_INV_out\(1),
	datad => \State|oreg|ALT_INV_out\(7),
	datae => \State|xreg|ALT_INV_out\(4),
	dataf => \State|oreg|ALT_INV_out\(4),
	combout => \Wins|win_line\(4));

-- Location: LABCELL_X29_Y2_N42
\WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = ( !\Wins|win_line\(4) & ( (!\Wins|win_line\(3) & (!\Wins|win_line\(0) & (!\Wins|win_line\(2) & !\Wins|win_line\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Wins|ALT_INV_win_line\(3),
	datab => \Wins|ALT_INV_win_line\(0),
	datac => \Wins|ALT_INV_win_line\(2),
	datad => \Wins|ALT_INV_win_line\(1),
	dataf => \Wins|ALT_INV_win_line\(4),
	combout => \WideOr0~0_combout\);

-- Location: LABCELL_X29_Y3_N0
\Wins|win_line[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Wins|win_line\(6) = ( \State|xreg|out\(4) & ( \State|oreg|out\(4) & ( (!\State|xreg|out\(0) & (\State|oreg|out\(8) & ((\State|oreg|out\(0))))) # (\State|xreg|out\(0) & (((\State|oreg|out\(8) & \State|oreg|out\(0))) # (\State|xreg|out\(8)))) ) ) ) # ( 
-- !\State|xreg|out\(4) & ( \State|oreg|out\(4) & ( (\State|oreg|out\(8) & \State|oreg|out\(0)) ) ) ) # ( \State|xreg|out\(4) & ( !\State|oreg|out\(4) & ( (\State|xreg|out\(0) & \State|xreg|out\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000001100110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|xreg|ALT_INV_out\(0),
	datab => \State|oreg|ALT_INV_out\(8),
	datac => \State|xreg|ALT_INV_out\(8),
	datad => \State|oreg|ALT_INV_out\(0),
	datae => \State|xreg|ALT_INV_out\(4),
	dataf => \State|oreg|ALT_INV_out\(4),
	combout => \Wins|win_line\(6));

-- Location: LABCELL_X31_Y2_N21
\State|Add19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|Add19~0_combout\ = !\State|Add22~0_combout\ $ (!\State|Add17~0_combout\ $ (!\State|Add20~0_combout\ $ (!\State|Add18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|ALT_INV_Add22~0_combout\,
	datab => \State|ALT_INV_Add17~0_combout\,
	datac => \State|ALT_INV_Add20~0_combout\,
	datad => \State|ALT_INV_Add18~0_combout\,
	combout => \State|Add19~0_combout\);

-- Location: LABCELL_X31_Y3_N0
\Wins|win_line[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Wins|win_line\(5) = ( \State|xreg|out\(0) & ( \State|xreg|out\(6) & ( ((\State|oreg|out\(3) & (\State|oreg|out\(6) & \State|oreg|out\(0)))) # (\State|xreg|out\(3)) ) ) ) # ( !\State|xreg|out\(0) & ( \State|xreg|out\(6) & ( (\State|oreg|out\(3) & 
-- (\State|oreg|out\(6) & \State|oreg|out\(0))) ) ) ) # ( \State|xreg|out\(0) & ( !\State|xreg|out\(6) & ( (\State|oreg|out\(3) & (\State|oreg|out\(6) & \State|oreg|out\(0))) ) ) ) # ( !\State|xreg|out\(0) & ( !\State|xreg|out\(6) & ( (\State|oreg|out\(3) & 
-- (\State|oreg|out\(6) & \State|oreg|out\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|oreg|ALT_INV_out\(3),
	datab => \State|oreg|ALT_INV_out\(6),
	datac => \State|oreg|ALT_INV_out\(0),
	datad => \State|xreg|ALT_INV_out\(3),
	datae => \State|xreg|ALT_INV_out\(0),
	dataf => \State|xreg|ALT_INV_out\(6),
	combout => \Wins|win_line\(5));

-- Location: LABCELL_X31_Y3_N36
\Wins|win_line[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Wins|win_line\(7) = ( \State|xreg|out\(2) & ( \State|oreg|out\(4) & ( (!\State|oreg|out\(2) & (((\State|xreg|out\(6) & \State|xreg|out\(4))))) # (\State|oreg|out\(2) & (((\State|xreg|out\(6) & \State|xreg|out\(4))) # (\State|oreg|out\(6)))) ) ) ) # ( 
-- !\State|xreg|out\(2) & ( \State|oreg|out\(4) & ( (\State|oreg|out\(2) & \State|oreg|out\(6)) ) ) ) # ( \State|xreg|out\(2) & ( !\State|oreg|out\(4) & ( (\State|xreg|out\(6) & \State|xreg|out\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100010001000100010001000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|oreg|ALT_INV_out\(2),
	datab => \State|oreg|ALT_INV_out\(6),
	datac => \State|xreg|ALT_INV_out\(6),
	datad => \State|xreg|ALT_INV_out\(4),
	datae => \State|xreg|ALT_INV_out\(2),
	dataf => \State|oreg|ALT_INV_out\(4),
	combout => \Wins|win_line\(7));

-- Location: LABCELL_X31_Y3_N15
\WideOr0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~1_combout\ = (!\Wins|win_line\(5) & !\Wins|win_line\(7))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Wins|ALT_INV_win_line\(5),
	datad => \Wins|ALT_INV_win_line\(7),
	combout => \WideOr0~1_combout\);

-- Location: LABCELL_X31_Y2_N48
\State|x_update~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|x_update~4_combout\ = ( \State|Add19~0_combout\ & ( \WideOr0~1_combout\ & ( (\WideOr0~0_combout\ & (!\Wins|win_line\(6) & ((!\State|Add23~0_combout\) # (!\State|Add19~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|ALT_INV_Add23~0_combout\,
	datab => \ALT_INV_WideOr0~0_combout\,
	datac => \State|ALT_INV_Add19~1_combout\,
	datad => \Wins|ALT_INV_win_line\(6),
	datae => \State|ALT_INV_Add19~0_combout\,
	dataf => \ALT_INV_WideOr0~1_combout\,
	combout => \State|x_update~4_combout\);

-- Location: LABCELL_X33_Y2_N36
\State|x_next[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|x_next[8]~8_combout\ = ( \State|xreg|out\(8) & ( \State|xmov|out\(8) ) ) # ( !\State|xreg|out\(8) & ( \State|xmov|out\(8) & ( (\State|x_update~4_combout\ & (\State|x_update~5_combout\ & (!\State|LessThan0~1_combout\ & \State|x_update~3_combout\))) 
-- ) ) ) # ( \State|xreg|out\(8) & ( !\State|xmov|out\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|ALT_INV_x_update~4_combout\,
	datab => \State|ALT_INV_x_update~5_combout\,
	datac => \State|ALT_INV_LessThan0~1_combout\,
	datad => \State|ALT_INV_x_update~3_combout\,
	datae => \State|xreg|ALT_INV_out\(8),
	dataf => \State|xmov|ALT_INV_out\(8),
	combout => \State|x_next[8]~8_combout\);

-- Location: FF_X33_Y2_N38
\State|xreg|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \State|x_next[8]~8_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State|xreg|out\(8));

-- Location: LABCELL_X33_Y3_N21
\GameLogic|blockx|cout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|blockx|cout[0]~0_combout\ = ( \State|xreg|out\(2) & ( ((\State|xreg|out\(6) & \State|xreg|out\(3))) # (\State|xreg|out\(1)) ) ) # ( !\State|xreg|out\(2) & ( (\State|xreg|out\(6) & \State|xreg|out\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|xreg|ALT_INV_out\(6),
	datac => \State|xreg|ALT_INV_out\(1),
	datad => \State|xreg|ALT_INV_out\(3),
	dataf => \State|xreg|ALT_INV_out\(2),
	combout => \GameLogic|blockx|cout[0]~0_combout\);

-- Location: LABCELL_X33_Y3_N27
\GameLogic|blockx|cout[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|blockx|cout[0]~1_combout\ = ( !\GameLogic|blockx|topr|cout~0_combout\ & ( ((\State|xreg|out\(8) & \State|xreg|out\(4))) # (\GameLogic|blockx|cout[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|xreg|ALT_INV_out\(8),
	datac => \State|xreg|ALT_INV_out\(4),
	datad => \GameLogic|blockx|ALT_INV_cout[0]~0_combout\,
	dataf => \GameLogic|blockx|topr|ALT_INV_cout~0_combout\,
	combout => \GameLogic|blockx|cout[0]~1_combout\);

-- Location: MLABCELL_X34_Y3_N48
\GameLogic|comb|ra|g[8]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|comb|ra|g[8]~9_combout\ = ( !\GameLogic|blockx|cout[8]~9_combout\ & ( !\GameLogic|adjacentx|WideNor0~4_combout\ & ( (!\GameLogic|blockx|cout[4]~3_combout\ & (!\GameLogic|blockx|cout[5]~4_combout\ & (!\GameLogic|blockx|cout[7]~7_combout\ & 
-- !\GameLogic|blockx|cout[6]~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|blockx|ALT_INV_cout[4]~3_combout\,
	datab => \GameLogic|blockx|ALT_INV_cout[5]~4_combout\,
	datac => \GameLogic|blockx|ALT_INV_cout[7]~7_combout\,
	datad => \GameLogic|blockx|ALT_INV_cout[6]~6_combout\,
	datae => \GameLogic|blockx|ALT_INV_cout[8]~9_combout\,
	dataf => \GameLogic|adjacentx|ALT_INV_WideNor0~4_combout\,
	combout => \GameLogic|comb|ra|g[8]~9_combout\);

-- Location: MLABCELL_X34_Y4_N9
\GameLogic|comb|ra|g[8]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|comb|ra|g[8]~3_combout\ = ( \GameLogic|comb|ra|g[26]~1_combout\ & ( \GameLogic|comb|ra|g[8]~9_combout\ & ( (!\GameLogic|blockx|cout[0]~1_combout\ & (!\GameLogic|blockx|cout[2]~11_combout\ & (!\GameLogic|blockx|cout\(3) & 
-- !\GameLogic|blockx|cout\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|blockx|ALT_INV_cout[0]~1_combout\,
	datab => \GameLogic|blockx|ALT_INV_cout[2]~11_combout\,
	datac => \GameLogic|blockx|ALT_INV_cout\(3),
	datad => \GameLogic|blockx|ALT_INV_cout\(1),
	datae => \GameLogic|comb|ra|ALT_INV_g[26]~1_combout\,
	dataf => \GameLogic|comb|ra|ALT_INV_g[8]~9_combout\,
	combout => \GameLogic|comb|ra|g[8]~3_combout\);

-- Location: LABCELL_X33_Y4_N21
\GameLogic|comb|out[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|comb|out\(8) = ( !\GameLogic|winx|cout[8]~13_combout\ & ( (!\GameLogic|comb|ra|g[8]~3_combout\ & (((!\GameLogic|blockx|cout[8]~9_combout\) # (!\GameLogic|comb|ra|g[26]~1_combout\)))) # (\GameLogic|comb|ra|g[8]~3_combout\ & 
-- (!\GameLogic|emptyx|ra|g[4]~2_combout\ & ((!\GameLogic|blockx|cout[8]~9_combout\) # (!\GameLogic|comb|ra|g[26]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011100000111011101110000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|comb|ra|ALT_INV_g[8]~3_combout\,
	datab => \GameLogic|emptyx|ra|ALT_INV_g[4]~2_combout\,
	datac => \GameLogic|blockx|ALT_INV_cout[8]~9_combout\,
	datad => \GameLogic|comb|ra|ALT_INV_g[26]~1_combout\,
	dataf => \GameLogic|winx|ALT_INV_cout[8]~13_combout\,
	combout => \GameLogic|comb|out\(8));

-- Location: LABCELL_X30_Y2_N51
\State|o_next[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|o_next[8]~8_combout\ = ( \State|o_update~combout\ & ( (!\GameLogic|comb|out\(8)) # (\State|oreg|out\(8)) ) ) # ( !\State|o_update~combout\ & ( \State|oreg|out\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GameLogic|comb|ALT_INV_out\(8),
	datad => \State|oreg|ALT_INV_out\(8),
	dataf => \State|ALT_INV_o_update~combout\,
	combout => \State|o_next[8]~8_combout\);

-- Location: FF_X30_Y2_N53
\State|oreg|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \State|o_next[8]~8_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State|oreg|out\(8));

-- Location: LABCELL_X33_Y2_N42
\GameLogic|winx|cout[8]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|winx|cout[8]~5_combout\ = (!\State|oreg|out\(8) & !\State|xreg|out\(8))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \State|oreg|ALT_INV_out\(8),
	datac => \State|xreg|ALT_INV_out\(8),
	combout => \GameLogic|winx|cout[8]~5_combout\);

-- Location: MLABCELL_X34_Y4_N12
\GameLogic|comb|out[1]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|comb|out[1]~12_combout\ = ( \GameLogic|comb|ra|g[31]~0_combout\ & ( (!\GameLogic|winx|cout[4]~7_combout\ & (!\GameLogic|winx|cout[2]~6_combout\ & (!\GameLogic|winx|cout\(3) & \GameLogic|winx|cout\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|winx|ALT_INV_cout[4]~7_combout\,
	datab => \GameLogic|winx|ALT_INV_cout[2]~6_combout\,
	datac => \GameLogic|winx|ALT_INV_cout\(3),
	datad => \GameLogic|winx|ALT_INV_cout\(1),
	dataf => \GameLogic|comb|ra|ALT_INV_g[31]~0_combout\,
	combout => \GameLogic|comb|out[1]~12_combout\);

-- Location: MLABCELL_X34_Y4_N24
\GameLogic|comb|out[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|comb|out[1]~1_combout\ = ( \GameLogic|comb|ra|g[26]~1_combout\ & ( \GameLogic|blockx|cout[2]~11_combout\ & ( !\GameLogic|comb|out[1]~12_combout\ ) ) ) # ( !\GameLogic|comb|ra|g[26]~1_combout\ & ( \GameLogic|blockx|cout[2]~11_combout\ & ( 
-- !\GameLogic|comb|out[1]~12_combout\ ) ) ) # ( \GameLogic|comb|ra|g[26]~1_combout\ & ( !\GameLogic|blockx|cout[2]~11_combout\ & ( (!\GameLogic|comb|out[1]~12_combout\ & ((!\GameLogic|blockx|cout\(1)) # ((!\GameLogic|comb|out[1]~13_combout\) # 
-- (\GameLogic|blockx|cout\(3))))) ) ) ) # ( !\GameLogic|comb|ra|g[26]~1_combout\ & ( !\GameLogic|blockx|cout[2]~11_combout\ & ( !\GameLogic|comb|out[1]~12_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111110110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|blockx|ALT_INV_cout\(1),
	datab => \GameLogic|blockx|ALT_INV_cout\(3),
	datac => \GameLogic|comb|ALT_INV_out[1]~13_combout\,
	datad => \GameLogic|comb|ALT_INV_out[1]~12_combout\,
	datae => \GameLogic|comb|ra|ALT_INV_g[26]~1_combout\,
	dataf => \GameLogic|blockx|ALT_INV_cout[2]~11_combout\,
	combout => \GameLogic|comb|out[1]~1_combout\);

-- Location: LABCELL_X33_Y4_N54
\GameLogic|comb|out[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|comb|out\(1) = ( \GameLogic|comb|ra|c[5]~0_combout\ & ( \GameLogic|winx|topr|cout[1]~0_combout\ & ( \GameLogic|comb|out[1]~1_combout\ ) ) ) # ( !\GameLogic|comb|ra|c[5]~0_combout\ & ( \GameLogic|winx|topr|cout[1]~0_combout\ & ( 
-- (\GameLogic|comb|out[1]~1_combout\ & (((!\GameLogic|emptyx|ra|g[4]~1_combout\) # (!\GameLogic|comb|ra|g[8]~3_combout\)) # (\GameLogic|winx|cout[8]~5_combout\))) ) ) ) # ( \GameLogic|comb|ra|c[5]~0_combout\ & ( !\GameLogic|winx|topr|cout[1]~0_combout\ & ( 
-- \GameLogic|comb|out[1]~1_combout\ ) ) ) # ( !\GameLogic|comb|ra|c[5]~0_combout\ & ( !\GameLogic|winx|topr|cout[1]~0_combout\ & ( \GameLogic|comb|out[1]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|winx|ALT_INV_cout[8]~5_combout\,
	datab => \GameLogic|emptyx|ra|ALT_INV_g[4]~1_combout\,
	datac => \GameLogic|comb|ra|ALT_INV_g[8]~3_combout\,
	datad => \GameLogic|comb|ALT_INV_out[1]~1_combout\,
	datae => \GameLogic|comb|ra|ALT_INV_c[5]~0_combout\,
	dataf => \GameLogic|winx|topr|ALT_INV_cout[1]~0_combout\,
	combout => \GameLogic|comb|out\(1));

-- Location: LABCELL_X33_Y5_N9
\State|o_new[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|o_new\(3) = (!\GameLogic|comb|out\(3) & !\State|oreg|out\(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|comb|ALT_INV_out\(3),
	datab => \State|oreg|ALT_INV_out\(3),
	combout => \State|o_new\(3));

-- Location: LABCELL_X33_Y5_N24
\State|o_new[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|o_new\(2) = ( \GameLogic|comb|out\(2) & ( !\State|oreg|out\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \State|oreg|ALT_INV_out\(2),
	dataf => \GameLogic|comb|ALT_INV_out\(2),
	combout => \State|o_new\(2));

-- Location: LABCELL_X33_Y4_N36
\State|o_new[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|o_new\(4) = ( \GameLogic|comb|ra|c[5]~0_combout\ & ( \GameLogic|comb|out[4]~3_combout\ & ( !\State|oreg|out\(4) ) ) ) # ( !\GameLogic|comb|ra|c[5]~0_combout\ & ( \GameLogic|comb|out[4]~3_combout\ & ( !\State|oreg|out\(4) ) ) ) # ( 
-- !\GameLogic|comb|ra|c[5]~0_combout\ & ( !\GameLogic|comb|out[4]~3_combout\ & ( (\GameLogic|comb|ra|g[8]~3_combout\ & (!\State|xreg|out\(4) & (!\State|oreg|out\(4) & !\GameLogic|emptyx|ra|g[4]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|comb|ra|ALT_INV_g[8]~3_combout\,
	datab => \State|xreg|ALT_INV_out\(4),
	datac => \State|oreg|ALT_INV_out\(4),
	datad => \GameLogic|emptyx|ra|ALT_INV_g[4]~2_combout\,
	datae => \GameLogic|comb|ra|ALT_INV_c[5]~0_combout\,
	dataf => \GameLogic|comb|ALT_INV_out[4]~3_combout\,
	combout => \State|o_new\(4));

-- Location: MLABCELL_X34_Y4_N42
\GameLogic|comb|ra|g[27]\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|comb|ra|g\(27) = ( !\GameLogic|winx|cout\(3) & ( \GameLogic|comb|ra|g[31]~0_combout\ & ( (!\GameLogic|winx|cout\(1) & (!\GameLogic|winx|cout[2]~6_combout\ & (!\GameLogic|winx|cout[4]~7_combout\ & \GameLogic|winx|cout[0]~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|winx|ALT_INV_cout\(1),
	datab => \GameLogic|winx|ALT_INV_cout[2]~6_combout\,
	datac => \GameLogic|winx|ALT_INV_cout[4]~7_combout\,
	datad => \GameLogic|winx|ALT_INV_cout[0]~12_combout\,
	datae => \GameLogic|winx|ALT_INV_cout\(3),
	dataf => \GameLogic|comb|ra|ALT_INV_g[31]~0_combout\,
	combout => \GameLogic|comb|ra|g\(27));

-- Location: MLABCELL_X34_Y3_N51
\GameLogic|comb|out[0]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|comb|out[0]~11_combout\ = ( !\GameLogic|blockx|cout[2]~11_combout\ & ( !\GameLogic|blockx|cout[8]~9_combout\ & ( (!\GameLogic|blockx|cout[4]~3_combout\ & (!\GameLogic|blockx|cout[5]~4_combout\ & (!\GameLogic|blockx|cout[6]~6_combout\ & 
-- !\GameLogic|blockx|cout[7]~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|blockx|ALT_INV_cout[4]~3_combout\,
	datab => \GameLogic|blockx|ALT_INV_cout[5]~4_combout\,
	datac => \GameLogic|blockx|ALT_INV_cout[6]~6_combout\,
	datad => \GameLogic|blockx|ALT_INV_cout[7]~7_combout\,
	datae => \GameLogic|blockx|ALT_INV_cout[2]~11_combout\,
	dataf => \GameLogic|blockx|ALT_INV_cout[8]~9_combout\,
	combout => \GameLogic|comb|out[0]~11_combout\);

-- Location: MLABCELL_X34_Y4_N18
\GameLogic|comb|out[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|comb|out[0]~0_combout\ = ( \GameLogic|comb|ra|g[26]~1_combout\ & ( \GameLogic|comb|out[0]~11_combout\ & ( (!\GameLogic|comb|ra|g\(27) & (((!\GameLogic|blockx|cout[0]~1_combout\) # (\GameLogic|blockx|cout\(3))) # (\GameLogic|blockx|cout\(1)))) ) 
-- ) ) # ( !\GameLogic|comb|ra|g[26]~1_combout\ & ( \GameLogic|comb|out[0]~11_combout\ & ( !\GameLogic|comb|ra|g\(27) ) ) ) # ( \GameLogic|comb|ra|g[26]~1_combout\ & ( !\GameLogic|comb|out[0]~11_combout\ & ( !\GameLogic|comb|ra|g\(27) ) ) ) # ( 
-- !\GameLogic|comb|ra|g[26]~1_combout\ & ( !\GameLogic|comb|out[0]~11_combout\ & ( !\GameLogic|comb|ra|g\(27) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|blockx|ALT_INV_cout\(1),
	datab => \GameLogic|blockx|ALT_INV_cout\(3),
	datac => \GameLogic|blockx|ALT_INV_cout[0]~1_combout\,
	datad => \GameLogic|comb|ra|ALT_INV_g\(27),
	datae => \GameLogic|comb|ra|ALT_INV_g[26]~1_combout\,
	dataf => \GameLogic|comb|ALT_INV_out[0]~11_combout\,
	combout => \GameLogic|comb|out[0]~0_combout\);

-- Location: LABCELL_X33_Y4_N48
\GameLogic|comb|out[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|comb|out\(0) = ( \GameLogic|blockx|topr|cout~0_combout\ & ( \GameLogic|comb|out[0]~0_combout\ ) ) # ( !\GameLogic|blockx|topr|cout~0_combout\ & ( \GameLogic|comb|out[0]~0_combout\ & ( (!\GameLogic|comb|ra|g[8]~3_combout\) # 
-- (((\GameLogic|emptyx|ra|g[4]~2_combout\) # (\GameLogic|winx|cout[4]~1_combout\)) # (\GameLogic|comb|ra|c[5]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|comb|ra|ALT_INV_g[8]~3_combout\,
	datab => \GameLogic|comb|ra|ALT_INV_c[5]~0_combout\,
	datac => \GameLogic|winx|ALT_INV_cout[4]~1_combout\,
	datad => \GameLogic|emptyx|ra|ALT_INV_g[4]~2_combout\,
	datae => \GameLogic|blockx|topr|ALT_INV_cout~0_combout\,
	dataf => \GameLogic|comb|ALT_INV_out[0]~0_combout\,
	combout => \GameLogic|comb|out\(0));

-- Location: LABCELL_X33_Y5_N27
\State|o_new[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|o_new\(0) = ( !\GameLogic|comb|out\(0) & ( !\State|oreg|out\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|oreg|ALT_INV_out\(0),
	dataf => \GameLogic|comb|ALT_INV_out\(0),
	combout => \State|o_new\(0));

-- Location: LABCELL_X33_Y5_N18
\State|Add31~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|Add31~3_combout\ = ( \State|o_new\(0) & ( \State|oreg|out\(1) & ( (!\State|o_new\(3) & (!\State|o_new\(2) & !\State|o_new\(4))) # (\State|o_new\(3) & (\State|o_new\(2) & \State|o_new\(4))) ) ) ) # ( !\State|o_new\(0) & ( \State|oreg|out\(1) & ( 
-- (!\State|o_new\(3) & ((!\State|o_new\(2)) # (!\State|o_new\(4)))) # (\State|o_new\(3) & (!\State|o_new\(2) & !\State|o_new\(4))) ) ) ) # ( \State|o_new\(0) & ( !\State|oreg|out\(1) & ( (!\GameLogic|comb|out\(1) & ((!\State|o_new\(3) & (\State|o_new\(2) & 
-- \State|o_new\(4))) # (\State|o_new\(3) & ((\State|o_new\(4)) # (\State|o_new\(2)))))) # (\GameLogic|comb|out\(1) & ((!\State|o_new\(3) & (!\State|o_new\(2) & !\State|o_new\(4))) # (\State|o_new\(3) & (\State|o_new\(2) & \State|o_new\(4))))) ) ) ) # ( 
-- !\State|o_new\(0) & ( !\State|oreg|out\(1) & ( (!\GameLogic|comb|out\(1) & ((!\State|o_new\(3) & (!\State|o_new\(2) & !\State|o_new\(4))) # (\State|o_new\(3) & (\State|o_new\(2) & \State|o_new\(4))))) # (\GameLogic|comb|out\(1) & ((!\State|o_new\(3) & 
-- ((!\State|o_new\(2)) # (!\State|o_new\(4)))) # (\State|o_new\(3) & (!\State|o_new\(2) & !\State|o_new\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010001000010010000100010101111111100110000001100000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|comb|ALT_INV_out\(1),
	datab => \State|ALT_INV_o_new\(3),
	datac => \State|ALT_INV_o_new\(2),
	datad => \State|ALT_INV_o_new\(4),
	datae => \State|ALT_INV_o_new\(0),
	dataf => \State|oreg|ALT_INV_out\(1),
	combout => \State|Add31~3_combout\);

-- Location: LABCELL_X33_Y4_N24
\State|o_new[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|o_new\(8) = ( \GameLogic|comb|ra|g[8]~3_combout\ & ( !\State|oreg|out\(8) & ( (((\GameLogic|comb|ra|g[26]~1_combout\ & \GameLogic|blockx|cout[8]~9_combout\)) # (\GameLogic|emptyx|ra|g[4]~2_combout\)) # (\GameLogic|winx|cout[8]~13_combout\) ) ) ) # 
-- ( !\GameLogic|comb|ra|g[8]~3_combout\ & ( !\State|oreg|out\(8) & ( ((\GameLogic|comb|ra|g[26]~1_combout\ & \GameLogic|blockx|cout[8]~9_combout\)) # (\GameLogic|winx|cout[8]~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|comb|ra|ALT_INV_g[26]~1_combout\,
	datab => \GameLogic|blockx|ALT_INV_cout[8]~9_combout\,
	datac => \GameLogic|winx|ALT_INV_cout[8]~13_combout\,
	datad => \GameLogic|emptyx|ra|ALT_INV_g[4]~2_combout\,
	datae => \GameLogic|comb|ra|ALT_INV_g[8]~3_combout\,
	dataf => \State|oreg|ALT_INV_out\(8),
	combout => \State|o_new\(8));

-- Location: LABCELL_X33_Y4_N18
\State|o_new[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|o_new\(7) = ( !\State|oreg|out\(7) & ( ((\GameLogic|comb|ra|g[8]~3_combout\ & (!\GameLogic|emptyx|ra|g[4]~2_combout\ & \GameLogic|emptyx|ra|g[0]~6_combout\))) # (\GameLogic|comb|out[7]~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101001111000011110100111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|comb|ra|ALT_INV_g[8]~3_combout\,
	datab => \GameLogic|emptyx|ra|ALT_INV_g[4]~2_combout\,
	datac => \GameLogic|comb|ALT_INV_out[7]~6_combout\,
	datad => \GameLogic|emptyx|ra|ALT_INV_g[0]~6_combout\,
	dataf => \State|oreg|ALT_INV_out\(7),
	combout => \State|o_new\(7));

-- Location: LABCELL_X30_Y2_N15
\State|o_new[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|o_new\(6) = ( !\GameLogic|comb|out\(6) & ( !\State|oreg|out\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \State|oreg|ALT_INV_out\(6),
	dataf => \GameLogic|comb|ALT_INV_out\(6),
	combout => \State|o_new\(6));

-- Location: LABCELL_X33_Y5_N12
\State|Add31~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|Add31~2_combout\ = ( \State|o_new\(6) & ( \GameLogic|comb|out[5]~5_combout\ & ( (!\State|o_new\(8) & (!\State|o_new\(7) & ((!\GameLogic|comb|ra|g[14]~4_combout\) # (\State|oreg|out\(5))))) # (\State|o_new\(8) & (\GameLogic|comb|ra|g[14]~4_combout\ 
-- & (!\State|oreg|out\(5) & \State|o_new\(7)))) ) ) ) # ( !\State|o_new\(6) & ( \GameLogic|comb|out[5]~5_combout\ & ( (!\State|o_new\(8) & ((!\GameLogic|comb|ra|g[14]~4_combout\) # ((!\State|o_new\(7)) # (\State|oreg|out\(5))))) # (\State|o_new\(8) & 
-- (!\State|o_new\(7) & ((!\GameLogic|comb|ra|g[14]~4_combout\) # (\State|oreg|out\(5))))) ) ) ) # ( \State|o_new\(6) & ( !\GameLogic|comb|out[5]~5_combout\ & ( (!\State|oreg|out\(5) & (\State|o_new\(8) & \State|o_new\(7))) # (\State|oreg|out\(5) & 
-- (!\State|o_new\(8) & !\State|o_new\(7))) ) ) ) # ( !\State|o_new\(6) & ( !\GameLogic|comb|out[5]~5_combout\ & ( (!\State|oreg|out\(5) & (!\State|o_new\(8) & !\State|o_new\(7))) # (\State|oreg|out\(5) & ((!\State|o_new\(8)) # (!\State|o_new\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100110000001100000000110011111011101100001011000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|comb|ra|ALT_INV_g[14]~4_combout\,
	datab => \State|oreg|ALT_INV_out\(5),
	datac => \State|ALT_INV_o_new\(8),
	datad => \State|ALT_INV_o_new\(7),
	datae => \State|ALT_INV_o_new\(6),
	dataf => \GameLogic|comb|ALT_INV_out[5]~5_combout\,
	combout => \State|Add31~2_combout\);

-- Location: LABCELL_X33_Y5_N36
\State|Add31~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|Add31~1_combout\ = ( \State|o_new\(6) & ( \GameLogic|comb|out[5]~5_combout\ & ( (\GameLogic|comb|ra|g[14]~4_combout\ & (!\State|oreg|out\(5) & (\State|o_new\(8) & \State|o_new\(7)))) ) ) ) # ( \State|o_new\(6) & ( !\GameLogic|comb|out[5]~5_combout\ 
-- & ( (!\State|oreg|out\(5) & (\State|o_new\(8) & \State|o_new\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000110000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|comb|ra|ALT_INV_g[14]~4_combout\,
	datab => \State|oreg|ALT_INV_out\(5),
	datac => \State|ALT_INV_o_new\(8),
	datad => \State|ALT_INV_o_new\(7),
	datae => \State|ALT_INV_o_new\(6),
	dataf => \GameLogic|comb|ALT_INV_out[5]~5_combout\,
	combout => \State|Add31~1_combout\);

-- Location: LABCELL_X33_Y5_N51
\State|Add30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|Add30~0_combout\ = ( \State|o_new\(8) & ( !\State|o_new\(7) ) ) # ( !\State|o_new\(8) & ( \State|o_new\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \State|ALT_INV_o_new\(7),
	dataf => \State|ALT_INV_o_new\(8),
	combout => \State|Add30~0_combout\);

-- Location: LABCELL_X33_Y5_N6
\State|Add25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|Add25~0_combout\ = ( \GameLogic|comb|out\(2) & ( !\State|oreg|out\(2) $ (!\State|o_new\(4) $ (((\State|oreg|out\(3)) # (\GameLogic|comb|out\(3))))) ) ) # ( !\GameLogic|comb|out\(2) & ( !\State|o_new\(4) $ (((\State|oreg|out\(3)) # 
-- (\GameLogic|comb|out\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100001110111100010000111011101111000100001110111100010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|comb|ALT_INV_out\(3),
	datab => \State|oreg|ALT_INV_out\(3),
	datac => \State|oreg|ALT_INV_out\(2),
	datad => \State|ALT_INV_o_new\(4),
	dataf => \GameLogic|comb|ALT_INV_out\(2),
	combout => \State|Add25~0_combout\);

-- Location: LABCELL_X31_Y4_N42
\State|o_update~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|o_update~0_combout\ = ( \WideOr0~0_combout\ & ( \State|LessThan0~1_combout\ & ( (\WideOr0~1_combout\ & !\Wins|win_line\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr0~1_combout\,
	datac => \Wins|ALT_INV_win_line\(6),
	datae => \ALT_INV_WideOr0~0_combout\,
	dataf => \State|ALT_INV_LessThan0~1_combout\,
	combout => \State|o_update~0_combout\);

-- Location: LABCELL_X33_Y5_N42
\State|Add28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|Add28~0_combout\ = ( \State|o_new\(6) & ( \GameLogic|comb|ra|g[14]~4_combout\ & ( \State|oreg|out\(5) ) ) ) # ( !\State|o_new\(6) & ( \GameLogic|comb|ra|g[14]~4_combout\ & ( !\State|oreg|out\(5) ) ) ) # ( \State|o_new\(6) & ( 
-- !\GameLogic|comb|ra|g[14]~4_combout\ & ( (\GameLogic|comb|out[5]~5_combout\) # (\State|oreg|out\(5)) ) ) ) # ( !\State|o_new\(6) & ( !\GameLogic|comb|ra|g[14]~4_combout\ & ( (!\State|oreg|out\(5) & !\GameLogic|comb|out[5]~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000001100111111111111001100110011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \State|oreg|ALT_INV_out\(5),
	datad => \GameLogic|comb|ALT_INV_out[5]~5_combout\,
	datae => \State|ALT_INV_o_new\(6),
	dataf => \GameLogic|comb|ra|ALT_INV_g[14]~4_combout\,
	combout => \State|Add28~0_combout\);

-- Location: LABCELL_X33_Y5_N30
\State|Add24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|Add24~0_combout\ = ( \GameLogic|comb|out\(0) & ( (!\State|oreg|out\(1) & !\GameLogic|comb|out\(1)) ) ) # ( !\GameLogic|comb|out\(0) & ( !\State|oreg|out\(0) $ (((!\State|oreg|out\(1) & !\GameLogic|comb|out\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111000000001111111100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \State|oreg|ALT_INV_out\(1),
	datac => \GameLogic|comb|ALT_INV_out\(1),
	datad => \State|oreg|ALT_INV_out\(0),
	dataf => \GameLogic|comb|ALT_INV_out\(0),
	combout => \State|Add24~0_combout\);

-- Location: LABCELL_X33_Y5_N48
\State|o_update~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|o_update~1_combout\ = ( \State|Add24~0_combout\ & ( (\State|o_update~0_combout\ & (!\State|Add30~0_combout\ $ (!\State|Add25~0_combout\ $ (!\State|Add28~0_combout\)))) ) ) # ( !\State|Add24~0_combout\ & ( (\State|o_update~0_combout\ & 
-- (!\State|Add30~0_combout\ $ (!\State|Add25~0_combout\ $ (\State|Add28~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000001001000001100000100100001001000001100000100100000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|ALT_INV_Add30~0_combout\,
	datab => \State|ALT_INV_Add25~0_combout\,
	datac => \State|ALT_INV_o_update~0_combout\,
	datad => \State|ALT_INV_Add28~0_combout\,
	dataf => \State|ALT_INV_Add24~0_combout\,
	combout => \State|o_update~1_combout\);

-- Location: LABCELL_X33_Y5_N0
\State|Add31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|Add31~0_combout\ = ( \State|o_new\(0) & ( \State|oreg|out\(1) & ( (\State|o_new\(3) & (\State|o_new\(2) & \State|o_new\(4))) ) ) ) # ( \State|o_new\(0) & ( !\State|oreg|out\(1) & ( (!\GameLogic|comb|out\(1) & ((!\State|o_new\(3) & (\State|o_new\(2) 
-- & \State|o_new\(4))) # (\State|o_new\(3) & ((\State|o_new\(4)) # (\State|o_new\(2)))))) # (\GameLogic|comb|out\(1) & (\State|o_new\(3) & (\State|o_new\(2) & \State|o_new\(4)))) ) ) ) # ( !\State|o_new\(0) & ( !\State|oreg|out\(1) & ( 
-- (!\GameLogic|comb|out\(1) & (\State|o_new\(3) & (\State|o_new\(2) & \State|o_new\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000100010101100000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GameLogic|comb|ALT_INV_out\(1),
	datab => \State|ALT_INV_o_new\(3),
	datac => \State|ALT_INV_o_new\(2),
	datad => \State|ALT_INV_o_new\(4),
	datae => \State|ALT_INV_o_new\(0),
	dataf => \State|oreg|ALT_INV_out\(1),
	combout => \State|Add31~0_combout\);

-- Location: LABCELL_X33_Y5_N33
\State|Add25~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|Add25~1_combout\ = ( \State|Add24~0_combout\ & ( (!\State|Add25~0_combout\ & (!\State|Add30~0_combout\ $ (!\State|Add28~0_combout\))) ) ) # ( !\State|Add24~0_combout\ & ( (\State|Add25~0_combout\ & (!\State|Add30~0_combout\ $ 
-- (!\State|Add28~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001010000101000000101000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|ALT_INV_Add30~0_combout\,
	datac => \State|ALT_INV_Add25~0_combout\,
	datad => \State|ALT_INV_Add28~0_combout\,
	dataf => \State|ALT_INV_Add24~0_combout\,
	combout => \State|Add25~1_combout\);

-- Location: LABCELL_X33_Y5_N54
\State|o_update\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|o_update~combout\ = ( !\State|Add31~0_combout\ & ( !\State|Add25~1_combout\ & ( (\State|Add31~3_combout\ & (\State|Add31~2_combout\ & (!\State|Add31~1_combout\ & \State|o_update~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|ALT_INV_Add31~3_combout\,
	datab => \State|ALT_INV_Add31~2_combout\,
	datac => \State|ALT_INV_Add31~1_combout\,
	datad => \State|ALT_INV_o_update~1_combout\,
	datae => \State|ALT_INV_Add31~0_combout\,
	dataf => \State|ALT_INV_Add25~1_combout\,
	combout => \State|o_update~combout\);

-- Location: LABCELL_X30_Y3_N30
\State|o_next[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \State|o_next[0]~0_combout\ = ((\State|o_update~combout\ & !\GameLogic|comb|out\(0))) # (\State|oreg|out\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011111111010100001111111101010000111111110101000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|ALT_INV_o_update~combout\,
	datac => \GameLogic|comb|ALT_INV_out\(0),
	datad => \State|oreg|ALT_INV_out\(0),
	combout => \State|o_next[0]~0_combout\);

-- Location: FF_X30_Y3_N32
\State|oreg|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \State|o_next[0]~0_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State|oreg|out\(0));

-- Location: LABCELL_X30_Y3_N36
\GameLogic|blockx|topr|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GameLogic|blockx|topr|cout~0_combout\ = ( \State|xreg|out\(0) ) # ( !\State|xreg|out\(0) & ( \State|oreg|out\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \State|oreg|ALT_INV_out\(0),
	dataf => \State|xreg|ALT_INV_out\(0),
	combout => \GameLogic|blockx|topr|cout~0_combout\);

-- Location: PLLREFCLKSELECT_X0_Y21_N0
\GFX|FB|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT\ : cyclonev_pll_refclk_select
-- pragma translate_off
GENERIC MAP (
	pll_auto_clk_sw_en => "false",
	pll_clk_loss_edge => "both_edges",
	pll_clk_loss_sw_en => "false",
	pll_clk_sw_dly => 0,
	pll_clkin_0_src => "clk_0",
	pll_clkin_1_src => "ref_clk1",
	pll_manu_clk_sw_en => "false",
	pll_sw_refclk_src => "clk_0")
-- pragma translate_on
PORT MAP (
	clkin => \GFX|FB|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\,
	clkout => \GFX|FB|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	extswitchbuf => \GFX|FB|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\);

-- Location: FRACTIONALPLL_X0_Y15_N0
\GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL\ : cyclonev_fractional_pll
-- pragma translate_off
GENERIC MAP (
	dsm_accumulator_reset_value => 0,
	forcelock => "false",
	mimic_fbclk_type => "gclk_far",
	nreset_invert => "true",
	output_clock_frequency => "300.0 mhz",
	pll_atb => 0,
	pll_bwctrl => 4000,
	pll_cmp_buf_dly => "0 ps",
	pll_cp_comp => "true",
	pll_cp_current => 10,
	pll_ctrl_override_setting => "false",
	pll_dsm_dither => "disable",
	pll_dsm_out_sel => "disable",
	pll_dsm_reset => "false",
	pll_ecn_bypass => "false",
	pll_ecn_test_en => "false",
	pll_enable => "true",
	pll_fbclk_mux_1 => "glb",
	pll_fbclk_mux_2 => "fb_1",
	pll_fractional_carry_out => 32,
	pll_fractional_division => 1,
	pll_fractional_division_string => "'0'",
	pll_fractional_value_ready => "true",
	pll_lf_testen => "false",
	pll_lock_fltr_cfg => 25,
	pll_lock_fltr_test => "false",
	pll_m_cnt_bypass_en => "false",
	pll_m_cnt_coarse_dly => "0 ps",
	pll_m_cnt_fine_dly => "0 ps",
	pll_m_cnt_hi_div => 6,
	pll_m_cnt_in_src => "ph_mux_clk",
	pll_m_cnt_lo_div => 6,
	pll_m_cnt_odd_div_duty_en => "false",
	pll_m_cnt_ph_mux_prst => 0,
	pll_m_cnt_prst => 1,
	pll_n_cnt_bypass_en => "false",
	pll_n_cnt_coarse_dly => "0 ps",
	pll_n_cnt_fine_dly => "0 ps",
	pll_n_cnt_hi_div => 1,
	pll_n_cnt_lo_div => 1,
	pll_n_cnt_odd_div_duty_en => "false",
	pll_ref_buf_dly => "0 ps",
	pll_reg_boost => 0,
	pll_regulator_bypass => "false",
	pll_ripplecap_ctrl => 0,
	pll_slf_rst => "false",
	pll_tclk_mux_en => "false",
	pll_tclk_sel => "n_src",
	pll_test_enable => "false",
	pll_testdn_enable => "false",
	pll_testup_enable => "false",
	pll_unlock_fltr_cfg => 2,
	pll_vco_div => 2,
	pll_vco_ph0_en => "true",
	pll_vco_ph1_en => "true",
	pll_vco_ph2_en => "true",
	pll_vco_ph3_en => "true",
	pll_vco_ph4_en => "true",
	pll_vco_ph5_en => "true",
	pll_vco_ph6_en => "true",
	pll_vco_ph7_en => "true",
	pll_vctrl_test_voltage => 750,
	reference_clock_frequency => "50.0 mhz",
	vccd0g_atb => "disable",
	vccd0g_output => 0,
	vccd1g_atb => "disable",
	vccd1g_output => 0,
	vccm1g_tap => 2,
	vccr_pd => "false",
	vcodiv_override => "false",
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	coreclkfb => \GFX|FB|altera_pll_i|fboutclk_wire\(0),
	ecnc1test => \GFX|FB|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\,
	nresync => \ALT_INV_KEY[0]~input_o\,
	refclkin => \GFX|FB|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	shift => \GFX|FB|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftdonein => \GFX|FB|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \GFX|FB|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \GFX|FB|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	cntnen => \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	fbclk => \GFX|FB|altera_pll_i|fboutclk_wire\(0),
	tclk => \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	vcoph => \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\,
	mhi => \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\);

-- Location: PLLRECONFIG_X0_Y19_N0
\GFX|FB|altera_pll_i|general[0].gpll~PLL_RECONFIG\ : cyclonev_pll_reconfig
-- pragma translate_off
GENERIC MAP (
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	cntnen => \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	mhi => \GFX|FB|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\,
	shift => \GFX|FB|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftenm => \GFX|FB|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \GFX|FB|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	shiften => \GFX|FB|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\);

-- Location: PLLOUTPUTCOUNTER_X0_Y20_N1
\GFX|FB|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER\ : cyclonev_pll_output_counter
-- pragma translate_off
GENERIC MAP (
	c_cnt_coarse_dly => "0 ps",
	c_cnt_fine_dly => "0 ps",
	c_cnt_in_src => "ph_mux_clk",
	c_cnt_ph_mux_prst => 0,
	c_cnt_prst => 1,
	cnt_fpll_src => "fpll_0",
	dprio0_cnt_bypass_en => "false",
	dprio0_cnt_hi_div => 6,
	dprio0_cnt_lo_div => 6,
	dprio0_cnt_odd_div_even_duty_en => "false",
	duty_cycle => 50,
	output_clock_frequency => "25.0 mhz",
	phase_shift => "0 ps",
  fractional_pll_index => 0,
  output_counter_index => 6)
-- pragma translate_on
PORT MAP (
	nen0 => \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	shift0 => \GFX|FB|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \GFX|FB|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN6\,
	tclk0 => \GFX|FB|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	up0 => \GFX|FB|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	vco0ph => \GFX|FB|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\,
	divclk => \GFX|FB|altera_pll_i|outclk_wire\(0));

-- Location: CLKCTRL_G6
\GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \GFX|FB|altera_pll_i|outclk_wire\(0),
	outclk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\);

-- Location: LABCELL_X30_Y80_N30
\GFX|FB|VGA|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|Add1~21_sumout\ = SUM(( \GFX|FB|VGA|pixel_counter\(1) ) + ( VCC ) + ( !VCC ))
-- \GFX|FB|VGA|Add1~22\ = CARRY(( \GFX|FB|VGA|pixel_counter\(1) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GFX|FB|VGA|ALT_INV_pixel_counter\(1),
	cin => GND,
	sumout => \GFX|FB|VGA|Add1~21_sumout\,
	cout => \GFX|FB|VGA|Add1~22\);

-- Location: LABCELL_X30_Y80_N33
\GFX|FB|VGA|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|Add1~29_sumout\ = SUM(( \GFX|FB|VGA|pixel_counter\(2) ) + ( GND ) + ( \GFX|FB|VGA|Add1~22\ ))
-- \GFX|FB|VGA|Add1~30\ = CARRY(( \GFX|FB|VGA|pixel_counter\(2) ) + ( GND ) + ( \GFX|FB|VGA|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GFX|FB|VGA|ALT_INV_pixel_counter\(2),
	cin => \GFX|FB|VGA|Add1~22\,
	sumout => \GFX|FB|VGA|Add1~29_sumout\,
	cout => \GFX|FB|VGA|Add1~30\);

-- Location: FF_X30_Y80_N35
\GFX|FB|VGA|pixel_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|Add1~29_sumout\,
	sclr => \GFX|FB|VGA|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|pixel_counter\(2));

-- Location: LABCELL_X30_Y80_N36
\GFX|FB|VGA|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|Add1~33_sumout\ = SUM(( \GFX|FB|VGA|pixel_counter\(3) ) + ( GND ) + ( \GFX|FB|VGA|Add1~30\ ))
-- \GFX|FB|VGA|Add1~34\ = CARRY(( \GFX|FB|VGA|pixel_counter\(3) ) + ( GND ) + ( \GFX|FB|VGA|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GFX|FB|VGA|ALT_INV_pixel_counter\(3),
	cin => \GFX|FB|VGA|Add1~30\,
	sumout => \GFX|FB|VGA|Add1~33_sumout\,
	cout => \GFX|FB|VGA|Add1~34\);

-- Location: FF_X30_Y80_N38
\GFX|FB|VGA|pixel_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|Add1~33_sumout\,
	sclr => \GFX|FB|VGA|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|pixel_counter\(3));

-- Location: LABCELL_X30_Y80_N39
\GFX|FB|VGA|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|Add1~25_sumout\ = SUM(( \GFX|FB|VGA|pixel_counter\(4) ) + ( GND ) + ( \GFX|FB|VGA|Add1~34\ ))
-- \GFX|FB|VGA|Add1~26\ = CARRY(( \GFX|FB|VGA|pixel_counter\(4) ) + ( GND ) + ( \GFX|FB|VGA|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GFX|FB|VGA|ALT_INV_pixel_counter\(4),
	cin => \GFX|FB|VGA|Add1~34\,
	sumout => \GFX|FB|VGA|Add1~25_sumout\,
	cout => \GFX|FB|VGA|Add1~26\);

-- Location: FF_X30_Y80_N40
\GFX|FB|VGA|pixel_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|Add1~25_sumout\,
	sclr => \GFX|FB|VGA|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|pixel_counter\(4));

-- Location: LABCELL_X30_Y80_N42
\GFX|FB|VGA|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|Add1~1_sumout\ = SUM(( \GFX|FB|VGA|pixel_counter\(5) ) + ( GND ) + ( \GFX|FB|VGA|Add1~26\ ))
-- \GFX|FB|VGA|Add1~2\ = CARRY(( \GFX|FB|VGA|pixel_counter\(5) ) + ( GND ) + ( \GFX|FB|VGA|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GFX|FB|VGA|ALT_INV_pixel_counter\(5),
	cin => \GFX|FB|VGA|Add1~26\,
	sumout => \GFX|FB|VGA|Add1~1_sumout\,
	cout => \GFX|FB|VGA|Add1~2\);

-- Location: FF_X30_Y80_N43
\GFX|FB|VGA|pixel_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|Add1~1_sumout\,
	sclr => \GFX|FB|VGA|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|pixel_counter\(5));

-- Location: LABCELL_X30_Y80_N45
\GFX|FB|VGA|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|Add1~9_sumout\ = SUM(( \GFX|FB|VGA|pixel_counter\(6) ) + ( GND ) + ( \GFX|FB|VGA|Add1~2\ ))
-- \GFX|FB|VGA|Add1~10\ = CARRY(( \GFX|FB|VGA|pixel_counter\(6) ) + ( GND ) + ( \GFX|FB|VGA|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GFX|FB|VGA|ALT_INV_pixel_counter\(6),
	cin => \GFX|FB|VGA|Add1~2\,
	sumout => \GFX|FB|VGA|Add1~9_sumout\,
	cout => \GFX|FB|VGA|Add1~10\);

-- Location: FF_X30_Y80_N47
\GFX|FB|VGA|pixel_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|Add1~9_sumout\,
	sclr => \GFX|FB|VGA|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|pixel_counter\(6));

-- Location: LABCELL_X30_Y80_N48
\GFX|FB|VGA|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|Add1~13_sumout\ = SUM(( \GFX|FB|VGA|pixel_counter\(7) ) + ( GND ) + ( \GFX|FB|VGA|Add1~10\ ))
-- \GFX|FB|VGA|Add1~14\ = CARRY(( \GFX|FB|VGA|pixel_counter\(7) ) + ( GND ) + ( \GFX|FB|VGA|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GFX|FB|VGA|ALT_INV_pixel_counter\(7),
	cin => \GFX|FB|VGA|Add1~10\,
	sumout => \GFX|FB|VGA|Add1~13_sumout\,
	cout => \GFX|FB|VGA|Add1~14\);

-- Location: FF_X30_Y80_N49
\GFX|FB|VGA|pixel_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|Add1~13_sumout\,
	sclr => \GFX|FB|VGA|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|pixel_counter\(7));

-- Location: LABCELL_X30_Y80_N51
\GFX|FB|VGA|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|Add1~5_sumout\ = SUM(( \GFX|FB|VGA|pixel_counter\(8) ) + ( GND ) + ( \GFX|FB|VGA|Add1~14\ ))
-- \GFX|FB|VGA|Add1~6\ = CARRY(( \GFX|FB|VGA|pixel_counter\(8) ) + ( GND ) + ( \GFX|FB|VGA|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GFX|FB|VGA|ALT_INV_pixel_counter\(8),
	cin => \GFX|FB|VGA|Add1~14\,
	sumout => \GFX|FB|VGA|Add1~5_sumout\,
	cout => \GFX|FB|VGA|Add1~6\);

-- Location: FF_X30_Y80_N53
\GFX|FB|VGA|pixel_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|Add1~5_sumout\,
	sclr => \GFX|FB|VGA|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|pixel_counter\(8));

-- Location: LABCELL_X30_Y80_N54
\GFX|FB|VGA|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|Add1~17_sumout\ = SUM(( \GFX|FB|VGA|pixel_counter\(9) ) + ( GND ) + ( \GFX|FB|VGA|Add1~6\ ))
-- \GFX|FB|VGA|Add1~18\ = CARRY(( \GFX|FB|VGA|pixel_counter\(9) ) + ( GND ) + ( \GFX|FB|VGA|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GFX|FB|VGA|ALT_INV_pixel_counter\(9),
	cin => \GFX|FB|VGA|Add1~6\,
	sumout => \GFX|FB|VGA|Add1~17_sumout\,
	cout => \GFX|FB|VGA|Add1~18\);

-- Location: FF_X30_Y80_N56
\GFX|FB|VGA|pixel_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|Add1~17_sumout\,
	sclr => \GFX|FB|VGA|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|pixel_counter\(9));

-- Location: LABCELL_X30_Y80_N57
\GFX|FB|VGA|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|Add1~37_sumout\ = SUM(( \GFX|FB|VGA|pixel_counter\(10) ) + ( GND ) + ( \GFX|FB|VGA|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GFX|FB|VGA|ALT_INV_pixel_counter\(10),
	cin => \GFX|FB|VGA|Add1~18\,
	sumout => \GFX|FB|VGA|Add1~37_sumout\);

-- Location: FF_X30_Y80_N59
\GFX|FB|VGA|pixel_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|Add1~37_sumout\,
	sclr => \GFX|FB|VGA|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|pixel_counter\(10));

-- Location: FF_X30_Y80_N41
\GFX|FB|VGA|pixel_counter[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|Add1~25_sumout\,
	sclr => \GFX|FB|VGA|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|pixel_counter[4]~DUPLICATE_q\);

-- Location: LABCELL_X30_Y80_N0
\GFX|FB|VGA|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|Equal4~0_combout\ = ( \GFX|FB|VGA|pixel_counter\(5) & ( (\GFX|FB|VGA|pixel_counter\(9) & (!\GFX|FB|VGA|pixel_counter\(6) & (!\GFX|FB|VGA|pixel_counter\(8) & !\GFX|FB|VGA|pixel_counter\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|VGA|ALT_INV_pixel_counter\(9),
	datab => \GFX|FB|VGA|ALT_INV_pixel_counter\(6),
	datac => \GFX|FB|VGA|ALT_INV_pixel_counter\(8),
	datad => \GFX|FB|VGA|ALT_INV_pixel_counter\(7),
	dataf => \GFX|FB|VGA|ALT_INV_pixel_counter\(5),
	combout => \GFX|FB|VGA|Equal4~0_combout\);

-- Location: LABCELL_X30_Y80_N24
\GFX|FB|VGA|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|Equal0~0_combout\ = ( \GFX|FB|VGA|Equal4~0_combout\ & ( \GFX|FB|VGA|pixel_counter\(2) & ( (\GFX|FB|VGA|pixel_counter\(1) & (\GFX|FB|VGA|pixel_counter\(10) & (\GFX|FB|VGA|pixel_counter\(3) & \GFX|FB|VGA|pixel_counter[4]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|VGA|ALT_INV_pixel_counter\(1),
	datab => \GFX|FB|VGA|ALT_INV_pixel_counter\(10),
	datac => \GFX|FB|VGA|ALT_INV_pixel_counter\(3),
	datad => \GFX|FB|VGA|ALT_INV_pixel_counter[4]~DUPLICATE_q\,
	datae => \GFX|FB|VGA|ALT_INV_Equal4~0_combout\,
	dataf => \GFX|FB|VGA|ALT_INV_pixel_counter\(2),
	combout => \GFX|FB|VGA|Equal0~0_combout\);

-- Location: FF_X30_Y80_N31
\GFX|FB|VGA|pixel_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|Add1~21_sumout\,
	sclr => \GFX|FB|VGA|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|pixel_counter\(1));

-- Location: LABCELL_X30_Y80_N6
\GFX|FB|VGA|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|Equal5~0_combout\ = ( !\GFX|FB|VGA|pixel_counter\(9) & ( \GFX|FB|VGA|pixel_counter\(2) & ( (!\GFX|FB|VGA|pixel_counter\(1) & (\GFX|FB|VGA|pixel_counter\(10) & (\GFX|FB|VGA|pixel_counter\(3) & \GFX|FB|VGA|pixel_counter[4]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|VGA|ALT_INV_pixel_counter\(1),
	datab => \GFX|FB|VGA|ALT_INV_pixel_counter\(10),
	datac => \GFX|FB|VGA|ALT_INV_pixel_counter\(3),
	datad => \GFX|FB|VGA|ALT_INV_pixel_counter[4]~DUPLICATE_q\,
	datae => \GFX|FB|VGA|ALT_INV_pixel_counter\(9),
	dataf => \GFX|FB|VGA|ALT_INV_pixel_counter\(2),
	combout => \GFX|FB|VGA|Equal5~0_combout\);

-- Location: LABCELL_X30_Y80_N12
\GFX|FB|VGA|early_hsync_pulse~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|early_hsync_pulse~0_combout\ = ( \GFX|FB|VGA|early_hsync_pulse~q\ & ( \GFX|FB|VGA|pixel_counter\(5) ) ) # ( \GFX|FB|VGA|early_hsync_pulse~q\ & ( !\GFX|FB|VGA|pixel_counter\(5) & ( (!\GFX|FB|VGA|Equal5~0_combout\) # 
-- ((!\GFX|FB|VGA|pixel_counter\(6)) # ((!\GFX|FB|VGA|pixel_counter\(8)) # (!\GFX|FB|VGA|pixel_counter\(7)))) ) ) ) # ( !\GFX|FB|VGA|early_hsync_pulse~q\ & ( !\GFX|FB|VGA|pixel_counter\(5) & ( (\GFX|FB|VGA|Equal5~0_combout\ & (!\GFX|FB|VGA|pixel_counter\(6) 
-- & (\GFX|FB|VGA|pixel_counter\(8) & !\GFX|FB|VGA|pixel_counter\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000111111111111111000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|VGA|ALT_INV_Equal5~0_combout\,
	datab => \GFX|FB|VGA|ALT_INV_pixel_counter\(6),
	datac => \GFX|FB|VGA|ALT_INV_pixel_counter\(8),
	datad => \GFX|FB|VGA|ALT_INV_pixel_counter\(7),
	datae => \GFX|FB|VGA|ALT_INV_early_hsync_pulse~q\,
	dataf => \GFX|FB|VGA|ALT_INV_pixel_counter\(5),
	combout => \GFX|FB|VGA|early_hsync_pulse~0_combout\);

-- Location: FF_X30_Y80_N13
\GFX|FB|VGA|early_hsync_pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|early_hsync_pulse~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|early_hsync_pulse~q\);

-- Location: FF_X30_Y80_N11
\GFX|FB|VGA|hsync_pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \GFX|FB|VGA|early_hsync_pulse~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|hsync_pulse~q\);

-- Location: LABCELL_X30_Y80_N3
\GFX|FB|VGA|vga_h_sync~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|vga_h_sync~0_combout\ = ( !\GFX|FB|VGA|hsync_pulse~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \GFX|FB|VGA|ALT_INV_hsync_pulse~q\,
	combout => \GFX|FB|VGA|vga_h_sync~0_combout\);

-- Location: FF_X30_Y80_N4
\GFX|FB|VGA|vga_h_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|ALT_INV_outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|vga_h_sync~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|vga_h_sync~q\);

-- Location: LABCELL_X31_Y80_N30
\GFX|FB|VGA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|Add0~21_sumout\ = SUM(( \GFX|FB|VGA|line_counter\(1) ) + ( VCC ) + ( !VCC ))
-- \GFX|FB|VGA|Add0~22\ = CARRY(( \GFX|FB|VGA|line_counter\(1) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GFX|FB|VGA|ALT_INV_line_counter\(1),
	cin => GND,
	sumout => \GFX|FB|VGA|Add0~21_sumout\,
	cout => \GFX|FB|VGA|Add0~22\);

-- Location: LABCELL_X31_Y80_N33
\GFX|FB|VGA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|Add0~1_sumout\ = SUM(( \GFX|FB|VGA|line_counter\(2) ) + ( GND ) + ( \GFX|FB|VGA|Add0~22\ ))
-- \GFX|FB|VGA|Add0~2\ = CARRY(( \GFX|FB|VGA|line_counter\(2) ) + ( GND ) + ( \GFX|FB|VGA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GFX|FB|VGA|ALT_INV_line_counter\(2),
	cin => \GFX|FB|VGA|Add0~22\,
	sumout => \GFX|FB|VGA|Add0~1_sumout\,
	cout => \GFX|FB|VGA|Add0~2\);

-- Location: LABCELL_X31_Y80_N36
\GFX|FB|VGA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|Add0~13_sumout\ = SUM(( \GFX|FB|VGA|line_counter\(3) ) + ( GND ) + ( \GFX|FB|VGA|Add0~2\ ))
-- \GFX|FB|VGA|Add0~14\ = CARRY(( \GFX|FB|VGA|line_counter\(3) ) + ( GND ) + ( \GFX|FB|VGA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GFX|FB|VGA|ALT_INV_line_counter\(3),
	cin => \GFX|FB|VGA|Add0~2\,
	sumout => \GFX|FB|VGA|Add0~13_sumout\,
	cout => \GFX|FB|VGA|Add0~14\);

-- Location: FF_X31_Y80_N37
\GFX|FB|VGA|line_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|Add0~13_sumout\,
	sclr => \GFX|FB|VGA|Equal3~2_combout\,
	ena => \GFX|FB|VGA|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|line_counter\(3));

-- Location: LABCELL_X31_Y80_N39
\GFX|FB|VGA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|Add0~17_sumout\ = SUM(( \GFX|FB|VGA|line_counter\(4) ) + ( GND ) + ( \GFX|FB|VGA|Add0~14\ ))
-- \GFX|FB|VGA|Add0~18\ = CARRY(( \GFX|FB|VGA|line_counter\(4) ) + ( GND ) + ( \GFX|FB|VGA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GFX|FB|VGA|ALT_INV_line_counter\(4),
	cin => \GFX|FB|VGA|Add0~14\,
	sumout => \GFX|FB|VGA|Add0~17_sumout\,
	cout => \GFX|FB|VGA|Add0~18\);

-- Location: FF_X31_Y80_N41
\GFX|FB|VGA|line_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|Add0~17_sumout\,
	sclr => \GFX|FB|VGA|Equal3~2_combout\,
	ena => \GFX|FB|VGA|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|line_counter\(4));

-- Location: LABCELL_X31_Y80_N42
\GFX|FB|VGA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|Add0~5_sumout\ = SUM(( \GFX|FB|VGA|line_counter\(5) ) + ( GND ) + ( \GFX|FB|VGA|Add0~18\ ))
-- \GFX|FB|VGA|Add0~6\ = CARRY(( \GFX|FB|VGA|line_counter\(5) ) + ( GND ) + ( \GFX|FB|VGA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GFX|FB|VGA|ALT_INV_line_counter\(5),
	cin => \GFX|FB|VGA|Add0~18\,
	sumout => \GFX|FB|VGA|Add0~5_sumout\,
	cout => \GFX|FB|VGA|Add0~6\);

-- Location: FF_X31_Y80_N44
\GFX|FB|VGA|line_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|Add0~5_sumout\,
	sclr => \GFX|FB|VGA|Equal3~2_combout\,
	ena => \GFX|FB|VGA|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|line_counter\(5));

-- Location: LABCELL_X31_Y80_N45
\GFX|FB|VGA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|Add0~9_sumout\ = SUM(( \GFX|FB|VGA|line_counter\(6) ) + ( GND ) + ( \GFX|FB|VGA|Add0~6\ ))
-- \GFX|FB|VGA|Add0~10\ = CARRY(( \GFX|FB|VGA|line_counter\(6) ) + ( GND ) + ( \GFX|FB|VGA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GFX|FB|VGA|ALT_INV_line_counter\(6),
	cin => \GFX|FB|VGA|Add0~6\,
	sumout => \GFX|FB|VGA|Add0~9_sumout\,
	cout => \GFX|FB|VGA|Add0~10\);

-- Location: FF_X31_Y80_N47
\GFX|FB|VGA|line_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|Add0~9_sumout\,
	sclr => \GFX|FB|VGA|Equal3~2_combout\,
	ena => \GFX|FB|VGA|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|line_counter\(6));

-- Location: LABCELL_X31_Y80_N48
\GFX|FB|VGA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|Add0~25_sumout\ = SUM(( \GFX|FB|VGA|line_counter\(7) ) + ( GND ) + ( \GFX|FB|VGA|Add0~10\ ))
-- \GFX|FB|VGA|Add0~26\ = CARRY(( \GFX|FB|VGA|line_counter\(7) ) + ( GND ) + ( \GFX|FB|VGA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GFX|FB|VGA|ALT_INV_line_counter\(7),
	cin => \GFX|FB|VGA|Add0~10\,
	sumout => \GFX|FB|VGA|Add0~25_sumout\,
	cout => \GFX|FB|VGA|Add0~26\);

-- Location: FF_X31_Y80_N49
\GFX|FB|VGA|line_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|Add0~25_sumout\,
	sclr => \GFX|FB|VGA|Equal3~2_combout\,
	ena => \GFX|FB|VGA|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|line_counter\(7));

-- Location: LABCELL_X31_Y80_N51
\GFX|FB|VGA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|Add0~29_sumout\ = SUM(( \GFX|FB|VGA|line_counter\(8) ) + ( GND ) + ( \GFX|FB|VGA|Add0~26\ ))
-- \GFX|FB|VGA|Add0~30\ = CARRY(( \GFX|FB|VGA|line_counter\(8) ) + ( GND ) + ( \GFX|FB|VGA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GFX|FB|VGA|ALT_INV_line_counter\(8),
	cin => \GFX|FB|VGA|Add0~26\,
	sumout => \GFX|FB|VGA|Add0~29_sumout\,
	cout => \GFX|FB|VGA|Add0~30\);

-- Location: FF_X31_Y80_N53
\GFX|FB|VGA|line_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|Add0~29_sumout\,
	sclr => \GFX|FB|VGA|Equal3~2_combout\,
	ena => \GFX|FB|VGA|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|line_counter\(8));

-- Location: LABCELL_X31_Y80_N54
\GFX|FB|VGA|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|Add0~33_sumout\ = SUM(( \GFX|FB|VGA|line_counter\(9) ) + ( GND ) + ( \GFX|FB|VGA|Add0~30\ ))
-- \GFX|FB|VGA|Add0~34\ = CARRY(( \GFX|FB|VGA|line_counter\(9) ) + ( GND ) + ( \GFX|FB|VGA|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GFX|FB|VGA|ALT_INV_line_counter\(9),
	cin => \GFX|FB|VGA|Add0~30\,
	sumout => \GFX|FB|VGA|Add0~33_sumout\,
	cout => \GFX|FB|VGA|Add0~34\);

-- Location: FF_X31_Y80_N56
\GFX|FB|VGA|line_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|Add0~33_sumout\,
	sclr => \GFX|FB|VGA|Equal3~2_combout\,
	ena => \GFX|FB|VGA|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|line_counter\(9));

-- Location: LABCELL_X31_Y80_N57
\GFX|FB|VGA|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|Add0~37_sumout\ = SUM(( \GFX|FB|VGA|line_counter\(10) ) + ( GND ) + ( \GFX|FB|VGA|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GFX|FB|VGA|ALT_INV_line_counter\(10),
	cin => \GFX|FB|VGA|Add0~34\,
	sumout => \GFX|FB|VGA|Add0~37_sumout\);

-- Location: FF_X31_Y80_N58
\GFX|FB|VGA|line_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|Add0~37_sumout\,
	sclr => \GFX|FB|VGA|Equal3~2_combout\,
	ena => \GFX|FB|VGA|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|line_counter\(10));

-- Location: FF_X31_Y80_N34
\GFX|FB|VGA|line_counter[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|Add0~1_sumout\,
	sclr => \GFX|FB|VGA|Equal3~2_combout\,
	ena => \GFX|FB|VGA|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|line_counter[2]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y80_N12
\GFX|FB|VGA|Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|Equal3~1_combout\ = ( !\GFX|FB|VGA|line_counter[2]~DUPLICATE_q\ & ( (!\GFX|FB|VGA|line_counter\(6) & (\GFX|FB|VGA|line_counter\(10) & \GFX|FB|VGA|line_counter\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GFX|FB|VGA|ALT_INV_line_counter\(6),
	datac => \GFX|FB|VGA|ALT_INV_line_counter\(10),
	datad => \GFX|FB|VGA|ALT_INV_line_counter\(3),
	dataf => \GFX|FB|VGA|ALT_INV_line_counter[2]~DUPLICATE_q\,
	combout => \GFX|FB|VGA|Equal3~1_combout\);

-- Location: LABCELL_X31_Y80_N18
\GFX|FB|VGA|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|Equal3~0_combout\ = ( \GFX|FB|VGA|line_counter\(4) & ( (!\GFX|FB|VGA|line_counter\(1) & (!\GFX|FB|VGA|line_counter\(5) & (!\GFX|FB|VGA|line_counter\(8) & !\GFX|FB|VGA|line_counter\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|VGA|ALT_INV_line_counter\(1),
	datab => \GFX|FB|VGA|ALT_INV_line_counter\(5),
	datac => \GFX|FB|VGA|ALT_INV_line_counter\(8),
	datad => \GFX|FB|VGA|ALT_INV_line_counter\(7),
	dataf => \GFX|FB|VGA|ALT_INV_line_counter\(4),
	combout => \GFX|FB|VGA|Equal3~0_combout\);

-- Location: LABCELL_X31_Y80_N24
\GFX|FB|VGA|Equal3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|Equal3~2_combout\ = ( \GFX|FB|VGA|Equal3~0_combout\ & ( (\GFX|FB|VGA|Equal3~1_combout\ & !\GFX|FB|VGA|line_counter\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GFX|FB|VGA|ALT_INV_Equal3~1_combout\,
	datac => \GFX|FB|VGA|ALT_INV_line_counter\(9),
	dataf => \GFX|FB|VGA|ALT_INV_Equal3~0_combout\,
	combout => \GFX|FB|VGA|Equal3~2_combout\);

-- Location: FF_X31_Y80_N31
\GFX|FB|VGA|line_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|Add0~21_sumout\,
	sclr => \GFX|FB|VGA|Equal3~2_combout\,
	ena => \GFX|FB|VGA|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|line_counter\(1));

-- Location: FF_X31_Y80_N35
\GFX|FB|VGA|line_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|Add0~1_sumout\,
	sclr => \GFX|FB|VGA|Equal3~2_combout\,
	ena => \GFX|FB|VGA|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|line_counter\(2));

-- Location: FF_X31_Y80_N32
\GFX|FB|VGA|line_counter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|Add0~21_sumout\,
	sclr => \GFX|FB|VGA|Equal3~2_combout\,
	ena => \GFX|FB|VGA|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|line_counter[1]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y80_N0
\GFX|FB|VGA|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|Equal1~0_combout\ = ( \GFX|FB|VGA|line_counter\(9) & ( \GFX|FB|VGA|line_counter\(4) & ( (\GFX|FB|VGA|line_counter\(8) & (\GFX|FB|VGA|line_counter\(7) & (!\GFX|FB|VGA|line_counter\(10) & \GFX|FB|VGA|line_counter[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|VGA|ALT_INV_line_counter\(8),
	datab => \GFX|FB|VGA|ALT_INV_line_counter\(7),
	datac => \GFX|FB|VGA|ALT_INV_line_counter\(10),
	datad => \GFX|FB|VGA|ALT_INV_line_counter[1]~DUPLICATE_q\,
	datae => \GFX|FB|VGA|ALT_INV_line_counter\(9),
	dataf => \GFX|FB|VGA|ALT_INV_line_counter\(4),
	combout => \GFX|FB|VGA|Equal1~0_combout\);

-- Location: LABCELL_X31_Y80_N15
\GFX|FB|VGA|early_vsync_pulse~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|early_vsync_pulse~0_combout\ = ( !\GFX|FB|VGA|line_counter\(5) & ( (\GFX|FB|VGA|line_counter\(6) & !\GFX|FB|VGA|line_counter\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|FB|VGA|ALT_INV_line_counter\(6),
	datad => \GFX|FB|VGA|ALT_INV_line_counter\(3),
	dataf => \GFX|FB|VGA|ALT_INV_line_counter\(5),
	combout => \GFX|FB|VGA|early_vsync_pulse~0_combout\);

-- Location: LABCELL_X30_Y80_N18
\GFX|FB|VGA|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|Equal2~0_combout\ = ( !\GFX|FB|VGA|pixel_counter\(1) & ( (\GFX|FB|VGA|pixel_counter\(3) & (\GFX|FB|VGA|pixel_counter\(10) & (\GFX|FB|VGA|pixel_counter\(2) & \GFX|FB|VGA|pixel_counter\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|VGA|ALT_INV_pixel_counter\(3),
	datab => \GFX|FB|VGA|ALT_INV_pixel_counter\(10),
	datac => \GFX|FB|VGA|ALT_INV_pixel_counter\(2),
	datad => \GFX|FB|VGA|ALT_INV_pixel_counter\(4),
	dataf => \GFX|FB|VGA|ALT_INV_pixel_counter\(1),
	combout => \GFX|FB|VGA|Equal2~0_combout\);

-- Location: LABCELL_X31_Y80_N6
\GFX|FB|VGA|early_vsync_pulse~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|early_vsync_pulse~1_combout\ = ( \GFX|FB|VGA|early_vsync_pulse~q\ & ( \GFX|FB|VGA|Equal2~0_combout\ & ( (!\GFX|FB|VGA|line_counter\(2)) # ((!\GFX|FB|VGA|Equal4~0_combout\) # ((!\GFX|FB|VGA|Equal1~0_combout\) # 
-- (!\GFX|FB|VGA|early_vsync_pulse~0_combout\))) ) ) ) # ( !\GFX|FB|VGA|early_vsync_pulse~q\ & ( \GFX|FB|VGA|Equal2~0_combout\ & ( (!\GFX|FB|VGA|line_counter\(2) & (\GFX|FB|VGA|Equal4~0_combout\ & (\GFX|FB|VGA|Equal1~0_combout\ & 
-- \GFX|FB|VGA|early_vsync_pulse~0_combout\))) ) ) ) # ( \GFX|FB|VGA|early_vsync_pulse~q\ & ( !\GFX|FB|VGA|Equal2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000101111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|VGA|ALT_INV_line_counter\(2),
	datab => \GFX|FB|VGA|ALT_INV_Equal4~0_combout\,
	datac => \GFX|FB|VGA|ALT_INV_Equal1~0_combout\,
	datad => \GFX|FB|VGA|ALT_INV_early_vsync_pulse~0_combout\,
	datae => \GFX|FB|VGA|ALT_INV_early_vsync_pulse~q\,
	dataf => \GFX|FB|VGA|ALT_INV_Equal2~0_combout\,
	combout => \GFX|FB|VGA|early_vsync_pulse~1_combout\);

-- Location: FF_X31_Y80_N7
\GFX|FB|VGA|early_vsync_pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|early_vsync_pulse~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|early_vsync_pulse~q\);

-- Location: FF_X31_Y80_N4
\GFX|FB|VGA|vsync_pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \GFX|FB|VGA|early_vsync_pulse~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|vsync_pulse~q\);

-- Location: MLABCELL_X34_Y80_N33
\GFX|FB|VGA|vga_v_sync~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|vga_v_sync~0_combout\ = ( !\GFX|FB|VGA|vsync_pulse~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \GFX|FB|VGA|ALT_INV_vsync_pulse~q\,
	combout => \GFX|FB|VGA|vga_v_sync~0_combout\);

-- Location: FF_X34_Y80_N34
\GFX|FB|VGA|vga_v_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|ALT_INV_outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|vga_v_sync~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|vga_v_sync~q\);

-- Location: LABCELL_X30_Y80_N21
\GFX|FB|VGA|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|Equal2~1_combout\ = ( !\GFX|FB|VGA|pixel_counter\(8) & ( \GFX|FB|VGA|pixel_counter\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|FB|VGA|ALT_INV_pixel_counter\(5),
	dataf => \GFX|FB|VGA|ALT_INV_pixel_counter\(8),
	combout => \GFX|FB|VGA|Equal2~1_combout\);

-- Location: LABCELL_X29_Y80_N36
\GFX|FB|VGA|hblanking_pulse~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|hblanking_pulse~0_combout\ = ( \GFX|FB|VGA|hblanking_pulse~q\ & ( \GFX|FB|VGA|pixel_counter\(6) ) ) # ( !\GFX|FB|VGA|hblanking_pulse~q\ & ( \GFX|FB|VGA|pixel_counter\(6) & ( (\GFX|FB|VGA|Equal2~0_combout\ & (!\GFX|FB|VGA|pixel_counter\(9) & 
-- (\GFX|FB|VGA|Equal2~1_combout\ & \GFX|FB|VGA|pixel_counter\(7)))) ) ) ) # ( \GFX|FB|VGA|hblanking_pulse~q\ & ( !\GFX|FB|VGA|pixel_counter\(6) & ( (!\GFX|FB|VGA|Equal2~0_combout\) # ((!\GFX|FB|VGA|pixel_counter\(9)) # ((!\GFX|FB|VGA|Equal2~1_combout\) # 
-- (\GFX|FB|VGA|pixel_counter\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111101111111100000000000001001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|VGA|ALT_INV_Equal2~0_combout\,
	datab => \GFX|FB|VGA|ALT_INV_pixel_counter\(9),
	datac => \GFX|FB|VGA|ALT_INV_Equal2~1_combout\,
	datad => \GFX|FB|VGA|ALT_INV_pixel_counter\(7),
	datae => \GFX|FB|VGA|ALT_INV_hblanking_pulse~q\,
	dataf => \GFX|FB|VGA|ALT_INV_pixel_counter\(6),
	combout => \GFX|FB|VGA|hblanking_pulse~0_combout\);

-- Location: FF_X29_Y80_N38
\GFX|FB|VGA|hblanking_pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|hblanking_pulse~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|hblanking_pulse~q\);

-- Location: LABCELL_X31_Y80_N21
\GFX|FB|VGA|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|Equal1~1_combout\ = ( \GFX|FB|VGA|line_counter[2]~DUPLICATE_q\ & ( (\GFX|FB|VGA|line_counter\(5) & (\GFX|FB|VGA|line_counter\(3) & !\GFX|FB|VGA|line_counter\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GFX|FB|VGA|ALT_INV_line_counter\(5),
	datac => \GFX|FB|VGA|ALT_INV_line_counter\(3),
	datad => \GFX|FB|VGA|ALT_INV_line_counter\(6),
	dataf => \GFX|FB|VGA|ALT_INV_line_counter[2]~DUPLICATE_q\,
	combout => \GFX|FB|VGA|Equal1~1_combout\);

-- Location: LABCELL_X29_Y80_N12
\GFX|FB|VGA|vblanking_pulse~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|vblanking_pulse~0_combout\ = ( \GFX|FB|VGA|vblanking_pulse~q\ & ( \GFX|FB|VGA|Equal3~2_combout\ & ( (!\GFX|FB|VGA|Equal4~0_combout\) # ((!\GFX|FB|VGA|Equal2~0_combout\) # ((\GFX|FB|VGA|Equal1~1_combout\ & \GFX|FB|VGA|Equal1~0_combout\))) ) ) ) 
-- # ( !\GFX|FB|VGA|vblanking_pulse~q\ & ( \GFX|FB|VGA|Equal3~2_combout\ & ( (\GFX|FB|VGA|Equal4~0_combout\ & (\GFX|FB|VGA|Equal1~1_combout\ & (\GFX|FB|VGA|Equal2~0_combout\ & \GFX|FB|VGA|Equal1~0_combout\))) ) ) ) # ( \GFX|FB|VGA|vblanking_pulse~q\ & ( 
-- !\GFX|FB|VGA|Equal3~2_combout\ ) ) # ( !\GFX|FB|VGA|vblanking_pulse~q\ & ( !\GFX|FB|VGA|Equal3~2_combout\ & ( (\GFX|FB|VGA|Equal4~0_combout\ & (\GFX|FB|VGA|Equal1~1_combout\ & (\GFX|FB|VGA|Equal2~0_combout\ & \GFX|FB|VGA|Equal1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001111111111111111100000000000000011111101011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|VGA|ALT_INV_Equal4~0_combout\,
	datab => \GFX|FB|VGA|ALT_INV_Equal1~1_combout\,
	datac => \GFX|FB|VGA|ALT_INV_Equal2~0_combout\,
	datad => \GFX|FB|VGA|ALT_INV_Equal1~0_combout\,
	datae => \GFX|FB|VGA|ALT_INV_vblanking_pulse~q\,
	dataf => \GFX|FB|VGA|ALT_INV_Equal3~2_combout\,
	combout => \GFX|FB|VGA|vblanking_pulse~0_combout\);

-- Location: FF_X29_Y80_N13
\GFX|FB|VGA|vblanking_pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|vblanking_pulse~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|vblanking_pulse~q\);

-- Location: LABCELL_X29_Y80_N0
\GFX|FB|VGA|blanking_pulse~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|blanking_pulse~0_combout\ = ( \GFX|FB|VGA|vblanking_pulse~q\ ) # ( !\GFX|FB|VGA|vblanking_pulse~q\ & ( \GFX|FB|VGA|hblanking_pulse~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GFX|FB|VGA|ALT_INV_hblanking_pulse~q\,
	dataf => \GFX|FB|VGA|ALT_INV_vblanking_pulse~q\,
	combout => \GFX|FB|VGA|blanking_pulse~0_combout\);

-- Location: FF_X29_Y80_N2
\GFX|FB|VGA|blanking_pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|blanking_pulse~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|blanking_pulse~q\);

-- Location: MLABCELL_X25_Y80_N9
\GFX|FB|VGA|vga_blank~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|vga_blank~0_combout\ = !\GFX|FB|VGA|blanking_pulse~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|FB|VGA|ALT_INV_blanking_pulse~q\,
	combout => \GFX|FB|VGA|vga_blank~0_combout\);

-- Location: FF_X25_Y80_N10
\GFX|FB|VGA|vga_blank\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|ALT_INV_outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|vga_blank~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|vga_blank~q\);

-- Location: FF_X27_Y78_N4
\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a1~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a1~DUPLICATE_q\);

-- Location: FF_X27_Y78_N31
\GFX|FB|Data_FIFO|auto_generated|rdptr_g[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a3~q\,
	sload => VCC,
	ena => \GFX|FB|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|rdptr_g\(3));

-- Location: FF_X27_Y80_N41
\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a5~q\);

-- Location: LABCELL_X27_Y78_N6
\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a2~0_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a2~q\ & ( \GFX|FB|comb~1_combout\ & ( (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a0~q\) # 
-- ((!\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a1~q\) # (\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|parity6~q\)) ) ) ) # ( !\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a2~q\ & ( \GFX|FB|comb~1_combout\ & ( 
-- (\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a0~q\ & (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|parity6~q\ & \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a1~q\)) ) ) ) # ( \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a2~q\ & ( 
-- !\GFX|FB|comb~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000100000001001111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a0~q\,
	datab => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_parity6~q\,
	datac => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a1~q\,
	datae => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a2~q\,
	dataf => \GFX|FB|ALT_INV_comb~1_combout\,
	combout => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a2~0_combout\);

-- Location: FF_X27_Y78_N8
\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a2~q\);

-- Location: LABCELL_X27_Y78_N21
\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|_~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|_~2_combout\ = ( !\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a1~q\ & ( \GFX|FB|comb~1_combout\ & ( (\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a0~q\ & 
-- (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|parity6~q\ & !\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a2~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a0~q\,
	datab => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_parity6~q\,
	datac => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a2~q\,
	datae => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a1~q\,
	dataf => \GFX|FB|ALT_INV_comb~1_combout\,
	combout => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|_~2_combout\);

-- Location: LABCELL_X27_Y80_N39
\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a5~0_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|_~2_combout\ & ( !\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a5~q\ $ (((!\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a4~q\) # 
-- (\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a3~q\))) ) ) # ( !\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|_~2_combout\ & ( \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a5~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010000101011110101000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a4~q\,
	datac => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a3~q\,
	datad => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a5~q\,
	dataf => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV__~2_combout\,
	combout => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a5~0_combout\);

-- Location: FF_X27_Y80_N40
\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a5~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a5~DUPLICATE_q\);

-- Location: FF_X29_Y80_N52
\GFX|FB|Data_FIFO|auto_generated|rdptr_g[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a5~DUPLICATE_q\,
	sload => VCC,
	ena => \GFX|FB|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|rdptr_g\(5));

-- Location: FF_X29_Y79_N40
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|rdptr_g\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a\(5));

-- Location: FF_X29_Y79_N19
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe18a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe18a\(5));

-- Location: LABCELL_X29_Y79_N21
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg[5]~feeder_combout\ = \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe18a\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|ALT_INV_dffe18a\(5),
	combout => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg[5]~feeder_combout\);

-- Location: FF_X29_Y79_N22
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg\(5));

-- Location: LABCELL_X29_Y79_N54
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor5\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor5~combout\ = ( \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg\(5) & ( !\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor6~combout\ ) ) # ( !\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg\(5) & ( 
-- \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor6~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|ALT_INV_xor6~combout\,
	dataf => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_ws_dgrp_reg\(5),
	combout => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor5~combout\);

-- Location: FF_X29_Y79_N8
\GFX|FB|Data_FIFO|auto_generated|ws_brp|dffe15a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor5~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|ws_brp|dffe15a\(5));

-- Location: FF_X27_Y79_N10
\GFX|FB|Data_FIFO|auto_generated|ws_bwp|dffe15a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|xor5~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|ws_bwp|dffe15a\(5));

-- Location: LABCELL_X27_Y80_N0
\GFX|FB|Data_FIFO|auto_generated|rdptr_g[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|rdptr_g[4]~feeder_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a4~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a4~q\,
	combout => \GFX|FB|Data_FIFO|auto_generated|rdptr_g[4]~feeder_combout\);

-- Location: FF_X27_Y80_N2
\GFX|FB|Data_FIFO|auto_generated|rdptr_g[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|rdptr_g[4]~feeder_combout\,
	ena => \GFX|FB|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|rdptr_g\(4));

-- Location: LABCELL_X27_Y80_N48
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[4]~feeder_combout\ = \GFX|FB|Data_FIFO|auto_generated|rdptr_g\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_rdptr_g\(4),
	combout => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[4]~feeder_combout\);

-- Location: FF_X27_Y80_N50
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a\(4));

-- Location: LABCELL_X27_Y80_N57
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe18a[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe18a[4]~feeder_combout\ = \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|ALT_INV_dffe17a\(4),
	combout => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe18a[4]~feeder_combout\);

-- Location: FF_X27_Y80_N59
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe18a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe18a[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe18a\(4));

-- Location: FF_X27_Y80_N52
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe18a\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg\(4));

-- Location: LABCELL_X29_Y79_N30
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor4\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor4~combout\ = ( \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor5~combout\ & ( !\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg\(4) ) ) # ( 
-- !\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor5~combout\ & ( \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_ws_dgrp_reg\(4),
	datae => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|ALT_INV_xor5~combout\,
	combout => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor4~combout\);

-- Location: FF_X29_Y79_N32
\GFX|FB|Data_FIFO|auto_generated|ws_brp|dffe15a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|ws_brp|dffe15a\(4));

-- Location: LABCELL_X29_Y79_N51
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[3]~feeder_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|rdptr_g\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_rdptr_g\(3),
	combout => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[3]~feeder_combout\);

-- Location: FF_X29_Y79_N53
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a\(3));

-- Location: FF_X29_Y79_N23
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe18a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe18a\(3));

-- Location: FF_X29_Y79_N37
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe18a\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg\(3));

-- Location: LABCELL_X29_Y79_N3
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor3\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor3~combout\ = ( \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor5~combout\ & ( !\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg\(4) $ (\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg\(3)) ) ) # ( 
-- !\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor5~combout\ & ( !\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg\(4) $ (!\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010101001011010010101011010010110101010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_ws_dgrp_reg\(4),
	datac => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_ws_dgrp_reg\(3),
	datae => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|ALT_INV_xor5~combout\,
	combout => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor3~combout\);

-- Location: FF_X29_Y79_N5
\GFX|FB|Data_FIFO|auto_generated|ws_brp|dffe15a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|ws_brp|dffe15a\(3));

-- Location: LABCELL_X29_Y4_N0
\GFX|RASTER|raster_valid_next~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|raster_valid_next~0_combout\ = ( \GFX|RASTER|CTRL|out\(0) & ( \GFX|SHADER|S_CTRL1|out\(0) ) ) # ( !\GFX|RASTER|CTRL|out\(0) & ( \GFX|SHADER|S_CTRL1|out\(0) ) ) # ( !\GFX|RASTER|CTRL|out\(0) & ( !\GFX|SHADER|S_CTRL1|out\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \GFX|RASTER|CTRL|ALT_INV_out\(0),
	dataf => \GFX|SHADER|S_CTRL1|ALT_INV_out\(0),
	combout => \GFX|RASTER|raster_valid_next~0_combout\);

-- Location: FF_X29_Y4_N2
\GFX|RASTER|CTRL|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|RASTER|raster_valid_next~0_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|RASTER|CTRL|out\(0));

-- Location: MLABCELL_X25_Y4_N30
\GFX|SHADER|comb~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|comb~12_combout\ = ( \GFX|SHADER|S_CTRL1|out\(0) & ( \GFX|SHADER|S_CTRL2|out\(0) ) ) # ( !\GFX|SHADER|S_CTRL1|out\(0) & ( \GFX|RASTER|CTRL|out\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|RASTER|CTRL|ALT_INV_out\(0),
	datac => \GFX|SHADER|S_CTRL2|ALT_INV_out\(0),
	datae => \GFX|SHADER|S_CTRL1|ALT_INV_out\(0),
	combout => \GFX|SHADER|comb~12_combout\);

-- Location: FF_X25_Y4_N32
\GFX|SHADER|S_CTRL1|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|SHADER|comb~12_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|S_CTRL1|out\(0));

-- Location: MLABCELL_X28_Y31_N30
\GFX|SHADER|comb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|comb~6_combout\ = ( \GFX|SHADER|S_CTRL2|out\(0) & ( \GFX|FB|Data_FIFO|auto_generated|op_1~9_sumout\ & ( (\GFX|FB|Data_FIFO|auto_generated|op_1~5_sumout\ & \GFX|FB|Data_FIFO|auto_generated|op_1~1_sumout\) ) ) ) # ( !\GFX|SHADER|S_CTRL2|out\(0) 
-- & ( \GFX|FB|Data_FIFO|auto_generated|op_1~9_sumout\ & ( \GFX|SHADER|S_CTRL1|out\(0) ) ) ) # ( !\GFX|SHADER|S_CTRL2|out\(0) & ( !\GFX|FB|Data_FIFO|auto_generated|op_1~9_sumout\ & ( \GFX|SHADER|S_CTRL1|out\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100110000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_op_1~5_sumout\,
	datab => \GFX|SHADER|S_CTRL1|ALT_INV_out\(0),
	datac => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_op_1~1_sumout\,
	datae => \GFX|SHADER|S_CTRL2|ALT_INV_out\(0),
	dataf => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_op_1~9_sumout\,
	combout => \GFX|SHADER|comb~6_combout\);

-- Location: FF_X28_Y31_N32
\GFX|SHADER|S_CTRL2|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|SHADER|comb~6_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|S_CTRL2|out\(0));

-- Location: MLABCELL_X28_Y79_N30
\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|_~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|_~1_combout\ = ( !\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|parity9~q\ & ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a0~q\ & ( (\GFX|SHADER|S_CTRL2|out\(0) & 
-- ((!\GFX|FB|Data_FIFO|auto_generated|op_1~9_sumout\) # ((!\GFX|FB|Data_FIFO|auto_generated|op_1~1_sumout\) # (!\GFX|FB|Data_FIFO|auto_generated|op_1~5_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_op_1~9_sumout\,
	datab => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_op_1~1_sumout\,
	datac => \GFX|SHADER|S_CTRL2|ALT_INV_out\(0),
	datad => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_op_1~5_sumout\,
	datae => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_parity9~q\,
	dataf => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a0~q\,
	combout => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|_~1_combout\);

-- Location: FF_X28_Y80_N32
\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a4~q\);

-- Location: MLABCELL_X28_Y80_N33
\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a3~0_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a2~q\ & ( !\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a3~q\ $ (((!\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|_~1_combout\) # 
-- (\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a1~DUPLICATE_q\))) ) ) # ( !\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a2~q\ & ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100100010110111010010001011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a1~DUPLICATE_q\,
	datab => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV__~1_combout\,
	datad => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a3~q\,
	dataf => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a2~q\,
	combout => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a3~0_combout\);

-- Location: FF_X28_Y80_N34
\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a3~q\);

-- Location: MLABCELL_X28_Y80_N30
\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a4~0_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a3~q\ & ( !\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a4~q\ $ ((((!\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|_~1_combout\) # 
-- (\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a2~q\)) # (\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a1~DUPLICATE_q\))) ) ) # ( !\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a3~q\ & ( 
-- \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a4~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100100000110111110010000011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a1~DUPLICATE_q\,
	datab => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV__~1_combout\,
	datac => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a2~q\,
	datad => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a4~q\,
	dataf => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a3~q\,
	combout => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a4~0_combout\);

-- Location: FF_X28_Y80_N31
\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a4~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a4~DUPLICATE_q\);

-- Location: FF_X28_Y80_N10
\GFX|FB|Data_FIFO|auto_generated|wrptr_g[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a4~DUPLICATE_q\,
	sload => VCC,
	ena => \GFX|FB|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|wrptr_g\(4));

-- Location: FF_X28_Y79_N41
\GFX|FB|Data_FIFO|auto_generated|wrptr_g[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a3~q\,
	sload => VCC,
	ena => \GFX|FB|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|wrptr_g\(3));

-- Location: LABCELL_X27_Y79_N42
\GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|xor3\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|xor3~combout\ = ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|xor5~combout\ & ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g\(3) & ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g\(4) ) ) ) # ( 
-- !\GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|xor5~combout\ & ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g\(3) & ( !\GFX|FB|Data_FIFO|auto_generated|wrptr_g\(4) ) ) ) # ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|xor5~combout\ & ( 
-- !\GFX|FB|Data_FIFO|auto_generated|wrptr_g\(3) & ( !\GFX|FB|Data_FIFO|auto_generated|wrptr_g\(4) ) ) ) # ( !\GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|xor5~combout\ & ( !\GFX|FB|Data_FIFO|auto_generated|wrptr_g\(3) & ( 
-- \GFX|FB|Data_FIFO|auto_generated|wrptr_g\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110011001100110011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_wrptr_g\(4),
	datae => \GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|ALT_INV_xor5~combout\,
	dataf => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_wrptr_g\(3),
	combout => \GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|xor3~combout\);

-- Location: FF_X27_Y79_N43
\GFX|FB|Data_FIFO|auto_generated|ws_bwp|dffe15a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|xor3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|ws_bwp|dffe15a\(3));

-- Location: MLABCELL_X28_Y80_N36
\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a5~0_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a5~q\ & ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a3~q\ ) ) # ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a5~q\ & ( 
-- !\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a3~q\ & ( ((!\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|_~1_combout\) # ((!\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a4~q\) # 
-- (\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a1~DUPLICATE_q\))) # (\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a2~q\) ) ) ) # ( !\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a5~q\ & ( 
-- !\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a3~q\ & ( (!\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a2~q\ & (\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|_~1_combout\ & (!\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a1~DUPLICATE_q\ & 
-- \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a4~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000111111111101111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a2~q\,
	datab => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV__~1_combout\,
	datac => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a1~DUPLICATE_q\,
	datad => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a4~q\,
	datae => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a5~q\,
	dataf => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a3~q\,
	combout => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a5~0_combout\);

-- Location: FF_X28_Y80_N38
\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a5~q\);

-- Location: FF_X28_Y80_N13
\GFX|FB|Data_FIFO|auto_generated|wrptr_g[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a5~q\,
	sload => VCC,
	ena => \GFX|FB|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|wrptr_g[5]~DUPLICATE_q\);

-- Location: FF_X28_Y79_N34
\GFX|FB|Data_FIFO|auto_generated|wrptr_g[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a2~q\,
	sload => VCC,
	ena => \GFX|FB|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|wrptr_g\(2));

-- Location: LABCELL_X27_Y79_N6
\GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|xor2\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|xor2~combout\ = ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g\(2) & ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g\(3) & ( !\GFX|FB|Data_FIFO|auto_generated|wrptr_g[5]~DUPLICATE_q\ $ 
-- (!\GFX|FB|Data_FIFO|auto_generated|wrptr_g\(4) $ (\GFX|FB|Data_FIFO|auto_generated|ram_address_a\(6))) ) ) ) # ( !\GFX|FB|Data_FIFO|auto_generated|wrptr_g\(2) & ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g\(3) & ( 
-- !\GFX|FB|Data_FIFO|auto_generated|wrptr_g[5]~DUPLICATE_q\ $ (!\GFX|FB|Data_FIFO|auto_generated|wrptr_g\(4) $ (!\GFX|FB|Data_FIFO|auto_generated|ram_address_a\(6))) ) ) ) # ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g\(2) & ( 
-- !\GFX|FB|Data_FIFO|auto_generated|wrptr_g\(3) & ( !\GFX|FB|Data_FIFO|auto_generated|wrptr_g[5]~DUPLICATE_q\ $ (!\GFX|FB|Data_FIFO|auto_generated|wrptr_g\(4) $ (!\GFX|FB|Data_FIFO|auto_generated|ram_address_a\(6))) ) ) ) # ( 
-- !\GFX|FB|Data_FIFO|auto_generated|wrptr_g\(2) & ( !\GFX|FB|Data_FIFO|auto_generated|wrptr_g\(3) & ( !\GFX|FB|Data_FIFO|auto_generated|wrptr_g[5]~DUPLICATE_q\ $ (!\GFX|FB|Data_FIFO|auto_generated|wrptr_g\(4) $ 
-- (\GFX|FB|Data_FIFO|auto_generated|ram_address_a\(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001100101101001011010010110100101100110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_wrptr_g[5]~DUPLICATE_q\,
	datab => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_wrptr_g\(4),
	datac => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_ram_address_a\(6),
	datae => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_wrptr_g\(2),
	dataf => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_wrptr_g\(3),
	combout => \GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|xor2~combout\);

-- Location: LABCELL_X27_Y79_N18
\GFX|FB|Data_FIFO|auto_generated|ws_bwp|dffe15a[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|ws_bwp|dffe15a[2]~feeder_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|xor2~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|ALT_INV_xor2~combout\,
	combout => \GFX|FB|Data_FIFO|auto_generated|ws_bwp|dffe15a[2]~feeder_combout\);

-- Location: FF_X27_Y79_N19
\GFX|FB|Data_FIFO|auto_generated|ws_bwp|dffe15a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|ws_bwp|dffe15a[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|ws_bwp|dffe15a\(2));

-- Location: FF_X27_Y80_N28
\GFX|FB|Data_FIFO|auto_generated|rdptr_g[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a2~q\,
	sload => VCC,
	ena => \GFX|FB|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|rdptr_g\(2));

-- Location: LABCELL_X29_Y79_N18
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[2]~feeder_combout\ = \GFX|FB|Data_FIFO|auto_generated|rdptr_g\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_rdptr_g\(2),
	combout => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[2]~feeder_combout\);

-- Location: FF_X29_Y79_N20
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a\(2));

-- Location: FF_X29_Y79_N55
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe18a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe18a\(2));

-- Location: LABCELL_X29_Y79_N36
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg[2]~feeder_combout\ = \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe18a\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|ALT_INV_dffe18a\(2),
	combout => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg[2]~feeder_combout\);

-- Location: FF_X29_Y79_N38
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg\(2));

-- Location: LABCELL_X29_Y79_N39
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor2\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor2~combout\ = ( \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg\(4) & ( !\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg\(2) $ (!\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg\(5) $ 
-- (!\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg\(3) $ (\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor6~combout\))) ) ) # ( !\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg\(4) & ( !\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg\(2) $ 
-- (!\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg\(5) $ (!\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg\(3) $ (!\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor6~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011010010110011010011001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_ws_dgrp_reg\(2),
	datab => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_ws_dgrp_reg\(5),
	datac => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_ws_dgrp_reg\(3),
	datad => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|ALT_INV_xor6~combout\,
	dataf => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_ws_dgrp_reg\(4),
	combout => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor2~combout\);

-- Location: FF_X29_Y79_N1
\GFX|FB|Data_FIFO|auto_generated|ws_brp|dffe15a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor2~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|ws_brp|dffe15a\(2));

-- Location: FF_X29_Y80_N46
\GFX|FB|Data_FIFO|auto_generated|rdptr_g[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a1~DUPLICATE_q\,
	sload => VCC,
	ena => \GFX|FB|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|rdptr_g\(1));

-- Location: LABCELL_X29_Y79_N24
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[1]~feeder_combout\ = \GFX|FB|Data_FIFO|auto_generated|rdptr_g\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_rdptr_g\(1),
	combout => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[1]~feeder_combout\);

-- Location: FF_X29_Y79_N25
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a\(1));

-- Location: FF_X29_Y79_N46
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe18a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe18a\(1));

-- Location: FF_X29_Y79_N50
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe18a\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg\(1));

-- Location: LABCELL_X29_Y79_N42
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor1~combout\ = ( \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor2~combout\ & ( !\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg\(1) ) ) # ( 
-- !\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor2~combout\ & ( \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_ws_dgrp_reg\(1),
	dataf => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|ALT_INV_xor2~combout\,
	combout => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor1~combout\);

-- Location: FF_X29_Y79_N43
\GFX|FB|Data_FIFO|auto_generated|ws_brp|dffe15a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|ws_brp|dffe15a\(1));

-- Location: FF_X28_Y79_N22
\GFX|FB|Data_FIFO|auto_generated|wrptr_g[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a1~DUPLICATE_q\,
	sload => VCC,
	ena => \GFX|FB|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|wrptr_g\(1));

-- Location: LABCELL_X27_Y79_N15
\GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|xor1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|xor1~combout\ = ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|xor2~combout\ & ( !\GFX|FB|Data_FIFO|auto_generated|wrptr_g\(1) ) ) # ( !\GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|xor2~combout\ 
-- & ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_wrptr_g\(1),
	dataf => \GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|ALT_INV_xor2~combout\,
	combout => \GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|xor1~combout\);

-- Location: FF_X27_Y79_N16
\GFX|FB|Data_FIFO|auto_generated|ws_bwp|dffe15a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|xor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|ws_bwp|dffe15a\(1));

-- Location: LABCELL_X27_Y79_N48
\GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|xor0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|xor0~combout\ = ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g\(1) & ( !\GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|xor2~combout\ $ (\GFX|FB|Data_FIFO|auto_generated|wrptr_g\(0)) ) ) # ( 
-- !\GFX|FB|Data_FIFO|auto_generated|wrptr_g\(1) & ( !\GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|xor2~combout\ $ (!\GFX|FB|Data_FIFO|auto_generated|wrptr_g\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110011001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|ALT_INV_xor2~combout\,
	datad => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_wrptr_g\(0),
	dataf => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_wrptr_g\(1),
	combout => \GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|xor0~combout\);

-- Location: FF_X27_Y79_N49
\GFX|FB|Data_FIFO|auto_generated|ws_bwp|dffe15a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|xor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|ws_bwp|dffe15a\(0));

-- Location: LABCELL_X27_Y78_N33
\GFX|FB|Data_FIFO|auto_generated|rdptr_g[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|rdptr_g[0]~0_combout\ = !\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a0~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a0~q\,
	combout => \GFX|FB|Data_FIFO|auto_generated|rdptr_g[0]~0_combout\);

-- Location: FF_X27_Y78_N34
\GFX|FB|Data_FIFO|auto_generated|rdptr_g[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|rdptr_g[0]~0_combout\,
	ena => \GFX|FB|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|rdptr_g[0]~DUPLICATE_q\);

-- Location: LABCELL_X29_Y79_N48
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[0]~feeder_combout\ = \GFX|FB|Data_FIFO|auto_generated|rdptr_g[0]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_rdptr_g[0]~DUPLICATE_q\,
	combout => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[0]~feeder_combout\);

-- Location: FF_X29_Y79_N49
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a\(0));

-- Location: LABCELL_X29_Y79_N45
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe18a[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe18a[0]~feeder_combout\ = \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|ALT_INV_dffe17a\(0),
	combout => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe18a[0]~feeder_combout\);

-- Location: FF_X29_Y79_N47
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe18a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe18a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe18a\(0));

-- Location: FF_X29_Y79_N26
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe18a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg\(0));

-- Location: LABCELL_X29_Y79_N27
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor0~combout\ = ( \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg\(0) & ( !\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg\(1) $ (\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor2~combout\) ) ) # ( 
-- !\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg\(0) & ( !\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg\(1) $ (!\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor2~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_ws_dgrp_reg\(1),
	datac => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|ALT_INV_xor2~combout\,
	dataf => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_ws_dgrp_reg\(0),
	combout => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor0~combout\);

-- Location: FF_X29_Y79_N29
\GFX|FB|Data_FIFO|auto_generated|ws_brp|dffe15a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|ws_brp|dffe15a\(0));

-- Location: MLABCELL_X28_Y79_N0
\GFX|FB|Data_FIFO|auto_generated|op_1~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|op_1~26_cout\ = CARRY(( !\GFX|FB|Data_FIFO|auto_generated|ws_bwp|dffe15a\(0) $ (!\GFX|FB|Data_FIFO|auto_generated|ws_brp|dffe15a\(0)) ) + ( !VCC ) + ( !VCC ))
-- \GFX|FB|Data_FIFO|auto_generated|op_1~27\ = SHARE((!\GFX|FB|Data_FIFO|auto_generated|ws_brp|dffe15a\(0)) # (\GFX|FB|Data_FIFO|auto_generated|ws_bwp|dffe15a\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \GFX|FB|Data_FIFO|auto_generated|ws_bwp|ALT_INV_dffe15a\(0),
	datac => \GFX|FB|Data_FIFO|auto_generated|ws_brp|ALT_INV_dffe15a\(0),
	cin => GND,
	sharein => GND,
	cout => \GFX|FB|Data_FIFO|auto_generated|op_1~26_cout\,
	shareout => \GFX|FB|Data_FIFO|auto_generated|op_1~27\);

-- Location: MLABCELL_X28_Y79_N3
\GFX|FB|Data_FIFO|auto_generated|op_1~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|op_1~22_cout\ = CARRY(( !\GFX|FB|Data_FIFO|auto_generated|ws_brp|dffe15a\(1) $ (\GFX|FB|Data_FIFO|auto_generated|ws_bwp|dffe15a\(1)) ) + ( \GFX|FB|Data_FIFO|auto_generated|op_1~27\ ) + ( 
-- \GFX|FB|Data_FIFO|auto_generated|op_1~26_cout\ ))
-- \GFX|FB|Data_FIFO|auto_generated|op_1~23\ = SHARE((!\GFX|FB|Data_FIFO|auto_generated|ws_brp|dffe15a\(1) & \GFX|FB|Data_FIFO|auto_generated|ws_bwp|dffe15a\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|ws_brp|ALT_INV_dffe15a\(1),
	datac => \GFX|FB|Data_FIFO|auto_generated|ws_bwp|ALT_INV_dffe15a\(1),
	cin => \GFX|FB|Data_FIFO|auto_generated|op_1~26_cout\,
	sharein => \GFX|FB|Data_FIFO|auto_generated|op_1~27\,
	cout => \GFX|FB|Data_FIFO|auto_generated|op_1~22_cout\,
	shareout => \GFX|FB|Data_FIFO|auto_generated|op_1~23\);

-- Location: MLABCELL_X28_Y79_N6
\GFX|FB|Data_FIFO|auto_generated|op_1~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|op_1~18_cout\ = CARRY(( !\GFX|FB|Data_FIFO|auto_generated|ws_bwp|dffe15a\(2) $ (\GFX|FB|Data_FIFO|auto_generated|ws_brp|dffe15a\(2)) ) + ( \GFX|FB|Data_FIFO|auto_generated|op_1~23\ ) + ( 
-- \GFX|FB|Data_FIFO|auto_generated|op_1~22_cout\ ))
-- \GFX|FB|Data_FIFO|auto_generated|op_1~19\ = SHARE((\GFX|FB|Data_FIFO|auto_generated|ws_bwp|dffe15a\(2) & !\GFX|FB|Data_FIFO|auto_generated|ws_brp|dffe15a\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \GFX|FB|Data_FIFO|auto_generated|ws_bwp|ALT_INV_dffe15a\(2),
	datac => \GFX|FB|Data_FIFO|auto_generated|ws_brp|ALT_INV_dffe15a\(2),
	cin => \GFX|FB|Data_FIFO|auto_generated|op_1~22_cout\,
	sharein => \GFX|FB|Data_FIFO|auto_generated|op_1~23\,
	cout => \GFX|FB|Data_FIFO|auto_generated|op_1~18_cout\,
	shareout => \GFX|FB|Data_FIFO|auto_generated|op_1~19\);

-- Location: MLABCELL_X28_Y79_N9
\GFX|FB|Data_FIFO|auto_generated|op_1~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|op_1~14_cout\ = CARRY(( !\GFX|FB|Data_FIFO|auto_generated|ws_brp|dffe15a\(3) $ (\GFX|FB|Data_FIFO|auto_generated|ws_bwp|dffe15a\(3)) ) + ( \GFX|FB|Data_FIFO|auto_generated|op_1~19\ ) + ( 
-- \GFX|FB|Data_FIFO|auto_generated|op_1~18_cout\ ))
-- \GFX|FB|Data_FIFO|auto_generated|op_1~15\ = SHARE((!\GFX|FB|Data_FIFO|auto_generated|ws_brp|dffe15a\(3) & \GFX|FB|Data_FIFO|auto_generated|ws_bwp|dffe15a\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|ws_brp|ALT_INV_dffe15a\(3),
	datac => \GFX|FB|Data_FIFO|auto_generated|ws_bwp|ALT_INV_dffe15a\(3),
	cin => \GFX|FB|Data_FIFO|auto_generated|op_1~18_cout\,
	sharein => \GFX|FB|Data_FIFO|auto_generated|op_1~19\,
	cout => \GFX|FB|Data_FIFO|auto_generated|op_1~14_cout\,
	shareout => \GFX|FB|Data_FIFO|auto_generated|op_1~15\);

-- Location: MLABCELL_X28_Y79_N12
\GFX|FB|Data_FIFO|auto_generated|op_1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|op_1~1_sumout\ = SUM(( !\GFX|FB|Data_FIFO|auto_generated|ws_bwp|dffe15a\(4) $ (\GFX|FB|Data_FIFO|auto_generated|ws_brp|dffe15a\(4)) ) + ( \GFX|FB|Data_FIFO|auto_generated|op_1~15\ ) + ( 
-- \GFX|FB|Data_FIFO|auto_generated|op_1~14_cout\ ))
-- \GFX|FB|Data_FIFO|auto_generated|op_1~2\ = CARRY(( !\GFX|FB|Data_FIFO|auto_generated|ws_bwp|dffe15a\(4) $ (\GFX|FB|Data_FIFO|auto_generated|ws_brp|dffe15a\(4)) ) + ( \GFX|FB|Data_FIFO|auto_generated|op_1~15\ ) + ( 
-- \GFX|FB|Data_FIFO|auto_generated|op_1~14_cout\ ))
-- \GFX|FB|Data_FIFO|auto_generated|op_1~3\ = SHARE((\GFX|FB|Data_FIFO|auto_generated|ws_bwp|dffe15a\(4) & !\GFX|FB|Data_FIFO|auto_generated|ws_brp|dffe15a\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \GFX|FB|Data_FIFO|auto_generated|ws_bwp|ALT_INV_dffe15a\(4),
	datac => \GFX|FB|Data_FIFO|auto_generated|ws_brp|ALT_INV_dffe15a\(4),
	cin => \GFX|FB|Data_FIFO|auto_generated|op_1~14_cout\,
	sharein => \GFX|FB|Data_FIFO|auto_generated|op_1~15\,
	sumout => \GFX|FB|Data_FIFO|auto_generated|op_1~1_sumout\,
	cout => \GFX|FB|Data_FIFO|auto_generated|op_1~2\,
	shareout => \GFX|FB|Data_FIFO|auto_generated|op_1~3\);

-- Location: MLABCELL_X28_Y79_N15
\GFX|FB|Data_FIFO|auto_generated|op_1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|op_1~5_sumout\ = SUM(( !\GFX|FB|Data_FIFO|auto_generated|ws_brp|dffe15a\(5) $ (\GFX|FB|Data_FIFO|auto_generated|ws_bwp|dffe15a\(5)) ) + ( \GFX|FB|Data_FIFO|auto_generated|op_1~3\ ) + ( 
-- \GFX|FB|Data_FIFO|auto_generated|op_1~2\ ))
-- \GFX|FB|Data_FIFO|auto_generated|op_1~6\ = CARRY(( !\GFX|FB|Data_FIFO|auto_generated|ws_brp|dffe15a\(5) $ (\GFX|FB|Data_FIFO|auto_generated|ws_bwp|dffe15a\(5)) ) + ( \GFX|FB|Data_FIFO|auto_generated|op_1~3\ ) + ( \GFX|FB|Data_FIFO|auto_generated|op_1~2\ 
-- ))
-- \GFX|FB|Data_FIFO|auto_generated|op_1~7\ = SHARE((!\GFX|FB|Data_FIFO|auto_generated|ws_brp|dffe15a\(5) & \GFX|FB|Data_FIFO|auto_generated|ws_bwp|dffe15a\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|ws_brp|ALT_INV_dffe15a\(5),
	datac => \GFX|FB|Data_FIFO|auto_generated|ws_bwp|ALT_INV_dffe15a\(5),
	cin => \GFX|FB|Data_FIFO|auto_generated|op_1~2\,
	sharein => \GFX|FB|Data_FIFO|auto_generated|op_1~3\,
	sumout => \GFX|FB|Data_FIFO|auto_generated|op_1~5_sumout\,
	cout => \GFX|FB|Data_FIFO|auto_generated|op_1~6\,
	shareout => \GFX|FB|Data_FIFO|auto_generated|op_1~7\);

-- Location: MLABCELL_X28_Y79_N42
\GFX|FB|WideAnd0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|WideAnd0~0_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|op_1~5_sumout\ & ( \GFX|FB|Data_FIFO|auto_generated|op_1~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_op_1~1_sumout\,
	dataf => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_op_1~5_sumout\,
	combout => \GFX|FB|WideAnd0~0_combout\);

-- Location: FF_X28_Y79_N50
\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a1~q\);

-- Location: MLABCELL_X28_Y79_N48
\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a1~0_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a1~q\ & ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a0~q\ ) ) # ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a1~q\ & ( 
-- !\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a0~q\ & ( (!\GFX|SHADER|S_CTRL2|out\(0)) # (((\GFX|FB|Data_FIFO|auto_generated|op_1~9_sumout\ & \GFX|FB|WideAnd0~0_combout\)) # (\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|parity9~q\)) ) ) ) # ( 
-- !\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a1~q\ & ( !\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a0~q\ & ( (\GFX|SHADER|S_CTRL2|out\(0) & (!\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|parity9~q\ & 
-- ((!\GFX|FB|Data_FIFO|auto_generated|op_1~9_sumout\) # (!\GFX|FB|WideAnd0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000000000111100011111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_op_1~9_sumout\,
	datab => \GFX|FB|ALT_INV_WideAnd0~0_combout\,
	datac => \GFX|SHADER|S_CTRL2|ALT_INV_out\(0),
	datad => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_parity9~q\,
	datae => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a1~q\,
	dataf => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a0~q\,
	combout => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a1~0_combout\);

-- Location: FF_X28_Y79_N49
\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a1~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a1~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y79_N36
\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|_~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|_~2_combout\ = ( !\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|parity9~q\ & ( \GFX|SHADER|S_CTRL2|out\(0) & ( (!\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a1~DUPLICATE_q\ & 
-- (\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a0~q\ & ((!\GFX|FB|Data_FIFO|auto_generated|op_1~9_sumout\) # (!\GFX|FB|WideAnd0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_op_1~9_sumout\,
	datab => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a1~DUPLICATE_q\,
	datac => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a0~q\,
	datad => \GFX|FB|ALT_INV_WideAnd0~0_combout\,
	datae => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_parity9~q\,
	dataf => \GFX|SHADER|S_CTRL2|ALT_INV_out\(0),
	combout => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|_~2_combout\);

-- Location: MLABCELL_X28_Y80_N18
\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a6~0_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a6~q\ & ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a3~q\ ) ) # ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a6~q\ & ( 
-- !\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a3~q\ & ( ((!\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|_~2_combout\) # ((!\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a5~q\) # (\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a4~q\))) # 
-- (\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a2~q\) ) ) ) # ( !\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a6~q\ & ( !\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a3~q\ & ( (!\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a2~q\ & 
-- (\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|_~2_combout\ & (\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a5~q\ & !\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a4~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000111111011111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a2~q\,
	datab => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV__~2_combout\,
	datac => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a5~q\,
	datad => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a4~q\,
	datae => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a6~q\,
	dataf => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a3~q\,
	combout => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a6~0_combout\);

-- Location: FF_X28_Y80_N19
\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a6~q\);

-- Location: FF_X28_Y80_N1
\GFX|FB|Data_FIFO|auto_generated|wrptr_g[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a6~q\,
	sload => VCC,
	ena => \GFX|FB|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|wrptr_g\(6));

-- Location: MLABCELL_X28_Y80_N42
\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a7~0_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a7~q\ & ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a3~q\ ) ) # ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a7~q\ & ( 
-- !\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a3~q\ & ( ((!\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|_~2_combout\) # ((\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a4~q\) # (\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a5~q\))) # 
-- (\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a2~q\) ) ) ) # ( !\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a7~q\ & ( !\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a3~q\ & ( (!\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a2~q\ & 
-- (\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|_~2_combout\ & (!\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a5~q\ & !\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a4~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000110111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a2~q\,
	datab => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV__~2_combout\,
	datac => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a5~q\,
	datad => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a4~q\,
	datae => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a7~q\,
	dataf => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a3~q\,
	combout => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a7~0_combout\);

-- Location: FF_X28_Y80_N44
\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a7~q\);

-- Location: FF_X28_Y80_N16
\GFX|FB|Data_FIFO|auto_generated|wrptr_g[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a7~q\,
	sload => VCC,
	ena => \GFX|FB|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|wrptr_g[7]~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y80_N0
\GFX|FB|Data_FIFO|auto_generated|ram_address_a[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|ram_address_a\(6) = ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g[7]~DUPLICATE_q\ & ( !\GFX|FB|Data_FIFO|auto_generated|wrptr_g\(6) ) ) # ( !\GFX|FB|Data_FIFO|auto_generated|wrptr_g[7]~DUPLICATE_q\ & ( 
-- \GFX|FB|Data_FIFO|auto_generated|wrptr_g\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_wrptr_g\(6),
	dataf => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_wrptr_g[7]~DUPLICATE_q\,
	combout => \GFX|FB|Data_FIFO|auto_generated|ram_address_a\(6));

-- Location: LABCELL_X27_Y79_N30
\GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|xor5\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|xor5~combout\ = ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g[5]~DUPLICATE_q\ & ( !\GFX|FB|Data_FIFO|auto_generated|ram_address_a\(6) ) ) # ( !\GFX|FB|Data_FIFO|auto_generated|wrptr_g[5]~DUPLICATE_q\ & ( 
-- \GFX|FB|Data_FIFO|auto_generated|ram_address_a\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_ram_address_a\(6),
	dataf => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_wrptr_g[5]~DUPLICATE_q\,
	combout => \GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|xor5~combout\);

-- Location: LABCELL_X27_Y79_N33
\GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|xor4\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|xor4~combout\ = ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g\(4) & ( !\GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|xor5~combout\ ) ) # ( !\GFX|FB|Data_FIFO|auto_generated|wrptr_g\(4) & ( 
-- \GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|xor5~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|ALT_INV_xor5~combout\,
	dataf => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_wrptr_g\(4),
	combout => \GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|xor4~combout\);

-- Location: FF_X27_Y79_N34
\GFX|FB|Data_FIFO|auto_generated|ws_bwp|dffe15a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|wrptr_g_gray2bin|xor4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|ws_bwp|dffe15a\(4));

-- Location: MLABCELL_X28_Y79_N27
\GFX|FB|WideAnd0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|WideAnd0~combout\ = ( \GFX|FB|Data_FIFO|auto_generated|op_1~5_sumout\ & ( (\GFX|FB|Data_FIFO|auto_generated|op_1~9_sumout\ & \GFX|FB|Data_FIFO|auto_generated|op_1~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_op_1~9_sumout\,
	datab => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_op_1~1_sumout\,
	dataf => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_op_1~5_sumout\,
	combout => \GFX|FB|WideAnd0~combout\);

-- Location: MLABCELL_X28_Y79_N54
\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a2~0_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a2~q\ & ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a0~q\ & ( (((!\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a1~q\) # 
-- (!\GFX|SHADER|S_CTRL2|out\(0))) # (\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|parity9~q\)) # (\GFX|FB|WideAnd0~combout\) ) ) ) # ( !\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a2~q\ & ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a0~q\ & ( 
-- (!\GFX|FB|WideAnd0~combout\ & (!\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|parity9~q\ & (\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a1~q\ & \GFX|SHADER|S_CTRL2|out\(0)))) ) ) ) # ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a2~q\ & ( 
-- !\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000010001111111111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|ALT_INV_WideAnd0~combout\,
	datab => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_parity9~q\,
	datac => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a1~q\,
	datad => \GFX|SHADER|S_CTRL2|ALT_INV_out\(0),
	datae => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a2~q\,
	dataf => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a0~q\,
	combout => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a2~0_combout\);

-- Location: FF_X28_Y79_N55
\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a2~q\);

-- Location: MLABCELL_X28_Y80_N6
\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|_~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|_~5_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a5~q\ & ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a3~q\ & ( !\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a2~q\ $ 
-- (!\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a1~DUPLICATE_q\ $ (!\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a0~q\ $ (\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a4~DUPLICATE_q\))) ) ) ) # ( 
-- !\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a5~q\ & ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a3~q\ & ( !\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a2~q\ $ (!\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a1~DUPLICATE_q\ $ 
-- (!\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a0~q\ $ (!\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a4~DUPLICATE_q\))) ) ) ) # ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a5~q\ & ( 
-- !\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a3~q\ & ( !\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a2~q\ $ (!\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a1~DUPLICATE_q\ $ (!\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a0~q\ $ 
-- (!\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a4~DUPLICATE_q\))) ) ) ) # ( !\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a5~q\ & ( !\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a3~q\ & ( 
-- !\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a2~q\ $ (!\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a1~DUPLICATE_q\ $ (!\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a0~q\ $ 
-- (\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a4~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011001101001011010011001011001101001100101101001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a2~q\,
	datab => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a1~DUPLICATE_q\,
	datac => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a0~q\,
	datad => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a4~DUPLICATE_q\,
	datae => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a5~q\,
	dataf => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a3~q\,
	combout => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|_~5_combout\);

-- Location: FF_X28_Y80_N8
\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|sub_parity10a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|_~5_combout\,
	ena => \GFX|FB|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|sub_parity10a\(0));

-- Location: MLABCELL_X28_Y80_N54
\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|_~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|_~4_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a6~q\ & ( !\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a7~q\ ) ) # ( !\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a6~q\ & ( 
-- \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a7~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a7~q\,
	dataf => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a6~q\,
	combout => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|_~4_combout\);

-- Location: FF_X28_Y80_N55
\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|sub_parity10a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|_~4_combout\,
	ena => \GFX|FB|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|sub_parity10a\(1));

-- Location: MLABCELL_X28_Y80_N57
\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|_~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|_~3_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|sub_parity10a\(1) & ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|sub_parity10a\(0) ) ) # ( !\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|sub_parity10a\(1) 
-- & ( !\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|sub_parity10a\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_sub_parity10a\(0),
	dataf => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_sub_parity10a\(1),
	combout => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|_~3_combout\);

-- Location: FF_X28_Y80_N59
\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|parity9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|_~3_combout\,
	ena => \GFX|FB|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|parity9~q\);

-- Location: MLABCELL_X28_Y79_N45
\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|_~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|_~0_combout\ = !\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|parity9~q\ $ (!\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a0~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_parity9~q\,
	datad => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a0~q\,
	combout => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|_~0_combout\);

-- Location: FF_X28_Y79_N46
\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|_~0_combout\,
	ena => \GFX|FB|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a0~q\);

-- Location: MLABCELL_X28_Y80_N3
\GFX|FB|Data_FIFO|auto_generated|wrptr_g[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|wrptr_g[0]~0_combout\ = !\GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a0~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|ALT_INV_counter8a0~q\,
	combout => \GFX|FB|Data_FIFO|auto_generated|wrptr_g[0]~0_combout\);

-- Location: FF_X28_Y80_N4
\GFX|FB|Data_FIFO|auto_generated|wrptr_g[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|wrptr_g[0]~0_combout\,
	ena => \GFX|FB|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|wrptr_g\(0));

-- Location: FF_X27_Y79_N41
\GFX|FB|Data_FIFO|auto_generated|delayed_wrptr_g[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|wrptr_g\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|delayed_wrptr_g\(0));

-- Location: FF_X27_Y78_N44
\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe13a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|delayed_wrptr_g\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe13a\(0));

-- Location: FF_X27_Y78_N47
\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe13a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(0));

-- Location: FF_X28_Y79_N35
\GFX|FB|Data_FIFO|auto_generated|wrptr_g[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a2~q\,
	sload => VCC,
	ena => \GFX|FB|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|wrptr_g[2]~DUPLICATE_q\);

-- Location: FF_X28_Y79_N58
\GFX|FB|Data_FIFO|auto_generated|delayed_wrptr_g[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|wrptr_g[2]~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|delayed_wrptr_g\(2));

-- Location: FF_X27_Y78_N41
\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe13a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|delayed_wrptr_g\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe13a\(2));

-- Location: LABCELL_X27_Y78_N57
\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a[2]~feeder_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe13a\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|ALT_INV_dffe13a\(2),
	combout => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a[2]~feeder_combout\);

-- Location: FF_X27_Y78_N58
\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(2));

-- Location: LABCELL_X27_Y79_N3
\GFX|FB|Data_FIFO|auto_generated|delayed_wrptr_g[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|delayed_wrptr_g[3]~feeder_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_wrptr_g\(3),
	combout => \GFX|FB|Data_FIFO|auto_generated|delayed_wrptr_g[3]~feeder_combout\);

-- Location: FF_X27_Y79_N5
\GFX|FB|Data_FIFO|auto_generated|delayed_wrptr_g[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|delayed_wrptr_g[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|delayed_wrptr_g\(3));

-- Location: LABCELL_X27_Y78_N54
\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe13a[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe13a[3]~feeder_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|delayed_wrptr_g\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_delayed_wrptr_g\(3),
	combout => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe13a[3]~feeder_combout\);

-- Location: FF_X27_Y78_N56
\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe13a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe13a[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe13a\(3));

-- Location: FF_X27_Y78_N38
\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe13a\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(3));

-- Location: FF_X27_Y78_N35
\GFX|FB|Data_FIFO|auto_generated|rdptr_g[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|rdptr_g[0]~0_combout\,
	ena => \GFX|FB|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|rdptr_g\(0));

-- Location: LABCELL_X27_Y78_N36
\GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~0_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(3) & ( \GFX|FB|Data_FIFO|auto_generated|rdptr_g\(0) & ( (\GFX|FB|Data_FIFO|auto_generated|rdptr_g\(3) & 
-- (\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(0) & (!\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(2) $ (\GFX|FB|Data_FIFO|auto_generated|rdptr_g\(2))))) ) ) ) # ( 
-- !\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(3) & ( \GFX|FB|Data_FIFO|auto_generated|rdptr_g\(0) & ( (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g\(3) & (\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(0) & 
-- (!\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(2) $ (\GFX|FB|Data_FIFO|auto_generated|rdptr_g\(2))))) ) ) ) # ( \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(3) & ( !\GFX|FB|Data_FIFO|auto_generated|rdptr_g\(0) & ( 
-- (\GFX|FB|Data_FIFO|auto_generated|rdptr_g\(3) & (!\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(0) & (!\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(2) $ (\GFX|FB|Data_FIFO|auto_generated|rdptr_g\(2))))) ) ) ) # ( 
-- !\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(3) & ( !\GFX|FB|Data_FIFO|auto_generated|rdptr_g\(0) & ( (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g\(3) & (!\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(0) & 
-- (!\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(2) $ (\GFX|FB|Data_FIFO|auto_generated|rdptr_g\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000010000000000010000100000000000100001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_rdptr_g\(3),
	datab => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|ALT_INV_dffe14a\(0),
	datac => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|ALT_INV_dffe14a\(2),
	datad => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_rdptr_g\(2),
	datae => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|ALT_INV_dffe14a\(3),
	dataf => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_rdptr_g\(0),
	combout => \GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X27_Y78_N45
\GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~1_combout\ = ( !\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(0) & ( \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a0~q\ & ( 
-- (!\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(2) & (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a2~q\ & (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a3~q\ $ 
-- (\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(3))))) # (\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(2) & (\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a2~q\ & (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a3~q\ 
-- $ (\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(3))))) ) ) ) # ( \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(0) & ( !\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a0~q\ & ( 
-- (!\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(2) & (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a2~q\ & (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a3~q\ $ 
-- (\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(3))))) # (\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(2) & (\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a2~q\ & (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a3~q\ 
-- $ (\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100100000000100110010000000010010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|ALT_INV_dffe14a\(2),
	datab => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a2~q\,
	datac => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a3~q\,
	datad => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|ALT_INV_dffe14a\(3),
	datae => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|ALT_INV_dffe14a\(0),
	dataf => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a0~q\,
	combout => \GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X27_Y79_N24
\GFX|FB|Data_FIFO|auto_generated|delayed_wrptr_g[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|delayed_wrptr_g[1]~feeder_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|wrptr_g\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_wrptr_g\(1),
	combout => \GFX|FB|Data_FIFO|auto_generated|delayed_wrptr_g[1]~feeder_combout\);

-- Location: FF_X27_Y79_N26
\GFX|FB|Data_FIFO|auto_generated|delayed_wrptr_g[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|delayed_wrptr_g[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|delayed_wrptr_g\(1));

-- Location: FF_X27_Y78_N28
\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe13a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|delayed_wrptr_g\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe13a\(1));

-- Location: FF_X29_Y80_N29
\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe13a\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(1));

-- Location: LABCELL_X29_Y80_N18
\GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~2_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(1) & ( \GFX|FB|Data_FIFO|auto_generated|rdptr_g\(1) & ( (!\GFX|FB|comb~1_combout\ & 
-- (((!\GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~0_combout\)))) # (\GFX|FB|comb~1_combout\ & ((!\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a1~DUPLICATE_q\) # 
-- ((!\GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~1_combout\)))) ) ) ) # ( !\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(1) & ( \GFX|FB|Data_FIFO|auto_generated|rdptr_g\(1) & ( ((!\GFX|FB|comb~1_combout\) # 
-- (!\GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~1_combout\)) # (\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a1~DUPLICATE_q\) ) ) ) # ( \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(1) & ( 
-- !\GFX|FB|Data_FIFO|auto_generated|rdptr_g\(1) & ( (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a1~DUPLICATE_q\) # ((!\GFX|FB|comb~1_combout\) # (!\GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~1_combout\)) ) ) ) # ( 
-- !\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(1) & ( !\GFX|FB|Data_FIFO|auto_generated|rdptr_g\(1) & ( (!\GFX|FB|comb~1_combout\ & (((!\GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~0_combout\)))) # 
-- (\GFX|FB|comb~1_combout\ & (((!\GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~1_combout\)) # (\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a1~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111010001111111111110111011111111110111011111001111100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a1~DUPLICATE_q\,
	datab => \GFX|FB|ALT_INV_comb~1_combout\,
	datac => \GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_lsb_mux|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datad => \GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_lsb_mux|ALT_INV_l1_w0_n0_mux_dataout~1_combout\,
	datae => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|ALT_INV_dffe14a\(1),
	dataf => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_rdptr_g\(1),
	combout => \GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~2_combout\);

-- Location: FF_X29_Y80_N20
\GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_lsb_aeb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_lsb_aeb~q\);

-- Location: LABCELL_X29_Y4_N33
\GFX|RASTER|R_REG|out[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|R_REG|out[0]~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[0]~input_o\,
	combout => \GFX|RASTER|R_REG|out[0]~0_combout\);

-- Location: FF_X29_Y4_N35
\GFX|RASTER|R_REG|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|RASTER|R_REG|out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|RASTER|R_REG|out\(0));

-- Location: LABCELL_X30_Y5_N30
\GFX|RASTER|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|Add0~25_sumout\ = SUM(( \GFX|RASTER|X_REG|out\(0) ) + ( VCC ) + ( !VCC ))
-- \GFX|RASTER|Add0~26\ = CARRY(( \GFX|RASTER|X_REG|out\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|RASTER|X_REG|ALT_INV_out\(0),
	cin => GND,
	sumout => \GFX|RASTER|Add0~25_sumout\,
	cout => \GFX|RASTER|Add0~26\);

-- Location: LABCELL_X29_Y4_N42
\GFX|RASTER|X_REG|out[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|X_REG|out[0]~6_combout\ = ( \KEY[0]~input_o\ & ( \GFX|RASTER|Equal0~1_combout\ & ( ((\GFX|RASTER|Add0~25_sumout\ & ((!\GFX|RASTER|Equal0~0_combout\) # (\GFX|RASTER|CTRL|out\(0))))) # (\GFX|RASTER|R_REG|out\(0)) ) ) ) # ( !\KEY[0]~input_o\ & ( 
-- \GFX|RASTER|Equal0~1_combout\ ) ) # ( \KEY[0]~input_o\ & ( !\GFX|RASTER|Equal0~1_combout\ & ( (\GFX|RASTER|Add0~25_sumout\) # (\GFX|RASTER|R_REG|out\(0)) ) ) ) # ( !\KEY[0]~input_o\ & ( !\GFX|RASTER|Equal0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111011101110111011111111111111111110111011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|RASTER|R_REG|ALT_INV_out\(0),
	datab => \GFX|RASTER|ALT_INV_Add0~25_sumout\,
	datac => \GFX|RASTER|CTRL|ALT_INV_out\(0),
	datad => \GFX|RASTER|ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_KEY[0]~input_o\,
	dataf => \GFX|RASTER|ALT_INV_Equal0~1_combout\,
	combout => \GFX|RASTER|X_REG|out[0]~6_combout\);

-- Location: FF_X29_Y4_N44
\GFX|RASTER|X_REG|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|RASTER|X_REG|out[0]~6_combout\,
	ena => \GFX|RASTER|CTRL|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|RASTER|X_REG|out\(0));

-- Location: LABCELL_X30_Y5_N33
\GFX|RASTER|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|Add0~33_sumout\ = SUM(( \GFX|RASTER|X_REG|out\(1) ) + ( GND ) + ( \GFX|RASTER|Add0~26\ ))
-- \GFX|RASTER|Add0~34\ = CARRY(( \GFX|RASTER|X_REG|out\(1) ) + ( GND ) + ( \GFX|RASTER|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|RASTER|X_REG|ALT_INV_out\(1),
	cin => \GFX|RASTER|Add0~26\,
	sumout => \GFX|RASTER|Add0~33_sumout\,
	cout => \GFX|RASTER|Add0~34\);

-- Location: LABCELL_X30_Y5_N24
\GFX|RASTER|X_REG|out[1]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|X_REG|out[1]~8_combout\ = ( \GFX|RASTER|R_REG|out\(0) & ( \GFX|RASTER|Add0~33_sumout\ ) ) # ( !\GFX|RASTER|R_REG|out\(0) & ( \GFX|RASTER|Add0~33_sumout\ & ( (!\GFX|RASTER|Equal0~1_combout\) # (((!\KEY[0]~input_o\) # 
-- (!\GFX|RASTER|Equal0~0_combout\)) # (\GFX|RASTER|CTRL|out\(0))) ) ) ) # ( \GFX|RASTER|R_REG|out\(0) & ( !\GFX|RASTER|Add0~33_sumout\ ) ) # ( !\GFX|RASTER|R_REG|out\(0) & ( !\GFX|RASTER|Add0~33_sumout\ & ( !\KEY[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111111111111111111111111111110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|RASTER|ALT_INV_Equal0~1_combout\,
	datab => \GFX|RASTER|CTRL|ALT_INV_out\(0),
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \GFX|RASTER|ALT_INV_Equal0~0_combout\,
	datae => \GFX|RASTER|R_REG|ALT_INV_out\(0),
	dataf => \GFX|RASTER|ALT_INV_Add0~33_sumout\,
	combout => \GFX|RASTER|X_REG|out[1]~8_combout\);

-- Location: FF_X30_Y5_N26
\GFX|RASTER|X_REG|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|RASTER|X_REG|out[1]~8_combout\,
	ena => \GFX|RASTER|CTRL|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|RASTER|X_REG|out\(1));

-- Location: LABCELL_X30_Y5_N36
\GFX|RASTER|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|Add0~29_sumout\ = SUM(( \GFX|RASTER|X_REG|out\(2) ) + ( GND ) + ( \GFX|RASTER|Add0~34\ ))
-- \GFX|RASTER|Add0~30\ = CARRY(( \GFX|RASTER|X_REG|out\(2) ) + ( GND ) + ( \GFX|RASTER|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GFX|RASTER|X_REG|ALT_INV_out\(2),
	cin => \GFX|RASTER|Add0~34\,
	sumout => \GFX|RASTER|Add0~29_sumout\,
	cout => \GFX|RASTER|Add0~30\);

-- Location: LABCELL_X30_Y5_N12
\GFX|RASTER|X_REG|out[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|X_REG|out[2]~7_combout\ = ( \GFX|RASTER|Add0~29_sumout\ & ( \KEY[0]~input_o\ & ( (!\GFX|RASTER|CTRL|out\(0) & (!\GFX|RASTER|R_REG|out\(0) & ((!\GFX|RASTER|Equal0~0_combout\) # (!\GFX|RASTER|Equal0~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|RASTER|CTRL|ALT_INV_out\(0),
	datab => \GFX|RASTER|ALT_INV_Equal0~0_combout\,
	datac => \GFX|RASTER|ALT_INV_Equal0~1_combout\,
	datad => \GFX|RASTER|R_REG|ALT_INV_out\(0),
	datae => \GFX|RASTER|ALT_INV_Add0~29_sumout\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \GFX|RASTER|X_REG|out[2]~7_combout\);

-- Location: FF_X30_Y5_N14
\GFX|RASTER|X_REG|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|RASTER|X_REG|out[2]~7_combout\,
	ena => \GFX|RASTER|CTRL|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|RASTER|X_REG|out\(2));

-- Location: LABCELL_X30_Y5_N39
\GFX|RASTER|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|Add0~37_sumout\ = SUM(( \GFX|RASTER|X_REG|out\(3) ) + ( GND ) + ( \GFX|RASTER|Add0~30\ ))
-- \GFX|RASTER|Add0~38\ = CARRY(( \GFX|RASTER|X_REG|out\(3) ) + ( GND ) + ( \GFX|RASTER|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|RASTER|X_REG|ALT_INV_out\(3),
	cin => \GFX|RASTER|Add0~30\,
	sumout => \GFX|RASTER|Add0~37_sumout\,
	cout => \GFX|RASTER|Add0~38\);

-- Location: LABCELL_X30_Y5_N27
\GFX|RASTER|X_REG|out[3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|X_REG|out[3]~9_combout\ = ( \GFX|RASTER|R_REG|out\(0) & ( \GFX|RASTER|Add0~37_sumout\ ) ) # ( !\GFX|RASTER|R_REG|out\(0) & ( \GFX|RASTER|Add0~37_sumout\ & ( (!\GFX|RASTER|Equal0~1_combout\) # (((!\GFX|RASTER|Equal0~0_combout\) # 
-- (!\KEY[0]~input_o\)) # (\GFX|RASTER|CTRL|out\(0))) ) ) ) # ( \GFX|RASTER|R_REG|out\(0) & ( !\GFX|RASTER|Add0~37_sumout\ ) ) # ( !\GFX|RASTER|R_REG|out\(0) & ( !\GFX|RASTER|Add0~37_sumout\ & ( !\KEY[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111111111111111111111111110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|RASTER|ALT_INV_Equal0~1_combout\,
	datab => \GFX|RASTER|CTRL|ALT_INV_out\(0),
	datac => \GFX|RASTER|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_KEY[0]~input_o\,
	datae => \GFX|RASTER|R_REG|ALT_INV_out\(0),
	dataf => \GFX|RASTER|ALT_INV_Add0~37_sumout\,
	combout => \GFX|RASTER|X_REG|out[3]~9_combout\);

-- Location: FF_X30_Y5_N29
\GFX|RASTER|X_REG|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|RASTER|X_REG|out[3]~9_combout\,
	ena => \GFX|RASTER|CTRL|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|RASTER|X_REG|out\(3));

-- Location: LABCELL_X30_Y5_N42
\GFX|RASTER|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|Add0~21_sumout\ = SUM(( \GFX|RASTER|X_REG|out\(4) ) + ( GND ) + ( \GFX|RASTER|Add0~38\ ))
-- \GFX|RASTER|Add0~22\ = CARRY(( \GFX|RASTER|X_REG|out\(4) ) + ( GND ) + ( \GFX|RASTER|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|RASTER|X_REG|ALT_INV_out\(4),
	cin => \GFX|RASTER|Add0~38\,
	sumout => \GFX|RASTER|Add0~21_sumout\,
	cout => \GFX|RASTER|Add0~22\);

-- Location: LABCELL_X30_Y5_N21
\GFX|RASTER|X_REG|out[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|X_REG|out[4]~5_combout\ = ( \GFX|RASTER|R_REG|out\(0) & ( \GFX|RASTER|Add0~21_sumout\ ) ) # ( !\GFX|RASTER|R_REG|out\(0) & ( \GFX|RASTER|Add0~21_sumout\ & ( (!\GFX|RASTER|Equal0~1_combout\) # (((!\GFX|RASTER|Equal0~0_combout\) # 
-- (!\KEY[0]~input_o\)) # (\GFX|RASTER|CTRL|out\(0))) ) ) ) # ( \GFX|RASTER|R_REG|out\(0) & ( !\GFX|RASTER|Add0~21_sumout\ ) ) # ( !\GFX|RASTER|R_REG|out\(0) & ( !\GFX|RASTER|Add0~21_sumout\ & ( !\KEY[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111111111111111111111111110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|RASTER|ALT_INV_Equal0~1_combout\,
	datab => \GFX|RASTER|CTRL|ALT_INV_out\(0),
	datac => \GFX|RASTER|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_KEY[0]~input_o\,
	datae => \GFX|RASTER|R_REG|ALT_INV_out\(0),
	dataf => \GFX|RASTER|ALT_INV_Add0~21_sumout\,
	combout => \GFX|RASTER|X_REG|out[4]~5_combout\);

-- Location: FF_X30_Y5_N23
\GFX|RASTER|X_REG|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|RASTER|X_REG|out[4]~5_combout\,
	ena => \GFX|RASTER|CTRL|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|RASTER|X_REG|out\(4));

-- Location: LABCELL_X30_Y5_N45
\GFX|RASTER|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|Add0~9_sumout\ = SUM(( \GFX|RASTER|X_REG|out\(5) ) + ( GND ) + ( \GFX|RASTER|Add0~22\ ))
-- \GFX|RASTER|Add0~10\ = CARRY(( \GFX|RASTER|X_REG|out\(5) ) + ( GND ) + ( \GFX|RASTER|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|RASTER|X_REG|ALT_INV_out\(5),
	cin => \GFX|RASTER|Add0~22\,
	sumout => \GFX|RASTER|Add0~9_sumout\,
	cout => \GFX|RASTER|Add0~10\);

-- Location: LABCELL_X30_Y5_N9
\GFX|RASTER|X_REG|out[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|X_REG|out[5]~2_combout\ = ( \GFX|RASTER|R_REG|out\(0) & ( \GFX|RASTER|Add0~9_sumout\ ) ) # ( !\GFX|RASTER|R_REG|out\(0) & ( \GFX|RASTER|Add0~9_sumout\ & ( (!\GFX|RASTER|Equal0~1_combout\) # (((!\GFX|RASTER|Equal0~0_combout\) # 
-- (!\KEY[0]~input_o\)) # (\GFX|RASTER|CTRL|out\(0))) ) ) ) # ( \GFX|RASTER|R_REG|out\(0) & ( !\GFX|RASTER|Add0~9_sumout\ ) ) # ( !\GFX|RASTER|R_REG|out\(0) & ( !\GFX|RASTER|Add0~9_sumout\ & ( !\KEY[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111111111111111111111111110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|RASTER|ALT_INV_Equal0~1_combout\,
	datab => \GFX|RASTER|CTRL|ALT_INV_out\(0),
	datac => \GFX|RASTER|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_KEY[0]~input_o\,
	datae => \GFX|RASTER|R_REG|ALT_INV_out\(0),
	dataf => \GFX|RASTER|ALT_INV_Add0~9_sumout\,
	combout => \GFX|RASTER|X_REG|out[5]~2_combout\);

-- Location: FF_X30_Y5_N11
\GFX|RASTER|X_REG|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|RASTER|X_REG|out[5]~2_combout\,
	ena => \GFX|RASTER|CTRL|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|RASTER|X_REG|out\(5));

-- Location: LABCELL_X29_Y5_N42
\GFX|RASTER|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|Equal0~0_combout\ = ( \GFX|RASTER|X_REG|out\(0) & ( \GFX|RASTER|X_REG|out\(1) & ( (\GFX|RASTER|X_REG|out\(4) & (\GFX|RASTER|X_REG|out\(2) & (\GFX|RASTER|X_REG|out\(3) & \GFX|RASTER|X_REG|out\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|RASTER|X_REG|ALT_INV_out\(4),
	datab => \GFX|RASTER|X_REG|ALT_INV_out\(2),
	datac => \GFX|RASTER|X_REG|ALT_INV_out\(3),
	datad => \GFX|RASTER|X_REG|ALT_INV_out\(5),
	datae => \GFX|RASTER|X_REG|ALT_INV_out\(0),
	dataf => \GFX|RASTER|X_REG|ALT_INV_out\(1),
	combout => \GFX|RASTER|Equal0~0_combout\);

-- Location: LABCELL_X30_Y5_N48
\GFX|RASTER|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|Add0~5_sumout\ = SUM(( \GFX|RASTER|X_REG|out\(6) ) + ( GND ) + ( \GFX|RASTER|Add0~10\ ))
-- \GFX|RASTER|Add0~6\ = CARRY(( \GFX|RASTER|X_REG|out\(6) ) + ( GND ) + ( \GFX|RASTER|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GFX|RASTER|X_REG|ALT_INV_out\(6),
	cin => \GFX|RASTER|Add0~10\,
	sumout => \GFX|RASTER|Add0~5_sumout\,
	cout => \GFX|RASTER|Add0~6\);

-- Location: LABCELL_X30_Y5_N51
\GFX|RASTER|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|Add0~13_sumout\ = SUM(( \GFX|RASTER|X_REG|out\(7) ) + ( GND ) + ( \GFX|RASTER|Add0~6\ ))
-- \GFX|RASTER|Add0~14\ = CARRY(( \GFX|RASTER|X_REG|out\(7) ) + ( GND ) + ( \GFX|RASTER|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|RASTER|X_REG|ALT_INV_out\(7),
	cin => \GFX|RASTER|Add0~6\,
	sumout => \GFX|RASTER|Add0~13_sumout\,
	cout => \GFX|RASTER|Add0~14\);

-- Location: LABCELL_X30_Y5_N15
\GFX|RASTER|X_REG|out[7]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|X_REG|out[7]~3_combout\ = ( \GFX|RASTER|Add0~13_sumout\ & ( \KEY[0]~input_o\ & ( (!\GFX|RASTER|CTRL|out\(0) & (!\GFX|RASTER|R_REG|out\(0) & ((!\GFX|RASTER|Equal0~0_combout\) # (!\GFX|RASTER|Equal0~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|RASTER|CTRL|ALT_INV_out\(0),
	datab => \GFX|RASTER|ALT_INV_Equal0~0_combout\,
	datac => \GFX|RASTER|R_REG|ALT_INV_out\(0),
	datad => \GFX|RASTER|ALT_INV_Equal0~1_combout\,
	datae => \GFX|RASTER|ALT_INV_Add0~13_sumout\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \GFX|RASTER|X_REG|out[7]~3_combout\);

-- Location: FF_X30_Y5_N17
\GFX|RASTER|X_REG|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|RASTER|X_REG|out[7]~3_combout\,
	ena => \GFX|RASTER|CTRL|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|RASTER|X_REG|out\(7));

-- Location: LABCELL_X30_Y5_N54
\GFX|RASTER|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|Add0~1_sumout\ = SUM(( \GFX|RASTER|X_REG|out\(8) ) + ( GND ) + ( \GFX|RASTER|Add0~14\ ))
-- \GFX|RASTER|Add0~2\ = CARRY(( \GFX|RASTER|X_REG|out\(8) ) + ( GND ) + ( \GFX|RASTER|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|RASTER|X_REG|ALT_INV_out\(8),
	cin => \GFX|RASTER|Add0~14\,
	sumout => \GFX|RASTER|Add0~1_sumout\,
	cout => \GFX|RASTER|Add0~2\);

-- Location: LABCELL_X30_Y5_N0
\GFX|RASTER|X_REG|out[8]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|X_REG|out[8]~0_combout\ = ( \GFX|RASTER|Add0~1_sumout\ & ( \KEY[0]~input_o\ & ( (!\GFX|RASTER|CTRL|out\(0) & (!\GFX|RASTER|R_REG|out\(0) & ((!\GFX|RASTER|Equal0~1_combout\) # (!\GFX|RASTER|Equal0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|RASTER|CTRL|ALT_INV_out\(0),
	datab => \GFX|RASTER|R_REG|ALT_INV_out\(0),
	datac => \GFX|RASTER|ALT_INV_Equal0~1_combout\,
	datad => \GFX|RASTER|ALT_INV_Equal0~0_combout\,
	datae => \GFX|RASTER|ALT_INV_Add0~1_sumout\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \GFX|RASTER|X_REG|out[8]~0_combout\);

-- Location: FF_X30_Y5_N2
\GFX|RASTER|X_REG|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|RASTER|X_REG|out[8]~0_combout\,
	ena => \GFX|RASTER|CTRL|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|RASTER|X_REG|out\(8));

-- Location: LABCELL_X30_Y5_N57
\GFX|RASTER|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|Add0~17_sumout\ = SUM(( \GFX|RASTER|X_REG|out\(9) ) + ( GND ) + ( \GFX|RASTER|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|RASTER|X_REG|ALT_INV_out\(9),
	cin => \GFX|RASTER|Add0~2\,
	sumout => \GFX|RASTER|Add0~17_sumout\);

-- Location: LABCELL_X30_Y5_N18
\GFX|RASTER|X_REG|out[9]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|X_REG|out[9]~4_combout\ = ( \GFX|RASTER|R_REG|out\(0) & ( \GFX|RASTER|Add0~17_sumout\ ) ) # ( !\GFX|RASTER|R_REG|out\(0) & ( \GFX|RASTER|Add0~17_sumout\ & ( (!\GFX|RASTER|Equal0~1_combout\) # (((!\KEY[0]~input_o\) # 
-- (!\GFX|RASTER|Equal0~0_combout\)) # (\GFX|RASTER|CTRL|out\(0))) ) ) ) # ( \GFX|RASTER|R_REG|out\(0) & ( !\GFX|RASTER|Add0~17_sumout\ ) ) # ( !\GFX|RASTER|R_REG|out\(0) & ( !\GFX|RASTER|Add0~17_sumout\ & ( !\KEY[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111111111111111111111111111110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|RASTER|ALT_INV_Equal0~1_combout\,
	datab => \GFX|RASTER|CTRL|ALT_INV_out\(0),
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \GFX|RASTER|ALT_INV_Equal0~0_combout\,
	datae => \GFX|RASTER|R_REG|ALT_INV_out\(0),
	dataf => \GFX|RASTER|ALT_INV_Add0~17_sumout\,
	combout => \GFX|RASTER|X_REG|out[9]~4_combout\);

-- Location: FF_X30_Y5_N20
\GFX|RASTER|X_REG|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|RASTER|X_REG|out[9]~4_combout\,
	ena => \GFX|RASTER|CTRL|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|RASTER|X_REG|out\(9));

-- Location: LABCELL_X29_Y5_N51
\GFX|RASTER|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|Equal0~1_combout\ = ( !\GFX|RASTER|X_REG|out\(8) & ( (\GFX|RASTER|X_REG|out\(6) & (\GFX|RASTER|X_REG|out\(9) & !\GFX|RASTER|X_REG|out\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|RASTER|X_REG|ALT_INV_out\(6),
	datac => \GFX|RASTER|X_REG|ALT_INV_out\(9),
	datad => \GFX|RASTER|X_REG|ALT_INV_out\(7),
	dataf => \GFX|RASTER|X_REG|ALT_INV_out\(8),
	combout => \GFX|RASTER|Equal0~1_combout\);

-- Location: LABCELL_X30_Y5_N6
\GFX|RASTER|X_REG|out[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|X_REG|out[6]~1_combout\ = ( \GFX|RASTER|R_REG|out\(0) & ( \GFX|RASTER|Add0~5_sumout\ ) ) # ( !\GFX|RASTER|R_REG|out\(0) & ( \GFX|RASTER|Add0~5_sumout\ & ( (!\GFX|RASTER|Equal0~1_combout\) # (((!\KEY[0]~input_o\) # 
-- (!\GFX|RASTER|Equal0~0_combout\)) # (\GFX|RASTER|CTRL|out\(0))) ) ) ) # ( \GFX|RASTER|R_REG|out\(0) & ( !\GFX|RASTER|Add0~5_sumout\ ) ) # ( !\GFX|RASTER|R_REG|out\(0) & ( !\GFX|RASTER|Add0~5_sumout\ & ( !\KEY[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111111111111111111111111111110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|RASTER|ALT_INV_Equal0~1_combout\,
	datab => \GFX|RASTER|CTRL|ALT_INV_out\(0),
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \GFX|RASTER|ALT_INV_Equal0~0_combout\,
	datae => \GFX|RASTER|R_REG|ALT_INV_out\(0),
	dataf => \GFX|RASTER|ALT_INV_Add0~5_sumout\,
	combout => \GFX|RASTER|X_REG|out[6]~1_combout\);

-- Location: FF_X30_Y5_N8
\GFX|RASTER|X_REG|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|RASTER|X_REG|out[6]~1_combout\,
	ena => \GFX|RASTER|CTRL|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|RASTER|X_REG|out\(6));

-- Location: FF_X29_Y5_N56
\GFX|SHADER|S_X|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|RASTER|X_REG|out\(6),
	sload => VCC,
	ena => \GFX|SHADER|S_CTRL1|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|S_X|out\(6));

-- Location: FF_X27_Y5_N17
\GFX|SHADER|XCD|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|SHADER|S_X|out\(6),
	sload => VCC,
	ena => \GFX|SHADER|S_CTRL2|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|XCD|out\(6));

-- Location: FF_X29_Y5_N14
\GFX|SHADER|S_X|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|RASTER|X_REG|out\(4),
	sload => VCC,
	ena => \GFX|SHADER|S_CTRL1|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|S_X|out\(4));

-- Location: FF_X27_Y5_N11
\GFX|SHADER|XCD|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|SHADER|S_X|out\(4),
	sload => VCC,
	ena => \GFX|SHADER|S_CTRL2|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|XCD|out\(4));

-- Location: FF_X29_Y5_N17
\GFX|SHADER|S_X|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|RASTER|X_REG|out\(5),
	sload => VCC,
	ena => \GFX|SHADER|S_CTRL1|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|S_X|out\(5));

-- Location: FF_X27_Y5_N14
\GFX|SHADER|XCD|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|SHADER|S_X|out\(5),
	sload => VCC,
	ena => \GFX|SHADER|S_CTRL2|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|XCD|out\(5));

-- Location: LABCELL_X27_Y5_N33
\GFX|SHADER|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|comb~0_combout\ = (\GFX|SHADER|XCD|out\(6) & (\GFX|SHADER|XCD|out\(4) & \GFX|SHADER|XCD|out\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GFX|SHADER|XCD|ALT_INV_out\(6),
	datac => \GFX|SHADER|XCD|ALT_INV_out\(4),
	datad => \GFX|SHADER|XCD|ALT_INV_out\(5),
	combout => \GFX|SHADER|comb~0_combout\);

-- Location: FF_X29_Y5_N34
\GFX|SHADER|S_X|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|RASTER|X_REG|out\(8),
	sload => VCC,
	ena => \GFX|SHADER|S_CTRL1|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|S_X|out\(8));

-- Location: FF_X27_Y5_N23
\GFX|SHADER|XCD|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|SHADER|S_X|out\(8),
	sload => VCC,
	ena => \GFX|SHADER|S_CTRL2|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|XCD|out\(8));

-- Location: FF_X29_Y5_N38
\GFX|SHADER|S_X|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|RASTER|X_REG|out\(7),
	sload => VCC,
	ena => \GFX|SHADER|S_CTRL1|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|S_X|out\(7));

-- Location: FF_X25_Y3_N40
\GFX|SHADER|XCD|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|SHADER|S_X|out\(7),
	sload => VCC,
	ena => \GFX|SHADER|S_CTRL2|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|XCD|out\(7));

-- Location: FF_X28_Y5_N32
\GFX|SHADER|S_X|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|RASTER|X_REG|out\(9),
	sload => VCC,
	ena => \GFX|SHADER|S_CTRL1|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|S_X|out\(9));

-- Location: FF_X27_Y5_N32
\GFX|SHADER|XCD|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|SHADER|S_X|out\(9),
	sload => VCC,
	ena => \GFX|SHADER|S_CTRL2|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|XCD|out\(9));

-- Location: MLABCELL_X28_Y3_N30
\GFX|SHADER|comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|comb~2_combout\ = ( !\GFX|SHADER|XCD|out\(9) & ( (\GFX|SHADER|XCD|out\(8) & !\GFX|SHADER|XCD|out\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000001010000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|XCD|ALT_INV_out\(8),
	datac => \GFX|SHADER|XCD|ALT_INV_out\(7),
	datae => \GFX|SHADER|XCD|ALT_INV_out\(9),
	combout => \GFX|SHADER|comb~2_combout\);

-- Location: LABCELL_X27_Y5_N51
\GFX|FB|data_in[24]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|data_in[24]~0_combout\ = ( !\GFX|SHADER|XCD|out\(6) & ( (!\GFX|SHADER|XCD|out\(4) & !\GFX|SHADER|XCD|out\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GFX|SHADER|XCD|ALT_INV_out\(4),
	datac => \GFX|SHADER|XCD|ALT_INV_out\(5),
	dataf => \GFX|SHADER|XCD|ALT_INV_out\(6),
	combout => \GFX|FB|data_in[24]~0_combout\);

-- Location: FF_X29_Y5_N8
\GFX|SHADER|S_X|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|RASTER|X_REG|out\(2),
	sload => VCC,
	ena => \GFX|SHADER|S_CTRL1|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|S_X|out\(2));

-- Location: FF_X27_Y5_N46
\GFX|SHADER|XCD|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|SHADER|S_X|out\(2),
	sload => VCC,
	ena => \GFX|SHADER|S_CTRL2|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|XCD|out\(2));

-- Location: FF_X29_Y5_N47
\GFX|SHADER|S_X|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|RASTER|X_REG|out\(1),
	sload => VCC,
	ena => \GFX|SHADER|S_CTRL1|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|S_X|out\(1));

-- Location: FF_X27_Y5_N50
\GFX|SHADER|XCD|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|SHADER|S_X|out\(1),
	sload => VCC,
	ena => \GFX|SHADER|S_CTRL2|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|XCD|out\(1));

-- Location: FF_X29_Y5_N50
\GFX|SHADER|S_X|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|RASTER|X_REG|out\(3),
	sload => VCC,
	ena => \GFX|SHADER|S_CTRL1|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|S_X|out\(3));

-- Location: FF_X27_Y5_N58
\GFX|SHADER|XCD|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|SHADER|S_X|out\(3),
	sload => VCC,
	ena => \GFX|SHADER|S_CTRL2|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|XCD|out\(3));

-- Location: FF_X29_Y5_N22
\GFX|SHADER|S_X|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|RASTER|X_REG|out\(0),
	sload => VCC,
	ena => \GFX|SHADER|S_CTRL1|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|S_X|out\(0));

-- Location: FF_X27_Y5_N41
\GFX|SHADER|XCD|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|SHADER|S_X|out\(0),
	sload => VCC,
	ena => \GFX|SHADER|S_CTRL2|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|XCD|out\(0));

-- Location: LABCELL_X31_Y3_N45
\GFX|SHADER|board_position~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|board_position~1_combout\ = ( \GFX|SHADER|XCD|out\(0) & ( (\GFX|SHADER|XCD|out\(3) & ((\GFX|SHADER|XCD|out\(1)) # (\GFX|SHADER|XCD|out\(2)))) ) ) # ( !\GFX|SHADER|XCD|out\(0) & ( (\GFX|SHADER|XCD|out\(2) & \GFX|SHADER|XCD|out\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000011101110000000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|XCD|ALT_INV_out\(2),
	datab => \GFX|SHADER|XCD|ALT_INV_out\(1),
	datad => \GFX|SHADER|XCD|ALT_INV_out\(3),
	dataf => \GFX|SHADER|XCD|ALT_INV_out\(0),
	combout => \GFX|SHADER|board_position~1_combout\);

-- Location: LABCELL_X31_Y3_N42
\GFX|SHADER|board_position~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|board_position~2_combout\ = ( \GFX|SHADER|XCD|out\(0) & ( (!\GFX|SHADER|XCD|out\(2) & !\GFX|SHADER|XCD|out\(3)) ) ) # ( !\GFX|SHADER|XCD|out\(0) & ( (!\GFX|SHADER|XCD|out\(3) & ((!\GFX|SHADER|XCD|out\(2)) # (!\GFX|SHADER|XCD|out\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011100000111000001110000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|XCD|ALT_INV_out\(2),
	datab => \GFX|SHADER|XCD|ALT_INV_out\(1),
	datac => \GFX|SHADER|XCD|ALT_INV_out\(3),
	dataf => \GFX|SHADER|XCD|ALT_INV_out\(0),
	combout => \GFX|SHADER|board_position~2_combout\);

-- Location: LABCELL_X31_Y3_N54
\GFX|SHADER|board_position~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|board_position~5_combout\ = ( \GFX|SHADER|board_position~2_combout\ & ( (\GFX|SHADER|comb~2_combout\ & ((!\GFX|FB|data_in[24]~0_combout\) # (\GFX|SHADER|board_position~1_combout\))) ) ) # ( !\GFX|SHADER|board_position~2_combout\ & ( 
-- (!\GFX|SHADER|comb~0_combout\ & (\GFX|SHADER|comb~2_combout\ & ((!\GFX|FB|data_in[24]~0_combout\) # (\GFX|SHADER|board_position~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100010001000000010001000110000001100110011000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_comb~0_combout\,
	datab => \GFX|SHADER|ALT_INV_comb~2_combout\,
	datac => \GFX|FB|ALT_INV_data_in[24]~0_combout\,
	datad => \GFX|SHADER|ALT_INV_board_position~1_combout\,
	dataf => \GFX|SHADER|ALT_INV_board_position~2_combout\,
	combout => \GFX|SHADER|board_position~5_combout\);

-- Location: LABCELL_X27_Y5_N30
\GFX|SHADER|board_position~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|board_position~4_combout\ = ( \GFX|SHADER|XCD|out\(5) & ( (\GFX|SHADER|XCD|out\(8) & (!\GFX|SHADER|XCD|out\(9) & ((!\GFX|SHADER|XCD|out\(7)) # (!\GFX|SHADER|XCD|out\(6))))) ) ) # ( !\GFX|SHADER|XCD|out\(5) & ( (\GFX|SHADER|XCD|out\(8) & 
-- !\GFX|SHADER|XCD|out\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001110000000000000111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|XCD|ALT_INV_out\(7),
	datab => \GFX|SHADER|XCD|ALT_INV_out\(6),
	datac => \GFX|SHADER|XCD|ALT_INV_out\(8),
	datad => \GFX|SHADER|XCD|ALT_INV_out\(9),
	dataf => \GFX|SHADER|XCD|ALT_INV_out\(5),
	combout => \GFX|SHADER|board_position~4_combout\);

-- Location: LABCELL_X31_Y3_N57
\GFX|SHADER|board_position~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|board_position~3_combout\ = ( \GFX|SHADER|XCD|out\(2) & ( (!\GFX|SHADER|XCD|out\(1) & !\GFX|SHADER|XCD|out\(3)) ) ) # ( !\GFX|SHADER|XCD|out\(2) & ( !\GFX|SHADER|XCD|out\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|SHADER|XCD|ALT_INV_out\(1),
	datad => \GFX|SHADER|XCD|ALT_INV_out\(3),
	dataf => \GFX|SHADER|XCD|ALT_INV_out\(2),
	combout => \GFX|SHADER|board_position~3_combout\);

-- Location: LABCELL_X29_Y3_N57
\GFX|SHADER|WideOr0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|WideOr0~7_combout\ = ( \State|xreg|out\(0) & ( (\GFX|SHADER|board_position~4_combout\ & (((\GFX|SHADER|comb~0_combout\ & !\GFX|SHADER|board_position~3_combout\)) # (\GFX|SHADER|XCD|out\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000111000000110000011100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_comb~0_combout\,
	datab => \GFX|SHADER|XCD|ALT_INV_out\(7),
	datac => \GFX|SHADER|ALT_INV_board_position~4_combout\,
	datad => \GFX|SHADER|ALT_INV_board_position~3_combout\,
	dataf => \State|xreg|ALT_INV_out\(0),
	combout => \GFX|SHADER|WideOr0~7_combout\);

-- Location: LABCELL_X27_Y5_N54
\GFX|SHADER|board_position~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|board_position~0_combout\ = ( \GFX|SHADER|XCD|out\(8) & ( \GFX|SHADER|XCD|out\(1) & ( (!\GFX|FB|data_in[24]~0_combout\) # ((\GFX|SHADER|XCD|out\(7)) # (\GFX|SHADER|XCD|out\(3))) ) ) ) # ( \GFX|SHADER|XCD|out\(8) & ( !\GFX|SHADER|XCD|out\(1) & 
-- ( (!\GFX|FB|data_in[24]~0_combout\) # (((\GFX|SHADER|XCD|out\(2) & \GFX|SHADER|XCD|out\(3))) # (\GFX|SHADER|XCD|out\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010111111111100000000000000001010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|ALT_INV_data_in[24]~0_combout\,
	datab => \GFX|SHADER|XCD|ALT_INV_out\(2),
	datac => \GFX|SHADER|XCD|ALT_INV_out\(3),
	datad => \GFX|SHADER|XCD|ALT_INV_out\(7),
	datae => \GFX|SHADER|XCD|ALT_INV_out\(8),
	dataf => \GFX|SHADER|XCD|ALT_INV_out\(1),
	combout => \GFX|SHADER|board_position~0_combout\);

-- Location: LABCELL_X27_Y5_N48
\GFX|SHADER|LessThan11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|LessThan11~0_combout\ = ( !\GFX|SHADER|XCD|out\(0) & ( (!\GFX|SHADER|XCD|out\(2) & (!\GFX|SHADER|XCD|out\(4) & (!\GFX|SHADER|XCD|out\(3) & !\GFX|SHADER|XCD|out\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|XCD|ALT_INV_out\(2),
	datab => \GFX|SHADER|XCD|ALT_INV_out\(4),
	datac => \GFX|SHADER|XCD|ALT_INV_out\(3),
	datad => \GFX|SHADER|XCD|ALT_INV_out\(1),
	dataf => \GFX|SHADER|XCD|ALT_INV_out\(0),
	combout => \GFX|SHADER|LessThan11~0_combout\);

-- Location: LABCELL_X27_Y5_N42
\GFX|SHADER|on_yborder~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|on_yborder~3_combout\ = ( \GFX|SHADER|LessThan11~0_combout\ & ( \GFX|SHADER|XCD|out\(6) & ( (!\GFX|SHADER|XCD|out\(9) & ((\GFX|SHADER|XCD|out\(7)) # (\GFX|SHADER|XCD|out\(8)))) ) ) ) # ( !\GFX|SHADER|LessThan11~0_combout\ & ( 
-- \GFX|SHADER|XCD|out\(6) & ( (!\GFX|SHADER|XCD|out\(9) & ((\GFX|SHADER|XCD|out\(7)) # (\GFX|SHADER|XCD|out\(8)))) ) ) ) # ( \GFX|SHADER|LessThan11~0_combout\ & ( !\GFX|SHADER|XCD|out\(6) & ( (\GFX|SHADER|XCD|out\(8) & !\GFX|SHADER|XCD|out\(9)) ) ) ) # ( 
-- !\GFX|SHADER|LessThan11~0_combout\ & ( !\GFX|SHADER|XCD|out\(6) & ( (!\GFX|SHADER|XCD|out\(9) & (((\GFX|SHADER|XCD|out\(5) & \GFX|SHADER|XCD|out\(7))) # (\GFX|SHADER|XCD|out\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011100000000010101010000000001011111000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|XCD|ALT_INV_out\(8),
	datab => \GFX|SHADER|XCD|ALT_INV_out\(5),
	datac => \GFX|SHADER|XCD|ALT_INV_out\(7),
	datad => \GFX|SHADER|XCD|ALT_INV_out\(9),
	datae => \GFX|SHADER|ALT_INV_LessThan11~0_combout\,
	dataf => \GFX|SHADER|XCD|ALT_INV_out\(6),
	combout => \GFX|SHADER|on_yborder~3_combout\);

-- Location: LABCELL_X29_Y3_N30
\GFX|SHADER|WideOr0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|WideOr0~8_combout\ = ( \GFX|SHADER|on_yborder~3_combout\ & ( \State|xreg|out\(1) & ( (!\GFX|SHADER|board_position~5_combout\ & (!\GFX|SHADER|WideOr0~7_combout\ & ((!\State|xreg|out\(2)) # (\GFX|SHADER|board_position~0_combout\)))) ) ) ) # ( 
-- !\GFX|SHADER|on_yborder~3_combout\ & ( \State|xreg|out\(1) & ( (!\GFX|SHADER|board_position~5_combout\ & !\GFX|SHADER|WideOr0~7_combout\) ) ) ) # ( \GFX|SHADER|on_yborder~3_combout\ & ( !\State|xreg|out\(1) & ( (!\GFX|SHADER|WideOr0~7_combout\ & 
-- ((!\State|xreg|out\(2)) # (\GFX|SHADER|board_position~0_combout\))) ) ) ) # ( !\GFX|SHADER|on_yborder~3_combout\ & ( !\State|xreg|out\(1) & ( !\GFX|SHADER|WideOr0~7_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011000000110010001000100010001000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_board_position~5_combout\,
	datab => \GFX|SHADER|ALT_INV_WideOr0~7_combout\,
	datac => \GFX|SHADER|ALT_INV_board_position~0_combout\,
	datad => \State|xreg|ALT_INV_out\(2),
	datae => \GFX|SHADER|ALT_INV_on_yborder~3_combout\,
	dataf => \State|xreg|ALT_INV_out\(1),
	combout => \GFX|SHADER|WideOr0~8_combout\);

-- Location: LABCELL_X29_Y4_N51
\GFX|RASTER|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|Equal0~2_combout\ = ( !\GFX|RASTER|CTRL|out\(0) & ( \GFX|RASTER|Equal0~0_combout\ & ( \GFX|RASTER|Equal0~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|RASTER|ALT_INV_Equal0~1_combout\,
	datae => \GFX|RASTER|CTRL|ALT_INV_out\(0),
	dataf => \GFX|RASTER|ALT_INV_Equal0~0_combout\,
	combout => \GFX|RASTER|Equal0~2_combout\);

-- Location: MLABCELL_X28_Y4_N30
\GFX|RASTER|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|Add1~13_sumout\ = SUM(( \GFX|RASTER|Y_REG|out\(0) ) + ( VCC ) + ( !VCC ))
-- \GFX|RASTER|Add1~14\ = CARRY(( \GFX|RASTER|Y_REG|out\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GFX|RASTER|Y_REG|ALT_INV_out\(0),
	cin => GND,
	sumout => \GFX|RASTER|Add1~13_sumout\,
	cout => \GFX|RASTER|Add1~14\);

-- Location: MLABCELL_X28_Y4_N12
\GFX|RASTER|y_new_reset[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|y_new_reset[0]~3_combout\ = ( \GFX|RASTER|Y_REG|out\(0) & ( \GFX|RASTER|Add1~13_sumout\ & ( (((!\KEY[0]~input_o\) # (!\GFX|RASTER|Equal0~2_combout\)) # (\GFX|RASTER|Selector18~0_combout\)) # (\GFX|RASTER|R_REG|out\(0)) ) ) ) # ( 
-- !\GFX|RASTER|Y_REG|out\(0) & ( \GFX|RASTER|Add1~13_sumout\ & ( ((!\KEY[0]~input_o\) # (\GFX|RASTER|Selector18~0_combout\)) # (\GFX|RASTER|R_REG|out\(0)) ) ) ) # ( \GFX|RASTER|Y_REG|out\(0) & ( !\GFX|RASTER|Add1~13_sumout\ & ( ((!\KEY[0]~input_o\) # 
-- (!\GFX|RASTER|Equal0~2_combout\)) # (\GFX|RASTER|R_REG|out\(0)) ) ) ) # ( !\GFX|RASTER|Y_REG|out\(0) & ( !\GFX|RASTER|Add1~13_sumout\ & ( (!\KEY[0]~input_o\) # (\GFX|RASTER|R_REG|out\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111111111111010111110111111101111111111111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|RASTER|R_REG|ALT_INV_out\(0),
	datab => \GFX|RASTER|ALT_INV_Selector18~0_combout\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \GFX|RASTER|ALT_INV_Equal0~2_combout\,
	datae => \GFX|RASTER|Y_REG|ALT_INV_out\(0),
	dataf => \GFX|RASTER|ALT_INV_Add1~13_sumout\,
	combout => \GFX|RASTER|y_new_reset[0]~3_combout\);

-- Location: FF_X28_Y4_N14
\GFX|RASTER|Y_REG|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|RASTER|y_new_reset[0]~3_combout\,
	ena => \GFX|RASTER|CTRL|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|RASTER|Y_REG|out\(0));

-- Location: MLABCELL_X28_Y4_N33
\GFX|RASTER|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|Add1~17_sumout\ = SUM(( \GFX|RASTER|Y_REG|out\(1) ) + ( GND ) + ( \GFX|RASTER|Add1~14\ ))
-- \GFX|RASTER|Add1~18\ = CARRY(( \GFX|RASTER|Y_REG|out\(1) ) + ( GND ) + ( \GFX|RASTER|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|RASTER|Y_REG|ALT_INV_out\(1),
	cin => \GFX|RASTER|Add1~14\,
	sumout => \GFX|RASTER|Add1~17_sumout\,
	cout => \GFX|RASTER|Add1~18\);

-- Location: MLABCELL_X28_Y4_N21
\GFX|RASTER|y_new_reset[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|y_new_reset[1]~4_combout\ = ( \GFX|RASTER|Y_REG|out\(1) & ( \GFX|RASTER|Add1~17_sumout\ & ( (!\KEY[0]~input_o\) # (((!\GFX|RASTER|Equal0~2_combout\) # (\GFX|RASTER|R_REG|out\(0))) # (\GFX|RASTER|Selector18~0_combout\)) ) ) ) # ( 
-- !\GFX|RASTER|Y_REG|out\(1) & ( \GFX|RASTER|Add1~17_sumout\ & ( (!\KEY[0]~input_o\) # ((\GFX|RASTER|R_REG|out\(0)) # (\GFX|RASTER|Selector18~0_combout\)) ) ) ) # ( \GFX|RASTER|Y_REG|out\(1) & ( !\GFX|RASTER|Add1~17_sumout\ & ( (!\KEY[0]~input_o\) # 
-- ((!\GFX|RASTER|Equal0~2_combout\) # (\GFX|RASTER|R_REG|out\(0))) ) ) ) # ( !\GFX|RASTER|Y_REG|out\(1) & ( !\GFX|RASTER|Add1~17_sumout\ & ( (!\KEY[0]~input_o\) # (\GFX|RASTER|R_REG|out\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111111110101111111110111011111111111111101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \GFX|RASTER|ALT_INV_Selector18~0_combout\,
	datac => \GFX|RASTER|ALT_INV_Equal0~2_combout\,
	datad => \GFX|RASTER|R_REG|ALT_INV_out\(0),
	datae => \GFX|RASTER|Y_REG|ALT_INV_out\(1),
	dataf => \GFX|RASTER|ALT_INV_Add1~17_sumout\,
	combout => \GFX|RASTER|y_new_reset[1]~4_combout\);

-- Location: FF_X28_Y4_N23
\GFX|RASTER|Y_REG|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|RASTER|y_new_reset[1]~4_combout\,
	ena => \GFX|RASTER|CTRL|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|RASTER|Y_REG|out\(1));

-- Location: MLABCELL_X28_Y4_N36
\GFX|RASTER|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|Add1~21_sumout\ = SUM(( \GFX|RASTER|Y_REG|out\(2) ) + ( GND ) + ( \GFX|RASTER|Add1~18\ ))
-- \GFX|RASTER|Add1~22\ = CARRY(( \GFX|RASTER|Y_REG|out\(2) ) + ( GND ) + ( \GFX|RASTER|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|RASTER|Y_REG|ALT_INV_out\(2),
	cin => \GFX|RASTER|Add1~18\,
	sumout => \GFX|RASTER|Add1~21_sumout\,
	cout => \GFX|RASTER|Add1~22\);

-- Location: MLABCELL_X28_Y4_N18
\GFX|RASTER|y_new_reset[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|y_new_reset[2]~5_combout\ = ( \GFX|RASTER|Y_REG|out\(2) & ( \GFX|RASTER|Add1~21_sumout\ & ( (!\KEY[0]~input_o\) # (((!\GFX|RASTER|Equal0~2_combout\) # (\GFX|RASTER|R_REG|out\(0))) # (\GFX|RASTER|Selector18~0_combout\)) ) ) ) # ( 
-- !\GFX|RASTER|Y_REG|out\(2) & ( \GFX|RASTER|Add1~21_sumout\ & ( (!\KEY[0]~input_o\) # ((\GFX|RASTER|R_REG|out\(0)) # (\GFX|RASTER|Selector18~0_combout\)) ) ) ) # ( \GFX|RASTER|Y_REG|out\(2) & ( !\GFX|RASTER|Add1~21_sumout\ & ( (!\KEY[0]~input_o\) # 
-- ((!\GFX|RASTER|Equal0~2_combout\) # (\GFX|RASTER|R_REG|out\(0))) ) ) ) # ( !\GFX|RASTER|Y_REG|out\(2) & ( !\GFX|RASTER|Add1~21_sumout\ & ( (!\KEY[0]~input_o\) # (\GFX|RASTER|R_REG|out\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111111111111010111110111111101111111111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \GFX|RASTER|ALT_INV_Selector18~0_combout\,
	datac => \GFX|RASTER|R_REG|ALT_INV_out\(0),
	datad => \GFX|RASTER|ALT_INV_Equal0~2_combout\,
	datae => \GFX|RASTER|Y_REG|ALT_INV_out\(2),
	dataf => \GFX|RASTER|ALT_INV_Add1~21_sumout\,
	combout => \GFX|RASTER|y_new_reset[2]~5_combout\);

-- Location: FF_X28_Y4_N20
\GFX|RASTER|Y_REG|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|RASTER|y_new_reset[2]~5_combout\,
	ena => \GFX|RASTER|CTRL|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|RASTER|Y_REG|out\(2));

-- Location: MLABCELL_X28_Y4_N39
\GFX|RASTER|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|Add1~9_sumout\ = SUM(( \GFX|RASTER|Y_REG|out\(3) ) + ( GND ) + ( \GFX|RASTER|Add1~22\ ))
-- \GFX|RASTER|Add1~10\ = CARRY(( \GFX|RASTER|Y_REG|out\(3) ) + ( GND ) + ( \GFX|RASTER|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|RASTER|Y_REG|ALT_INV_out\(3),
	cin => \GFX|RASTER|Add1~22\,
	sumout => \GFX|RASTER|Add1~9_sumout\,
	cout => \GFX|RASTER|Add1~10\);

-- Location: MLABCELL_X28_Y4_N6
\GFX|RASTER|y_new_reset[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|y_new_reset[3]~2_combout\ = ( \GFX|RASTER|Y_REG|out\(3) & ( \GFX|RASTER|Add1~9_sumout\ & ( (!\KEY[0]~input_o\) # (((!\GFX|RASTER|Equal0~2_combout\) # (\GFX|RASTER|R_REG|out\(0))) # (\GFX|RASTER|Selector18~0_combout\)) ) ) ) # ( 
-- !\GFX|RASTER|Y_REG|out\(3) & ( \GFX|RASTER|Add1~9_sumout\ & ( (!\KEY[0]~input_o\) # ((\GFX|RASTER|R_REG|out\(0)) # (\GFX|RASTER|Selector18~0_combout\)) ) ) ) # ( \GFX|RASTER|Y_REG|out\(3) & ( !\GFX|RASTER|Add1~9_sumout\ & ( (!\KEY[0]~input_o\) # 
-- ((!\GFX|RASTER|Equal0~2_combout\) # (\GFX|RASTER|R_REG|out\(0))) ) ) ) # ( !\GFX|RASTER|Y_REG|out\(3) & ( !\GFX|RASTER|Add1~9_sumout\ & ( (!\KEY[0]~input_o\) # (\GFX|RASTER|R_REG|out\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111111111111010111110111111101111111111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \GFX|RASTER|ALT_INV_Selector18~0_combout\,
	datac => \GFX|RASTER|R_REG|ALT_INV_out\(0),
	datad => \GFX|RASTER|ALT_INV_Equal0~2_combout\,
	datae => \GFX|RASTER|Y_REG|ALT_INV_out\(3),
	dataf => \GFX|RASTER|ALT_INV_Add1~9_sumout\,
	combout => \GFX|RASTER|y_new_reset[3]~2_combout\);

-- Location: FF_X28_Y4_N8
\GFX|RASTER|Y_REG|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|RASTER|y_new_reset[3]~2_combout\,
	ena => \GFX|RASTER|CTRL|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|RASTER|Y_REG|out\(3));

-- Location: MLABCELL_X28_Y4_N42
\GFX|RASTER|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|Add1~29_sumout\ = SUM(( \GFX|RASTER|Y_REG|out\(4) ) + ( GND ) + ( \GFX|RASTER|Add1~10\ ))
-- \GFX|RASTER|Add1~30\ = CARRY(( \GFX|RASTER|Y_REG|out\(4) ) + ( GND ) + ( \GFX|RASTER|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GFX|RASTER|Y_REG|ALT_INV_out\(4),
	cin => \GFX|RASTER|Add1~10\,
	sumout => \GFX|RASTER|Add1~29_sumout\,
	cout => \GFX|RASTER|Add1~30\);

-- Location: MLABCELL_X28_Y4_N15
\GFX|RASTER|y_new_reset[4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|y_new_reset[4]~7_combout\ = ( \GFX|RASTER|Y_REG|out\(4) & ( \GFX|RASTER|Add1~29_sumout\ & ( (((!\GFX|RASTER|Equal0~2_combout\) # (!\KEY[0]~input_o\)) # (\GFX|RASTER|Selector18~0_combout\)) # (\GFX|RASTER|R_REG|out\(0)) ) ) ) # ( 
-- !\GFX|RASTER|Y_REG|out\(4) & ( \GFX|RASTER|Add1~29_sumout\ & ( ((!\KEY[0]~input_o\) # (\GFX|RASTER|Selector18~0_combout\)) # (\GFX|RASTER|R_REG|out\(0)) ) ) ) # ( \GFX|RASTER|Y_REG|out\(4) & ( !\GFX|RASTER|Add1~29_sumout\ & ( 
-- ((!\GFX|RASTER|Equal0~2_combout\) # (!\KEY[0]~input_o\)) # (\GFX|RASTER|R_REG|out\(0)) ) ) ) # ( !\GFX|RASTER|Y_REG|out\(4) & ( !\GFX|RASTER|Add1~29_sumout\ & ( (!\KEY[0]~input_o\) # (\GFX|RASTER|R_REG|out\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101111111111111010111111111011101111111111111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|RASTER|R_REG|ALT_INV_out\(0),
	datab => \GFX|RASTER|ALT_INV_Selector18~0_combout\,
	datac => \GFX|RASTER|ALT_INV_Equal0~2_combout\,
	datad => \ALT_INV_KEY[0]~input_o\,
	datae => \GFX|RASTER|Y_REG|ALT_INV_out\(4),
	dataf => \GFX|RASTER|ALT_INV_Add1~29_sumout\,
	combout => \GFX|RASTER|y_new_reset[4]~7_combout\);

-- Location: FF_X28_Y4_N17
\GFX|RASTER|Y_REG|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|RASTER|y_new_reset[4]~7_combout\,
	ena => \GFX|RASTER|CTRL|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|RASTER|Y_REG|out\(4));

-- Location: LABCELL_X27_Y4_N54
\GFX|RASTER|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|Equal1~0_combout\ = ( \GFX|RASTER|Y_REG|out\(3) & ( \GFX|RASTER|Y_REG|out\(2) & ( (\GFX|RASTER|Y_REG|out\(4) & (\GFX|RASTER|Y_REG|out\(0) & \GFX|RASTER|Y_REG|out\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|RASTER|Y_REG|ALT_INV_out\(4),
	datab => \GFX|RASTER|Y_REG|ALT_INV_out\(0),
	datad => \GFX|RASTER|Y_REG|ALT_INV_out\(1),
	datae => \GFX|RASTER|Y_REG|ALT_INV_out\(3),
	dataf => \GFX|RASTER|Y_REG|ALT_INV_out\(2),
	combout => \GFX|RASTER|Equal1~0_combout\);

-- Location: MLABCELL_X28_Y4_N45
\GFX|RASTER|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|Add1~25_sumout\ = SUM(( \GFX|RASTER|Y_REG|out\(5) ) + ( GND ) + ( \GFX|RASTER|Add1~30\ ))
-- \GFX|RASTER|Add1~26\ = CARRY(( \GFX|RASTER|Y_REG|out\(5) ) + ( GND ) + ( \GFX|RASTER|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|RASTER|Y_REG|ALT_INV_out\(5),
	cin => \GFX|RASTER|Add1~30\,
	sumout => \GFX|RASTER|Add1~25_sumout\,
	cout => \GFX|RASTER|Add1~26\);

-- Location: MLABCELL_X28_Y4_N27
\GFX|RASTER|y_new_reset[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|y_new_reset[5]~6_combout\ = ( \GFX|RASTER|Y_REG|out\(5) & ( \GFX|RASTER|Add1~25_sumout\ & ( (!\GFX|RASTER|R_REG|out\(0) & (\KEY[0]~input_o\ & ((!\GFX|RASTER|Equal0~2_combout\) # (\GFX|RASTER|Selector18~0_combout\)))) ) ) ) # ( 
-- !\GFX|RASTER|Y_REG|out\(5) & ( \GFX|RASTER|Add1~25_sumout\ & ( (!\GFX|RASTER|R_REG|out\(0) & (\GFX|RASTER|Selector18~0_combout\ & \KEY[0]~input_o\)) ) ) ) # ( \GFX|RASTER|Y_REG|out\(5) & ( !\GFX|RASTER|Add1~25_sumout\ & ( (!\GFX|RASTER|R_REG|out\(0) & 
-- (!\GFX|RASTER|Equal0~2_combout\ & \KEY[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010000000000000001000100000000010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|RASTER|R_REG|ALT_INV_out\(0),
	datab => \GFX|RASTER|ALT_INV_Selector18~0_combout\,
	datac => \GFX|RASTER|ALT_INV_Equal0~2_combout\,
	datad => \ALT_INV_KEY[0]~input_o\,
	datae => \GFX|RASTER|Y_REG|ALT_INV_out\(5),
	dataf => \GFX|RASTER|ALT_INV_Add1~25_sumout\,
	combout => \GFX|RASTER|y_new_reset[5]~6_combout\);

-- Location: FF_X28_Y4_N29
\GFX|RASTER|Y_REG|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|RASTER|y_new_reset[5]~6_combout\,
	ena => \GFX|RASTER|CTRL|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|RASTER|Y_REG|out\(5));

-- Location: MLABCELL_X28_Y4_N48
\GFX|RASTER|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|Add1~33_sumout\ = SUM(( \GFX|RASTER|Y_REG|out\(6) ) + ( GND ) + ( \GFX|RASTER|Add1~26\ ))
-- \GFX|RASTER|Add1~34\ = CARRY(( \GFX|RASTER|Y_REG|out\(6) ) + ( GND ) + ( \GFX|RASTER|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|RASTER|Y_REG|ALT_INV_out\(6),
	cin => \GFX|RASTER|Add1~26\,
	sumout => \GFX|RASTER|Add1~33_sumout\,
	cout => \GFX|RASTER|Add1~34\);

-- Location: MLABCELL_X28_Y4_N51
\GFX|RASTER|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|Add1~5_sumout\ = SUM(( \GFX|RASTER|Y_REG|out\(7) ) + ( GND ) + ( \GFX|RASTER|Add1~34\ ))
-- \GFX|RASTER|Add1~6\ = CARRY(( \GFX|RASTER|Y_REG|out\(7) ) + ( GND ) + ( \GFX|RASTER|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|RASTER|Y_REG|ALT_INV_out\(7),
	cin => \GFX|RASTER|Add1~34\,
	sumout => \GFX|RASTER|Add1~5_sumout\,
	cout => \GFX|RASTER|Add1~6\);

-- Location: MLABCELL_X28_Y4_N9
\GFX|RASTER|y_new_reset[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|y_new_reset[7]~1_combout\ = ( \GFX|RASTER|Y_REG|out\(7) & ( \GFX|RASTER|Add1~5_sumout\ & ( (!\KEY[0]~input_o\) # (((!\GFX|RASTER|Equal0~2_combout\) # (\GFX|RASTER|R_REG|out\(0))) # (\GFX|RASTER|Selector18~0_combout\)) ) ) ) # ( 
-- !\GFX|RASTER|Y_REG|out\(7) & ( \GFX|RASTER|Add1~5_sumout\ & ( (!\KEY[0]~input_o\) # ((\GFX|RASTER|R_REG|out\(0)) # (\GFX|RASTER|Selector18~0_combout\)) ) ) ) # ( \GFX|RASTER|Y_REG|out\(7) & ( !\GFX|RASTER|Add1~5_sumout\ & ( (!\KEY[0]~input_o\) # 
-- ((!\GFX|RASTER|Equal0~2_combout\) # (\GFX|RASTER|R_REG|out\(0))) ) ) ) # ( !\GFX|RASTER|Y_REG|out\(7) & ( !\GFX|RASTER|Add1~5_sumout\ & ( (!\KEY[0]~input_o\) # (\GFX|RASTER|R_REG|out\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111111110101111111110111011111111111111101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \GFX|RASTER|ALT_INV_Selector18~0_combout\,
	datac => \GFX|RASTER|ALT_INV_Equal0~2_combout\,
	datad => \GFX|RASTER|R_REG|ALT_INV_out\(0),
	datae => \GFX|RASTER|Y_REG|ALT_INV_out\(7),
	dataf => \GFX|RASTER|ALT_INV_Add1~5_sumout\,
	combout => \GFX|RASTER|y_new_reset[7]~1_combout\);

-- Location: FF_X28_Y4_N11
\GFX|RASTER|Y_REG|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|RASTER|y_new_reset[7]~1_combout\,
	ena => \GFX|RASTER|CTRL|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|RASTER|Y_REG|out\(7));

-- Location: MLABCELL_X28_Y4_N54
\GFX|RASTER|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|Add1~1_sumout\ = SUM(( \GFX|RASTER|Y_REG|out\(8) ) + ( GND ) + ( \GFX|RASTER|Add1~6\ ))
-- \GFX|RASTER|Add1~2\ = CARRY(( \GFX|RASTER|Y_REG|out\(8) ) + ( GND ) + ( \GFX|RASTER|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|RASTER|Y_REG|ALT_INV_out\(8),
	cin => \GFX|RASTER|Add1~6\,
	sumout => \GFX|RASTER|Add1~1_sumout\,
	cout => \GFX|RASTER|Add1~2\);

-- Location: MLABCELL_X28_Y4_N3
\GFX|RASTER|y_new_reset[8]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|y_new_reset[8]~0_combout\ = ( \GFX|RASTER|Y_REG|out\(8) & ( \GFX|RASTER|Add1~1_sumout\ & ( (((!\GFX|RASTER|Equal0~2_combout\) # (!\KEY[0]~input_o\)) # (\GFX|RASTER|Selector18~0_combout\)) # (\GFX|RASTER|R_REG|out\(0)) ) ) ) # ( 
-- !\GFX|RASTER|Y_REG|out\(8) & ( \GFX|RASTER|Add1~1_sumout\ & ( ((!\KEY[0]~input_o\) # (\GFX|RASTER|Selector18~0_combout\)) # (\GFX|RASTER|R_REG|out\(0)) ) ) ) # ( \GFX|RASTER|Y_REG|out\(8) & ( !\GFX|RASTER|Add1~1_sumout\ & ( 
-- ((!\GFX|RASTER|Equal0~2_combout\) # (!\KEY[0]~input_o\)) # (\GFX|RASTER|R_REG|out\(0)) ) ) ) # ( !\GFX|RASTER|Y_REG|out\(8) & ( !\GFX|RASTER|Add1~1_sumout\ & ( (!\KEY[0]~input_o\) # (\GFX|RASTER|R_REG|out\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101111111111111010111111111011101111111111111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|RASTER|R_REG|ALT_INV_out\(0),
	datab => \GFX|RASTER|ALT_INV_Selector18~0_combout\,
	datac => \GFX|RASTER|ALT_INV_Equal0~2_combout\,
	datad => \ALT_INV_KEY[0]~input_o\,
	datae => \GFX|RASTER|Y_REG|ALT_INV_out\(8),
	dataf => \GFX|RASTER|ALT_INV_Add1~1_sumout\,
	combout => \GFX|RASTER|y_new_reset[8]~0_combout\);

-- Location: FF_X28_Y4_N5
\GFX|RASTER|Y_REG|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|RASTER|y_new_reset[8]~0_combout\,
	ena => \GFX|RASTER|CTRL|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|RASTER|Y_REG|out\(8));

-- Location: MLABCELL_X28_Y4_N57
\GFX|RASTER|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|Add1~37_sumout\ = SUM(( \GFX|RASTER|Y_REG|out\(9) ) + ( GND ) + ( \GFX|RASTER|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|RASTER|Y_REG|ALT_INV_out\(9),
	cin => \GFX|RASTER|Add1~2\,
	sumout => \GFX|RASTER|Add1~37_sumout\);

-- Location: MLABCELL_X28_Y4_N24
\GFX|RASTER|y_new_reset[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|y_new_reset[9]~9_combout\ = ( \GFX|RASTER|Y_REG|out\(9) & ( \GFX|RASTER|Add1~37_sumout\ & ( (!\GFX|RASTER|R_REG|out\(0) & (\KEY[0]~input_o\ & ((!\GFX|RASTER|Equal0~2_combout\) # (\GFX|RASTER|Selector18~0_combout\)))) ) ) ) # ( 
-- !\GFX|RASTER|Y_REG|out\(9) & ( \GFX|RASTER|Add1~37_sumout\ & ( (!\GFX|RASTER|R_REG|out\(0) & (\GFX|RASTER|Selector18~0_combout\ & \KEY[0]~input_o\)) ) ) ) # ( \GFX|RASTER|Y_REG|out\(9) & ( !\GFX|RASTER|Add1~37_sumout\ & ( (!\GFX|RASTER|R_REG|out\(0) & 
-- (\KEY[0]~input_o\ & !\GFX|RASTER|Equal0~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000000000000010000000100000101000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|RASTER|R_REG|ALT_INV_out\(0),
	datab => \GFX|RASTER|ALT_INV_Selector18~0_combout\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \GFX|RASTER|ALT_INV_Equal0~2_combout\,
	datae => \GFX|RASTER|Y_REG|ALT_INV_out\(9),
	dataf => \GFX|RASTER|ALT_INV_Add1~37_sumout\,
	combout => \GFX|RASTER|y_new_reset[9]~9_combout\);

-- Location: FF_X28_Y4_N26
\GFX|RASTER|Y_REG|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|RASTER|y_new_reset[9]~9_combout\,
	ena => \GFX|RASTER|CTRL|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|RASTER|Y_REG|out\(9));

-- Location: LABCELL_X27_Y4_N30
\GFX|RASTER|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|Equal1~1_combout\ = ( \GFX|RASTER|Y_REG|out\(6) & ( (!\GFX|RASTER|Y_REG|out\(9) & (\GFX|RASTER|Y_REG|out\(8) & \GFX|RASTER|Y_REG|out\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GFX|RASTER|Y_REG|ALT_INV_out\(9),
	datac => \GFX|RASTER|Y_REG|ALT_INV_out\(8),
	datad => \GFX|RASTER|Y_REG|ALT_INV_out\(7),
	dataf => \GFX|RASTER|Y_REG|ALT_INV_out\(6),
	combout => \GFX|RASTER|Equal1~1_combout\);

-- Location: LABCELL_X29_Y4_N24
\GFX|RASTER|Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|Selector18~0_combout\ = ( !\GFX|RASTER|CTRL|out\(0) & ( \GFX|RASTER|Equal0~0_combout\ & ( (\GFX|RASTER|Equal0~1_combout\ & ((!\GFX|RASTER|Equal1~0_combout\) # ((!\GFX|RASTER|Equal1~1_combout\) # (\GFX|RASTER|Y_REG|out\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110010001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|RASTER|ALT_INV_Equal1~0_combout\,
	datab => \GFX|RASTER|ALT_INV_Equal0~1_combout\,
	datac => \GFX|RASTER|ALT_INV_Equal1~1_combout\,
	datad => \GFX|RASTER|Y_REG|ALT_INV_out\(5),
	datae => \GFX|RASTER|CTRL|ALT_INV_out\(0),
	dataf => \GFX|RASTER|ALT_INV_Equal0~0_combout\,
	combout => \GFX|RASTER|Selector18~0_combout\);

-- Location: MLABCELL_X28_Y4_N0
\GFX|RASTER|y_new_reset[6]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|RASTER|y_new_reset[6]~8_combout\ = ( \GFX|RASTER|Y_REG|out\(6) & ( \GFX|RASTER|Add1~33_sumout\ & ( (((!\KEY[0]~input_o\) # (!\GFX|RASTER|Equal0~2_combout\)) # (\GFX|RASTER|Selector18~0_combout\)) # (\GFX|RASTER|R_REG|out\(0)) ) ) ) # ( 
-- !\GFX|RASTER|Y_REG|out\(6) & ( \GFX|RASTER|Add1~33_sumout\ & ( ((!\KEY[0]~input_o\) # (\GFX|RASTER|Selector18~0_combout\)) # (\GFX|RASTER|R_REG|out\(0)) ) ) ) # ( \GFX|RASTER|Y_REG|out\(6) & ( !\GFX|RASTER|Add1~33_sumout\ & ( ((!\KEY[0]~input_o\) # 
-- (!\GFX|RASTER|Equal0~2_combout\)) # (\GFX|RASTER|R_REG|out\(0)) ) ) ) # ( !\GFX|RASTER|Y_REG|out\(6) & ( !\GFX|RASTER|Add1~33_sumout\ & ( (!\KEY[0]~input_o\) # (\GFX|RASTER|R_REG|out\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111111111111010111110111111101111111111111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|RASTER|R_REG|ALT_INV_out\(0),
	datab => \GFX|RASTER|ALT_INV_Selector18~0_combout\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \GFX|RASTER|ALT_INV_Equal0~2_combout\,
	datae => \GFX|RASTER|Y_REG|ALT_INV_out\(6),
	dataf => \GFX|RASTER|ALT_INV_Add1~33_sumout\,
	combout => \GFX|RASTER|y_new_reset[6]~8_combout\);

-- Location: FF_X28_Y4_N2
\GFX|RASTER|Y_REG|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|RASTER|y_new_reset[6]~8_combout\,
	ena => \GFX|RASTER|CTRL|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|RASTER|Y_REG|out\(6));

-- Location: FF_X27_Y4_N20
\GFX|SHADER|S_Y|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|RASTER|Y_REG|out\(6),
	sload => VCC,
	ena => \GFX|SHADER|S_CTRL1|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|S_Y|out\(6));

-- Location: FF_X27_Y4_N8
\GFX|SHADER|YCD|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|SHADER|S_Y|out\(6),
	sload => VCC,
	ena => \GFX|SHADER|S_CTRL2|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|YCD|out\(6));

-- Location: FF_X27_Y4_N17
\GFX|SHADER|S_Y|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|RASTER|Y_REG|out\(5),
	sload => VCC,
	ena => \GFX|SHADER|S_CTRL1|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|S_Y|out\(5));

-- Location: FF_X25_Y3_N35
\GFX|SHADER|YCD|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|SHADER|S_Y|out\(5),
	sload => VCC,
	ena => \GFX|SHADER|S_CTRL2|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|YCD|out\(5));

-- Location: FF_X27_Y4_N26
\GFX|SHADER|S_Y|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|RASTER|Y_REG|out\(7),
	sload => VCC,
	ena => \GFX|SHADER|S_CTRL1|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|S_Y|out\(7));

-- Location: LABCELL_X30_Y4_N12
\GFX|SHADER|YCD|out[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|YCD|out[7]~feeder_combout\ = ( \GFX|SHADER|S_Y|out\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \GFX|SHADER|S_Y|ALT_INV_out\(7),
	combout => \GFX|SHADER|YCD|out[7]~feeder_combout\);

-- Location: FF_X30_Y4_N13
\GFX|SHADER|YCD|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|SHADER|YCD|out[7]~feeder_combout\,
	ena => \GFX|SHADER|S_CTRL2|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|YCD|out\(7));

-- Location: LABCELL_X30_Y4_N3
\GFX|SHADER|LessThan10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|LessThan10~1_combout\ = ( !\GFX|SHADER|YCD|out\(7) & ( (!\GFX|SHADER|YCD|out\(6) & !\GFX|SHADER|YCD|out\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|YCD|ALT_INV_out\(6),
	datab => \GFX|SHADER|YCD|ALT_INV_out\(5),
	dataf => \GFX|SHADER|YCD|ALT_INV_out\(7),
	combout => \GFX|SHADER|LessThan10~1_combout\);

-- Location: FF_X27_Y4_N44
\GFX|SHADER|S_Y|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|RASTER|Y_REG|out\(3),
	sload => VCC,
	ena => \GFX|SHADER|S_CTRL1|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|S_Y|out\(3));

-- Location: FF_X25_Y3_N44
\GFX|SHADER|YCD|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|SHADER|S_Y|out\(3),
	sload => VCC,
	ena => \GFX|SHADER|S_CTRL2|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|YCD|out\(3));

-- Location: FF_X27_Y4_N22
\GFX|SHADER|S_Y|out[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|RASTER|Y_REG|out\(0),
	sload => VCC,
	ena => \GFX|SHADER|S_CTRL1|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|S_Y|out[0]~DUPLICATE_q\);

-- Location: FF_X25_Y4_N13
\GFX|SHADER|YCD|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|SHADER|S_Y|out[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \GFX|SHADER|S_CTRL2|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|YCD|out\(0));

-- Location: FF_X27_Y4_N52
\GFX|SHADER|S_Y|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|RASTER|Y_REG|out\(1),
	sload => VCC,
	ena => \GFX|SHADER|S_CTRL1|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|S_Y|out\(1));

-- Location: FF_X25_Y3_N29
\GFX|SHADER|YCD|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|SHADER|S_Y|out\(1),
	sload => VCC,
	ena => \GFX|SHADER|S_CTRL2|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|YCD|out\(1));

-- Location: FF_X27_Y4_N59
\GFX|SHADER|S_Y|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|RASTER|Y_REG|out\(2),
	sload => VCC,
	ena => \GFX|SHADER|S_CTRL1|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|S_Y|out\(2));

-- Location: MLABCELL_X25_Y4_N18
\GFX|SHADER|YCD|out[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|YCD|out[2]~feeder_combout\ = ( \GFX|SHADER|S_Y|out\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \GFX|SHADER|S_Y|ALT_INV_out\(2),
	combout => \GFX|SHADER|YCD|out[2]~feeder_combout\);

-- Location: FF_X25_Y4_N19
\GFX|SHADER|YCD|out[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|SHADER|YCD|out[2]~feeder_combout\,
	ena => \GFX|SHADER|S_CTRL2|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|YCD|out[2]~DUPLICATE_q\);

-- Location: LABCELL_X27_Y4_N33
\GFX|SHADER|LessThan7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|LessThan7~0_combout\ = ( \GFX|SHADER|YCD|out[2]~DUPLICATE_q\ & ( \GFX|SHADER|YCD|out\(3) ) ) # ( !\GFX|SHADER|YCD|out[2]~DUPLICATE_q\ & ( (\GFX|SHADER|YCD|out\(3) & ((\GFX|SHADER|YCD|out\(1)) # (\GFX|SHADER|YCD|out\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|YCD|ALT_INV_out\(3),
	datac => \GFX|SHADER|YCD|ALT_INV_out\(0),
	datad => \GFX|SHADER|YCD|ALT_INV_out\(1),
	dataf => \GFX|SHADER|YCD|ALT_INV_out[2]~DUPLICATE_q\,
	combout => \GFX|SHADER|LessThan7~0_combout\);

-- Location: FF_X27_Y4_N38
\GFX|SHADER|S_Y|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|RASTER|Y_REG|out\(4),
	sload => VCC,
	ena => \GFX|SHADER|S_CTRL1|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|S_Y|out\(4));

-- Location: FF_X27_Y4_N11
\GFX|SHADER|YCD|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|SHADER|S_Y|out\(4),
	sload => VCC,
	ena => \GFX|SHADER|S_CTRL2|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|YCD|out\(4));

-- Location: FF_X27_Y4_N40
\GFX|SHADER|S_Y|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|RASTER|Y_REG|out\(8),
	sload => VCC,
	ena => \GFX|SHADER|S_CTRL1|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|S_Y|out\(8));

-- Location: FF_X25_Y4_N40
\GFX|SHADER|YCD|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|SHADER|S_Y|out\(8),
	sload => VCC,
	ena => \GFX|SHADER|S_CTRL2|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|YCD|out\(8));

-- Location: LABCELL_X30_Y4_N0
\GFX|SHADER|LessThan18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|LessThan18~0_combout\ = ( !\GFX|SHADER|YCD|out\(7) & ( (!\GFX|SHADER|YCD|out\(6)) # ((!\GFX|SHADER|YCD|out\(5)) # ((!\GFX|SHADER|YCD|out\(3) & !\GFX|SHADER|YCD|out\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011101110111111101110111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|YCD|ALT_INV_out\(6),
	datab => \GFX|SHADER|YCD|ALT_INV_out\(5),
	datac => \GFX|SHADER|YCD|ALT_INV_out\(3),
	datad => \GFX|SHADER|YCD|ALT_INV_out\(4),
	dataf => \GFX|SHADER|YCD|ALT_INV_out\(7),
	combout => \GFX|SHADER|LessThan18~0_combout\);

-- Location: FF_X27_Y4_N50
\GFX|SHADER|S_Y|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|RASTER|Y_REG|out\(9),
	sload => VCC,
	ena => \GFX|SHADER|S_CTRL1|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|S_Y|out\(9));

-- Location: FF_X30_Y4_N55
\GFX|SHADER|YCD|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|SHADER|S_Y|out\(9),
	sload => VCC,
	ena => \GFX|SHADER|S_CTRL2|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|YCD|out\(9));

-- Location: LABCELL_X30_Y4_N18
\GFX|SHADER|WideOr0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|WideOr0~6_combout\ = ( \GFX|SHADER|LessThan18~0_combout\ & ( !\GFX|SHADER|YCD|out\(9) & ( (\GFX|SHADER|YCD|out\(8) & ((!\GFX|SHADER|LessThan10~1_combout\) # ((\GFX|SHADER|LessThan7~0_combout\ & \GFX|SHADER|YCD|out\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_LessThan10~1_combout\,
	datab => \GFX|SHADER|ALT_INV_LessThan7~0_combout\,
	datac => \GFX|SHADER|YCD|ALT_INV_out\(4),
	datad => \GFX|SHADER|YCD|ALT_INV_out\(8),
	datae => \GFX|SHADER|ALT_INV_LessThan18~0_combout\,
	dataf => \GFX|SHADER|YCD|ALT_INV_out\(9),
	combout => \GFX|SHADER|WideOr0~6_combout\);

-- Location: MLABCELL_X28_Y3_N27
\GFX|SHADER|shader_pixel_rgba[9]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|shader_pixel_rgba[9]~5_combout\ = ( \GFX|SHADER|WideOr0~6_combout\ & ( !\GFX|SHADER|WideOr0~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|SHADER|ALT_INV_WideOr0~8_combout\,
	dataf => \GFX|SHADER|ALT_INV_WideOr0~6_combout\,
	combout => \GFX|SHADER|shader_pixel_rgba[9]~5_combout\);

-- Location: LABCELL_X29_Y3_N39
\GFX|SHADER|WideOr0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|WideOr0~4_combout\ = ( \GFX|SHADER|comb~0_combout\ & ( (\GFX|SHADER|board_position~4_combout\ & (\State|xreg|out\(3) & ((!\GFX|SHADER|board_position~3_combout\) # (\GFX|SHADER|XCD|out\(7))))) ) ) # ( !\GFX|SHADER|comb~0_combout\ & ( 
-- (\GFX|SHADER|XCD|out\(7) & (\GFX|SHADER|board_position~4_combout\ & \State|xreg|out\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000010110000000000001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_board_position~3_combout\,
	datab => \GFX|SHADER|XCD|ALT_INV_out\(7),
	datac => \GFX|SHADER|ALT_INV_board_position~4_combout\,
	datad => \State|xreg|ALT_INV_out\(3),
	dataf => \GFX|SHADER|ALT_INV_comb~0_combout\,
	combout => \GFX|SHADER|WideOr0~4_combout\);

-- Location: LABCELL_X29_Y3_N18
\GFX|SHADER|WideOr0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|WideOr0~5_combout\ = ( \State|xreg|out\(4) & ( \State|xreg|out\(5) & ( (!\GFX|SHADER|board_position~5_combout\ & (!\GFX|SHADER|WideOr0~4_combout\ & ((!\GFX|SHADER|on_yborder~3_combout\) # (\GFX|SHADER|board_position~0_combout\)))) ) ) ) # ( 
-- !\State|xreg|out\(4) & ( \State|xreg|out\(5) & ( (!\GFX|SHADER|WideOr0~4_combout\ & ((!\GFX|SHADER|on_yborder~3_combout\) # (\GFX|SHADER|board_position~0_combout\))) ) ) ) # ( \State|xreg|out\(4) & ( !\State|xreg|out\(5) & ( 
-- (!\GFX|SHADER|board_position~5_combout\ & !\GFX|SHADER|WideOr0~4_combout\) ) ) ) # ( !\State|xreg|out\(4) & ( !\State|xreg|out\(5) & ( !\GFX|SHADER|WideOr0~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100100010001000100011001100000011001000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_board_position~5_combout\,
	datab => \GFX|SHADER|ALT_INV_WideOr0~4_combout\,
	datac => \GFX|SHADER|ALT_INV_board_position~0_combout\,
	datad => \GFX|SHADER|ALT_INV_on_yborder~3_combout\,
	datae => \State|xreg|ALT_INV_out\(4),
	dataf => \State|xreg|ALT_INV_out\(5),
	combout => \GFX|SHADER|WideOr0~5_combout\);

-- Location: LABCELL_X27_Y5_N0
\GFX|SHADER|Add6~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add6~34_cout\ = CARRY(( \GFX|SHADER|XCD|out\(1) ) + ( \GFX|SHADER|XCD|out\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|XCD|ALT_INV_out\(1),
	datab => \GFX|SHADER|XCD|ALT_INV_out\(0),
	cin => GND,
	cout => \GFX|SHADER|Add6~34_cout\);

-- Location: LABCELL_X27_Y5_N3
\GFX|SHADER|Add6~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add6~30_cout\ = CARRY(( \GFX|SHADER|XCD|out\(1) ) + ( \GFX|SHADER|XCD|out\(2) ) + ( \GFX|SHADER|Add6~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|XCD|ALT_INV_out\(1),
	datac => \GFX|SHADER|XCD|ALT_INV_out\(2),
	cin => \GFX|SHADER|Add6~34_cout\,
	cout => \GFX|SHADER|Add6~30_cout\);

-- Location: LABCELL_X27_Y5_N6
\GFX|SHADER|Add6~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add6~26_cout\ = CARRY(( \GFX|SHADER|XCD|out\(2) ) + ( \GFX|SHADER|XCD|out\(3) ) + ( \GFX|SHADER|Add6~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|SHADER|XCD|ALT_INV_out\(3),
	datad => \GFX|SHADER|XCD|ALT_INV_out\(2),
	cin => \GFX|SHADER|Add6~30_cout\,
	cout => \GFX|SHADER|Add6~26_cout\);

-- Location: LABCELL_X27_Y5_N9
\GFX|SHADER|Add6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add6~17_sumout\ = SUM(( \GFX|SHADER|XCD|out\(4) ) + ( \GFX|SHADER|XCD|out\(3) ) + ( \GFX|SHADER|Add6~26_cout\ ))
-- \GFX|SHADER|Add6~18\ = CARRY(( \GFX|SHADER|XCD|out\(4) ) + ( \GFX|SHADER|XCD|out\(3) ) + ( \GFX|SHADER|Add6~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|XCD|ALT_INV_out\(3),
	datad => \GFX|SHADER|XCD|ALT_INV_out\(4),
	cin => \GFX|SHADER|Add6~26_cout\,
	sumout => \GFX|SHADER|Add6~17_sumout\,
	cout => \GFX|SHADER|Add6~18\);

-- Location: LABCELL_X27_Y5_N12
\GFX|SHADER|Add6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add6~21_sumout\ = SUM(( \GFX|SHADER|XCD|out\(5) ) + ( \GFX|SHADER|XCD|out\(4) ) + ( \GFX|SHADER|Add6~18\ ))
-- \GFX|SHADER|Add6~22\ = CARRY(( \GFX|SHADER|XCD|out\(5) ) + ( \GFX|SHADER|XCD|out\(4) ) + ( \GFX|SHADER|Add6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GFX|SHADER|XCD|ALT_INV_out\(4),
	datad => \GFX|SHADER|XCD|ALT_INV_out\(5),
	cin => \GFX|SHADER|Add6~18\,
	sumout => \GFX|SHADER|Add6~21_sumout\,
	cout => \GFX|SHADER|Add6~22\);

-- Location: LABCELL_X27_Y5_N15
\GFX|SHADER|Add6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add6~9_sumout\ = SUM(( \GFX|SHADER|XCD|out\(6) ) + ( \GFX|SHADER|XCD|out\(5) ) + ( \GFX|SHADER|Add6~22\ ))
-- \GFX|SHADER|Add6~10\ = CARRY(( \GFX|SHADER|XCD|out\(6) ) + ( \GFX|SHADER|XCD|out\(5) ) + ( \GFX|SHADER|Add6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|SHADER|XCD|ALT_INV_out\(5),
	datad => \GFX|SHADER|XCD|ALT_INV_out\(6),
	cin => \GFX|SHADER|Add6~22\,
	sumout => \GFX|SHADER|Add6~9_sumout\,
	cout => \GFX|SHADER|Add6~10\);

-- Location: LABCELL_X27_Y5_N18
\GFX|SHADER|Add6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add6~13_sumout\ = SUM(( \GFX|SHADER|XCD|out\(7) ) + ( \GFX|SHADER|XCD|out\(6) ) + ( \GFX|SHADER|Add6~10\ ))
-- \GFX|SHADER|Add6~14\ = CARRY(( \GFX|SHADER|XCD|out\(7) ) + ( \GFX|SHADER|XCD|out\(6) ) + ( \GFX|SHADER|Add6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GFX|SHADER|XCD|ALT_INV_out\(6),
	datac => \GFX|SHADER|XCD|ALT_INV_out\(7),
	cin => \GFX|SHADER|Add6~10\,
	sumout => \GFX|SHADER|Add6~13_sumout\,
	cout => \GFX|SHADER|Add6~14\);

-- Location: LABCELL_X27_Y3_N3
\GFX|SHADER|WideOr3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|WideOr3~17_combout\ = ( \GFX|SHADER|Add6~13_sumout\ & ( (\GFX|SHADER|YCD|out\(5) & (!\GFX|SHADER|YCD|out\(4) $ (\GFX|SHADER|Add6~9_sumout\))) ) ) # ( !\GFX|SHADER|Add6~13_sumout\ & ( (!\GFX|SHADER|YCD|out\(5) & (!\GFX|SHADER|YCD|out\(4) $ 
-- (\GFX|SHADER|Add6~9_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010100000000101001010000000000000000101001010000000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|YCD|ALT_INV_out\(4),
	datac => \GFX|SHADER|ALT_INV_Add6~9_sumout\,
	datad => \GFX|SHADER|YCD|ALT_INV_out\(5),
	dataf => \GFX|SHADER|ALT_INV_Add6~13_sumout\,
	combout => \GFX|SHADER|WideOr3~17_combout\);

-- Location: LABCELL_X27_Y3_N15
\GFX|SHADER|WideOr3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|WideOr3~4_combout\ = ( \Wins|win_line\(6) & ( (!\GFX|SHADER|Add6~21_sumout\ & (!\GFX|SHADER|YCD|out\(3) & (!\GFX|SHADER|Add6~17_sumout\ $ (\GFX|SHADER|YCD|out[2]~DUPLICATE_q\)))) # (\GFX|SHADER|Add6~21_sumout\ & (\GFX|SHADER|YCD|out\(3) & 
-- (!\GFX|SHADER|Add6~17_sumout\ $ (\GFX|SHADER|YCD|out[2]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000100001000011000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_Add6~21_sumout\,
	datab => \GFX|SHADER|ALT_INV_Add6~17_sumout\,
	datac => \GFX|SHADER|YCD|ALT_INV_out\(3),
	datad => \GFX|SHADER|YCD|ALT_INV_out[2]~DUPLICATE_q\,
	dataf => \Wins|ALT_INV_win_line\(6),
	combout => \GFX|SHADER|WideOr3~4_combout\);

-- Location: LABCELL_X27_Y5_N21
\GFX|SHADER|Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add6~1_sumout\ = SUM(( \GFX|SHADER|XCD|out\(8) ) + ( \GFX|SHADER|XCD|out\(7) ) + ( \GFX|SHADER|Add6~14\ ))
-- \GFX|SHADER|Add6~2\ = CARRY(( \GFX|SHADER|XCD|out\(8) ) + ( \GFX|SHADER|XCD|out\(7) ) + ( \GFX|SHADER|Add6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|XCD|ALT_INV_out\(7),
	datad => \GFX|SHADER|XCD|ALT_INV_out\(8),
	cin => \GFX|SHADER|Add6~14\,
	sumout => \GFX|SHADER|Add6~1_sumout\,
	cout => \GFX|SHADER|Add6~2\);

-- Location: LABCELL_X27_Y5_N24
\GFX|SHADER|Add6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add6~5_sumout\ = SUM(( \GFX|SHADER|XCD|out\(9) ) + ( \GFX|SHADER|XCD|out\(8) ) + ( \GFX|SHADER|Add6~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|XCD|ALT_INV_out\(8),
	datab => \GFX|SHADER|XCD|ALT_INV_out\(9),
	cin => \GFX|SHADER|Add6~2\,
	sumout => \GFX|SHADER|Add6~5_sumout\);

-- Location: LABCELL_X27_Y3_N24
\GFX|SHADER|WideOr3~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|WideOr3~18_combout\ = ( \GFX|SHADER|Add6~5_sumout\ & ( \GFX|SHADER|Add6~1_sumout\ & ( (\GFX|SHADER|WideOr3~17_combout\ & (\GFX|SHADER|WideOr3~4_combout\ & (\GFX|SHADER|YCD|out\(7) & \GFX|SHADER|YCD|out\(6)))) ) ) ) # ( 
-- !\GFX|SHADER|Add6~5_sumout\ & ( \GFX|SHADER|Add6~1_sumout\ & ( (\GFX|SHADER|WideOr3~17_combout\ & (\GFX|SHADER|WideOr3~4_combout\ & (!\GFX|SHADER|YCD|out\(7) & \GFX|SHADER|YCD|out\(6)))) ) ) ) # ( \GFX|SHADER|Add6~5_sumout\ & ( !\GFX|SHADER|Add6~1_sumout\ 
-- & ( (\GFX|SHADER|WideOr3~17_combout\ & (\GFX|SHADER|WideOr3~4_combout\ & (\GFX|SHADER|YCD|out\(7) & !\GFX|SHADER|YCD|out\(6)))) ) ) ) # ( !\GFX|SHADER|Add6~5_sumout\ & ( !\GFX|SHADER|Add6~1_sumout\ & ( (\GFX|SHADER|WideOr3~17_combout\ & 
-- (\GFX|SHADER|WideOr3~4_combout\ & (!\GFX|SHADER|YCD|out\(7) & !\GFX|SHADER|YCD|out\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000010000000000000000000100000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_WideOr3~17_combout\,
	datab => \GFX|SHADER|ALT_INV_WideOr3~4_combout\,
	datac => \GFX|SHADER|YCD|ALT_INV_out\(7),
	datad => \GFX|SHADER|YCD|ALT_INV_out\(6),
	datae => \GFX|SHADER|ALT_INV_Add6~5_sumout\,
	dataf => \GFX|SHADER|ALT_INV_Add6~1_sumout\,
	combout => \GFX|SHADER|WideOr3~18_combout\);

-- Location: FF_X25_Y4_N20
\GFX|SHADER|YCD|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|SHADER|YCD|out[2]~feeder_combout\,
	ena => \GFX|SHADER|S_CTRL2|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|YCD|out\(2));

-- Location: MLABCELL_X25_Y4_N54
\GFX|SHADER|on_yborder~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|on_yborder~1_combout\ = ( !\GFX|SHADER|YCD|out\(5) & ( \GFX|SHADER|YCD|out\(3) & ( (!\GFX|SHADER|YCD|out\(2) & (!\GFX|SHADER|YCD|out\(9) & (!\GFX|SHADER|YCD|out\(1) & !\GFX|SHADER|YCD|out\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|YCD|ALT_INV_out\(2),
	datab => \GFX|SHADER|YCD|ALT_INV_out\(9),
	datac => \GFX|SHADER|YCD|ALT_INV_out\(1),
	datad => \GFX|SHADER|YCD|ALT_INV_out\(0),
	datae => \GFX|SHADER|YCD|ALT_INV_out\(5),
	dataf => \GFX|SHADER|YCD|ALT_INV_out\(3),
	combout => \GFX|SHADER|on_yborder~1_combout\);

-- Location: LABCELL_X27_Y3_N0
\GFX|SHADER|on_yborder~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|on_yborder~2_combout\ = ( \GFX|SHADER|YCD|out\(7) & ( (!\GFX|SHADER|YCD|out\(4) & (\GFX|SHADER|on_yborder~1_combout\ & (!\GFX|SHADER|YCD|out\(8) & \GFX|SHADER|YCD|out\(6)))) ) ) # ( !\GFX|SHADER|YCD|out\(7) & ( (\GFX|SHADER|YCD|out\(4) & 
-- (\GFX|SHADER|on_yborder~1_combout\ & (\GFX|SHADER|YCD|out\(8) & !\GFX|SHADER|YCD|out\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|YCD|ALT_INV_out\(4),
	datab => \GFX|SHADER|ALT_INV_on_yborder~1_combout\,
	datac => \GFX|SHADER|YCD|ALT_INV_out\(8),
	datad => \GFX|SHADER|YCD|ALT_INV_out\(6),
	dataf => \GFX|SHADER|YCD|ALT_INV_out\(7),
	combout => \GFX|SHADER|on_yborder~2_combout\);

-- Location: LABCELL_X27_Y5_N36
\GFX|SHADER|on_yborder~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|on_yborder~0_combout\ = ( \GFX|SHADER|XCD|out\(8) & ( \GFX|SHADER|XCD|out\(6) & ( (!\GFX|SHADER|XCD|out\(9) & ((!\GFX|SHADER|XCD|out\(5)) # (!\GFX|SHADER|XCD|out\(7)))) ) ) ) # ( !\GFX|SHADER|XCD|out\(8) & ( \GFX|SHADER|XCD|out\(6) & ( 
-- (!\GFX|SHADER|XCD|out\(9) & \GFX|SHADER|XCD|out\(7)) ) ) ) # ( \GFX|SHADER|XCD|out\(8) & ( !\GFX|SHADER|XCD|out\(6) & ( !\GFX|SHADER|XCD|out\(9) ) ) ) # ( !\GFX|SHADER|XCD|out\(8) & ( !\GFX|SHADER|XCD|out\(6) & ( (!\GFX|SHADER|XCD|out\(9) & 
-- (\GFX|SHADER|XCD|out\(5) & (\GFX|SHADER|XCD|out\(7) & !\GFX|SHADER|LessThan11~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000101010101010101000001010000010101010100010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|XCD|ALT_INV_out\(9),
	datab => \GFX|SHADER|XCD|ALT_INV_out\(5),
	datac => \GFX|SHADER|XCD|ALT_INV_out\(7),
	datad => \GFX|SHADER|ALT_INV_LessThan11~0_combout\,
	datae => \GFX|SHADER|XCD|ALT_INV_out\(8),
	dataf => \GFX|SHADER|XCD|ALT_INV_out\(6),
	combout => \GFX|SHADER|on_yborder~0_combout\);

-- Location: LABCELL_X30_Y4_N48
\GFX|SHADER|LessThan7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|LessThan7~1_combout\ = ( \GFX|SHADER|YCD|out\(6) & ( \GFX|SHADER|YCD|out\(4) & ( \GFX|SHADER|YCD|out\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GFX|SHADER|YCD|ALT_INV_out\(5),
	datae => \GFX|SHADER|YCD|ALT_INV_out\(6),
	dataf => \GFX|SHADER|YCD|ALT_INV_out\(4),
	combout => \GFX|SHADER|LessThan7~1_combout\);

-- Location: LABCELL_X30_Y4_N36
\GFX|SHADER|on_xborder~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|on_xborder~0_combout\ = ( \GFX|SHADER|YCD|out\(8) & ( \GFX|SHADER|YCD|out\(7) & ( (\GFX|SHADER|LessThan18~0_combout\ & !\GFX|SHADER|YCD|out\(9)) ) ) ) # ( !\GFX|SHADER|YCD|out\(8) & ( \GFX|SHADER|YCD|out\(7) & ( !\GFX|SHADER|YCD|out\(9) ) ) ) 
-- # ( \GFX|SHADER|YCD|out\(8) & ( !\GFX|SHADER|YCD|out\(7) & ( (\GFX|SHADER|LessThan18~0_combout\ & !\GFX|SHADER|YCD|out\(9)) ) ) ) # ( !\GFX|SHADER|YCD|out\(8) & ( !\GFX|SHADER|YCD|out\(7) & ( (\GFX|SHADER|LessThan7~1_combout\ & 
-- (\GFX|SHADER|LessThan7~0_combout\ & !\GFX|SHADER|YCD|out\(9))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000011110000000011111111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_LessThan7~1_combout\,
	datab => \GFX|SHADER|ALT_INV_LessThan7~0_combout\,
	datac => \GFX|SHADER|ALT_INV_LessThan18~0_combout\,
	datad => \GFX|SHADER|YCD|ALT_INV_out\(9),
	datae => \GFX|SHADER|YCD|ALT_INV_out\(8),
	dataf => \GFX|SHADER|YCD|ALT_INV_out\(7),
	combout => \GFX|SHADER|on_xborder~0_combout\);

-- Location: LABCELL_X31_Y3_N6
\GFX|SHADER|comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|comb~1_combout\ = ( !\GFX|SHADER|XCD|out\(3) & ( \GFX|SHADER|XCD|out\(0) & ( (\GFX|SHADER|comb~0_combout\ & (!\GFX|SHADER|XCD|out\(1) & \GFX|SHADER|XCD|out\(2))) ) ) ) # ( \GFX|SHADER|XCD|out\(3) & ( !\GFX|SHADER|XCD|out\(0) & ( 
-- (\GFX|SHADER|XCD|out\(1) & (!\GFX|SHADER|XCD|out\(2) & \GFX|FB|data_in[24]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011000000000100000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_comb~0_combout\,
	datab => \GFX|SHADER|XCD|ALT_INV_out\(1),
	datac => \GFX|SHADER|XCD|ALT_INV_out\(2),
	datad => \GFX|FB|ALT_INV_data_in[24]~0_combout\,
	datae => \GFX|SHADER|XCD|ALT_INV_out\(3),
	dataf => \GFX|SHADER|XCD|ALT_INV_out\(0),
	combout => \GFX|SHADER|comb~1_combout\);

-- Location: MLABCELL_X28_Y3_N6
\GFX|SHADER|comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|comb~3_combout\ = ( \GFX|SHADER|comb~2_combout\ & ( (!\GFX|SHADER|on_yborder~2_combout\ & (((\GFX|SHADER|on_xborder~0_combout\ & \GFX|SHADER|comb~1_combout\)))) # (\GFX|SHADER|on_yborder~2_combout\ & (((\GFX|SHADER|on_xborder~0_combout\ & 
-- \GFX|SHADER|comb~1_combout\)) # (\GFX|SHADER|on_yborder~0_combout\))) ) ) # ( !\GFX|SHADER|comb~2_combout\ & ( (\GFX|SHADER|on_yborder~2_combout\ & \GFX|SHADER|on_yborder~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000111110001000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_on_yborder~2_combout\,
	datab => \GFX|SHADER|ALT_INV_on_yborder~0_combout\,
	datac => \GFX|SHADER|ALT_INV_on_xborder~0_combout\,
	datad => \GFX|SHADER|ALT_INV_comb~1_combout\,
	dataf => \GFX|SHADER|ALT_INV_comb~2_combout\,
	combout => \GFX|SHADER|comb~3_combout\);

-- Location: LABCELL_X27_Y3_N30
\GFX|SHADER|Add7~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add7~26_cout\ = CARRY(( !\GFX|SHADER|YCD|out\(0) ) + ( !\GFX|SHADER|YCD|out\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|SHADER|YCD|ALT_INV_out\(1),
	datad => \GFX|SHADER|YCD|ALT_INV_out\(0),
	cin => GND,
	cout => \GFX|SHADER|Add7~26_cout\);

-- Location: LABCELL_X27_Y3_N33
\GFX|SHADER|Add7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add7~17_sumout\ = SUM(( !\GFX|SHADER|YCD|out[2]~DUPLICATE_q\ ) + ( GND ) + ( \GFX|SHADER|Add7~26_cout\ ))
-- \GFX|SHADER|Add7~18\ = CARRY(( !\GFX|SHADER|YCD|out[2]~DUPLICATE_q\ ) + ( GND ) + ( \GFX|SHADER|Add7~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GFX|SHADER|YCD|ALT_INV_out[2]~DUPLICATE_q\,
	cin => \GFX|SHADER|Add7~26_cout\,
	sumout => \GFX|SHADER|Add7~17_sumout\,
	cout => \GFX|SHADER|Add7~18\);

-- Location: LABCELL_X27_Y3_N36
\GFX|SHADER|Add7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add7~21_sumout\ = SUM(( !\GFX|SHADER|YCD|out\(3) ) + ( GND ) + ( \GFX|SHADER|Add7~18\ ))
-- \GFX|SHADER|Add7~22\ = CARRY(( !\GFX|SHADER|YCD|out\(3) ) + ( GND ) + ( \GFX|SHADER|Add7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GFX|SHADER|YCD|ALT_INV_out\(3),
	cin => \GFX|SHADER|Add7~18\,
	sumout => \GFX|SHADER|Add7~21_sumout\,
	cout => \GFX|SHADER|Add7~22\);

-- Location: LABCELL_X27_Y3_N39
\GFX|SHADER|Add7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add7~9_sumout\ = SUM(( !\GFX|SHADER|YCD|out\(4) ) + ( GND ) + ( \GFX|SHADER|Add7~22\ ))
-- \GFX|SHADER|Add7~10\ = CARRY(( !\GFX|SHADER|YCD|out\(4) ) + ( GND ) + ( \GFX|SHADER|Add7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GFX|SHADER|YCD|ALT_INV_out\(4),
	cin => \GFX|SHADER|Add7~22\,
	sumout => \GFX|SHADER|Add7~9_sumout\,
	cout => \GFX|SHADER|Add7~10\);

-- Location: LABCELL_X27_Y3_N42
\GFX|SHADER|Add7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add7~13_sumout\ = SUM(( !\GFX|SHADER|YCD|out\(5) ) + ( VCC ) + ( \GFX|SHADER|Add7~10\ ))
-- \GFX|SHADER|Add7~14\ = CARRY(( !\GFX|SHADER|YCD|out\(5) ) + ( VCC ) + ( \GFX|SHADER|Add7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|SHADER|YCD|ALT_INV_out\(5),
	cin => \GFX|SHADER|Add7~10\,
	sumout => \GFX|SHADER|Add7~13_sumout\,
	cout => \GFX|SHADER|Add7~14\);

-- Location: LABCELL_X27_Y3_N45
\GFX|SHADER|Add7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add7~1_sumout\ = SUM(( !\GFX|SHADER|YCD|out\(6) ) + ( VCC ) + ( \GFX|SHADER|Add7~14\ ))
-- \GFX|SHADER|Add7~2\ = CARRY(( !\GFX|SHADER|YCD|out\(6) ) + ( VCC ) + ( \GFX|SHADER|Add7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|SHADER|YCD|ALT_INV_out\(6),
	cin => \GFX|SHADER|Add7~14\,
	sumout => \GFX|SHADER|Add7~1_sumout\,
	cout => \GFX|SHADER|Add7~2\);

-- Location: LABCELL_X27_Y3_N48
\GFX|SHADER|Add7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add7~5_sumout\ = SUM(( !\GFX|SHADER|YCD|out\(7) ) + ( VCC ) + ( \GFX|SHADER|Add7~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|SHADER|YCD|ALT_INV_out\(7),
	cin => \GFX|SHADER|Add7~2\,
	sumout => \GFX|SHADER|Add7~5_sumout\);

-- Location: LABCELL_X27_Y3_N6
\GFX|SHADER|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|WideOr3~0_combout\ = ( \GFX|SHADER|Add6~13_sumout\ & ( \GFX|SHADER|Add6~9_sumout\ & ( (\GFX|SHADER|Add7~9_sumout\ & \GFX|SHADER|Add7~13_sumout\) ) ) ) # ( !\GFX|SHADER|Add6~13_sumout\ & ( \GFX|SHADER|Add6~9_sumout\ & ( 
-- (\GFX|SHADER|Add7~9_sumout\ & !\GFX|SHADER|Add7~13_sumout\) ) ) ) # ( \GFX|SHADER|Add6~13_sumout\ & ( !\GFX|SHADER|Add6~9_sumout\ & ( (!\GFX|SHADER|Add7~9_sumout\ & \GFX|SHADER|Add7~13_sumout\) ) ) ) # ( !\GFX|SHADER|Add6~13_sumout\ & ( 
-- !\GFX|SHADER|Add6~9_sumout\ & ( (!\GFX|SHADER|Add7~9_sumout\ & !\GFX|SHADER|Add7~13_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000000000001100110000110011000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GFX|SHADER|ALT_INV_Add7~9_sumout\,
	datad => \GFX|SHADER|ALT_INV_Add7~13_sumout\,
	datae => \GFX|SHADER|ALT_INV_Add6~13_sumout\,
	dataf => \GFX|SHADER|ALT_INV_Add6~9_sumout\,
	combout => \GFX|SHADER|WideOr3~0_combout\);

-- Location: LABCELL_X27_Y3_N12
\GFX|SHADER|WideOr3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|WideOr3~1_combout\ = ( \GFX|SHADER|Add7~17_sumout\ & ( (\GFX|SHADER|Add6~17_sumout\ & (\Wins|win_line\(7) & (!\GFX|SHADER|Add6~21_sumout\ $ (\GFX|SHADER|Add7~21_sumout\)))) ) ) # ( !\GFX|SHADER|Add7~17_sumout\ & ( (!\GFX|SHADER|Add6~17_sumout\ 
-- & (\Wins|win_line\(7) & (!\GFX|SHADER|Add6~21_sumout\ $ (\GFX|SHADER|Add7~21_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000100000010000000010000000010000000010000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_Add6~21_sumout\,
	datab => \GFX|SHADER|ALT_INV_Add6~17_sumout\,
	datac => \Wins|ALT_INV_win_line\(7),
	datad => \GFX|SHADER|ALT_INV_Add7~21_sumout\,
	dataf => \GFX|SHADER|ALT_INV_Add7~17_sumout\,
	combout => \GFX|SHADER|WideOr3~1_combout\);

-- Location: LABCELL_X27_Y3_N18
\GFX|SHADER|WideOr3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|WideOr3~2_combout\ = ( \GFX|SHADER|Add6~5_sumout\ & ( \GFX|SHADER|WideOr3~1_combout\ & ( (\GFX|SHADER|Add7~5_sumout\ & (\GFX|SHADER|WideOr3~0_combout\ & (!\GFX|SHADER|Add6~1_sumout\ $ (\GFX|SHADER|Add7~1_sumout\)))) ) ) ) # ( 
-- !\GFX|SHADER|Add6~5_sumout\ & ( \GFX|SHADER|WideOr3~1_combout\ & ( (!\GFX|SHADER|Add7~5_sumout\ & (\GFX|SHADER|WideOr3~0_combout\ & (!\GFX|SHADER|Add6~1_sumout\ $ (\GFX|SHADER|Add7~1_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100100000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_Add6~1_sumout\,
	datab => \GFX|SHADER|ALT_INV_Add7~1_sumout\,
	datac => \GFX|SHADER|ALT_INV_Add7~5_sumout\,
	datad => \GFX|SHADER|ALT_INV_WideOr3~0_combout\,
	datae => \GFX|SHADER|ALT_INV_Add6~5_sumout\,
	dataf => \GFX|SHADER|ALT_INV_WideOr3~1_combout\,
	combout => \GFX|SHADER|WideOr3~2_combout\);

-- Location: LABCELL_X29_Y2_N21
\GFX|SHADER|WideOr3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|WideOr3~13_combout\ = ( \GFX|SHADER|XCD|out\(8) & ( (!\GFX|SHADER|XCD|out\(2) & !\GFX|SHADER|XCD|out\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|SHADER|XCD|ALT_INV_out\(2),
	datad => \GFX|SHADER|XCD|ALT_INV_out\(4),
	dataf => \GFX|SHADER|XCD|ALT_INV_out\(8),
	combout => \GFX|SHADER|WideOr3~13_combout\);

-- Location: MLABCELL_X28_Y2_N3
\GFX|SHADER|WideOr3~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|WideOr3~8_combout\ = ( !\GFX|SHADER|YCD|out\(3) & ( !\GFX|SHADER|YCD|out[2]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000010101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|YCD|ALT_INV_out[2]~DUPLICATE_q\,
	datae => \GFX|SHADER|YCD|ALT_INV_out\(3),
	combout => \GFX|SHADER|WideOr3~8_combout\);

-- Location: LABCELL_X29_Y2_N24
\GFX|SHADER|WideOr3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|WideOr3~6_combout\ = ( !\GFX|SHADER|YCD|out\(7) & ( !\GFX|SHADER|YCD|out\(4) & ( (\GFX|SHADER|YCD|out\(8) & (\GFX|SHADER|YCD|out\(6) & (!\GFX|SHADER|YCD|out\(5) & \Wins|win_line\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|YCD|ALT_INV_out\(8),
	datab => \GFX|SHADER|YCD|ALT_INV_out\(6),
	datac => \GFX|SHADER|YCD|ALT_INV_out\(5),
	datad => \Wins|ALT_INV_win_line\(2),
	datae => \GFX|SHADER|YCD|ALT_INV_out\(7),
	dataf => \GFX|SHADER|YCD|ALT_INV_out\(4),
	combout => \GFX|SHADER|WideOr3~6_combout\);

-- Location: LABCELL_X29_Y2_N12
\GFX|SHADER|WideOr3~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|WideOr3~11_combout\ = ( \GFX|SHADER|XCD|out\(7) & ( \Wins|win_line\(5) & ( (!\GFX|SHADER|XCD|out\(6) & (\GFX|SHADER|XCD|out\(5) & \GFX|SHADER|XCD|out\(3))) ) ) ) # ( !\GFX|SHADER|XCD|out\(7) & ( \Wins|win_line\(5) & ( (\GFX|SHADER|XCD|out\(6) 
-- & (!\GFX|SHADER|XCD|out\(5) & (!\GFX|SHADER|XCD|out\(3) & \Wins|win_line\(4)))) ) ) ) # ( !\GFX|SHADER|XCD|out\(7) & ( !\Wins|win_line\(5) & ( (\GFX|SHADER|XCD|out\(6) & (!\GFX|SHADER|XCD|out\(5) & (!\GFX|SHADER|XCD|out\(3) & \Wins|win_line\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000010000000000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|XCD|ALT_INV_out\(6),
	datab => \GFX|SHADER|XCD|ALT_INV_out\(5),
	datac => \GFX|SHADER|XCD|ALT_INV_out\(3),
	datad => \Wins|ALT_INV_win_line\(4),
	datae => \GFX|SHADER|XCD|ALT_INV_out\(7),
	dataf => \Wins|ALT_INV_win_line\(5),
	combout => \GFX|SHADER|WideOr3~11_combout\);

-- Location: LABCELL_X29_Y2_N36
\GFX|SHADER|WideOr3~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|WideOr3~12_combout\ = ( !\GFX|SHADER|XCD|out\(8) & ( (\GFX|SHADER|XCD|out\(7) & (\GFX|SHADER|XCD|out\(4) & \GFX|SHADER|XCD|out\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GFX|SHADER|XCD|ALT_INV_out\(7),
	datac => \GFX|SHADER|XCD|ALT_INV_out\(4),
	datad => \GFX|SHADER|XCD|ALT_INV_out\(2),
	dataf => \GFX|SHADER|XCD|ALT_INV_out\(8),
	combout => \GFX|SHADER|WideOr3~12_combout\);

-- Location: LABCELL_X29_Y2_N39
\GFX|SHADER|WideOr3~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|WideOr3~10_combout\ = (!\GFX|SHADER|XCD|out\(3) & (!\GFX|SHADER|XCD|out\(5) & \GFX|SHADER|XCD|out\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|XCD|ALT_INV_out\(3),
	datac => \GFX|SHADER|XCD|ALT_INV_out\(5),
	datad => \GFX|SHADER|XCD|ALT_INV_out\(6),
	combout => \GFX|SHADER|WideOr3~10_combout\);

-- Location: LABCELL_X29_Y2_N3
\GFX|SHADER|WideOr3~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|WideOr3~20_combout\ = ( \Wins|win_line\(3) & ( (\GFX|SHADER|WideOr3~12_combout\ & \GFX|SHADER|WideOr3~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_WideOr3~12_combout\,
	datac => \GFX|SHADER|ALT_INV_WideOr3~10_combout\,
	dataf => \Wins|ALT_INV_win_line\(3),
	combout => \GFX|SHADER|WideOr3~20_combout\);

-- Location: LABCELL_X29_Y2_N45
\GFX|SHADER|WideOr3~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|WideOr3~7_combout\ = ( !\GFX|SHADER|YCD|out\(8) & ( (\GFX|SHADER|YCD|out\(5) & \GFX|SHADER|YCD|out\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|SHADER|YCD|ALT_INV_out\(5),
	datad => \GFX|SHADER|YCD|ALT_INV_out\(7),
	dataf => \GFX|SHADER|YCD|ALT_INV_out\(8),
	combout => \GFX|SHADER|WideOr3~7_combout\);

-- Location: LABCELL_X29_Y2_N48
\GFX|SHADER|WideOr3~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|WideOr3~19_combout\ = ( \GFX|SHADER|YCD|out\(6) & ( (\GFX|SHADER|YCD|out\(4) & (\Wins|win_line\(1) & \GFX|SHADER|WideOr3~7_combout\)) ) ) # ( !\GFX|SHADER|YCD|out\(6) & ( (!\GFX|SHADER|YCD|out\(4) & (\Wins|win_line\(0) & 
-- \GFX|SHADER|WideOr3~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|YCD|ALT_INV_out\(4),
	datab => \Wins|ALT_INV_win_line\(0),
	datac => \Wins|ALT_INV_win_line\(1),
	datad => \GFX|SHADER|ALT_INV_WideOr3~7_combout\,
	dataf => \GFX|SHADER|YCD|ALT_INV_out\(6),
	combout => \GFX|SHADER|WideOr3~19_combout\);

-- Location: LABCELL_X29_Y2_N54
\GFX|SHADER|WideOr3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|WideOr3~21_combout\ = ( !\GFX|SHADER|WideOr3~20_combout\ & ( \GFX|SHADER|WideOr3~19_combout\ & ( (!\GFX|SHADER|WideOr3~8_combout\ & ((!\GFX|SHADER|WideOr3~13_combout\) # (!\GFX|SHADER|WideOr3~11_combout\))) ) ) ) # ( 
-- !\GFX|SHADER|WideOr3~20_combout\ & ( !\GFX|SHADER|WideOr3~19_combout\ & ( (!\GFX|SHADER|WideOr3~13_combout\ & ((!\GFX|SHADER|WideOr3~8_combout\) # ((!\GFX|SHADER|WideOr3~6_combout\)))) # (\GFX|SHADER|WideOr3~13_combout\ & (!\GFX|SHADER|WideOr3~11_combout\ 
-- & ((!\GFX|SHADER|WideOr3~8_combout\) # (!\GFX|SHADER|WideOr3~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110010101000000000000000000011001100100010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_WideOr3~13_combout\,
	datab => \GFX|SHADER|ALT_INV_WideOr3~8_combout\,
	datac => \GFX|SHADER|ALT_INV_WideOr3~6_combout\,
	datad => \GFX|SHADER|ALT_INV_WideOr3~11_combout\,
	datae => \GFX|SHADER|ALT_INV_WideOr3~20_combout\,
	dataf => \GFX|SHADER|ALT_INV_WideOr3~19_combout\,
	combout => \GFX|SHADER|WideOr3~21_combout\);

-- Location: MLABCELL_X28_Y3_N9
\GFX|SHADER|WideOr3~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|WideOr3~16_combout\ = ( \GFX|SHADER|on_xborder~0_combout\ & ( \GFX|SHADER|on_yborder~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|SHADER|ALT_INV_on_yborder~0_combout\,
	dataf => \GFX|SHADER|ALT_INV_on_xborder~0_combout\,
	combout => \GFX|SHADER|WideOr3~16_combout\);

-- Location: MLABCELL_X28_Y3_N24
\GFX|SHADER|shader_pixel_rgba[9]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|shader_pixel_rgba[9]~4_combout\ = ( \GFX|SHADER|WideOr3~16_combout\ & ( (!\GFX|SHADER|WideOr3~18_combout\ & (!\GFX|SHADER|comb~3_combout\ & (!\GFX|SHADER|WideOr3~2_combout\ & \GFX|SHADER|WideOr3~21_combout\))) ) ) # ( 
-- !\GFX|SHADER|WideOr3~16_combout\ & ( !\GFX|SHADER|comb~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_WideOr3~18_combout\,
	datab => \GFX|SHADER|ALT_INV_comb~3_combout\,
	datac => \GFX|SHADER|ALT_INV_WideOr3~2_combout\,
	datad => \GFX|SHADER|ALT_INV_WideOr3~21_combout\,
	dataf => \GFX|SHADER|ALT_INV_WideOr3~16_combout\,
	combout => \GFX|SHADER|shader_pixel_rgba[9]~4_combout\);

-- Location: LABCELL_X31_Y3_N48
\GFX|SHADER|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|WideOr0~0_combout\ = ( \GFX|SHADER|comb~2_combout\ & ( \State|xreg|out\(7) & ( (!\GFX|FB|data_in[24]~0_combout\ & (((!\GFX|SHADER|comb~0_combout\) # (\GFX|SHADER|board_position~2_combout\)))) # (\GFX|FB|data_in[24]~0_combout\ & 
-- (\GFX|SHADER|board_position~1_combout\ & ((!\GFX|SHADER|comb~0_combout\) # (\GFX|SHADER|board_position~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001011000010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|ALT_INV_data_in[24]~0_combout\,
	datab => \GFX|SHADER|ALT_INV_board_position~1_combout\,
	datac => \GFX|SHADER|ALT_INV_comb~0_combout\,
	datad => \GFX|SHADER|ALT_INV_board_position~2_combout\,
	datae => \GFX|SHADER|ALT_INV_comb~2_combout\,
	dataf => \State|xreg|ALT_INV_out\(7),
	combout => \GFX|SHADER|WideOr0~0_combout\);

-- Location: LABCELL_X30_Y4_N6
\GFX|SHADER|LessThan8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|LessThan8~0_combout\ = ( \GFX|SHADER|YCD|out\(7) & ( (\GFX|SHADER|YCD|out\(6) & (((\GFX|SHADER|YCD|out\(4)) # (\GFX|SHADER|YCD|out\(3))) # (\GFX|SHADER|YCD|out\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010101010101010001010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|YCD|ALT_INV_out\(6),
	datab => \GFX|SHADER|YCD|ALT_INV_out\(5),
	datac => \GFX|SHADER|YCD|ALT_INV_out\(3),
	datad => \GFX|SHADER|YCD|ALT_INV_out\(4),
	dataf => \GFX|SHADER|YCD|ALT_INV_out\(7),
	combout => \GFX|SHADER|LessThan8~0_combout\);

-- Location: LABCELL_X30_Y4_N57
\GFX|SHADER|WideOr0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|WideOr0~2_combout\ = ( !\GFX|SHADER|YCD|out\(8) & ( \GFX|SHADER|YCD|out\(7) & ( (!\GFX|SHADER|LessThan8~0_combout\ & !\GFX|SHADER|YCD|out\(9)) ) ) ) # ( !\GFX|SHADER|YCD|out\(8) & ( !\GFX|SHADER|YCD|out\(7) & ( 
-- (\GFX|SHADER|LessThan7~1_combout\ & (!\GFX|SHADER|LessThan8~0_combout\ & (!\GFX|SHADER|YCD|out\(9) & \GFX|SHADER|LessThan7~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000011000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_LessThan7~1_combout\,
	datab => \GFX|SHADER|ALT_INV_LessThan8~0_combout\,
	datac => \GFX|SHADER|YCD|ALT_INV_out\(9),
	datad => \GFX|SHADER|ALT_INV_LessThan7~0_combout\,
	datae => \GFX|SHADER|YCD|ALT_INV_out\(8),
	dataf => \GFX|SHADER|YCD|ALT_INV_out\(7),
	combout => \GFX|SHADER|WideOr0~2_combout\);

-- Location: LABCELL_X29_Y3_N36
\GFX|SHADER|WideOr0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|WideOr0~1_combout\ = ( \State|xreg|out\(6) & ( (\GFX|SHADER|board_position~4_combout\ & (((!\GFX|SHADER|board_position~3_combout\ & \GFX|SHADER|comb~0_combout\)) # (\GFX|SHADER|XCD|out\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001110110000000000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_board_position~3_combout\,
	datab => \GFX|SHADER|XCD|ALT_INV_out\(7),
	datac => \GFX|SHADER|ALT_INV_comb~0_combout\,
	datad => \GFX|SHADER|ALT_INV_board_position~4_combout\,
	dataf => \State|xreg|ALT_INV_out\(6),
	combout => \GFX|SHADER|WideOr0~1_combout\);

-- Location: LABCELL_X29_Y3_N12
\GFX|SHADER|WideOr0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|WideOr0~3_combout\ = ( \GFX|SHADER|WideOr0~1_combout\ & ( \State|xreg|out\(8) & ( \GFX|SHADER|WideOr0~2_combout\ ) ) ) # ( !\GFX|SHADER|WideOr0~1_combout\ & ( \State|xreg|out\(8) & ( (\GFX|SHADER|WideOr0~2_combout\ & 
-- (((\GFX|SHADER|on_yborder~3_combout\ & !\GFX|SHADER|board_position~0_combout\)) # (\GFX|SHADER|WideOr0~0_combout\))) ) ) ) # ( \GFX|SHADER|WideOr0~1_combout\ & ( !\State|xreg|out\(8) & ( \GFX|SHADER|WideOr0~2_combout\ ) ) ) # ( 
-- !\GFX|SHADER|WideOr0~1_combout\ & ( !\State|xreg|out\(8) & ( (\GFX|SHADER|WideOr0~0_combout\ & \GFX|SHADER|WideOr0~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000001111111100000000011101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_WideOr0~0_combout\,
	datab => \GFX|SHADER|ALT_INV_on_yborder~3_combout\,
	datac => \GFX|SHADER|ALT_INV_board_position~0_combout\,
	datad => \GFX|SHADER|ALT_INV_WideOr0~2_combout\,
	datae => \GFX|SHADER|ALT_INV_WideOr0~1_combout\,
	dataf => \State|xreg|ALT_INV_out\(8),
	combout => \GFX|SHADER|WideOr0~3_combout\);

-- Location: LABCELL_X29_Y5_N27
\GFX|SHADER|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add1~1_combout\ = ( \GFX|SHADER|S_X|out\(4) & ( (!\GFX|SHADER|S_X|out\(3) & ((!\GFX|SHADER|S_X|out\(2)) # (!\GFX|SHADER|S_X|out\(1)))) ) ) # ( !\GFX|SHADER|S_X|out\(4) & ( ((\GFX|SHADER|S_X|out\(2) & \GFX|SHADER|S_X|out\(1))) # 
-- (\GFX|SHADER|S_X|out\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101010111010101110101011110101000101010001010100010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|S_X|ALT_INV_out\(3),
	datab => \GFX|SHADER|S_X|ALT_INV_out\(2),
	datac => \GFX|SHADER|S_X|ALT_INV_out\(1),
	dataf => \GFX|SHADER|S_X|ALT_INV_out\(4),
	combout => \GFX|SHADER|Add1~1_combout\);

-- Location: MLABCELL_X28_Y5_N0
\GFX|SHADER|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add2~13_sumout\ = SUM(( \GFX|SHADER|S_X|out\(0) ) + ( VCC ) + ( !VCC ))
-- \GFX|SHADER|Add2~14\ = CARRY(( \GFX|SHADER|S_X|out\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|SHADER|S_X|ALT_INV_out\(0),
	cin => GND,
	sumout => \GFX|SHADER|Add2~13_sumout\,
	cout => \GFX|SHADER|Add2~14\);

-- Location: MLABCELL_X28_Y5_N3
\GFX|SHADER|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add2~17_sumout\ = SUM(( \GFX|SHADER|S_X|out\(1) ) + ( VCC ) + ( \GFX|SHADER|Add2~14\ ))
-- \GFX|SHADER|Add2~18\ = CARRY(( \GFX|SHADER|S_X|out\(1) ) + ( VCC ) + ( \GFX|SHADER|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|S_X|ALT_INV_out\(1),
	cin => \GFX|SHADER|Add2~14\,
	sumout => \GFX|SHADER|Add2~17_sumout\,
	cout => \GFX|SHADER|Add2~18\);

-- Location: MLABCELL_X28_Y5_N6
\GFX|SHADER|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add2~21_sumout\ = SUM(( \GFX|SHADER|S_X|out\(2) ) + ( VCC ) + ( \GFX|SHADER|Add2~18\ ))
-- \GFX|SHADER|Add2~22\ = CARRY(( \GFX|SHADER|S_X|out\(2) ) + ( VCC ) + ( \GFX|SHADER|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|SHADER|S_X|ALT_INV_out\(2),
	cin => \GFX|SHADER|Add2~18\,
	sumout => \GFX|SHADER|Add2~21_sumout\,
	cout => \GFX|SHADER|Add2~22\);

-- Location: MLABCELL_X28_Y5_N9
\GFX|SHADER|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add2~25_sumout\ = SUM(( \GFX|SHADER|S_X|out\(3) ) + ( VCC ) + ( \GFX|SHADER|Add2~22\ ))
-- \GFX|SHADER|Add2~26\ = CARRY(( \GFX|SHADER|S_X|out\(3) ) + ( VCC ) + ( \GFX|SHADER|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|SHADER|S_X|ALT_INV_out\(3),
	cin => \GFX|SHADER|Add2~22\,
	sumout => \GFX|SHADER|Add2~25_sumout\,
	cout => \GFX|SHADER|Add2~26\);

-- Location: MLABCELL_X28_Y5_N12
\GFX|SHADER|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add2~1_sumout\ = SUM(( \GFX|SHADER|S_X|out\(4) ) + ( VCC ) + ( \GFX|SHADER|Add2~26\ ))
-- \GFX|SHADER|Add2~2\ = CARRY(( \GFX|SHADER|S_X|out\(4) ) + ( VCC ) + ( \GFX|SHADER|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GFX|SHADER|S_X|ALT_INV_out\(4),
	cin => \GFX|SHADER|Add2~26\,
	sumout => \GFX|SHADER|Add2~1_sumout\,
	cout => \GFX|SHADER|Add2~2\);

-- Location: LABCELL_X29_Y5_N0
\GFX|SHADER|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add0~13_sumout\ = SUM(( \GFX|SHADER|S_X|out\(0) ) + ( VCC ) + ( !VCC ))
-- \GFX|SHADER|Add0~14\ = CARRY(( \GFX|SHADER|S_X|out\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|SHADER|S_X|ALT_INV_out\(0),
	cin => GND,
	sumout => \GFX|SHADER|Add0~13_sumout\,
	cout => \GFX|SHADER|Add0~14\);

-- Location: LABCELL_X29_Y5_N3
\GFX|SHADER|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add0~17_sumout\ = SUM(( \GFX|SHADER|S_X|out\(1) ) + ( GND ) + ( \GFX|SHADER|Add0~14\ ))
-- \GFX|SHADER|Add0~18\ = CARRY(( \GFX|SHADER|S_X|out\(1) ) + ( GND ) + ( \GFX|SHADER|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|SHADER|S_X|ALT_INV_out\(1),
	cin => \GFX|SHADER|Add0~14\,
	sumout => \GFX|SHADER|Add0~17_sumout\,
	cout => \GFX|SHADER|Add0~18\);

-- Location: LABCELL_X29_Y5_N6
\GFX|SHADER|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add0~21_sumout\ = SUM(( \GFX|SHADER|S_X|out\(2) ) + ( VCC ) + ( \GFX|SHADER|Add0~18\ ))
-- \GFX|SHADER|Add0~22\ = CARRY(( \GFX|SHADER|S_X|out\(2) ) + ( VCC ) + ( \GFX|SHADER|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GFX|SHADER|S_X|ALT_INV_out\(2),
	cin => \GFX|SHADER|Add0~18\,
	sumout => \GFX|SHADER|Add0~21_sumout\,
	cout => \GFX|SHADER|Add0~22\);

-- Location: LABCELL_X29_Y5_N9
\GFX|SHADER|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add0~25_sumout\ = SUM(( \GFX|SHADER|S_X|out\(3) ) + ( GND ) + ( \GFX|SHADER|Add0~22\ ))
-- \GFX|SHADER|Add0~26\ = CARRY(( \GFX|SHADER|S_X|out\(3) ) + ( GND ) + ( \GFX|SHADER|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|SHADER|S_X|ALT_INV_out\(3),
	cin => \GFX|SHADER|Add0~22\,
	sumout => \GFX|SHADER|Add0~25_sumout\,
	cout => \GFX|SHADER|Add0~26\);

-- Location: LABCELL_X29_Y5_N12
\GFX|SHADER|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add0~1_sumout\ = SUM(( \GFX|SHADER|S_X|out\(4) ) + ( VCC ) + ( \GFX|SHADER|Add0~26\ ))
-- \GFX|SHADER|Add0~2\ = CARRY(( \GFX|SHADER|S_X|out\(4) ) + ( VCC ) + ( \GFX|SHADER|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GFX|SHADER|S_X|ALT_INV_out\(4),
	cin => \GFX|SHADER|Add0~26\,
	sumout => \GFX|SHADER|Add0~1_sumout\,
	cout => \GFX|SHADER|Add0~2\);

-- Location: LABCELL_X29_Y5_N33
\GFX|SHADER|comb~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|comb~8_combout\ = (!\GFX|SHADER|S_X|out\(9) & \GFX|SHADER|S_X|out\(8))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|SHADER|S_X|ALT_INV_out\(9),
	datad => \GFX|SHADER|S_X|ALT_INV_out\(8),
	combout => \GFX|SHADER|comb~8_combout\);

-- Location: LABCELL_X29_Y5_N39
\GFX|SHADER|comb~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|comb~9_combout\ = ( \GFX|SHADER|S_X|out\(5) & ( \GFX|SHADER|S_X|out\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|SHADER|S_X|ALT_INV_out\(6),
	dataf => \GFX|SHADER|S_X|ALT_INV_out\(5),
	combout => \GFX|SHADER|comb~9_combout\);

-- Location: LABCELL_X29_Y5_N24
\GFX|SHADER|LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|LessThan3~0_combout\ = ( !\GFX|SHADER|S_X|out\(4) & ( (!\GFX|SHADER|S_X|out\(3) & (!\GFX|SHADER|S_X|out\(2) & (!\GFX|SHADER|S_X|out\(0) & !\GFX|SHADER|S_X|out\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|S_X|ALT_INV_out\(3),
	datab => \GFX|SHADER|S_X|ALT_INV_out\(2),
	datac => \GFX|SHADER|S_X|ALT_INV_out\(0),
	datad => \GFX|SHADER|S_X|ALT_INV_out\(1),
	dataf => \GFX|SHADER|S_X|ALT_INV_out\(4),
	combout => \GFX|SHADER|LessThan3~0_combout\);

-- Location: LABCELL_X29_Y5_N48
\GFX|SHADER|Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add1~0_combout\ = ( \GFX|SHADER|S_X|out\(4) & ( ((\GFX|SHADER|S_X|out\(2) & \GFX|SHADER|S_X|out\(1))) # (\GFX|SHADER|S_X|out\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GFX|SHADER|S_X|ALT_INV_out\(2),
	datac => \GFX|SHADER|S_X|ALT_INV_out\(1),
	datad => \GFX|SHADER|S_X|ALT_INV_out\(3),
	dataf => \GFX|SHADER|S_X|ALT_INV_out\(4),
	combout => \GFX|SHADER|Add1~0_combout\);

-- Location: LABCELL_X29_Y5_N36
\GFX|SHADER|comb~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|comb~10_combout\ = ( \GFX|SHADER|Add1~0_combout\ & ( (!\GFX|SHADER|comb~8_combout\) # ((!\GFX|SHADER|comb~9_combout\ & ((!\GFX|SHADER|S_X|out\(7)))) # (\GFX|SHADER|comb~9_combout\ & (!\GFX|SHADER|LessThan3~0_combout\ & 
-- \GFX|SHADER|S_X|out\(7)))) ) ) # ( !\GFX|SHADER|Add1~0_combout\ & ( (!\GFX|SHADER|comb~8_combout\) # ((!\GFX|SHADER|S_X|out\(7)) # ((\GFX|SHADER|comb~9_combout\ & !\GFX|SHADER|LessThan3~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110111010111111111011101011101110101110101110111010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_comb~8_combout\,
	datab => \GFX|SHADER|ALT_INV_comb~9_combout\,
	datac => \GFX|SHADER|ALT_INV_LessThan3~0_combout\,
	datad => \GFX|SHADER|S_X|ALT_INV_out\(7),
	dataf => \GFX|SHADER|ALT_INV_Add1~0_combout\,
	combout => \GFX|SHADER|comb~10_combout\);

-- Location: LABCELL_X29_Y5_N30
\GFX|SHADER|comb~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|comb~7_combout\ = (!\GFX|SHADER|S_X|out\(3)) # ((!\GFX|SHADER|S_X|out\(2) & ((!\GFX|SHADER|S_X|out\(0)) # (!\GFX|SHADER|S_X|out\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111000111111001111100011111100111110001111110011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|S_X|ALT_INV_out\(0),
	datab => \GFX|SHADER|S_X|ALT_INV_out\(2),
	datac => \GFX|SHADER|S_X|ALT_INV_out\(3),
	datad => \GFX|SHADER|S_X|ALT_INV_out\(1),
	combout => \GFX|SHADER|comb~7_combout\);

-- Location: LABCELL_X29_Y5_N54
\GFX|SHADER|comb~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|comb~17_combout\ = ( !\GFX|SHADER|S_X|out\(5) & ( (!\GFX|SHADER|comb~8_combout\) # (((\GFX|SHADER|comb~7_combout\ & (!\GFX|SHADER|S_X|out\(4) & !\GFX|SHADER|S_X|out\(6)))) # (\GFX|SHADER|S_X|out\(7))) ) ) # ( \GFX|SHADER|S_X|out\(5) & ( 
-- (!\GFX|SHADER|comb~8_combout\) # (((\GFX|SHADER|Add1~0_combout\ & ((\GFX|SHADER|S_X|out\(6))))) # (\GFX|SHADER|S_X|out\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1011111110111011101110111011101110111011101110111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_comb~8_combout\,
	datab => \GFX|SHADER|S_X|ALT_INV_out\(7),
	datac => \GFX|SHADER|ALT_INV_Add1~0_combout\,
	datad => \GFX|SHADER|S_X|ALT_INV_out\(4),
	datae => \GFX|SHADER|S_X|ALT_INV_out\(5),
	dataf => \GFX|SHADER|S_X|ALT_INV_out\(6),
	datag => \GFX|SHADER|ALT_INV_comb~7_combout\,
	combout => \GFX|SHADER|comb~17_combout\);

-- Location: MLABCELL_X28_Y5_N48
\GFX|SHADER|shader_addr[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|shader_addr[0]~0_combout\ = ( \GFX|SHADER|comb~17_combout\ & ( (!\GFX|SHADER|comb~10_combout\ & (\GFX|SHADER|Add1~1_combout\)) # (\GFX|SHADER|comb~10_combout\ & ((\GFX|SHADER|Add2~1_sumout\))) ) ) # ( !\GFX|SHADER|comb~17_combout\ & ( 
-- \GFX|SHADER|Add0~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_Add1~1_combout\,
	datab => \GFX|SHADER|ALT_INV_Add2~1_sumout\,
	datac => \GFX|SHADER|ALT_INV_Add0~1_sumout\,
	datad => \GFX|SHADER|ALT_INV_comb~10_combout\,
	dataf => \GFX|SHADER|ALT_INV_comb~17_combout\,
	combout => \GFX|SHADER|shader_addr[0]~0_combout\);

-- Location: MLABCELL_X28_Y5_N15
\GFX|SHADER|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add2~5_sumout\ = SUM(( \GFX|SHADER|S_X|out\(5) ) + ( GND ) + ( \GFX|SHADER|Add2~2\ ))
-- \GFX|SHADER|Add2~6\ = CARRY(( \GFX|SHADER|S_X|out\(5) ) + ( GND ) + ( \GFX|SHADER|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|S_X|ALT_INV_out\(5),
	cin => \GFX|SHADER|Add2~2\,
	sumout => \GFX|SHADER|Add2~5_sumout\,
	cout => \GFX|SHADER|Add2~6\);

-- Location: LABCELL_X29_Y5_N15
\GFX|SHADER|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add0~5_sumout\ = SUM(( \GFX|SHADER|S_X|out\(5) ) + ( VCC ) + ( \GFX|SHADER|Add0~2\ ))
-- \GFX|SHADER|Add0~6\ = CARRY(( \GFX|SHADER|S_X|out\(5) ) + ( VCC ) + ( \GFX|SHADER|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GFX|SHADER|S_X|ALT_INV_out\(5),
	cin => \GFX|SHADER|Add0~2\,
	sumout => \GFX|SHADER|Add0~5_sumout\,
	cout => \GFX|SHADER|Add0~6\);

-- Location: MLABCELL_X28_Y5_N54
\GFX|SHADER|shader_addr[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|shader_addr[1]~1_combout\ = ( \GFX|SHADER|Add1~0_combout\ & ( \GFX|SHADER|comb~17_combout\ & ( (!\GFX|SHADER|comb~10_combout\ & (!\GFX|SHADER|S_X|out\(5))) # (\GFX|SHADER|comb~10_combout\ & ((\GFX|SHADER|Add2~5_sumout\))) ) ) ) # ( 
-- !\GFX|SHADER|Add1~0_combout\ & ( \GFX|SHADER|comb~17_combout\ & ( (!\GFX|SHADER|comb~10_combout\ & (\GFX|SHADER|S_X|out\(5))) # (\GFX|SHADER|comb~10_combout\ & ((\GFX|SHADER|Add2~5_sumout\))) ) ) ) # ( \GFX|SHADER|Add1~0_combout\ & ( 
-- !\GFX|SHADER|comb~17_combout\ & ( \GFX|SHADER|Add0~5_sumout\ ) ) ) # ( !\GFX|SHADER|Add1~0_combout\ & ( !\GFX|SHADER|comb~17_combout\ & ( \GFX|SHADER|Add0~5_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101001100111010101000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|S_X|ALT_INV_out\(5),
	datab => \GFX|SHADER|ALT_INV_Add2~5_sumout\,
	datac => \GFX|SHADER|ALT_INV_Add0~5_sumout\,
	datad => \GFX|SHADER|ALT_INV_comb~10_combout\,
	datae => \GFX|SHADER|ALT_INV_Add1~0_combout\,
	dataf => \GFX|SHADER|ALT_INV_comb~17_combout\,
	combout => \GFX|SHADER|shader_addr[1]~1_combout\);

-- Location: MLABCELL_X28_Y5_N18
\GFX|SHADER|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add2~9_sumout\ = SUM(( \GFX|SHADER|S_X|out\(6) ) + ( VCC ) + ( \GFX|SHADER|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GFX|SHADER|S_X|ALT_INV_out\(6),
	cin => \GFX|SHADER|Add2~6\,
	sumout => \GFX|SHADER|Add2~9_sumout\);

-- Location: LABCELL_X29_Y5_N18
\GFX|SHADER|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add0~9_sumout\ = SUM(( \GFX|SHADER|S_X|out\(6) ) + ( VCC ) + ( \GFX|SHADER|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GFX|SHADER|S_X|ALT_INV_out\(6),
	cin => \GFX|SHADER|Add0~6\,
	sumout => \GFX|SHADER|Add0~9_sumout\);

-- Location: MLABCELL_X28_Y5_N30
\GFX|SHADER|shader_addr[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|shader_addr[2]~9_combout\ = ( !\GFX|SHADER|comb~10_combout\ & ( (!\GFX|SHADER|comb~17_combout\ & ((((\GFX|SHADER|Add0~9_sumout\))))) # (\GFX|SHADER|comb~17_combout\ & (!\GFX|SHADER|S_X|out\(6) $ (((!\GFX|SHADER|S_X|out\(5)) # 
-- ((!\GFX|SHADER|Add1~0_combout\)))))) ) ) # ( \GFX|SHADER|comb~10_combout\ & ( (((!\GFX|SHADER|comb~17_combout\ & ((\GFX|SHADER|Add0~9_sumout\))) # (\GFX|SHADER|comb~17_combout\ & (\GFX|SHADER|Add2~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011111111000000001111111100110110001101100000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|S_X|ALT_INV_out\(5),
	datab => \GFX|SHADER|S_X|ALT_INV_out\(6),
	datac => \GFX|SHADER|ALT_INV_Add2~9_sumout\,
	datad => \GFX|SHADER|ALT_INV_Add0~9_sumout\,
	datae => \GFX|SHADER|ALT_INV_comb~10_combout\,
	dataf => \GFX|SHADER|ALT_INV_comb~17_combout\,
	datag => \GFX|SHADER|ALT_INV_Add1~0_combout\,
	combout => \GFX|SHADER|shader_addr[2]~9_combout\);

-- Location: FF_X27_Y4_N41
\GFX|SHADER|S_Y|out[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|RASTER|Y_REG|out\(8),
	sload => VCC,
	ena => \GFX|SHADER|S_CTRL1|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|S_Y|out[8]~DUPLICATE_q\);

-- Location: FF_X27_Y4_N23
\GFX|SHADER|S_Y|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|RASTER|Y_REG|out\(0),
	sload => VCC,
	ena => \GFX|SHADER|S_CTRL1|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|S_Y|out\(0));

-- Location: LABCELL_X27_Y4_N36
\GFX|SHADER|comb~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|comb~11_combout\ = ( !\GFX|SHADER|S_Y|out\(4) & ( !\GFX|SHADER|S_Y|out\(5) & ( (!\GFX|SHADER|S_Y|out\(3)) # ((!\GFX|SHADER|S_Y|out\(2) & (!\GFX|SHADER|S_Y|out\(0) & !\GFX|SHADER|S_Y|out\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101010101010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|S_Y|ALT_INV_out\(3),
	datab => \GFX|SHADER|S_Y|ALT_INV_out\(2),
	datac => \GFX|SHADER|S_Y|ALT_INV_out\(0),
	datad => \GFX|SHADER|S_Y|ALT_INV_out\(1),
	datae => \GFX|SHADER|S_Y|ALT_INV_out\(4),
	dataf => \GFX|SHADER|S_Y|ALT_INV_out\(5),
	combout => \GFX|SHADER|comb~11_combout\);

-- Location: LABCELL_X27_Y4_N42
\GFX|SHADER|LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|LessThan6~0_combout\ = ( \GFX|SHADER|S_Y|out\(3) & ( \GFX|SHADER|S_Y|out\(4) & ( (!\GFX|SHADER|S_Y|out\(0) & (!\GFX|SHADER|S_Y|out\(1) & !\GFX|SHADER|S_Y|out\(2))) ) ) ) # ( !\GFX|SHADER|S_Y|out\(3) & ( \GFX|SHADER|S_Y|out\(4) ) ) # ( 
-- \GFX|SHADER|S_Y|out\(3) & ( !\GFX|SHADER|S_Y|out\(4) ) ) # ( !\GFX|SHADER|S_Y|out\(3) & ( !\GFX|SHADER|S_Y|out\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|S_Y|ALT_INV_out\(0),
	datab => \GFX|SHADER|S_Y|ALT_INV_out\(1),
	datad => \GFX|SHADER|S_Y|ALT_INV_out\(2),
	datae => \GFX|SHADER|S_Y|ALT_INV_out\(3),
	dataf => \GFX|SHADER|S_Y|ALT_INV_out\(4),
	combout => \GFX|SHADER|LessThan6~0_combout\);

-- Location: LABCELL_X27_Y4_N24
\GFX|SHADER|comb~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|comb~13_combout\ = ( !\GFX|SHADER|S_Y|out\(6) & ( ((!\GFX|SHADER|S_Y|out[8]~DUPLICATE_q\) # ((!\GFX|SHADER|LessThan6~0_combout\) # ((\GFX|SHADER|S_Y|out\(7)) # (\GFX|SHADER|S_Y|out\(5))))) # (\GFX|SHADER|S_Y|out\(9)) ) ) # ( 
-- \GFX|SHADER|S_Y|out\(6) & ( ((((!\GFX|SHADER|S_Y|out\(7))) # (\GFX|SHADER|comb~11_combout\)) # (\GFX|SHADER|S_Y|out[8]~DUPLICATE_q\)) # (\GFX|SHADER|S_Y|out\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1111110111111111111111111111111111111111111111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|S_Y|ALT_INV_out\(9),
	datab => \GFX|SHADER|S_Y|ALT_INV_out[8]~DUPLICATE_q\,
	datac => \GFX|SHADER|ALT_INV_comb~11_combout\,
	datad => \GFX|SHADER|S_Y|ALT_INV_out\(5),
	datae => \GFX|SHADER|S_Y|ALT_INV_out\(6),
	dataf => \GFX|SHADER|S_Y|ALT_INV_out\(7),
	datag => \GFX|SHADER|ALT_INV_LessThan6~0_combout\,
	combout => \GFX|SHADER|comb~13_combout\);

-- Location: LABCELL_X27_Y4_N48
\GFX|SHADER|LessThan6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|LessThan6~1_combout\ = ( !\GFX|SHADER|S_Y|out\(9) & ( \GFX|SHADER|LessThan6~0_combout\ & ( (!\GFX|SHADER|S_Y|out[8]~DUPLICATE_q\) # ((!\GFX|SHADER|S_Y|out\(7) & (!\GFX|SHADER|S_Y|out\(5) & !\GFX|SHADER|S_Y|out\(6)))) ) ) ) # ( 
-- !\GFX|SHADER|S_Y|out\(9) & ( !\GFX|SHADER|LessThan6~0_combout\ & ( !\GFX|SHADER|S_Y|out[8]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000000000000011111111100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|S_Y|ALT_INV_out\(7),
	datab => \GFX|SHADER|S_Y|ALT_INV_out\(5),
	datac => \GFX|SHADER|S_Y|ALT_INV_out\(6),
	datad => \GFX|SHADER|S_Y|ALT_INV_out[8]~DUPLICATE_q\,
	datae => \GFX|SHADER|S_Y|ALT_INV_out\(9),
	dataf => \GFX|SHADER|ALT_INV_LessThan6~0_combout\,
	combout => \GFX|SHADER|LessThan6~1_combout\);

-- Location: LABCELL_X24_Y4_N30
\GFX|SHADER|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add4~1_sumout\ = SUM(( \GFX|SHADER|S_Y|out[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \GFX|SHADER|Add4~2\ = CARRY(( \GFX|SHADER|S_Y|out[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GFX|SHADER|S_Y|ALT_INV_out[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \GFX|SHADER|Add4~1_sumout\,
	cout => \GFX|SHADER|Add4~2\);

-- Location: LABCELL_X24_Y4_N0
\GFX|SHADER|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add3~1_sumout\ = SUM(( \GFX|SHADER|S_Y|out[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \GFX|SHADER|Add3~2\ = CARRY(( \GFX|SHADER|S_Y|out[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GFX|SHADER|S_Y|ALT_INV_out[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \GFX|SHADER|Add3~1_sumout\,
	cout => \GFX|SHADER|Add3~2\);

-- Location: LABCELL_X27_Y4_N0
\GFX|SHADER|Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add5~1_sumout\ = SUM(( \GFX|SHADER|S_Y|out\(0) ) + ( VCC ) + ( !VCC ))
-- \GFX|SHADER|Add5~2\ = CARRY(( \GFX|SHADER|S_Y|out\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|SHADER|S_Y|ALT_INV_out\(0),
	cin => GND,
	sumout => \GFX|SHADER|Add5~1_sumout\,
	cout => \GFX|SHADER|Add5~2\);

-- Location: LABCELL_X24_Y4_N57
\GFX|SHADER|shader_addr[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|shader_addr[3]~2_combout\ = ( \GFX|SHADER|Add5~1_sumout\ & ( (!\GFX|SHADER|comb~13_combout\ & (((\GFX|SHADER|Add3~1_sumout\)))) # (\GFX|SHADER|comb~13_combout\ & (((\GFX|SHADER|Add4~1_sumout\)) # (\GFX|SHADER|LessThan6~1_combout\))) ) ) # ( 
-- !\GFX|SHADER|Add5~1_sumout\ & ( (!\GFX|SHADER|comb~13_combout\ & (((\GFX|SHADER|Add3~1_sumout\)))) # (\GFX|SHADER|comb~13_combout\ & (!\GFX|SHADER|LessThan6~1_combout\ & (\GFX|SHADER|Add4~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000010101101111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_comb~13_combout\,
	datab => \GFX|SHADER|ALT_INV_LessThan6~1_combout\,
	datac => \GFX|SHADER|ALT_INV_Add4~1_sumout\,
	datad => \GFX|SHADER|ALT_INV_Add3~1_sumout\,
	dataf => \GFX|SHADER|ALT_INV_Add5~1_sumout\,
	combout => \GFX|SHADER|shader_addr[3]~2_combout\);

-- Location: LABCELL_X27_Y4_N3
\GFX|SHADER|Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add5~5_sumout\ = SUM(( \GFX|SHADER|S_Y|out\(1) ) + ( VCC ) + ( \GFX|SHADER|Add5~2\ ))
-- \GFX|SHADER|Add5~6\ = CARRY(( \GFX|SHADER|S_Y|out\(1) ) + ( VCC ) + ( \GFX|SHADER|Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|SHADER|S_Y|ALT_INV_out\(1),
	cin => \GFX|SHADER|Add5~2\,
	sumout => \GFX|SHADER|Add5~5_sumout\,
	cout => \GFX|SHADER|Add5~6\);

-- Location: LABCELL_X24_Y4_N3
\GFX|SHADER|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add3~5_sumout\ = SUM(( \GFX|SHADER|S_Y|out\(1) ) + ( VCC ) + ( \GFX|SHADER|Add3~2\ ))
-- \GFX|SHADER|Add3~6\ = CARRY(( \GFX|SHADER|S_Y|out\(1) ) + ( VCC ) + ( \GFX|SHADER|Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|S_Y|ALT_INV_out\(1),
	cin => \GFX|SHADER|Add3~2\,
	sumout => \GFX|SHADER|Add3~5_sumout\,
	cout => \GFX|SHADER|Add3~6\);

-- Location: LABCELL_X24_Y4_N33
\GFX|SHADER|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add4~5_sumout\ = SUM(( \GFX|SHADER|S_Y|out\(1) ) + ( VCC ) + ( \GFX|SHADER|Add4~2\ ))
-- \GFX|SHADER|Add4~6\ = CARRY(( \GFX|SHADER|S_Y|out\(1) ) + ( VCC ) + ( \GFX|SHADER|Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|S_Y|ALT_INV_out\(1),
	cin => \GFX|SHADER|Add4~2\,
	sumout => \GFX|SHADER|Add4~5_sumout\,
	cout => \GFX|SHADER|Add4~6\);

-- Location: LABCELL_X24_Y4_N27
\GFX|SHADER|shader_addr[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|shader_addr[4]~3_combout\ = ( \GFX|SHADER|Add4~5_sumout\ & ( (!\GFX|SHADER|comb~13_combout\ & (((\GFX|SHADER|Add3~5_sumout\)))) # (\GFX|SHADER|comb~13_combout\ & ((!\GFX|SHADER|LessThan6~1_combout\) # ((\GFX|SHADER|Add5~5_sumout\)))) ) ) # ( 
-- !\GFX|SHADER|Add4~5_sumout\ & ( (!\GFX|SHADER|comb~13_combout\ & (((\GFX|SHADER|Add3~5_sumout\)))) # (\GFX|SHADER|comb~13_combout\ & (\GFX|SHADER|LessThan6~1_combout\ & (\GFX|SHADER|Add5~5_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101101000101111011110100010111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_comb~13_combout\,
	datab => \GFX|SHADER|ALT_INV_LessThan6~1_combout\,
	datac => \GFX|SHADER|ALT_INV_Add5~5_sumout\,
	datad => \GFX|SHADER|ALT_INV_Add3~5_sumout\,
	dataf => \GFX|SHADER|ALT_INV_Add4~5_sumout\,
	combout => \GFX|SHADER|shader_addr[4]~3_combout\);

-- Location: LABCELL_X24_Y4_N36
\GFX|SHADER|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add4~9_sumout\ = SUM(( \GFX|SHADER|S_Y|out\(2) ) + ( VCC ) + ( \GFX|SHADER|Add4~6\ ))
-- \GFX|SHADER|Add4~10\ = CARRY(( \GFX|SHADER|S_Y|out\(2) ) + ( VCC ) + ( \GFX|SHADER|Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GFX|SHADER|S_Y|ALT_INV_out\(2),
	cin => \GFX|SHADER|Add4~6\,
	sumout => \GFX|SHADER|Add4~9_sumout\,
	cout => \GFX|SHADER|Add4~10\);

-- Location: LABCELL_X27_Y4_N6
\GFX|SHADER|Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add5~9_sumout\ = SUM(( \GFX|SHADER|S_Y|out\(2) ) + ( VCC ) + ( \GFX|SHADER|Add5~6\ ))
-- \GFX|SHADER|Add5~10\ = CARRY(( \GFX|SHADER|S_Y|out\(2) ) + ( VCC ) + ( \GFX|SHADER|Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GFX|SHADER|S_Y|ALT_INV_out\(2),
	cin => \GFX|SHADER|Add5~6\,
	sumout => \GFX|SHADER|Add5~9_sumout\,
	cout => \GFX|SHADER|Add5~10\);

-- Location: LABCELL_X24_Y4_N6
\GFX|SHADER|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add3~9_sumout\ = SUM(( \GFX|SHADER|S_Y|out\(2) ) + ( VCC ) + ( \GFX|SHADER|Add3~6\ ))
-- \GFX|SHADER|Add3~10\ = CARRY(( \GFX|SHADER|S_Y|out\(2) ) + ( VCC ) + ( \GFX|SHADER|Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GFX|SHADER|S_Y|ALT_INV_out\(2),
	cin => \GFX|SHADER|Add3~6\,
	sumout => \GFX|SHADER|Add3~9_sumout\,
	cout => \GFX|SHADER|Add3~10\);

-- Location: LABCELL_X24_Y4_N24
\GFX|SHADER|shader_addr[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|shader_addr[5]~4_combout\ = ( \GFX|SHADER|Add3~9_sumout\ & ( (!\GFX|SHADER|comb~13_combout\) # ((!\GFX|SHADER|LessThan6~1_combout\ & (\GFX|SHADER|Add4~9_sumout\)) # (\GFX|SHADER|LessThan6~1_combout\ & ((\GFX|SHADER|Add5~9_sumout\)))) ) ) # ( 
-- !\GFX|SHADER|Add3~9_sumout\ & ( (\GFX|SHADER|comb~13_combout\ & ((!\GFX|SHADER|LessThan6~1_combout\ & (\GFX|SHADER|Add4~9_sumout\)) # (\GFX|SHADER|LessThan6~1_combout\ & ((\GFX|SHADER|Add5~9_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110101110101111111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_comb~13_combout\,
	datab => \GFX|SHADER|ALT_INV_LessThan6~1_combout\,
	datac => \GFX|SHADER|ALT_INV_Add4~9_sumout\,
	datad => \GFX|SHADER|ALT_INV_Add5~9_sumout\,
	dataf => \GFX|SHADER|ALT_INV_Add3~9_sumout\,
	combout => \GFX|SHADER|shader_addr[5]~4_combout\);

-- Location: LABCELL_X27_Y4_N9
\GFX|SHADER|Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add5~13_sumout\ = SUM(( \GFX|SHADER|S_Y|out\(3) ) + ( GND ) + ( \GFX|SHADER|Add5~10\ ))
-- \GFX|SHADER|Add5~14\ = CARRY(( \GFX|SHADER|S_Y|out\(3) ) + ( GND ) + ( \GFX|SHADER|Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|SHADER|S_Y|ALT_INV_out\(3),
	cin => \GFX|SHADER|Add5~10\,
	sumout => \GFX|SHADER|Add5~13_sumout\,
	cout => \GFX|SHADER|Add5~14\);

-- Location: LABCELL_X24_Y4_N9
\GFX|SHADER|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add3~13_sumout\ = SUM(( \GFX|SHADER|S_Y|out\(3) ) + ( GND ) + ( \GFX|SHADER|Add3~10\ ))
-- \GFX|SHADER|Add3~14\ = CARRY(( \GFX|SHADER|S_Y|out\(3) ) + ( GND ) + ( \GFX|SHADER|Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|SHADER|S_Y|ALT_INV_out\(3),
	cin => \GFX|SHADER|Add3~10\,
	sumout => \GFX|SHADER|Add3~13_sumout\,
	cout => \GFX|SHADER|Add3~14\);

-- Location: LABCELL_X24_Y4_N39
\GFX|SHADER|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add4~13_sumout\ = SUM(( \GFX|SHADER|S_Y|out\(3) ) + ( GND ) + ( \GFX|SHADER|Add4~10\ ))
-- \GFX|SHADER|Add4~14\ = CARRY(( \GFX|SHADER|S_Y|out\(3) ) + ( GND ) + ( \GFX|SHADER|Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|SHADER|S_Y|ALT_INV_out\(3),
	cin => \GFX|SHADER|Add4~10\,
	sumout => \GFX|SHADER|Add4~13_sumout\,
	cout => \GFX|SHADER|Add4~14\);

-- Location: MLABCELL_X25_Y4_N36
\GFX|SHADER|shader_addr[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|shader_addr[6]~5_combout\ = ( \GFX|SHADER|comb~13_combout\ & ( \GFX|SHADER|LessThan6~1_combout\ & ( \GFX|SHADER|Add5~13_sumout\ ) ) ) # ( !\GFX|SHADER|comb~13_combout\ & ( \GFX|SHADER|LessThan6~1_combout\ & ( \GFX|SHADER|Add3~13_sumout\ ) ) ) 
-- # ( \GFX|SHADER|comb~13_combout\ & ( !\GFX|SHADER|LessThan6~1_combout\ & ( \GFX|SHADER|Add4~13_sumout\ ) ) ) # ( !\GFX|SHADER|comb~13_combout\ & ( !\GFX|SHADER|LessThan6~1_combout\ & ( \GFX|SHADER|Add3~13_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_Add5~13_sumout\,
	datab => \GFX|SHADER|ALT_INV_Add3~13_sumout\,
	datac => \GFX|SHADER|ALT_INV_Add4~13_sumout\,
	datae => \GFX|SHADER|ALT_INV_comb~13_combout\,
	dataf => \GFX|SHADER|ALT_INV_LessThan6~1_combout\,
	combout => \GFX|SHADER|shader_addr[6]~5_combout\);

-- Location: LABCELL_X27_Y4_N12
\GFX|SHADER|Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add5~17_sumout\ = SUM(( \GFX|SHADER|S_Y|out\(4) ) + ( GND ) + ( \GFX|SHADER|Add5~14\ ))
-- \GFX|SHADER|Add5~18\ = CARRY(( \GFX|SHADER|S_Y|out\(4) ) + ( GND ) + ( \GFX|SHADER|Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GFX|SHADER|S_Y|ALT_INV_out\(4),
	cin => \GFX|SHADER|Add5~14\,
	sumout => \GFX|SHADER|Add5~17_sumout\,
	cout => \GFX|SHADER|Add5~18\);

-- Location: LABCELL_X24_Y4_N42
\GFX|SHADER|Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add4~17_sumout\ = SUM(( \GFX|SHADER|S_Y|out\(4) ) + ( GND ) + ( \GFX|SHADER|Add4~14\ ))
-- \GFX|SHADER|Add4~18\ = CARRY(( \GFX|SHADER|S_Y|out\(4) ) + ( GND ) + ( \GFX|SHADER|Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|SHADER|S_Y|ALT_INV_out\(4),
	cin => \GFX|SHADER|Add4~14\,
	sumout => \GFX|SHADER|Add4~17_sumout\,
	cout => \GFX|SHADER|Add4~18\);

-- Location: LABCELL_X24_Y4_N12
\GFX|SHADER|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add3~17_sumout\ = SUM(( \GFX|SHADER|S_Y|out\(4) ) + ( VCC ) + ( \GFX|SHADER|Add3~14\ ))
-- \GFX|SHADER|Add3~18\ = CARRY(( \GFX|SHADER|S_Y|out\(4) ) + ( VCC ) + ( \GFX|SHADER|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|SHADER|S_Y|ALT_INV_out\(4),
	cin => \GFX|SHADER|Add3~14\,
	sumout => \GFX|SHADER|Add3~17_sumout\,
	cout => \GFX|SHADER|Add3~18\);

-- Location: MLABCELL_X25_Y4_N42
\GFX|SHADER|shader_addr[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|shader_addr[7]~6_combout\ = ( \GFX|SHADER|comb~13_combout\ & ( \GFX|SHADER|LessThan6~1_combout\ & ( \GFX|SHADER|Add5~17_sumout\ ) ) ) # ( !\GFX|SHADER|comb~13_combout\ & ( \GFX|SHADER|LessThan6~1_combout\ & ( \GFX|SHADER|Add3~17_sumout\ ) ) ) 
-- # ( \GFX|SHADER|comb~13_combout\ & ( !\GFX|SHADER|LessThan6~1_combout\ & ( \GFX|SHADER|Add4~17_sumout\ ) ) ) # ( !\GFX|SHADER|comb~13_combout\ & ( !\GFX|SHADER|LessThan6~1_combout\ & ( \GFX|SHADER|Add3~17_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_Add5~17_sumout\,
	datab => \GFX|SHADER|ALT_INV_Add4~17_sumout\,
	datac => \GFX|SHADER|ALT_INV_Add3~17_sumout\,
	datae => \GFX|SHADER|ALT_INV_comb~13_combout\,
	dataf => \GFX|SHADER|ALT_INV_LessThan6~1_combout\,
	combout => \GFX|SHADER|shader_addr[7]~6_combout\);

-- Location: LABCELL_X24_Y4_N45
\GFX|SHADER|Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add4~21_sumout\ = SUM(( \GFX|SHADER|S_Y|out\(5) ) + ( VCC ) + ( \GFX|SHADER|Add4~18\ ))
-- \GFX|SHADER|Add4~22\ = CARRY(( \GFX|SHADER|S_Y|out\(5) ) + ( VCC ) + ( \GFX|SHADER|Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|S_Y|ALT_INV_out\(5),
	cin => \GFX|SHADER|Add4~18\,
	sumout => \GFX|SHADER|Add4~21_sumout\,
	cout => \GFX|SHADER|Add4~22\);

-- Location: LABCELL_X27_Y4_N15
\GFX|SHADER|Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add5~21_sumout\ = SUM(( \GFX|SHADER|S_Y|out\(5) ) + ( GND ) + ( \GFX|SHADER|Add5~18\ ))
-- \GFX|SHADER|Add5~22\ = CARRY(( \GFX|SHADER|S_Y|out\(5) ) + ( GND ) + ( \GFX|SHADER|Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GFX|SHADER|S_Y|ALT_INV_out\(5),
	cin => \GFX|SHADER|Add5~18\,
	sumout => \GFX|SHADER|Add5~21_sumout\,
	cout => \GFX|SHADER|Add5~22\);

-- Location: LABCELL_X24_Y4_N15
\GFX|SHADER|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add3~21_sumout\ = SUM(( \GFX|SHADER|S_Y|out\(5) ) + ( VCC ) + ( \GFX|SHADER|Add3~18\ ))
-- \GFX|SHADER|Add3~22\ = CARRY(( \GFX|SHADER|S_Y|out\(5) ) + ( VCC ) + ( \GFX|SHADER|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|S_Y|ALT_INV_out\(5),
	cin => \GFX|SHADER|Add3~18\,
	sumout => \GFX|SHADER|Add3~21_sumout\,
	cout => \GFX|SHADER|Add3~22\);

-- Location: MLABCELL_X25_Y4_N51
\GFX|SHADER|shader_addr[8]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|shader_addr[8]~7_combout\ = ( \GFX|SHADER|comb~13_combout\ & ( \GFX|SHADER|Add3~21_sumout\ & ( (!\GFX|SHADER|LessThan6~1_combout\ & (\GFX|SHADER|Add4~21_sumout\)) # (\GFX|SHADER|LessThan6~1_combout\ & ((\GFX|SHADER|Add5~21_sumout\))) ) ) ) # ( 
-- !\GFX|SHADER|comb~13_combout\ & ( \GFX|SHADER|Add3~21_sumout\ ) ) # ( \GFX|SHADER|comb~13_combout\ & ( !\GFX|SHADER|Add3~21_sumout\ & ( (!\GFX|SHADER|LessThan6~1_combout\ & (\GFX|SHADER|Add4~21_sumout\)) # (\GFX|SHADER|LessThan6~1_combout\ & 
-- ((\GFX|SHADER|Add5~21_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010011001111111111111111110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_Add4~21_sumout\,
	datab => \GFX|SHADER|ALT_INV_Add5~21_sumout\,
	datad => \GFX|SHADER|ALT_INV_LessThan6~1_combout\,
	datae => \GFX|SHADER|ALT_INV_comb~13_combout\,
	dataf => \GFX|SHADER|ALT_INV_Add3~21_sumout\,
	combout => \GFX|SHADER|shader_addr[8]~7_combout\);

-- Location: LABCELL_X24_Y4_N18
\GFX|SHADER|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add3~25_sumout\ = SUM(( \GFX|SHADER|S_Y|out\(6) ) + ( GND ) + ( \GFX|SHADER|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GFX|SHADER|S_Y|ALT_INV_out\(6),
	cin => \GFX|SHADER|Add3~22\,
	sumout => \GFX|SHADER|Add3~25_sumout\);

-- Location: LABCELL_X27_Y4_N18
\GFX|SHADER|Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add5~25_sumout\ = SUM(( \GFX|SHADER|S_Y|out\(6) ) + ( GND ) + ( \GFX|SHADER|Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GFX|SHADER|S_Y|ALT_INV_out\(6),
	cin => \GFX|SHADER|Add5~22\,
	sumout => \GFX|SHADER|Add5~25_sumout\);

-- Location: LABCELL_X24_Y4_N48
\GFX|SHADER|Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add4~25_sumout\ = SUM(( \GFX|SHADER|S_Y|out\(6) ) + ( VCC ) + ( \GFX|SHADER|Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GFX|SHADER|S_Y|ALT_INV_out\(6),
	cin => \GFX|SHADER|Add4~22\,
	sumout => \GFX|SHADER|Add4~25_sumout\);

-- Location: LABCELL_X24_Y4_N54
\GFX|SHADER|shader_addr[9]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|shader_addr[9]~8_combout\ = ( \GFX|SHADER|Add4~25_sumout\ & ( (!\GFX|SHADER|comb~13_combout\ & (((\GFX|SHADER|Add3~25_sumout\)))) # (\GFX|SHADER|comb~13_combout\ & ((!\GFX|SHADER|LessThan6~1_combout\) # ((\GFX|SHADER|Add5~25_sumout\)))) ) ) # 
-- ( !\GFX|SHADER|Add4~25_sumout\ & ( (!\GFX|SHADER|comb~13_combout\ & (((\GFX|SHADER|Add3~25_sumout\)))) # (\GFX|SHADER|comb~13_combout\ & (\GFX|SHADER|LessThan6~1_combout\ & ((\GFX|SHADER|Add5~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011000010100001101101001110010111110100111001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_comb~13_combout\,
	datab => \GFX|SHADER|ALT_INV_LessThan6~1_combout\,
	datac => \GFX|SHADER|ALT_INV_Add3~25_sumout\,
	datad => \GFX|SHADER|ALT_INV_Add5~25_sumout\,
	dataf => \GFX|SHADER|ALT_INV_Add4~25_sumout\,
	combout => \GFX|SHADER|shader_addr[9]~8_combout\);

-- Location: M10K_X26_Y5_N0
\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a6\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFF003FFFFFFFFFFFFFFFFF003FFFFFFFFFFFFFFFFF003F",
	mem_init2 => "FFFFFFFFFFFFFFFF003FFFFFFFFFFFFFFFFF003FFFFFFFFFFFFFFFFF003FFFFFFFFFFFFFFFFF003FFFFFFFFFFFFFFFFF003FFFFC00FFC00FFFFF003FF7FC00FFC00FFFFF003FF7FC00FFC00FFFFF003FF7FC00FFC00FFFFF003FF7FC00FFC00FFFFF003FFFFC00FFC00FFFFF003FFFFFC0FFC0FFFFFF003FFFFF80FFC07FFFFF003FFFFF80FFE03FFFFF003FFFFF01FFE01FFFFF003FFFFE03FFF01FFFFF003FFFFC03FFF80FFFFF003FFFFC07FFFC0FFFFF003FFFFC0FFFFC0FFFFF003FFFFC1FFFFE0FFFFF003FFFFC3FFFFF0FFFFF003FFFFC3FFFFF8FFFFF003FFFFC7FFFFFCFFFFF003FFFFCFFFFFFCFFFFF003FFFFDFFFFFFEFFFFF003FFFFDFF7FBFFF",
	mem_init1 => "FFFF003FFFFFFF3FBFFFFFFF003FFFFFFF1F3FFFFFFF003FFFFFFF1E3FFFFFFF003FFFFFFF0C3FFFFFFF003FFFFFFF043FFFFFFF003FFFFFFF003FFFFFFF003FFFFFFF003FFFFFFF003FFFFFFF003FFFFFFF003FFFFFFF803FFFFFFF003FFFFFFFC07FFFFFFF003FFFFFFFC07FFFFFFF003FFFFFFF803FFFFFFF003FFFFFFF003FFFFFFF003FFFFFFF003FFFFFFF003FFFFFFF003FFFFFFF003FFFFFFF043FFFFFFF003FFFFFFF0C3FFFFFFF003FFFFFFF1E3FFFFFFF003FFFFFFF1F3FFFFFFF003FFFFFFF3FBFFFFFFF003FFFFDFF7FFFFFFFFF003FFFFDFFFFFFEFFFFF003FFFFCFFFFFFCFFFFF003FFFFC7FFFFFCFFFFF003FFFFC3FFFFF8FFFFF003FFFFC",
	mem_init0 => "1FFFFF0FFFFF003FFFFC1FFFFE0FFFFF003FFFFC0FFFFE0FFFFF003FFFFC07FFFC0FFFFF003FFFFC03FFF80FFFFF003FFFFE03FFF01FFFFF003FFFFF01FFF01FFFFF003FFFFF80FFE03FFFFF003FFFFFC0FFC07FFFFF003FFFFFC0FFC0FFFFFF003FFFFFE0FFC0FFFFFF003FFFFFF0FFC1FFFFFF003FF7FC00FFC00FFFFF003FF3FC00FFC00FFBFF003FF3FC00FFC00FFBFF003FF3FC00FFC00FFBFF003FF3FC00FFC00FFBFF003FFFFFFFFFFFFFFFFF003FFFFFFFFFFFFFFFFF003FFFFFFFFFFFFFFFFF003FFFFFFFFFFFFFFFFF003FFFFFFFFFFFFFFFFF003FFFFFFFFFFFFFFFFF003FFFFFFFFFFFFFFFFF003FFFFFFFFFFFFFFFFF003FFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/lab3_top.ram0_ROM_9bf1e8c1.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "TicTacToe_to_VGA:GFX|tictactoe_shader:SHADER|ROM:XBMP|altsyncram:rom_rtl_0|altsyncram_tuc1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 10,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 10,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	portaaddr => \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: MLABCELL_X28_Y5_N39
\GFX|SHADER|coor_ximg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|coor_ximg[0]~0_combout\ = ( \GFX|SHADER|S_X|out\(0) & ( (!\GFX|SHADER|comb~17_combout\ & (((\GFX|SHADER|Add0~13_sumout\)))) # (\GFX|SHADER|comb~17_combout\ & ((!\GFX|SHADER|comb~10_combout\) # ((\GFX|SHADER|Add2~13_sumout\)))) ) ) # ( 
-- !\GFX|SHADER|S_X|out\(0) & ( (!\GFX|SHADER|comb~17_combout\ & (((\GFX|SHADER|Add0~13_sumout\)))) # (\GFX|SHADER|comb~17_combout\ & (\GFX|SHADER|comb~10_combout\ & ((\GFX|SHADER|Add2~13_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011000010100001101101001110010111110100111001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_comb~17_combout\,
	datab => \GFX|SHADER|ALT_INV_comb~10_combout\,
	datac => \GFX|SHADER|ALT_INV_Add0~13_sumout\,
	datad => \GFX|SHADER|ALT_INV_Add2~13_sumout\,
	dataf => \GFX|SHADER|S_X|ALT_INV_out\(0),
	combout => \GFX|SHADER|coor_ximg[0]~0_combout\);

-- Location: FF_X28_Y5_N41
\GFX|SHADER|XD|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|SHADER|coor_ximg[0]~0_combout\,
	ena => \GFX|SHADER|S_CTRL2|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|XD|out\(0));

-- Location: MLABCELL_X28_Y5_N36
\GFX|SHADER|coor_ximg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|coor_ximg[1]~1_combout\ = ( \GFX|SHADER|S_X|out\(1) & ( (!\GFX|SHADER|comb~17_combout\ & (((\GFX|SHADER|Add0~17_sumout\)))) # (\GFX|SHADER|comb~17_combout\ & (\GFX|SHADER|comb~10_combout\ & (\GFX|SHADER|Add2~17_sumout\))) ) ) # ( 
-- !\GFX|SHADER|S_X|out\(1) & ( (!\GFX|SHADER|comb~17_combout\ & (((\GFX|SHADER|Add0~17_sumout\)))) # (\GFX|SHADER|comb~17_combout\ & ((!\GFX|SHADER|comb~10_combout\) # ((\GFX|SHADER|Add2~17_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010111101111010001011110111100000001101010110000000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_comb~17_combout\,
	datab => \GFX|SHADER|ALT_INV_comb~10_combout\,
	datac => \GFX|SHADER|ALT_INV_Add2~17_sumout\,
	datad => \GFX|SHADER|ALT_INV_Add0~17_sumout\,
	dataf => \GFX|SHADER|S_X|ALT_INV_out\(1),
	combout => \GFX|SHADER|coor_ximg[1]~1_combout\);

-- Location: FF_X28_Y5_N37
\GFX|SHADER|XD|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|SHADER|coor_ximg[1]~1_combout\,
	ena => \GFX|SHADER|S_CTRL2|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|XD|out\(1));

-- Location: MLABCELL_X25_Y4_N0
\GFX|SHADER|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Mux0~1_combout\ = ( \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a10\ & ( \GFX|SHADER|XD|out\(1) & ( (!\GFX|SHADER|XD|out\(0) & ((\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a9\))) # (\GFX|SHADER|XD|out\(0) & 
-- (\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a8\)) ) ) ) # ( !\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a10\ & ( \GFX|SHADER|XD|out\(1) & ( (!\GFX|SHADER|XD|out\(0) & ((\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a9\))) # 
-- (\GFX|SHADER|XD|out\(0) & (\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a8\)) ) ) ) # ( \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a10\ & ( !\GFX|SHADER|XD|out\(1) & ( (\GFX|SHADER|XD|out\(0)) # 
-- (\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a11\) ) ) ) # ( !\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a10\ & ( !\GFX|SHADER|XD|out\(1) & ( (\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a11\ & !\GFX|SHADER|XD|out\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a8\,
	datab => \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a11\,
	datac => \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a9\,
	datad => \GFX|SHADER|XD|ALT_INV_out\(0),
	datae => \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a10\,
	dataf => \GFX|SHADER|XD|ALT_INV_out\(1),
	combout => \GFX|SHADER|Mux0~1_combout\);

-- Location: M10K_X26_Y3_N0
\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a3\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000EFFFFFFFFFFFFFFF0000EFFFFFFFFFFFFFFF0000EFFFFFFFFFFFFFFF0000",
	mem_init2 => "EFFFFFFFFFFFFFFF0000EFFFFFFFFFFFFFFF0000EFFFFFFFFFFFFFFF0000EFFFFFFFFFFFFFFF0000EFFFFFFE7FFFFFFF0000EFFC0FF80FF83FFF0000EFFC0FF007E03FFF0000EFFC07F007E03FFF0000EFFC07F007C03FFF0000EFFC03F00FC03FFF0000EFFC13FD9FCC3FFF0000EFFDF3FFFF8FBFFF0000EFFDF1FFFF9FFFFF0000EFFFF9FFFF9FFFFF0000EFFFF9FFFF9FFFFF0000EFFFF9FFFF9FFFFF0000EFFFF9FFFF3FFFFF0000EFFFFDFFDF3FFFFF0000EFFFFCFBCF3FFFFF0000EFFFFCF3CF3FFFFF0000EFFFFCE3C73FFFFF0000EFFFFCE3C37FFFFF0000EFFFFCC3C17FFFFF0000EFFFFE83C17FFFFF0000EFFFFE03C07FFBFF0000EFFFFE03C07F",
	mem_init1 => "FBFF0000EFFFFE03E07FFBFF0000EFFFFE07E07FFBFF0000EFDFFE0FF07FFBFF0000EFDFFE0FF87FFBFF0000EFDFFE1FFC7FFBFF0000EFDFFE3FFEFFFBFF0000EFDFFE7FFEFFFBFF0000EFDFFEFFFFFFFBFF0000EFDFFEFFFFFFFBFF0000EFDFFEFFFFFFFBFF0000EFDFFEFFFFFFFBFF0000EFDFFEFFFFFFFBFF0000EFDFFEFFFFFFFBFF0000EFDFFE7FFEFFFBFF0000EFDFFE3FFEFFFBFF0000EFDFFE1FFCFFFBFF0000EFDFFE0FF8FFFBFF0000EFDFFE0FF0FFFBFF0000EFDFFE07F07FFBFF0000EFDFFE03E07FFBFF0000EFDFFE03C07FFBFF0000EFFFFE03C07FFBFF0000EFFFFE83C07FFBFF0000EFFFFEC3C17FFBFF0000EFFFFEE3C37FFBFF0000EFFF",
	mem_init0 => "FEE3C77FFFFF0000EFFFFCF3C77FFFFF0000EFFFFCFBCF7FFFFF0000EFFFFCFFDF3FFFFF0000EFFFFCFFFF3FFFFF0000EFFFFCFFFF3FFFFF0000EFFFFDFFFF3FFFFF0000EFFFF9FFFF3FFFFF0000EFFDF9FFFF9FFFFF0000EFFDF9FFFF9FBFFF0000EFFCF9FFFF9FBFFF0000EFFC73FFFF8F3FFF0000EFFC03F3C7C03FFF0000EFFC03E183C03FFF0000EFFC03E003C03FFF0000EFFC07E003E03FFF0000EFFC07E007E03FFF0000EFFFFFFC3FEFFFFF0000EFFFFFFC3FFFFFFF0000EFFFFFFEFFFFFFFF0000EFFFFFFFFFFFFFFF0000EFFFFFFFFFFFFFFF0000EFFFFFFFFFFFFFFF0000EFFFFFFFFFFFFFFF0000EFFFFFFFFFFFFFFF0000EFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/lab3_top.ram0_ROM_d8c22375.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "TicTacToe_to_VGA:GFX|tictactoe_shader:SHADER|ROM:OBMP|altsyncram:rom_rtl_0|altsyncram_src1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 10,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 10,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	portaaddr => \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: FF_X28_Y5_N40
\GFX|SHADER|XD|out[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|SHADER|coor_ximg[0]~0_combout\,
	ena => \GFX|SHADER|S_CTRL2|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|XD|out[0]~DUPLICATE_q\);

-- Location: MLABCELL_X25_Y5_N42
\GFX|SHADER|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Mux0~3_combout\ = ( \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a2\ & ( \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a3\ & ( (!\GFX|SHADER|XD|out\(1)) # ((!\GFX|SHADER|XD|out[0]~DUPLICATE_q\ & 
-- (\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a1\)) # (\GFX|SHADER|XD|out[0]~DUPLICATE_q\ & ((\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a0\)))) ) ) ) # ( !\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a2\ & ( 
-- \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a3\ & ( (!\GFX|SHADER|XD|out\(1) & (((!\GFX|SHADER|XD|out[0]~DUPLICATE_q\)))) # (\GFX|SHADER|XD|out\(1) & ((!\GFX|SHADER|XD|out[0]~DUPLICATE_q\ & 
-- (\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a1\)) # (\GFX|SHADER|XD|out[0]~DUPLICATE_q\ & ((\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a0\))))) ) ) ) # ( \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a2\ & ( 
-- !\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a3\ & ( (!\GFX|SHADER|XD|out\(1) & (((\GFX|SHADER|XD|out[0]~DUPLICATE_q\)))) # (\GFX|SHADER|XD|out\(1) & ((!\GFX|SHADER|XD|out[0]~DUPLICATE_q\ & 
-- (\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a1\)) # (\GFX|SHADER|XD|out[0]~DUPLICATE_q\ & ((\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a0\))))) ) ) ) # ( !\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a2\ & ( 
-- !\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a3\ & ( (\GFX|SHADER|XD|out\(1) & ((!\GFX|SHADER|XD|out[0]~DUPLICATE_q\ & (\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a1\)) # (\GFX|SHADER|XD|out[0]~DUPLICATE_q\ & 
-- ((\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a0\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000110100001111110110000101101011011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|XD|ALT_INV_out\(1),
	datab => \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	datac => \GFX|SHADER|XD|ALT_INV_out[0]~DUPLICATE_q\,
	datad => \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a0\,
	datae => \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	dataf => \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	combout => \GFX|SHADER|Mux0~3_combout\);

-- Location: MLABCELL_X25_Y5_N36
\GFX|SHADER|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Mux0~2_combout\ = ( \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a6~portadataout\ & ( \GFX|SHADER|XD|out[0]~DUPLICATE_q\ & ( (!\GFX|SHADER|XD|out\(1)) # (\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a4\) ) ) ) # ( 
-- !\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a6~portadataout\ & ( \GFX|SHADER|XD|out[0]~DUPLICATE_q\ & ( (\GFX|SHADER|XD|out\(1) & \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a4\) ) ) ) # ( 
-- \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a6~portadataout\ & ( !\GFX|SHADER|XD|out[0]~DUPLICATE_q\ & ( (!\GFX|SHADER|XD|out\(1) & ((\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a7\))) # (\GFX|SHADER|XD|out\(1) & 
-- (\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a5\)) ) ) ) # ( !\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a6~portadataout\ & ( !\GFX|SHADER|XD|out[0]~DUPLICATE_q\ & ( (!\GFX|SHADER|XD|out\(1) & 
-- ((\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a7\))) # (\GFX|SHADER|XD|out\(1) & (\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a5\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100010001000100011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|XD|ALT_INV_out\(1),
	datab => \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	datac => \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a5\,
	datad => \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	datae => \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a6~portadataout\,
	dataf => \GFX|SHADER|XD|ALT_INV_out[0]~DUPLICATE_q\,
	combout => \GFX|SHADER|Mux0~2_combout\);

-- Location: MLABCELL_X28_Y5_N24
\GFX|SHADER|coor_ximg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|coor_ximg[3]~3_combout\ = ( !\GFX|SHADER|comb~10_combout\ & ( (!\GFX|SHADER|comb~17_combout\ & (\GFX|SHADER|Add0~25_sumout\)) # (\GFX|SHADER|comb~17_combout\ & ((!\GFX|SHADER|S_X|out\(3) $ (((\GFX|SHADER|S_X|out\(2) & 
-- \GFX|SHADER|S_X|out\(1))))))) ) ) # ( \GFX|SHADER|comb~10_combout\ & ( (!\GFX|SHADER|comb~17_combout\ & (\GFX|SHADER|Add0~25_sumout\)) # (\GFX|SHADER|comb~17_combout\ & (((\GFX|SHADER|Add2~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0111011101000100010001110100011101110100010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_Add0~25_sumout\,
	datab => \GFX|SHADER|ALT_INV_comb~17_combout\,
	datac => \GFX|SHADER|ALT_INV_Add2~25_sumout\,
	datad => \GFX|SHADER|S_X|ALT_INV_out\(3),
	datae => \GFX|SHADER|ALT_INV_comb~10_combout\,
	dataf => \GFX|SHADER|S_X|ALT_INV_out\(1),
	datag => \GFX|SHADER|S_X|ALT_INV_out\(2),
	combout => \GFX|SHADER|coor_ximg[3]~3_combout\);

-- Location: FF_X28_Y5_N25
\GFX|SHADER|XD|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|SHADER|coor_ximg[3]~3_combout\,
	ena => \GFX|SHADER|S_CTRL2|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|XD|out\(3));

-- Location: MLABCELL_X28_Y5_N42
\GFX|SHADER|coor_ximg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|coor_ximg[2]~2_combout\ = ( \GFX|SHADER|Add2~21_sumout\ & ( \GFX|SHADER|S_X|out\(1) & ( (!\GFX|SHADER|comb~17_combout\ & (\GFX|SHADER|Add0~21_sumout\)) # (\GFX|SHADER|comb~17_combout\ & (((!\GFX|SHADER|S_X|out\(2)) # 
-- (\GFX|SHADER|comb~10_combout\)))) ) ) ) # ( !\GFX|SHADER|Add2~21_sumout\ & ( \GFX|SHADER|S_X|out\(1) & ( (!\GFX|SHADER|comb~17_combout\ & (\GFX|SHADER|Add0~21_sumout\)) # (\GFX|SHADER|comb~17_combout\ & (((!\GFX|SHADER|S_X|out\(2) & 
-- !\GFX|SHADER|comb~10_combout\)))) ) ) ) # ( \GFX|SHADER|Add2~21_sumout\ & ( !\GFX|SHADER|S_X|out\(1) & ( (!\GFX|SHADER|comb~17_combout\ & (\GFX|SHADER|Add0~21_sumout\)) # (\GFX|SHADER|comb~17_combout\ & (((\GFX|SHADER|comb~10_combout\) # 
-- (\GFX|SHADER|S_X|out\(2))))) ) ) ) # ( !\GFX|SHADER|Add2~21_sumout\ & ( !\GFX|SHADER|S_X|out\(1) & ( (!\GFX|SHADER|comb~17_combout\ & (\GFX|SHADER|Add0~21_sumout\)) # (\GFX|SHADER|comb~17_combout\ & (((\GFX|SHADER|S_X|out\(2) & 
-- !\GFX|SHADER|comb~10_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100010001001110111011101110010001000100111001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_comb~17_combout\,
	datab => \GFX|SHADER|ALT_INV_Add0~21_sumout\,
	datac => \GFX|SHADER|S_X|ALT_INV_out\(2),
	datad => \GFX|SHADER|ALT_INV_comb~10_combout\,
	datae => \GFX|SHADER|ALT_INV_Add2~21_sumout\,
	dataf => \GFX|SHADER|S_X|ALT_INV_out\(1),
	combout => \GFX|SHADER|coor_ximg[2]~2_combout\);

-- Location: FF_X28_Y5_N44
\GFX|SHADER|XD|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|SHADER|coor_ximg[2]~2_combout\,
	ena => \GFX|SHADER|S_CTRL2|ALT_INV_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|SHADER|XD|out\(2));

-- Location: MLABCELL_X25_Y5_N30
\GFX|SHADER|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Mux0~0_combout\ = ( \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a14\ & ( \GFX|SHADER|XD|out[0]~DUPLICATE_q\ & ( (!\GFX|SHADER|XD|out\(1)) # (\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a12\) ) ) ) # ( 
-- !\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a14\ & ( \GFX|SHADER|XD|out[0]~DUPLICATE_q\ & ( (\GFX|SHADER|XD|out\(1) & \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a12\) ) ) ) # ( \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a14\ & ( 
-- !\GFX|SHADER|XD|out[0]~DUPLICATE_q\ & ( (!\GFX|SHADER|XD|out\(1) & (\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a15\)) # (\GFX|SHADER|XD|out\(1) & ((\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a13\))) ) ) ) # ( 
-- !\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a14\ & ( !\GFX|SHADER|XD|out[0]~DUPLICATE_q\ & ( (!\GFX|SHADER|XD|out\(1) & (\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a15\)) # (\GFX|SHADER|XD|out\(1) & 
-- ((\GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ram_block1a13\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100010001000100011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|XD|ALT_INV_out\(1),
	datab => \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a12\,
	datac => \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a15\,
	datad => \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a13\,
	datae => \GFX|SHADER|XBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a14\,
	dataf => \GFX|SHADER|XD|ALT_INV_out[0]~DUPLICATE_q\,
	combout => \GFX|SHADER|Mux0~0_combout\);

-- Location: MLABCELL_X25_Y5_N18
\GFX|SHADER|Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Mux0~4_combout\ = ( \GFX|SHADER|XD|out\(2) & ( \GFX|SHADER|Mux0~0_combout\ & ( (!\GFX|SHADER|XD|out\(3) & (\GFX|SHADER|Mux0~1_combout\)) # (\GFX|SHADER|XD|out\(3) & ((\GFX|SHADER|Mux0~3_combout\))) ) ) ) # ( !\GFX|SHADER|XD|out\(2) & ( 
-- \GFX|SHADER|Mux0~0_combout\ & ( (!\GFX|SHADER|XD|out\(3)) # (\GFX|SHADER|Mux0~2_combout\) ) ) ) # ( \GFX|SHADER|XD|out\(2) & ( !\GFX|SHADER|Mux0~0_combout\ & ( (!\GFX|SHADER|XD|out\(3) & (\GFX|SHADER|Mux0~1_combout\)) # (\GFX|SHADER|XD|out\(3) & 
-- ((\GFX|SHADER|Mux0~3_combout\))) ) ) ) # ( !\GFX|SHADER|XD|out\(2) & ( !\GFX|SHADER|Mux0~0_combout\ & ( (\GFX|SHADER|Mux0~2_combout\ & \GFX|SHADER|XD|out\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010101010011001111111111000011110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_Mux0~1_combout\,
	datab => \GFX|SHADER|ALT_INV_Mux0~3_combout\,
	datac => \GFX|SHADER|ALT_INV_Mux0~2_combout\,
	datad => \GFX|SHADER|XD|ALT_INV_out\(3),
	datae => \GFX|SHADER|XD|ALT_INV_out\(2),
	dataf => \GFX|SHADER|ALT_INV_Mux0~0_combout\,
	combout => \GFX|SHADER|Mux0~4_combout\);

-- Location: LABCELL_X30_Y4_N42
\GFX|SHADER|LessThan10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|LessThan10~0_combout\ = ( !\GFX|SHADER|YCD|out\(6) & ( !\GFX|SHADER|YCD|out\(7) & ( (!\GFX|SHADER|YCD|out\(5) & ((!\GFX|SHADER|YCD|out\(3)) # (!\GFX|SHADER|YCD|out\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GFX|SHADER|YCD|ALT_INV_out\(5),
	datac => \GFX|SHADER|YCD|ALT_INV_out\(3),
	datad => \GFX|SHADER|YCD|ALT_INV_out\(4),
	datae => \GFX|SHADER|YCD|ALT_INV_out\(6),
	dataf => \GFX|SHADER|YCD|ALT_INV_out\(7),
	combout => \GFX|SHADER|LessThan10~0_combout\);

-- Location: MLABCELL_X25_Y3_N51
\GFX|SHADER|on_yborder~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|on_yborder~4_combout\ = ( \GFX|SHADER|YCD|out\(7) & ( \GFX|SHADER|YCD|out\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|SHADER|YCD|ALT_INV_out\(6),
	dataf => \GFX|SHADER|YCD|ALT_INV_out\(7),
	combout => \GFX|SHADER|on_yborder~4_combout\);

-- Location: LABCELL_X30_Y4_N30
\GFX|SHADER|WideOr0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|WideOr0~9_combout\ = ( !\GFX|SHADER|YCD|out\(8) & ( (\GFX|SHADER|on_yborder~4_combout\ & (!\GFX|SHADER|YCD|out\(9) & (((\GFX|SHADER|YCD|out\(4)) # (\GFX|SHADER|LessThan7~0_combout\)) # (\GFX|SHADER|YCD|out\(5))))) ) ) # ( 
-- \GFX|SHADER|YCD|out\(8) & ( (((\GFX|SHADER|LessThan10~0_combout\ & ((!\GFX|SHADER|YCD|out\(9)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000001111111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|YCD|ALT_INV_out\(5),
	datab => \GFX|SHADER|ALT_INV_LessThan7~0_combout\,
	datac => \GFX|SHADER|ALT_INV_LessThan10~0_combout\,
	datad => \GFX|SHADER|ALT_INV_on_yborder~4_combout\,
	datae => \GFX|SHADER|YCD|ALT_INV_out\(8),
	dataf => \GFX|SHADER|YCD|ALT_INV_out\(9),
	datag => \GFX|SHADER|YCD|ALT_INV_out\(4),
	combout => \GFX|SHADER|WideOr0~9_combout\);

-- Location: MLABCELL_X28_Y3_N18
\GFX|SHADER|shader_pixel_rgba[9]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|shader_pixel_rgba[9]~3_combout\ = ( \GFX|SHADER|Mux0~4_combout\ & ( \GFX|SHADER|WideOr0~9_combout\ & ( \GFX|SHADER|shader_pixel_rgba[9]~4_combout\ ) ) ) # ( !\GFX|SHADER|Mux0~4_combout\ & ( \GFX|SHADER|WideOr0~9_combout\ & ( 
-- (!\GFX|SHADER|shader_pixel_rgba[9]~5_combout\ & (\GFX|SHADER|WideOr0~5_combout\ & (\GFX|SHADER|shader_pixel_rgba[9]~4_combout\ & !\GFX|SHADER|WideOr0~3_combout\))) ) ) ) # ( \GFX|SHADER|Mux0~4_combout\ & ( !\GFX|SHADER|WideOr0~9_combout\ & ( 
-- \GFX|SHADER|shader_pixel_rgba[9]~4_combout\ ) ) ) # ( !\GFX|SHADER|Mux0~4_combout\ & ( !\GFX|SHADER|WideOr0~9_combout\ & ( (!\GFX|SHADER|shader_pixel_rgba[9]~5_combout\ & (\GFX|SHADER|shader_pixel_rgba[9]~4_combout\ & !\GFX|SHADER|WideOr0~3_combout\)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000011110000111100000010000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_shader_pixel_rgba[9]~5_combout\,
	datab => \GFX|SHADER|ALT_INV_WideOr0~5_combout\,
	datac => \GFX|SHADER|ALT_INV_shader_pixel_rgba[9]~4_combout\,
	datad => \GFX|SHADER|ALT_INV_WideOr0~3_combout\,
	datae => \GFX|SHADER|ALT_INV_Mux0~4_combout\,
	dataf => \GFX|SHADER|ALT_INV_WideOr0~9_combout\,
	combout => \GFX|SHADER|shader_pixel_rgba[9]~3_combout\);

-- Location: FF_X28_Y79_N40
\GFX|FB|Data_FIFO|auto_generated|wrptr_g[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a3~q\,
	sload => VCC,
	ena => \GFX|FB|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|wrptr_g[3]~DUPLICATE_q\);

-- Location: LABCELL_X27_Y80_N15
\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a0~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a0~_wirecell_combout\ = ( !\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a0~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a0~q\,
	combout => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a0~_wirecell_combout\);

-- Location: LABCELL_X27_Y79_N54
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: MLABCELL_X28_Y3_N12
\GFX|SHADER|comb~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|comb~4_combout\ = ( !\GFX|SHADER|Mux0~4_combout\ & ( \GFX|SHADER|WideOr0~9_combout\ & ( (!\GFX|SHADER|WideOr0~5_combout\) # (((\GFX|SHADER|WideOr0~6_combout\ & !\GFX|SHADER|WideOr0~8_combout\)) # (\GFX|SHADER|WideOr0~3_combout\)) ) ) ) # ( 
-- !\GFX|SHADER|Mux0~4_combout\ & ( !\GFX|SHADER|WideOr0~9_combout\ & ( ((\GFX|SHADER|WideOr0~6_combout\ & !\GFX|SHADER|WideOr0~8_combout\)) # (\GFX|SHADER|WideOr0~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011111111000000000000000011011100111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_WideOr0~6_combout\,
	datab => \GFX|SHADER|ALT_INV_WideOr0~5_combout\,
	datac => \GFX|SHADER|ALT_INV_WideOr0~8_combout\,
	datad => \GFX|SHADER|ALT_INV_WideOr0~3_combout\,
	datae => \GFX|SHADER|ALT_INV_Mux0~4_combout\,
	dataf => \GFX|SHADER|ALT_INV_WideOr0~9_combout\,
	combout => \GFX|SHADER|comb~4_combout\);

-- Location: LABCELL_X29_Y3_N9
\GFX|SHADER|WideOr1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|WideOr1~5_combout\ = ( \GFX|SHADER|comb~0_combout\ & ( (\GFX|SHADER|board_position~4_combout\ & (\State|oreg|out\(0) & ((!\GFX|SHADER|board_position~3_combout\) # (\GFX|SHADER|XCD|out\(7))))) ) ) # ( !\GFX|SHADER|comb~0_combout\ & ( 
-- (\GFX|SHADER|XCD|out\(7) & (\GFX|SHADER|board_position~4_combout\ & \State|oreg|out\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000010110000000000001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_board_position~3_combout\,
	datab => \GFX|SHADER|XCD|ALT_INV_out\(7),
	datac => \GFX|SHADER|ALT_INV_board_position~4_combout\,
	datad => \State|oreg|ALT_INV_out\(0),
	dataf => \GFX|SHADER|ALT_INV_comb~0_combout\,
	combout => \GFX|SHADER|WideOr1~5_combout\);

-- Location: LABCELL_X29_Y3_N24
\GFX|SHADER|WideOr1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|WideOr1~6_combout\ = ( \GFX|SHADER|on_yborder~3_combout\ & ( \GFX|SHADER|board_position~5_combout\ & ( (!\State|oreg|out\(1) & (!\GFX|SHADER|WideOr1~5_combout\ & ((!\State|oreg|out\(2)) # (\GFX|SHADER|board_position~0_combout\)))) ) ) ) # ( 
-- !\GFX|SHADER|on_yborder~3_combout\ & ( \GFX|SHADER|board_position~5_combout\ & ( (!\State|oreg|out\(1) & !\GFX|SHADER|WideOr1~5_combout\) ) ) ) # ( \GFX|SHADER|on_yborder~3_combout\ & ( !\GFX|SHADER|board_position~5_combout\ & ( 
-- (!\GFX|SHADER|WideOr1~5_combout\ & ((!\State|oreg|out\(2)) # (\GFX|SHADER|board_position~0_combout\))) ) ) ) # ( !\GFX|SHADER|on_yborder~3_combout\ & ( !\GFX|SHADER|board_position~5_combout\ & ( !\GFX|SHADER|WideOr1~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011000000110010001000100010001000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State|oreg|ALT_INV_out\(1),
	datab => \GFX|SHADER|ALT_INV_WideOr1~5_combout\,
	datac => \GFX|SHADER|ALT_INV_board_position~0_combout\,
	datad => \State|oreg|ALT_INV_out\(2),
	datae => \GFX|SHADER|ALT_INV_on_yborder~3_combout\,
	dataf => \GFX|SHADER|ALT_INV_board_position~5_combout\,
	combout => \GFX|SHADER|WideOr1~6_combout\);

-- Location: M10K_X26_Y4_N0
\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a1\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003F8FFFFFFFFFFFFFFF003F8FFFFFFFFFFFFFFF003F8FFFFFFFFFFFFFFF003F",
	mem_init2 => "8FFFFFFFFFFFFFFF003F8FFFFFFFFFFFFFFF003F8FFFFFFFFFFFFFFF003F8FFFFFFFFFFFFFFF003F8FFFFF81FFFFFFFF003F8FFFFF007FEFFFFF003F8FFFFF003FCFFFFF003F8FFDFF003F8FFFFF003F8FFC7F003F0FFFFF003F8FFC7F003E0FFFFF003F8FFC1FFF380FFFFF003F8FFC0FFFB81FFFFF003F8FFC0FFFF03FFFFF003F8FFC07FFF03FFFFF003F8FFE07FFE07FFFFF003F8FFF03FFC0FFFFFF003F8FFF83FFC0FFFFFF003F8FFF83FFC1FFFFFF003F8FFFC3FFC3FFFFFF003F8FFFE3FFC7FFFBFF003F8FFFE1FFC7FFFBFF003F8FFFF1FFC7FFF3FF003F8FFFF0FFCFFFF3FF003F8FFFF0FFCFFFF3FF003F8FFFF0FFDFFFF3FF003F8FFFF8FFDFFF",
	mem_init1 => "F3FF003F8FFFF8FFDFFFF3FF003F8FFFF8FFFFFFF3FF003F8FFFFCFFFFFFF3FF003F8FFFFCFFFFFFF3FF003F8FFFFCFFFFFFF3FF003F8FFFFCFFFFFFF3FF003F8FFFFCFFFFFFF3FF003F8FFFFCFFFFFFF3FF003F8FFFFCFFFFFFF3FF003F8FFFFCFFFFFFF3FF003F8FFFFCFFFFFFF3FF003F8FFFFCFFFFFFF3FF003F8FFFFCFFFFFFF3FF003F8FFFFCFFFFFFF3FF003F8FFFFCFFFFFFF3FF003F8FFFFCFFFFFFF3FF003F8FFFFCFFFFFFF3FF003F8FFFFCFFFFFFF3FF003F8FFFFCFFFFFFF3FF003F8FFFFCFFFFFFF3FF003F8FFFFCFFFFFFF3FF003F8FFFF8FFFFFFF3FF003F8FFFF8FFDFFFF3FF003F8FFFF8FFDFFFF3FF003F8FFFF0FFDFFFF3FF003F8FFF",
	mem_init0 => "F0FFCFFFF3FF003F8FFFF0FFCFFFF3FF003F8FFFF1FFC7FFFBFF003F8FFFE1FFC7FFFBFF003F8FFFC3FFC7FFFFFF003F8FFFC3FFC3FFFFFF003F8FFF83FFC1FFFFFF003F8FFF83FFC0FFFFFF003F8FFF03FFC0FFFFFF003F8FFE07FFE07FFFFF003F8FFC0FFFF03FFFFF003F8FFC0FFFF83FFFFF003F8FFC1FFFB80FFFFF003F8FFC3F7F3C0FFFFF003F8FFC7F003E0FFFFF003F8FFC7F003F0FFFFF003F8FFDFF003F8FFFFF003F8FFFFF003FCFFFFF003F8FFFFF00FFFFFFFF003F8FFFFFE3FFFFFFFF003F8FFFFFFFFFFFFFFF003F8FFFFFFFFFFFFFFF003F8FFFFFFFFFFFFFFF003F8FFFFFFFFFFFFFFF003F8FFFFFFFFFFFFFFF003F8FFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/lab3_top.ram0_ROM_d8c22375.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "TicTacToe_to_VGA:GFX|tictactoe_shader:SHADER|ROM:OBMP|altsyncram:rom_rtl_0|altsyncram_src1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 10,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 10,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	portaaddr => \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: MLABCELL_X25_Y5_N6
\GFX|SHADER|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Mux1~2_combout\ = ( \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a13\ & ( \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a5\ & ( (!\GFX|SHADER|XD|out\(2)) # ((!\GFX|SHADER|XD|out\(3) & 
-- (\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a9\)) # (\GFX|SHADER|XD|out\(3) & ((\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a1~portadataout\)))) ) ) ) # ( !\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a13\ & ( 
-- \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a5\ & ( (!\GFX|SHADER|XD|out\(2) & (((\GFX|SHADER|XD|out\(3))))) # (\GFX|SHADER|XD|out\(2) & ((!\GFX|SHADER|XD|out\(3) & (\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a9\)) # 
-- (\GFX|SHADER|XD|out\(3) & ((\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a1~portadataout\))))) ) ) ) # ( \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a13\ & ( !\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a5\ & ( 
-- (!\GFX|SHADER|XD|out\(2) & (((!\GFX|SHADER|XD|out\(3))))) # (\GFX|SHADER|XD|out\(2) & ((!\GFX|SHADER|XD|out\(3) & (\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a9\)) # (\GFX|SHADER|XD|out\(3) & 
-- ((\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a1~portadataout\))))) ) ) ) # ( !\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a13\ & ( !\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a5\ & ( (\GFX|SHADER|XD|out\(2) & 
-- ((!\GFX|SHADER|XD|out\(3) & (\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a9\)) # (\GFX|SHADER|XD|out\(3) & ((\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a1~portadataout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011110111010000001100010001110011111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a9\,
	datab => \GFX|SHADER|XD|ALT_INV_out\(2),
	datac => \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\,
	datad => \GFX|SHADER|XD|ALT_INV_out\(3),
	datae => \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a13\,
	dataf => \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a5\,
	combout => \GFX|SHADER|Mux1~2_combout\);

-- Location: MLABCELL_X25_Y5_N24
\GFX|SHADER|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Mux1~0_combout\ = ( \GFX|SHADER|XD|out\(2) & ( \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a15\ & ( (!\GFX|SHADER|XD|out\(3) & (\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a11\)) # (\GFX|SHADER|XD|out\(3) & 
-- ((\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a3~portadataout\))) ) ) ) # ( !\GFX|SHADER|XD|out\(2) & ( \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a15\ & ( (!\GFX|SHADER|XD|out\(3)) # 
-- (\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a7\) ) ) ) # ( \GFX|SHADER|XD|out\(2) & ( !\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a15\ & ( (!\GFX|SHADER|XD|out\(3) & (\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a11\)) # 
-- (\GFX|SHADER|XD|out\(3) & ((\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a3~portadataout\))) ) ) ) # ( !\GFX|SHADER|XD|out\(2) & ( !\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a15\ & ( 
-- (\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a7\ & \GFX|SHADER|XD|out\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010101010011001111111111000011110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a11\,
	datab => \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\,
	datac => \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	datad => \GFX|SHADER|XD|ALT_INV_out\(3),
	datae => \GFX|SHADER|XD|ALT_INV_out\(2),
	dataf => \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a15\,
	combout => \GFX|SHADER|Mux1~0_combout\);

-- Location: M10K_X26_Y2_N0
\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000C0300C0300C030000000C0300C0300C030000000C0300C0300C030000",
	mem_init2 => "000C0300C0300C030000000C0300C0300C030000000C0300C0300C030000000C0300C0300C030000000C0300C0300C030000000C030040200C030000000C030000200C030000000C030000000C030000000C030000000C030000000C030000000C030000000C030080000C030000000C030080100C030000000C0300C0100C030000000C0300C0300C030000000C0300C0300C030000000C0300C0300C030000000C0100C0300C030000000C0100C0300C030000000C0100C03008030000000C0100C03008030000000C0100C03008030000000C0100C03008030000000C0100C03008030000000C0100C03008030000000C0000C03008030000000C0000C030",
	mem_init1 => "08030000000C0000C03008030000000C0000C03008030000000C0000C03000030000000C0000C03000030000000C0000C03000030000000C0000C03000030000000C0200C03000030000000C0200C03000030000000C0200C03000030000000C0200C03000030000000C0200C03000030000000C0200C03000030000000C0200C03000030000000C0200C03000030000000C0200C03000030000000C0200C03000030000000C0200C03000030000000C0000C03000030000000C0000C03000030000000C0000C03000030000000C0000C03000030000000C0000C03008030000000C0000C03008030000000C0000C03008030000000C0100C03008030000000C",
	mem_init0 => "0100C03008030000000C0100C03008030000000C0100C03008030000000C0100C03008030000000C0100C03008030000000C0100C03008030000000C0100C0300C030000000C0100C0300C030000000C0300C0300C030000000C0300C0300C030000000C0300C0300C030000000C0300C0100C030000000C030080100C030000000C030000000C030000000C030000000C030000000C030000000C030000000C030000000C030000000C030000200C030000000C030040200C030000000C0300C0300C030000000C0300C0300C030000000C0300C0300C030000000C0300C0300C030000000C0300C0300C030000000C0300C0300C030000000C0300C0300C03",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/lab3_top.ram0_ROM_d8c22375.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "TicTacToe_to_VGA:GFX|tictactoe_shader:SHADER|ROM:OBMP|altsyncram:rom_rtl_0|altsyncram_src1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 10,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 10,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	portaaddr => \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: MLABCELL_X25_Y5_N12
\GFX|SHADER|Mux1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Mux1~3_combout\ = ( \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a8\ & ( ((!\GFX|SHADER|XD|out\(3) & (\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a12\)) # 
-- (\GFX|SHADER|XD|out\(3) & ((\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a4\)))) # (\GFX|SHADER|XD|out\(2)) ) ) ) # ( !\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a8\ 
-- & ( (!\GFX|SHADER|XD|out\(2) & ((!\GFX|SHADER|XD|out\(3) & (\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a12\)) # (\GFX|SHADER|XD|out\(3) & ((\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a4\))))) # (\GFX|SHADER|XD|out\(2) & 
-- (((!\GFX|SHADER|XD|out\(3))))) ) ) ) # ( \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a8\ & ( (!\GFX|SHADER|XD|out\(2) & ((!\GFX|SHADER|XD|out\(3) & 
-- (\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a12\)) # (\GFX|SHADER|XD|out\(3) & ((\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a4\))))) # (\GFX|SHADER|XD|out\(2) & (((\GFX|SHADER|XD|out\(3))))) ) ) ) # ( 
-- !\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a8\ & ( (!\GFX|SHADER|XD|out\(2) & ((!\GFX|SHADER|XD|out\(3) & (\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a12\)) # 
-- (\GFX|SHADER|XD|out\(3) & ((\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a4\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100010001000011111101110111000011000111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a12\,
	datab => \GFX|SHADER|XD|ALT_INV_out\(2),
	datac => \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	datad => \GFX|SHADER|XD|ALT_INV_out\(3),
	datae => \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	dataf => \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a8\,
	combout => \GFX|SHADER|Mux1~3_combout\);

-- Location: MLABCELL_X25_Y5_N0
\GFX|SHADER|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Mux1~1_combout\ = ( \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a10\ & ( \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a6\ & ( (!\GFX|SHADER|XD|out\(3) & (((\GFX|SHADER|XD|out\(2))) # 
-- (\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a14\))) # (\GFX|SHADER|XD|out\(3) & (((!\GFX|SHADER|XD|out\(2)) # (\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a2\)))) ) ) ) # ( !\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a10\ & ( 
-- \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a6\ & ( (!\GFX|SHADER|XD|out\(3) & (\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a14\ & ((!\GFX|SHADER|XD|out\(2))))) # (\GFX|SHADER|XD|out\(3) & (((!\GFX|SHADER|XD|out\(2)) # 
-- (\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a2\)))) ) ) ) # ( \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a10\ & ( !\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a6\ & ( (!\GFX|SHADER|XD|out\(3) & (((\GFX|SHADER|XD|out\(2))) # 
-- (\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a14\))) # (\GFX|SHADER|XD|out\(3) & (((\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a2\ & \GFX|SHADER|XD|out\(2))))) ) ) ) # ( !\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a10\ & ( 
-- !\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a6\ & ( (!\GFX|SHADER|XD|out\(3) & (\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a14\ & ((!\GFX|SHADER|XD|out\(2))))) # (\GFX|SHADER|XD|out\(3) & 
-- (((\GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ram_block1a2\ & \GFX|SHADER|XD|out\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000011010001001100111101110111000000110111011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a14\,
	datab => \GFX|SHADER|XD|ALT_INV_out\(3),
	datac => \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	datad => \GFX|SHADER|XD|ALT_INV_out\(2),
	datae => \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a10\,
	dataf => \GFX|SHADER|OBMP|rom_rtl_0|auto_generated|ALT_INV_ram_block1a6\,
	combout => \GFX|SHADER|Mux1~1_combout\);

-- Location: MLABCELL_X25_Y5_N48
\GFX|SHADER|Mux1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Mux1~4_combout\ = ( \GFX|SHADER|Mux1~1_combout\ & ( \GFX|SHADER|XD|out[0]~DUPLICATE_q\ & ( (!\GFX|SHADER|XD|out\(1)) # (\GFX|SHADER|Mux1~3_combout\) ) ) ) # ( !\GFX|SHADER|Mux1~1_combout\ & ( \GFX|SHADER|XD|out[0]~DUPLICATE_q\ & ( 
-- (\GFX|SHADER|XD|out\(1) & \GFX|SHADER|Mux1~3_combout\) ) ) ) # ( \GFX|SHADER|Mux1~1_combout\ & ( !\GFX|SHADER|XD|out[0]~DUPLICATE_q\ & ( (!\GFX|SHADER|XD|out\(1) & ((\GFX|SHADER|Mux1~0_combout\))) # (\GFX|SHADER|XD|out\(1) & (\GFX|SHADER|Mux1~2_combout\)) 
-- ) ) ) # ( !\GFX|SHADER|Mux1~1_combout\ & ( !\GFX|SHADER|XD|out[0]~DUPLICATE_q\ & ( (!\GFX|SHADER|XD|out\(1) & ((\GFX|SHADER|Mux1~0_combout\))) # (\GFX|SHADER|XD|out\(1) & (\GFX|SHADER|Mux1~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000010101011010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|XD|ALT_INV_out\(1),
	datab => \GFX|SHADER|ALT_INV_Mux1~2_combout\,
	datac => \GFX|SHADER|ALT_INV_Mux1~0_combout\,
	datad => \GFX|SHADER|ALT_INV_Mux1~3_combout\,
	datae => \GFX|SHADER|ALT_INV_Mux1~1_combout\,
	dataf => \GFX|SHADER|XD|ALT_INV_out[0]~DUPLICATE_q\,
	combout => \GFX|SHADER|Mux1~4_combout\);

-- Location: LABCELL_X29_Y3_N6
\GFX|SHADER|WideOr1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|WideOr1~1_combout\ = ( \GFX|SHADER|comb~0_combout\ & ( (\State|oreg|out\(6) & (\GFX|SHADER|board_position~4_combout\ & ((!\GFX|SHADER|board_position~3_combout\) # (\GFX|SHADER|XCD|out\(7))))) ) ) # ( !\GFX|SHADER|comb~0_combout\ & ( 
-- (\GFX|SHADER|XCD|out\(7) & (\State|oreg|out\(6) & \GFX|SHADER|board_position~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000010110000000000001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_board_position~3_combout\,
	datab => \GFX|SHADER|XCD|ALT_INV_out\(7),
	datac => \State|oreg|ALT_INV_out\(6),
	datad => \GFX|SHADER|ALT_INV_board_position~4_combout\,
	dataf => \GFX|SHADER|ALT_INV_comb~0_combout\,
	combout => \GFX|SHADER|WideOr1~1_combout\);

-- Location: LABCELL_X31_Y3_N51
\GFX|SHADER|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|WideOr1~0_combout\ = ( \GFX|SHADER|comb~2_combout\ & ( \State|oreg|out\(7) & ( (!\GFX|FB|data_in[24]~0_combout\ & (((!\GFX|SHADER|comb~0_combout\) # (\GFX|SHADER|board_position~2_combout\)))) # (\GFX|FB|data_in[24]~0_combout\ & 
-- (\GFX|SHADER|board_position~1_combout\ & ((!\GFX|SHADER|comb~0_combout\) # (\GFX|SHADER|board_position~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001011101100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|ALT_INV_data_in[24]~0_combout\,
	datab => \GFX|SHADER|ALT_INV_board_position~1_combout\,
	datac => \GFX|SHADER|ALT_INV_board_position~2_combout\,
	datad => \GFX|SHADER|ALT_INV_comb~0_combout\,
	datae => \GFX|SHADER|ALT_INV_comb~2_combout\,
	dataf => \State|oreg|ALT_INV_out\(7),
	combout => \GFX|SHADER|WideOr1~0_combout\);

-- Location: LABCELL_X29_Y3_N42
\GFX|SHADER|WideOr1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|WideOr1~2_combout\ = ( \GFX|SHADER|on_yborder~3_combout\ & ( \GFX|SHADER|WideOr1~0_combout\ & ( \GFX|SHADER|WideOr0~2_combout\ ) ) ) # ( !\GFX|SHADER|on_yborder~3_combout\ & ( \GFX|SHADER|WideOr1~0_combout\ & ( \GFX|SHADER|WideOr0~2_combout\ ) 
-- ) ) # ( \GFX|SHADER|on_yborder~3_combout\ & ( !\GFX|SHADER|WideOr1~0_combout\ & ( (\GFX|SHADER|WideOr0~2_combout\ & (((\State|oreg|out\(8) & !\GFX|SHADER|board_position~0_combout\)) # (\GFX|SHADER|WideOr1~1_combout\))) ) ) ) # ( 
-- !\GFX|SHADER|on_yborder~3_combout\ & ( !\GFX|SHADER|WideOr1~0_combout\ & ( (\GFX|SHADER|WideOr1~1_combout\ & \GFX|SHADER|WideOr0~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000111010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_WideOr1~1_combout\,
	datab => \State|oreg|ALT_INV_out\(8),
	datac => \GFX|SHADER|ALT_INV_board_position~0_combout\,
	datad => \GFX|SHADER|ALT_INV_WideOr0~2_combout\,
	datae => \GFX|SHADER|ALT_INV_on_yborder~3_combout\,
	dataf => \GFX|SHADER|ALT_INV_WideOr1~0_combout\,
	combout => \GFX|SHADER|WideOr1~2_combout\);

-- Location: LABCELL_X29_Y3_N54
\GFX|SHADER|WideOr1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|WideOr1~3_combout\ = ( \GFX|SHADER|board_position~4_combout\ & ( (\State|oreg|out\(3) & (((\GFX|SHADER|comb~0_combout\ & !\GFX|SHADER|board_position~3_combout\)) # (\GFX|SHADER|XCD|out\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000111000000110000011100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_comb~0_combout\,
	datab => \GFX|SHADER|XCD|ALT_INV_out\(7),
	datac => \State|oreg|ALT_INV_out\(3),
	datad => \GFX|SHADER|ALT_INV_board_position~3_combout\,
	dataf => \GFX|SHADER|ALT_INV_board_position~4_combout\,
	combout => \GFX|SHADER|WideOr1~3_combout\);

-- Location: LABCELL_X29_Y3_N48
\GFX|SHADER|WideOr1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|WideOr1~4_combout\ = ( \GFX|SHADER|on_yborder~3_combout\ & ( \GFX|SHADER|board_position~5_combout\ & ( (!\GFX|SHADER|WideOr1~3_combout\ & (!\State|oreg|out\(4) & ((!\State|oreg|out\(5)) # (\GFX|SHADER|board_position~0_combout\)))) ) ) ) # ( 
-- !\GFX|SHADER|on_yborder~3_combout\ & ( \GFX|SHADER|board_position~5_combout\ & ( (!\GFX|SHADER|WideOr1~3_combout\ & !\State|oreg|out\(4)) ) ) ) # ( \GFX|SHADER|on_yborder~3_combout\ & ( !\GFX|SHADER|board_position~5_combout\ & ( 
-- (!\GFX|SHADER|WideOr1~3_combout\ & ((!\State|oreg|out\(5)) # (\GFX|SHADER|board_position~0_combout\))) ) ) ) # ( !\GFX|SHADER|on_yborder~3_combout\ & ( !\GFX|SHADER|board_position~5_combout\ & ( !\GFX|SHADER|WideOr1~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010100010101000101010101010000000001000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_WideOr1~3_combout\,
	datab => \State|oreg|ALT_INV_out\(5),
	datac => \GFX|SHADER|ALT_INV_board_position~0_combout\,
	datad => \State|oreg|ALT_INV_out\(4),
	datae => \GFX|SHADER|ALT_INV_on_yborder~3_combout\,
	dataf => \GFX|SHADER|ALT_INV_board_position~5_combout\,
	combout => \GFX|SHADER|WideOr1~4_combout\);

-- Location: MLABCELL_X28_Y3_N48
\GFX|SHADER|comb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|comb~5_combout\ = ( \GFX|SHADER|WideOr1~4_combout\ & ( \GFX|SHADER|WideOr0~9_combout\ & ( (!\GFX|SHADER|Mux1~4_combout\ & (((\GFX|SHADER|WideOr0~6_combout\ & !\GFX|SHADER|WideOr1~6_combout\)) # (\GFX|SHADER|WideOr1~2_combout\))) ) ) ) # ( 
-- !\GFX|SHADER|WideOr1~4_combout\ & ( \GFX|SHADER|WideOr0~9_combout\ & ( !\GFX|SHADER|Mux1~4_combout\ ) ) ) # ( \GFX|SHADER|WideOr1~4_combout\ & ( !\GFX|SHADER|WideOr0~9_combout\ & ( (!\GFX|SHADER|Mux1~4_combout\ & (((\GFX|SHADER|WideOr0~6_combout\ & 
-- !\GFX|SHADER|WideOr1~6_combout\)) # (\GFX|SHADER|WideOr1~2_combout\))) ) ) ) # ( !\GFX|SHADER|WideOr1~4_combout\ & ( !\GFX|SHADER|WideOr0~9_combout\ & ( (!\GFX|SHADER|Mux1~4_combout\ & (((\GFX|SHADER|WideOr0~6_combout\ & !\GFX|SHADER|WideOr1~6_combout\)) 
-- # (\GFX|SHADER|WideOr1~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011110000010000001111000011110000111100000100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_WideOr0~6_combout\,
	datab => \GFX|SHADER|ALT_INV_WideOr1~6_combout\,
	datac => \GFX|SHADER|ALT_INV_Mux1~4_combout\,
	datad => \GFX|SHADER|ALT_INV_WideOr1~2_combout\,
	datae => \GFX|SHADER|ALT_INV_WideOr1~4_combout\,
	dataf => \GFX|SHADER|ALT_INV_WideOr0~9_combout\,
	combout => \GFX|SHADER|comb~5_combout\);

-- Location: LABCELL_X29_Y2_N18
\GFX|SHADER|WideOr3~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|WideOr3~14_combout\ = ( \Wins|win_line\(3) & ( (!\GFX|SHADER|WideOr3~13_combout\ & (((\GFX|SHADER|WideOr3~10_combout\ & \GFX|SHADER|WideOr3~12_combout\)))) # (\GFX|SHADER|WideOr3~13_combout\ & (((\GFX|SHADER|WideOr3~10_combout\ & 
-- \GFX|SHADER|WideOr3~12_combout\)) # (\GFX|SHADER|WideOr3~11_combout\))) ) ) # ( !\Wins|win_line\(3) & ( (\GFX|SHADER|WideOr3~13_combout\ & \GFX|SHADER|WideOr3~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000111110001000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_WideOr3~13_combout\,
	datab => \GFX|SHADER|ALT_INV_WideOr3~11_combout\,
	datac => \GFX|SHADER|ALT_INV_WideOr3~10_combout\,
	datad => \GFX|SHADER|ALT_INV_WideOr3~12_combout\,
	dataf => \Wins|ALT_INV_win_line\(3),
	combout => \GFX|SHADER|WideOr3~14_combout\);

-- Location: LABCELL_X29_Y2_N51
\GFX|SHADER|WideOr3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|WideOr3~5_combout\ = ( \GFX|SHADER|YCD|out\(6) & ( (\GFX|SHADER|YCD|out\(4) & \Wins|win_line\(1)) ) ) # ( !\GFX|SHADER|YCD|out\(6) & ( (!\GFX|SHADER|YCD|out\(4) & \Wins|win_line\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|YCD|ALT_INV_out\(4),
	datac => \Wins|ALT_INV_win_line\(0),
	datad => \Wins|ALT_INV_win_line\(1),
	dataf => \GFX|SHADER|YCD|ALT_INV_out\(6),
	combout => \GFX|SHADER|WideOr3~5_combout\);

-- Location: LABCELL_X29_Y2_N0
\GFX|SHADER|WideOr3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|WideOr3~9_combout\ = ( \GFX|SHADER|WideOr3~5_combout\ & ( (\GFX|SHADER|WideOr3~8_combout\ & ((\GFX|SHADER|WideOr3~7_combout\) # (\GFX|SHADER|WideOr3~6_combout\))) ) ) # ( !\GFX|SHADER|WideOr3~5_combout\ & ( (\GFX|SHADER|WideOr3~8_combout\ & 
-- \GFX|SHADER|WideOr3~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GFX|SHADER|ALT_INV_WideOr3~8_combout\,
	datac => \GFX|SHADER|ALT_INV_WideOr3~6_combout\,
	datad => \GFX|SHADER|ALT_INV_WideOr3~7_combout\,
	dataf => \GFX|SHADER|ALT_INV_WideOr3~5_combout\,
	combout => \GFX|SHADER|WideOr3~9_combout\);

-- Location: LABCELL_X27_Y3_N54
\GFX|SHADER|WideOr3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|WideOr3~3_combout\ = ( \GFX|SHADER|YCD|out\(4) & ( \GFX|SHADER|Add6~13_sumout\ & ( (\GFX|SHADER|YCD|out\(5) & (\GFX|SHADER|Add6~9_sumout\ & (!\GFX|SHADER|Add6~1_sumout\ $ (\GFX|SHADER|YCD|out\(6))))) ) ) ) # ( !\GFX|SHADER|YCD|out\(4) & ( 
-- \GFX|SHADER|Add6~13_sumout\ & ( (\GFX|SHADER|YCD|out\(5) & (!\GFX|SHADER|Add6~9_sumout\ & (!\GFX|SHADER|Add6~1_sumout\ $ (\GFX|SHADER|YCD|out\(6))))) ) ) ) # ( \GFX|SHADER|YCD|out\(4) & ( !\GFX|SHADER|Add6~13_sumout\ & ( (!\GFX|SHADER|YCD|out\(5) & 
-- (\GFX|SHADER|Add6~9_sumout\ & (!\GFX|SHADER|Add6~1_sumout\ $ (\GFX|SHADER|YCD|out\(6))))) ) ) ) # ( !\GFX|SHADER|YCD|out\(4) & ( !\GFX|SHADER|Add6~13_sumout\ & ( (!\GFX|SHADER|YCD|out\(5) & (!\GFX|SHADER|Add6~9_sumout\ & (!\GFX|SHADER|Add6~1_sumout\ $ 
-- (\GFX|SHADER|YCD|out\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000000001001000000001001000000000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_Add6~1_sumout\,
	datab => \GFX|SHADER|YCD|ALT_INV_out\(6),
	datac => \GFX|SHADER|YCD|ALT_INV_out\(5),
	datad => \GFX|SHADER|ALT_INV_Add6~9_sumout\,
	datae => \GFX|SHADER|YCD|ALT_INV_out\(4),
	dataf => \GFX|SHADER|ALT_INV_Add6~13_sumout\,
	combout => \GFX|SHADER|WideOr3~3_combout\);

-- Location: MLABCELL_X28_Y3_N54
\GFX|SHADER|WideOr3~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|WideOr3~15_combout\ = ( !\GFX|SHADER|WideOr3~9_combout\ & ( \GFX|SHADER|WideOr3~3_combout\ & ( (!\GFX|SHADER|WideOr3~14_combout\ & ((!\GFX|SHADER|WideOr3~4_combout\) # (!\GFX|SHADER|Add6~5_sumout\ $ (!\GFX|SHADER|YCD|out\(7))))) ) ) ) # ( 
-- !\GFX|SHADER|WideOr3~9_combout\ & ( !\GFX|SHADER|WideOr3~3_combout\ & ( !\GFX|SHADER|WideOr3~14_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000010001010101010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_WideOr3~14_combout\,
	datab => \GFX|SHADER|ALT_INV_WideOr3~4_combout\,
	datac => \GFX|SHADER|ALT_INV_Add6~5_sumout\,
	datad => \GFX|SHADER|YCD|ALT_INV_out\(7),
	datae => \GFX|SHADER|ALT_INV_WideOr3~9_combout\,
	dataf => \GFX|SHADER|ALT_INV_WideOr3~3_combout\,
	combout => \GFX|SHADER|WideOr3~15_combout\);

-- Location: MLABCELL_X28_Y3_N36
\GFX|SHADER|shader_pixel_rgba[8]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|shader_pixel_rgba[8]~1_combout\ = ( \GFX|SHADER|WideOr3~15_combout\ & ( \GFX|SHADER|WideOr3~16_combout\ & ( (!\GFX|SHADER|WideOr3~2_combout\ & (!\GFX|SHADER|comb~3_combout\ & (!\GFX|SHADER|comb~4_combout\ $ (\GFX|SHADER|comb~5_combout\)))) ) ) 
-- ) # ( \GFX|SHADER|WideOr3~15_combout\ & ( !\GFX|SHADER|WideOr3~16_combout\ & ( (!\GFX|SHADER|comb~3_combout\ & (!\GFX|SHADER|comb~4_combout\ $ (\GFX|SHADER|comb~5_combout\))) ) ) ) # ( !\GFX|SHADER|WideOr3~15_combout\ & ( !\GFX|SHADER|WideOr3~16_combout\ 
-- & ( (!\GFX|SHADER|comb~3_combout\ & (!\GFX|SHADER|comb~4_combout\ $ (\GFX|SHADER|comb~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000110000110000000000000000000000001000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_WideOr3~2_combout\,
	datab => \GFX|SHADER|ALT_INV_comb~4_combout\,
	datac => \GFX|SHADER|ALT_INV_comb~5_combout\,
	datad => \GFX|SHADER|ALT_INV_comb~3_combout\,
	datae => \GFX|SHADER|ALT_INV_WideOr3~15_combout\,
	dataf => \GFX|SHADER|ALT_INV_WideOr3~16_combout\,
	combout => \GFX|SHADER|shader_pixel_rgba[8]~1_combout\);

-- Location: MLABCELL_X28_Y3_N42
\GFX|SHADER|shader_pixel_rgba[9]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|shader_pixel_rgba[9]~2_combout\ = ( \GFX|SHADER|WideOr3~15_combout\ & ( \GFX|SHADER|WideOr3~16_combout\ & ( (!\GFX|SHADER|WideOr3~2_combout\ & (!\GFX|SHADER|comb~4_combout\ & (!\GFX|SHADER|comb~5_combout\ & !\GFX|SHADER|comb~3_combout\))) ) ) 
-- ) # ( \GFX|SHADER|WideOr3~15_combout\ & ( !\GFX|SHADER|WideOr3~16_combout\ & ( (!\GFX|SHADER|comb~4_combout\ & (!\GFX|SHADER|comb~5_combout\ & !\GFX|SHADER|comb~3_combout\)) ) ) ) # ( !\GFX|SHADER|WideOr3~15_combout\ & ( !\GFX|SHADER|WideOr3~16_combout\ & 
-- ( (!\GFX|SHADER|comb~4_combout\ & (!\GFX|SHADER|comb~5_combout\ & !\GFX|SHADER|comb~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_WideOr3~2_combout\,
	datab => \GFX|SHADER|ALT_INV_comb~4_combout\,
	datac => \GFX|SHADER|ALT_INV_comb~5_combout\,
	datad => \GFX|SHADER|ALT_INV_comb~3_combout\,
	datae => \GFX|SHADER|ALT_INV_WideOr3~15_combout\,
	dataf => \GFX|SHADER|ALT_INV_WideOr3~16_combout\,
	combout => \GFX|SHADER|shader_pixel_rgba[9]~2_combout\);

-- Location: MLABCELL_X28_Y3_N0
\GFX|SHADER|shader_pixel_rgba[16]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|shader_pixel_rgba[16]~0_combout\ = ( \GFX|SHADER|WideOr3~15_combout\ & ( \GFX|SHADER|WideOr3~16_combout\ & ( ((!\GFX|SHADER|comb~3_combout\ & ((!\GFX|SHADER|comb~5_combout\) # (\GFX|SHADER|comb~4_combout\)))) # (\GFX|SHADER|WideOr3~2_combout\) 
-- ) ) ) # ( !\GFX|SHADER|WideOr3~15_combout\ & ( \GFX|SHADER|WideOr3~16_combout\ ) ) # ( \GFX|SHADER|WideOr3~15_combout\ & ( !\GFX|SHADER|WideOr3~16_combout\ & ( (!\GFX|SHADER|comb~3_combout\ & ((!\GFX|SHADER|comb~5_combout\) # 
-- (\GFX|SHADER|comb~4_combout\))) ) ) ) # ( !\GFX|SHADER|WideOr3~15_combout\ & ( !\GFX|SHADER|WideOr3~16_combout\ & ( (!\GFX|SHADER|comb~3_combout\ & ((!\GFX|SHADER|comb~5_combout\) # (\GFX|SHADER|comb~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100000000111100110000000011111111111111111111011101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_WideOr3~2_combout\,
	datab => \GFX|SHADER|ALT_INV_comb~4_combout\,
	datac => \GFX|SHADER|ALT_INV_comb~5_combout\,
	datad => \GFX|SHADER|ALT_INV_comb~3_combout\,
	datae => \GFX|SHADER|ALT_INV_WideOr3~15_combout\,
	dataf => \GFX|SHADER|ALT_INV_WideOr3~16_combout\,
	combout => \GFX|SHADER|shader_pixel_rgba[16]~0_combout\);

-- Location: MLABCELL_X25_Y3_N0
\GFX|SHADER|Add12~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add12~17_sumout\ = SUM(( !\GFX|SHADER|YCD|out\(0) $ (!\GFX|SHADER|XCD|out\(7)) ) + ( !VCC ) + ( !VCC ))
-- \GFX|SHADER|Add12~18\ = CARRY(( !\GFX|SHADER|YCD|out\(0) $ (!\GFX|SHADER|XCD|out\(7)) ) + ( !VCC ) + ( !VCC ))
-- \GFX|SHADER|Add12~19\ = SHARE((\GFX|SHADER|YCD|out\(0) & \GFX|SHADER|XCD|out\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \GFX|SHADER|YCD|ALT_INV_out\(0),
	datad => \GFX|SHADER|XCD|ALT_INV_out\(7),
	cin => GND,
	sharein => GND,
	sumout => \GFX|SHADER|Add12~17_sumout\,
	cout => \GFX|SHADER|Add12~18\,
	shareout => \GFX|SHADER|Add12~19\);

-- Location: MLABCELL_X25_Y3_N3
\GFX|SHADER|Add12~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add12~21_sumout\ = SUM(( !\GFX|SHADER|XCD|out\(8) $ (!\GFX|SHADER|YCD|out\(1)) ) + ( \GFX|SHADER|Add12~19\ ) + ( \GFX|SHADER|Add12~18\ ))
-- \GFX|SHADER|Add12~22\ = CARRY(( !\GFX|SHADER|XCD|out\(8) $ (!\GFX|SHADER|YCD|out\(1)) ) + ( \GFX|SHADER|Add12~19\ ) + ( \GFX|SHADER|Add12~18\ ))
-- \GFX|SHADER|Add12~23\ = SHARE((\GFX|SHADER|XCD|out\(8) & \GFX|SHADER|YCD|out\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \GFX|SHADER|XCD|ALT_INV_out\(8),
	datad => \GFX|SHADER|YCD|ALT_INV_out\(1),
	cin => \GFX|SHADER|Add12~18\,
	sharein => \GFX|SHADER|Add12~19\,
	sumout => \GFX|SHADER|Add12~21_sumout\,
	cout => \GFX|SHADER|Add12~22\,
	shareout => \GFX|SHADER|Add12~23\);

-- Location: MLABCELL_X25_Y3_N6
\GFX|SHADER|Add12~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add12~25_sumout\ = SUM(( !\GFX|SHADER|XCD|out\(9) $ (!\GFX|SHADER|YCD|out\(0) $ (\GFX|SHADER|YCD|out[2]~DUPLICATE_q\)) ) + ( \GFX|SHADER|Add12~23\ ) + ( \GFX|SHADER|Add12~22\ ))
-- \GFX|SHADER|Add12~26\ = CARRY(( !\GFX|SHADER|XCD|out\(9) $ (!\GFX|SHADER|YCD|out\(0) $ (\GFX|SHADER|YCD|out[2]~DUPLICATE_q\)) ) + ( \GFX|SHADER|Add12~23\ ) + ( \GFX|SHADER|Add12~22\ ))
-- \GFX|SHADER|Add12~27\ = SHARE((!\GFX|SHADER|XCD|out\(9) & (\GFX|SHADER|YCD|out\(0) & \GFX|SHADER|YCD|out[2]~DUPLICATE_q\)) # (\GFX|SHADER|XCD|out\(9) & ((\GFX|SHADER|YCD|out[2]~DUPLICATE_q\) # (\GFX|SHADER|YCD|out\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101110001011100000000000000000110100101101001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|XCD|ALT_INV_out\(9),
	datab => \GFX|SHADER|YCD|ALT_INV_out\(0),
	datac => \GFX|SHADER|YCD|ALT_INV_out[2]~DUPLICATE_q\,
	cin => \GFX|SHADER|Add12~22\,
	sharein => \GFX|SHADER|Add12~23\,
	sumout => \GFX|SHADER|Add12~25_sumout\,
	cout => \GFX|SHADER|Add12~26\,
	shareout => \GFX|SHADER|Add12~27\);

-- Location: MLABCELL_X25_Y3_N9
\GFX|SHADER|Add12~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add12~29_sumout\ = SUM(( !\GFX|SHADER|YCD|out\(3) $ (!\GFX|SHADER|YCD|out\(1)) ) + ( \GFX|SHADER|Add12~27\ ) + ( \GFX|SHADER|Add12~26\ ))
-- \GFX|SHADER|Add12~30\ = CARRY(( !\GFX|SHADER|YCD|out\(3) $ (!\GFX|SHADER|YCD|out\(1)) ) + ( \GFX|SHADER|Add12~27\ ) + ( \GFX|SHADER|Add12~26\ ))
-- \GFX|SHADER|Add12~31\ = SHARE((\GFX|SHADER|YCD|out\(3) & \GFX|SHADER|YCD|out\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \GFX|SHADER|YCD|ALT_INV_out\(3),
	datad => \GFX|SHADER|YCD|ALT_INV_out\(1),
	cin => \GFX|SHADER|Add12~26\,
	sharein => \GFX|SHADER|Add12~27\,
	sumout => \GFX|SHADER|Add12~29_sumout\,
	cout => \GFX|SHADER|Add12~30\,
	shareout => \GFX|SHADER|Add12~31\);

-- Location: MLABCELL_X25_Y3_N12
\GFX|SHADER|Add12~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add12~33_sumout\ = SUM(( !\GFX|SHADER|YCD|out[2]~DUPLICATE_q\ $ (!\GFX|SHADER|YCD|out\(4)) ) + ( \GFX|SHADER|Add12~31\ ) + ( \GFX|SHADER|Add12~30\ ))
-- \GFX|SHADER|Add12~34\ = CARRY(( !\GFX|SHADER|YCD|out[2]~DUPLICATE_q\ $ (!\GFX|SHADER|YCD|out\(4)) ) + ( \GFX|SHADER|Add12~31\ ) + ( \GFX|SHADER|Add12~30\ ))
-- \GFX|SHADER|Add12~35\ = SHARE((\GFX|SHADER|YCD|out[2]~DUPLICATE_q\ & \GFX|SHADER|YCD|out\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \GFX|SHADER|YCD|ALT_INV_out[2]~DUPLICATE_q\,
	datad => \GFX|SHADER|YCD|ALT_INV_out\(4),
	cin => \GFX|SHADER|Add12~30\,
	sharein => \GFX|SHADER|Add12~31\,
	sumout => \GFX|SHADER|Add12~33_sumout\,
	cout => \GFX|SHADER|Add12~34\,
	shareout => \GFX|SHADER|Add12~35\);

-- Location: MLABCELL_X25_Y3_N15
\GFX|SHADER|Add12~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add12~37_sumout\ = SUM(( !\GFX|SHADER|YCD|out\(5) $ (!\GFX|SHADER|YCD|out\(3)) ) + ( \GFX|SHADER|Add12~35\ ) + ( \GFX|SHADER|Add12~34\ ))
-- \GFX|SHADER|Add12~38\ = CARRY(( !\GFX|SHADER|YCD|out\(5) $ (!\GFX|SHADER|YCD|out\(3)) ) + ( \GFX|SHADER|Add12~35\ ) + ( \GFX|SHADER|Add12~34\ ))
-- \GFX|SHADER|Add12~39\ = SHARE((\GFX|SHADER|YCD|out\(5) & \GFX|SHADER|YCD|out\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \GFX|SHADER|YCD|ALT_INV_out\(5),
	datac => \GFX|SHADER|YCD|ALT_INV_out\(3),
	cin => \GFX|SHADER|Add12~34\,
	sharein => \GFX|SHADER|Add12~35\,
	sumout => \GFX|SHADER|Add12~37_sumout\,
	cout => \GFX|SHADER|Add12~38\,
	shareout => \GFX|SHADER|Add12~39\);

-- Location: MLABCELL_X25_Y3_N18
\GFX|SHADER|Add12~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add12~41_sumout\ = SUM(( !\GFX|SHADER|YCD|out\(6) $ (!\GFX|SHADER|YCD|out\(4)) ) + ( \GFX|SHADER|Add12~39\ ) + ( \GFX|SHADER|Add12~38\ ))
-- \GFX|SHADER|Add12~42\ = CARRY(( !\GFX|SHADER|YCD|out\(6) $ (!\GFX|SHADER|YCD|out\(4)) ) + ( \GFX|SHADER|Add12~39\ ) + ( \GFX|SHADER|Add12~38\ ))
-- \GFX|SHADER|Add12~43\ = SHARE((\GFX|SHADER|YCD|out\(6) & \GFX|SHADER|YCD|out\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \GFX|SHADER|YCD|ALT_INV_out\(6),
	datac => \GFX|SHADER|YCD|ALT_INV_out\(4),
	cin => \GFX|SHADER|Add12~38\,
	sharein => \GFX|SHADER|Add12~39\,
	sumout => \GFX|SHADER|Add12~41_sumout\,
	cout => \GFX|SHADER|Add12~42\,
	shareout => \GFX|SHADER|Add12~43\);

-- Location: MLABCELL_X25_Y3_N21
\GFX|SHADER|Add12~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add12~45_sumout\ = SUM(( !\GFX|SHADER|YCD|out\(7) $ (!\GFX|SHADER|YCD|out\(5)) ) + ( \GFX|SHADER|Add12~43\ ) + ( \GFX|SHADER|Add12~42\ ))
-- \GFX|SHADER|Add12~46\ = CARRY(( !\GFX|SHADER|YCD|out\(7) $ (!\GFX|SHADER|YCD|out\(5)) ) + ( \GFX|SHADER|Add12~43\ ) + ( \GFX|SHADER|Add12~42\ ))
-- \GFX|SHADER|Add12~47\ = SHARE((\GFX|SHADER|YCD|out\(7) & \GFX|SHADER|YCD|out\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|YCD|ALT_INV_out\(7),
	datac => \GFX|SHADER|YCD|ALT_INV_out\(5),
	cin => \GFX|SHADER|Add12~42\,
	sharein => \GFX|SHADER|Add12~43\,
	sumout => \GFX|SHADER|Add12~45_sumout\,
	cout => \GFX|SHADER|Add12~46\,
	shareout => \GFX|SHADER|Add12~47\);

-- Location: MLABCELL_X25_Y3_N24
\GFX|SHADER|Add12~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add12~49_sumout\ = SUM(( !\GFX|SHADER|YCD|out\(6) $ (!\GFX|SHADER|YCD|out\(8)) ) + ( \GFX|SHADER|Add12~47\ ) + ( \GFX|SHADER|Add12~46\ ))
-- \GFX|SHADER|Add12~50\ = CARRY(( !\GFX|SHADER|YCD|out\(6) $ (!\GFX|SHADER|YCD|out\(8)) ) + ( \GFX|SHADER|Add12~47\ ) + ( \GFX|SHADER|Add12~46\ ))
-- \GFX|SHADER|Add12~51\ = SHARE((\GFX|SHADER|YCD|out\(6) & \GFX|SHADER|YCD|out\(8)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \GFX|SHADER|YCD|ALT_INV_out\(6),
	datad => \GFX|SHADER|YCD|ALT_INV_out\(8),
	cin => \GFX|SHADER|Add12~46\,
	sharein => \GFX|SHADER|Add12~47\,
	sumout => \GFX|SHADER|Add12~49_sumout\,
	cout => \GFX|SHADER|Add12~50\,
	shareout => \GFX|SHADER|Add12~51\);

-- Location: MLABCELL_X25_Y3_N27
\GFX|SHADER|Add12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add12~1_sumout\ = SUM(( !\GFX|SHADER|YCD|out\(7) $ (!\GFX|SHADER|YCD|out\(9)) ) + ( \GFX|SHADER|Add12~51\ ) + ( \GFX|SHADER|Add12~50\ ))
-- \GFX|SHADER|Add12~2\ = CARRY(( !\GFX|SHADER|YCD|out\(7) $ (!\GFX|SHADER|YCD|out\(9)) ) + ( \GFX|SHADER|Add12~51\ ) + ( \GFX|SHADER|Add12~50\ ))
-- \GFX|SHADER|Add12~3\ = SHARE((\GFX|SHADER|YCD|out\(7) & \GFX|SHADER|YCD|out\(9)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|YCD|ALT_INV_out\(7),
	datac => \GFX|SHADER|YCD|ALT_INV_out\(9),
	cin => \GFX|SHADER|Add12~50\,
	sharein => \GFX|SHADER|Add12~51\,
	sumout => \GFX|SHADER|Add12~1_sumout\,
	cout => \GFX|SHADER|Add12~2\,
	shareout => \GFX|SHADER|Add12~3\);

-- Location: LABCELL_X31_Y3_N12
\GFX|FB|data_in[24]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|data_in[24]~1_combout\ = ( !\GFX|SHADER|XCD|out\(0) & ( (!\GFX|SHADER|XCD|out\(1) & (!\GFX|SHADER|XCD|out\(2) & !\GFX|SHADER|XCD|out\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GFX|SHADER|XCD|ALT_INV_out\(1),
	datac => \GFX|SHADER|XCD|ALT_INV_out\(2),
	datad => \GFX|SHADER|XCD|ALT_INV_out\(3),
	dataf => \GFX|SHADER|XCD|ALT_INV_out\(0),
	combout => \GFX|FB|data_in[24]~1_combout\);

-- Location: MLABCELL_X25_Y4_N6
\GFX|FB|data_in[24]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|data_in[24]~2_combout\ = ( !\GFX|SHADER|XCD|out\(5) & ( !\GFX|SHADER|XCD|out\(4) & ( (\GFX|SHADER|S_CTRL2|out\(0) & !\GFX|SHADER|XCD|out\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|S_CTRL2|ALT_INV_out\(0),
	datac => \GFX|SHADER|XCD|ALT_INV_out\(6),
	datae => \GFX|SHADER|XCD|ALT_INV_out\(5),
	dataf => \GFX|SHADER|XCD|ALT_INV_out\(4),
	combout => \GFX|FB|data_in[24]~2_combout\);

-- Location: MLABCELL_X25_Y3_N42
\GFX|FB|data_in[24]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|data_in[24]~3_combout\ = ( !\GFX|SHADER|Add12~17_sumout\ & ( \GFX|FB|data_in[24]~2_combout\ & ( (\GFX|FB|data_in[24]~1_combout\ & (!\GFX|SHADER|Add12~29_sumout\ & (!\GFX|SHADER|Add12~21_sumout\ & !\GFX|SHADER|Add12~25_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|ALT_INV_data_in[24]~1_combout\,
	datab => \GFX|SHADER|ALT_INV_Add12~29_sumout\,
	datac => \GFX|SHADER|ALT_INV_Add12~21_sumout\,
	datad => \GFX|SHADER|ALT_INV_Add12~25_sumout\,
	datae => \GFX|SHADER|ALT_INV_Add12~17_sumout\,
	dataf => \GFX|FB|ALT_INV_data_in[24]~2_combout\,
	combout => \GFX|FB|data_in[24]~3_combout\);

-- Location: MLABCELL_X25_Y3_N48
\GFX|FB|data_in[24]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|data_in[24]~4_combout\ = ( !\GFX|SHADER|Add12~37_sumout\ & ( (!\GFX|SHADER|Add12~41_sumout\ & (!\GFX|SHADER|Add12~33_sumout\ & (!\GFX|SHADER|Add12~49_sumout\ & !\GFX|SHADER|Add12~45_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_Add12~41_sumout\,
	datab => \GFX|SHADER|ALT_INV_Add12~33_sumout\,
	datac => \GFX|SHADER|ALT_INV_Add12~49_sumout\,
	datad => \GFX|SHADER|ALT_INV_Add12~45_sumout\,
	dataf => \GFX|SHADER|ALT_INV_Add12~37_sumout\,
	combout => \GFX|FB|data_in[24]~4_combout\);

-- Location: MLABCELL_X25_Y3_N30
\GFX|SHADER|Add12~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add12~5_sumout\ = SUM(( \GFX|SHADER|YCD|out\(8) ) + ( \GFX|SHADER|Add12~3\ ) + ( \GFX|SHADER|Add12~2\ ))
-- \GFX|SHADER|Add12~6\ = CARRY(( \GFX|SHADER|YCD|out\(8) ) + ( \GFX|SHADER|Add12~3\ ) + ( \GFX|SHADER|Add12~2\ ))
-- \GFX|SHADER|Add12~7\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \GFX|SHADER|YCD|ALT_INV_out\(8),
	cin => \GFX|SHADER|Add12~2\,
	sharein => \GFX|SHADER|Add12~3\,
	sumout => \GFX|SHADER|Add12~5_sumout\,
	cout => \GFX|SHADER|Add12~6\,
	shareout => \GFX|SHADER|Add12~7\);

-- Location: MLABCELL_X25_Y3_N33
\GFX|SHADER|Add12~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add12~9_sumout\ = SUM(( \GFX|SHADER|YCD|out\(9) ) + ( \GFX|SHADER|Add12~7\ ) + ( \GFX|SHADER|Add12~6\ ))
-- \GFX|SHADER|Add12~10\ = CARRY(( \GFX|SHADER|YCD|out\(9) ) + ( \GFX|SHADER|Add12~7\ ) + ( \GFX|SHADER|Add12~6\ ))
-- \GFX|SHADER|Add12~11\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \GFX|SHADER|YCD|ALT_INV_out\(9),
	cin => \GFX|SHADER|Add12~6\,
	sharein => \GFX|SHADER|Add12~7\,
	sumout => \GFX|SHADER|Add12~9_sumout\,
	cout => \GFX|SHADER|Add12~10\,
	shareout => \GFX|SHADER|Add12~11\);

-- Location: MLABCELL_X25_Y3_N36
\GFX|SHADER|Add12~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|SHADER|Add12~13_sumout\ = SUM(( GND ) + ( \GFX|SHADER|Add12~11\ ) + ( \GFX|SHADER|Add12~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \GFX|SHADER|Add12~10\,
	sharein => \GFX|SHADER|Add12~11\,
	sumout => \GFX|SHADER|Add12~13_sumout\);

-- Location: MLABCELL_X25_Y3_N54
\GFX|FB|data_in[24]\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|data_in\(24) = ( !\GFX|SHADER|Add12~13_sumout\ & ( !\GFX|SHADER|Add12~9_sumout\ & ( (!\GFX|SHADER|Add12~1_sumout\ & (\GFX|FB|data_in[24]~3_combout\ & (\GFX|FB|data_in[24]~4_combout\ & !\GFX|SHADER|Add12~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|SHADER|ALT_INV_Add12~1_sumout\,
	datab => \GFX|FB|ALT_INV_data_in[24]~3_combout\,
	datac => \GFX|FB|ALT_INV_data_in[24]~4_combout\,
	datad => \GFX|SHADER|ALT_INV_Add12~5_sumout\,
	datae => \GFX|SHADER|ALT_INV_Add12~13_sumout\,
	dataf => \GFX|SHADER|ALT_INV_Add12~9_sumout\,
	combout => \GFX|FB|data_in\(24));

-- Location: M10K_X26_Y80_N0
\GFX|FB|Data_FIFO|auto_generated|fifo_ram|ram_block11a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "TicTacToe_to_VGA:GFX|framebuffer:FB|dcfifo:Data_FIFO|dcfifo_b3q1:auto_generated|altsyncram_dv41:fifo_ram|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 40,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 25,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 7,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 40,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 127,
	port_b_logical_ram_depth => 128,
	port_b_logical_ram_width => 25,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \GFX|FB|comb~0_combout\,
	portbre => VCC,
	portbaddrstall => \GFX|FB|ALT_INV_comb~1_combout\,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	ena0 => \GFX|FB|comb~0_combout\,
	portadatain => \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ram_block11a0_PORTADATAIN_bus\,
	portaaddr => \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ram_block11a0_PORTAADDR_bus\,
	portbaddr => \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ram_block11a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\);

-- Location: FF_X28_Y80_N22
\GFX|FB|Data_FIFO|auto_generated|delayed_wrptr_g[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|wrptr_g\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|delayed_wrptr_g\(4));

-- Location: FF_X29_Y80_N22
\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe13a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|delayed_wrptr_g\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe13a\(4));

-- Location: FF_X27_Y80_N44
\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe13a\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(4));

-- Location: LABCELL_X27_Y80_N3
\GFX|FB|Data_FIFO|auto_generated|rdptr_g[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|rdptr_g[7]~feeder_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a7~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a7~q\,
	combout => \GFX|FB|Data_FIFO|auto_generated|rdptr_g[7]~feeder_combout\);

-- Location: FF_X27_Y80_N5
\GFX|FB|Data_FIFO|auto_generated|rdptr_g[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|rdptr_g[7]~feeder_combout\,
	ena => \GFX|FB|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|rdptr_g\(7));

-- Location: FF_X28_Y80_N17
\GFX|FB|Data_FIFO|auto_generated|wrptr_g[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a7~q\,
	sload => VCC,
	ena => \GFX|FB|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|wrptr_g\(7));

-- Location: FF_X28_Y80_N41
\GFX|FB|Data_FIFO|auto_generated|delayed_wrptr_g[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|wrptr_g\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|delayed_wrptr_g\(7));

-- Location: MLABCELL_X28_Y80_N27
\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe13a[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe13a[7]~feeder_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|delayed_wrptr_g\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_delayed_wrptr_g\(7),
	combout => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe13a[7]~feeder_combout\);

-- Location: FF_X28_Y80_N29
\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe13a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe13a[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe13a\(7));

-- Location: FF_X27_Y80_N8
\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe13a\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(7));

-- Location: FF_X28_Y80_N52
\GFX|FB|Data_FIFO|auto_generated|delayed_wrptr_g[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|wrptr_g\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|delayed_wrptr_g\(6));

-- Location: FF_X28_Y80_N26
\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe13a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|delayed_wrptr_g\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe13a\(6));

-- Location: MLABCELL_X28_Y80_N24
\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a[6]~feeder_combout\ = \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe13a\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|ALT_INV_dffe13a\(6),
	combout => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a[6]~feeder_combout\);

-- Location: FF_X28_Y80_N25
\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(6));

-- Location: LABCELL_X27_Y80_N6
\GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_msb_mux|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_msb_mux|l1_w0_n0_mux_dataout~0_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(7) & ( \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(6) & ( 
-- (\GFX|FB|Data_FIFO|auto_generated|rdptr_g\(7) & (\GFX|FB|Data_FIFO|auto_generated|rdptr_g\(6) & (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g\(4) $ (\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(4))))) ) ) ) # ( 
-- !\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(7) & ( \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(6) & ( (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g\(7) & (\GFX|FB|Data_FIFO|auto_generated|rdptr_g\(6) & 
-- (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g\(4) $ (\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(4))))) ) ) ) # ( \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(7) & ( 
-- !\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(6) & ( (\GFX|FB|Data_FIFO|auto_generated|rdptr_g\(7) & (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g\(6) & (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g\(4) $ 
-- (\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(4))))) ) ) ) # ( !\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(7) & ( !\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(6) & ( 
-- (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g\(7) & (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g\(6) & (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g\(4) $ (\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000010010000000000000000100100000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_rdptr_g\(4),
	datab => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|ALT_INV_dffe14a\(4),
	datac => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_rdptr_g\(7),
	datad => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_rdptr_g\(6),
	datae => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|ALT_INV_dffe14a\(7),
	dataf => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|ALT_INV_dffe14a\(6),
	combout => \GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_msb_mux|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X27_Y80_N42
\GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_msb_mux|l1_w0_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_msb_mux|l1_w0_n0_mux_dataout~1_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(4) & ( \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(6) & ( 
-- (\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a6~q\ & (\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a4~q\ & (!\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(7) $ (\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a7~q\)))) ) ) ) 
-- # ( !\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(4) & ( \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(6) & ( (\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a6~q\ & 
-- (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a4~q\ & (!\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(7) $ (\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a7~q\)))) ) ) ) # ( 
-- \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(4) & ( !\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(6) & ( (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a6~q\ & (\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a4~q\ & 
-- (!\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(7) $ (\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a7~q\)))) ) ) ) # ( !\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(4) & ( 
-- !\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(6) & ( (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a6~q\ & (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a4~q\ & (!\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(7) 
-- $ (\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a7~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000000010000000001001000000000100000000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a6~q\,
	datab => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|ALT_INV_dffe14a\(7),
	datac => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a4~q\,
	datad => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a7~q\,
	datae => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|ALT_INV_dffe14a\(4),
	dataf => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|ALT_INV_dffe14a\(6),
	combout => \GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_msb_mux|l1_w0_n0_mux_dataout~1_combout\);

-- Location: FF_X28_Y80_N14
\GFX|FB|Data_FIFO|auto_generated|wrptr_g[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|wrptr_g1p|counter8a5~q\,
	sload => VCC,
	ena => \GFX|FB|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|wrptr_g\(5));

-- Location: FF_X28_Y80_N46
\GFX|FB|Data_FIFO|auto_generated|delayed_wrptr_g[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|wrptr_g\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|delayed_wrptr_g\(5));

-- Location: FF_X31_Y80_N11
\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe13a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|delayed_wrptr_g\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe13a\(5));

-- Location: FF_X30_Y80_N16
\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe13a\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(5));

-- Location: LABCELL_X29_Y80_N24
\GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_msb_mux|l1_w0_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_msb_mux|l1_w0_n0_mux_dataout~2_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|rdptr_g\(5) & ( \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(5) & ( (!\GFX|FB|comb~1_combout\ & 
-- (!\GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_msb_mux|l1_w0_n0_mux_dataout~0_combout\)) # (\GFX|FB|comb~1_combout\ & (((!\GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_msb_mux|l1_w0_n0_mux_dataout~1_combout\) # 
-- (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a5~DUPLICATE_q\)))) ) ) ) # ( !\GFX|FB|Data_FIFO|auto_generated|rdptr_g\(5) & ( \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(5) & ( (!\GFX|FB|comb~1_combout\) # 
-- ((!\GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_msb_mux|l1_w0_n0_mux_dataout~1_combout\) # (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a5~DUPLICATE_q\)) ) ) ) # ( \GFX|FB|Data_FIFO|auto_generated|rdptr_g\(5) & ( 
-- !\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(5) & ( (!\GFX|FB|comb~1_combout\) # ((!\GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_msb_mux|l1_w0_n0_mux_dataout~1_combout\) # 
-- (\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a5~DUPLICATE_q\)) ) ) ) # ( !\GFX|FB|Data_FIFO|auto_generated|rdptr_g\(5) & ( !\GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|dffe14a\(5) & ( (!\GFX|FB|comb~1_combout\ & 
-- (!\GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_msb_mux|l1_w0_n0_mux_dataout~0_combout\)) # (\GFX|FB|comb~1_combout\ & (((!\GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_msb_mux|l1_w0_n0_mux_dataout~1_combout\) # 
-- (\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a5~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011100010111011111111001111111111111111111111001011101110111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_msb_mux|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datab => \GFX|FB|ALT_INV_comb~1_combout\,
	datac => \GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_msb_mux|ALT_INV_l1_w0_n0_mux_dataout~1_combout\,
	datad => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a5~DUPLICATE_q\,
	datae => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_rdptr_g\(5),
	dataf => \GFX|FB|Data_FIFO|auto_generated|rs_dgwp|dffpipe12|ALT_INV_dffe14a\(5),
	combout => \GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_msb_mux|l1_w0_n0_mux_dataout~2_combout\);

-- Location: FF_X29_Y80_N26
\GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_msb_aeb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_msb_mux|l1_w0_n0_mux_dataout~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_msb_aeb~q\);

-- Location: LABCELL_X29_Y80_N3
\GFX|FB|Data_FIFO|auto_generated|int_rdempty\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|int_rdempty~combout\ = ( !\GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_lsb_aeb~q\ & ( !\GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_msb_aeb~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_rdemp_eq_comp_msb_aeb~q\,
	dataf => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_rdemp_eq_comp_lsb_aeb~q\,
	combout => \GFX|FB|Data_FIFO|auto_generated|int_rdempty~combout\);

-- Location: LABCELL_X29_Y80_N54
\GFX|FB|VGA|always2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|always2~0_combout\ = ( \GFX|FB|VGA|Equal2~1_combout\ & ( \GFX|FB|VGA|pixel_counter\(6) & ( (\GFX|FB|VGA|pixel_counter\(7) & (\GFX|FB|VGA|Equal1~1_combout\ & (\GFX|FB|VGA|Equal5~0_combout\ & \GFX|FB|VGA|Equal1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|VGA|ALT_INV_pixel_counter\(7),
	datab => \GFX|FB|VGA|ALT_INV_Equal1~1_combout\,
	datac => \GFX|FB|VGA|ALT_INV_Equal5~0_combout\,
	datad => \GFX|FB|VGA|ALT_INV_Equal1~0_combout\,
	datae => \GFX|FB|VGA|ALT_INV_Equal2~1_combout\,
	dataf => \GFX|FB|VGA|ALT_INV_pixel_counter\(6),
	combout => \GFX|FB|VGA|always2~0_combout\);

-- Location: FF_X29_Y80_N56
\GFX|FB|VGA|end_of_active_frame\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|end_of_active_frame~q\);

-- Location: LABCELL_X31_Y80_N27
\GFX|FB|VGA|always4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|always4~0_combout\ = ( \GFX|FB|VGA|Equal2~0_combout\ & ( (\GFX|FB|VGA|Equal3~0_combout\ & (\GFX|FB|VGA|Equal3~1_combout\ & (\GFX|FB|VGA|Equal4~0_combout\ & !\GFX|FB|VGA|line_counter\(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|VGA|ALT_INV_Equal3~0_combout\,
	datab => \GFX|FB|VGA|ALT_INV_Equal3~1_combout\,
	datac => \GFX|FB|VGA|ALT_INV_Equal4~0_combout\,
	datad => \GFX|FB|VGA|ALT_INV_line_counter\(9),
	dataf => \GFX|FB|VGA|ALT_INV_Equal2~0_combout\,
	combout => \GFX|FB|VGA|always4~0_combout\);

-- Location: FF_X31_Y80_N28
\GFX|FB|VGA|end_of_frame\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|end_of_frame~q\);

-- Location: LABCELL_X29_Y80_N30
\GFX|FB|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|WideOr0~0_combout\ = ( \GFX|FB|state\(1) & ( \GFX|FB|state\(0) & ( (!\GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(24) & !\GFX|FB|VGA|end_of_active_frame~q\) ) ) ) # ( !\GFX|FB|state\(1) & ( \GFX|FB|state\(0) & ( 
-- (!\GFX|FB|Data_FIFO|auto_generated|int_rdempty~combout\ & (\GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(24) & (!\GFX|FB|VGA|end_of_active_frame~q\ & \GFX|FB|VGA|end_of_frame~q\))) ) ) ) # ( \GFX|FB|state\(1) & ( !\GFX|FB|state\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000001000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_int_rdempty~combout\,
	datab => \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ALT_INV_q_b\(24),
	datac => \GFX|FB|VGA|ALT_INV_end_of_active_frame~q\,
	datad => \GFX|FB|VGA|ALT_INV_end_of_frame~q\,
	datae => \GFX|FB|ALT_INV_state\(1),
	dataf => \GFX|FB|ALT_INV_state\(0),
	combout => \GFX|FB|WideOr0~0_combout\);

-- Location: FF_X29_Y80_N31
\GFX|FB|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|state\(1));

-- Location: LABCELL_X29_Y80_N6
\GFX|FB|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|WideOr1~0_combout\ = ( \GFX|FB|state\(0) & ( \GFX|FB|state\(1) & ( (!\GFX|FB|Data_FIFO|auto_generated|int_rdempty~combout\) # ((!\GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(24)) # (\GFX|FB|VGA|end_of_active_frame~q\)) ) ) ) # ( 
-- !\GFX|FB|state\(0) & ( \GFX|FB|state\(1) ) ) # ( \GFX|FB|state\(0) & ( !\GFX|FB|state\(1) & ( (!\GFX|FB|Data_FIFO|auto_generated|int_rdempty~combout\ & (\GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(24) & !\GFX|FB|VGA|end_of_frame~q\)) ) ) ) # ( 
-- !\GFX|FB|state\(0) & ( !\GFX|FB|state\(1) & ( (!\GFX|FB|Data_FIFO|auto_generated|int_rdempty~combout\ & \GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(24)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100000000011111111111111111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_int_rdempty~combout\,
	datab => \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ALT_INV_q_b\(24),
	datac => \GFX|FB|VGA|ALT_INV_end_of_active_frame~q\,
	datad => \GFX|FB|VGA|ALT_INV_end_of_frame~q\,
	datae => \GFX|FB|ALT_INV_state\(0),
	dataf => \GFX|FB|ALT_INV_state\(1),
	combout => \GFX|FB|WideOr1~0_combout\);

-- Location: FF_X29_Y80_N7
\GFX|FB|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|state\(0));

-- Location: LABCELL_X29_Y80_N42
\GFX|FB|comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|comb~1_combout\ = ( !\GFX|FB|VGA|blanking_pulse~q\ & ( \GFX|FB|state\(1) & ( (\GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_msb_aeb~q\) # (\GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_lsb_aeb~q\) ) ) ) # ( \GFX|FB|VGA|blanking_pulse~q\ & ( 
-- !\GFX|FB|state\(1) & ( (!\GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(24) & (!\GFX|FB|state\(0) & ((\GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_msb_aeb~q\) # (\GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_lsb_aeb~q\)))) ) ) ) # ( 
-- !\GFX|FB|VGA|blanking_pulse~q\ & ( !\GFX|FB|state\(1) & ( (!\GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(24) & (!\GFX|FB|state\(0) & ((\GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_msb_aeb~q\) # 
-- (\GFX|FB|Data_FIFO|auto_generated|rdemp_eq_comp_lsb_aeb~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110000000000010011000000000001011111010111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_rdemp_eq_comp_lsb_aeb~q\,
	datab => \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ALT_INV_q_b\(24),
	datac => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_rdemp_eq_comp_msb_aeb~q\,
	datad => \GFX|FB|ALT_INV_state\(0),
	datae => \GFX|FB|VGA|ALT_INV_blanking_pulse~q\,
	dataf => \GFX|FB|ALT_INV_state\(1),
	combout => \GFX|FB|comb~1_combout\);

-- Location: LABCELL_X27_Y78_N3
\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a1~0_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a1~q\ & ( \GFX|FB|comb~1_combout\ & ( (\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|parity6~q\) # 
-- (\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a0~q\) ) ) ) # ( !\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a1~q\ & ( \GFX|FB|comb~1_combout\ & ( (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a0~q\ & 
-- !\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|parity6~q\) ) ) ) # ( \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a1~q\ & ( !\GFX|FB|comb~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111110100000101000000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a0~q\,
	datac => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_parity6~q\,
	datae => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a1~q\,
	dataf => \GFX|FB|ALT_INV_comb~1_combout\,
	combout => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a1~0_combout\);

-- Location: FF_X27_Y78_N5
\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a1~q\);

-- Location: LABCELL_X27_Y78_N12
\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a3~0_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a3~q\ & ( \GFX|FB|comb~1_combout\ & ( (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a0~q\) # 
-- (((!\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a2~q\) # (\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a1~q\)) # (\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|parity6~q\)) ) ) ) # ( !\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a3~q\ & ( 
-- \GFX|FB|comb~1_combout\ & ( (\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a0~q\ & (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|parity6~q\ & (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a1~q\ & 
-- \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a2~q\))) ) ) ) # ( \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a3~q\ & ( !\GFX|FB|comb~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000010000001111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a0~q\,
	datab => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_parity6~q\,
	datac => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a1~q\,
	datad => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a2~q\,
	datae => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a3~q\,
	dataf => \GFX|FB|ALT_INV_comb~1_combout\,
	combout => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a3~0_combout\);

-- Location: FF_X27_Y78_N13
\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a3~q\);

-- Location: LABCELL_X27_Y80_N12
\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a7~0_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a5~q\ & ( \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a7~q\ ) ) # ( !\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a5~q\ & 
-- ( !\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a7~q\ $ ((((!\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|_~2_combout\) # (\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a4~q\)) # (\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a3~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011011111001000001101111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a3~q\,
	datab => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV__~2_combout\,
	datac => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a4~q\,
	datad => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a7~q\,
	dataf => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a5~q\,
	combout => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a7~0_combout\);

-- Location: FF_X27_Y80_N13
\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a7~q\);

-- Location: LABCELL_X27_Y80_N18
\GFX|FB|Data_FIFO|auto_generated|ram_address_b[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|ram_address_b\(6) = ( \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a7~q\ & ( !\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a6~q\ ) ) # ( !\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a7~q\ & ( 
-- \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a6~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a6~q\,
	dataf => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a7~q\,
	combout => \GFX|FB|Data_FIFO|auto_generated|ram_address_b\(6));

-- Location: FF_X27_Y80_N20
\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|sub_parity7a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|ram_address_b\(6),
	ena => \GFX|FB|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|sub_parity7a\(1));

-- Location: LABCELL_X27_Y80_N24
\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|_~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|_~4_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a2~q\ & ( \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a0~q\ & ( !\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a4~q\ $ 
-- (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a3~q\ $ (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a1~DUPLICATE_q\ $ (\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a5~q\))) ) ) ) # ( 
-- !\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a2~q\ & ( \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a0~q\ & ( !\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a4~q\ $ (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a3~q\ $ 
-- (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a1~DUPLICATE_q\ $ (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a5~q\))) ) ) ) # ( \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a2~q\ & ( 
-- !\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a0~q\ & ( !\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a4~q\ $ (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a3~q\ $ (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a1~DUPLICATE_q\ $ 
-- (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a5~q\))) ) ) ) # ( !\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a2~q\ & ( !\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a0~q\ & ( !\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a4~q\ $ 
-- (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a3~q\ $ (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a1~DUPLICATE_q\ $ (\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a5~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011001101001011010011001011001101001100101101001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a4~q\,
	datab => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a3~q\,
	datac => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a1~DUPLICATE_q\,
	datad => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a5~q\,
	datae => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a2~q\,
	dataf => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a0~q\,
	combout => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|_~4_combout\);

-- Location: FF_X27_Y80_N25
\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|sub_parity7a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|_~4_combout\,
	ena => \GFX|FB|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|sub_parity7a\(0));

-- Location: LABCELL_X27_Y80_N21
\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|_~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|_~3_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|sub_parity7a\(0) & ( \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|sub_parity7a\(1) ) ) # ( !\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|sub_parity7a\(0) & 
-- ( !\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|sub_parity7a\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_sub_parity7a\(1),
	dataf => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_sub_parity7a\(0),
	combout => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|_~3_combout\);

-- Location: FF_X27_Y80_N22
\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|parity6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|_~3_combout\,
	ena => \GFX|FB|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|parity6~q\);

-- Location: LABCELL_X27_Y80_N33
\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|_~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|_~0_combout\ = ( !\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a0~q\ & ( \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|parity6~q\ ) ) # ( \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a0~q\ & ( 
-- !\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|parity6~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a0~q\,
	dataf => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_parity6~q\,
	combout => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|_~0_combout\);

-- Location: FF_X27_Y80_N34
\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|_~0_combout\,
	ena => \GFX|FB|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a0~q\);

-- Location: LABCELL_X29_Y80_N48
\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|_~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|_~1_combout\ = ( !\GFX|FB|VGA|blanking_pulse~q\ & ( \GFX|FB|state\(1) & ( (!\GFX|FB|Data_FIFO|auto_generated|int_rdempty~combout\ & !\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|parity6~q\) ) ) ) # ( 
-- \GFX|FB|VGA|blanking_pulse~q\ & ( !\GFX|FB|state\(1) & ( (!\GFX|FB|Data_FIFO|auto_generated|int_rdempty~combout\ & (!\GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(24) & (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|parity6~q\ & !\GFX|FB|state\(0)))) ) ) ) 
-- # ( !\GFX|FB|VGA|blanking_pulse~q\ & ( !\GFX|FB|state\(1) & ( (!\GFX|FB|Data_FIFO|auto_generated|int_rdempty~combout\ & (!\GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(24) & (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|parity6~q\ & !\GFX|FB|state\(0)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_int_rdempty~combout\,
	datab => \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ALT_INV_q_b\(24),
	datac => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_parity6~q\,
	datad => \GFX|FB|ALT_INV_state\(0),
	datae => \GFX|FB|VGA|ALT_INV_blanking_pulse~q\,
	dataf => \GFX|FB|ALT_INV_state\(1),
	combout => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|_~1_combout\);

-- Location: LABCELL_X27_Y78_N48
\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a4~0_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a4~q\ & ( \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a3~q\ & ( (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a0~q\) # 
-- ((!\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|_~1_combout\) # ((\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a2~q\) # (\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a1~q\))) ) ) ) # ( !\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a4~q\ & 
-- ( \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a3~q\ & ( (\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a0~q\ & (\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|_~1_combout\ & (!\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a1~q\ & 
-- !\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a2~q\))) ) ) ) # ( \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a4~q\ & ( !\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100010000000000001110111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a0~q\,
	datab => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV__~1_combout\,
	datac => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a1~q\,
	datad => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a2~q\,
	datae => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a4~q\,
	dataf => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a3~q\,
	combout => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a4~0_combout\);

-- Location: FF_X27_Y78_N49
\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a4~q\);

-- Location: LABCELL_X27_Y80_N36
\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a6~0_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a5~q\ & ( !\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a6~q\ $ ((((!\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|_~2_combout\) # 
-- (\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a3~q\)) # (\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a4~q\))) ) ) # ( !\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a5~q\ & ( \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a6~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100100000110111110010000011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a4~q\,
	datab => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV__~2_combout\,
	datac => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a3~q\,
	datad => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a6~q\,
	dataf => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|ALT_INV_counter5a5~q\,
	combout => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a6~0_combout\);

-- Location: FF_X27_Y80_N38
\GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a6~q\);

-- Location: FF_X27_Y80_N32
\GFX|FB|Data_FIFO|auto_generated|rdptr_g[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|rdptr_g1p|counter5a6~q\,
	sload => VCC,
	ena => \GFX|FB|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|rdptr_g\(6));

-- Location: LABCELL_X27_Y80_N54
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[6]~feeder_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|rdptr_g\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_rdptr_g\(6),
	combout => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[6]~feeder_combout\);

-- Location: FF_X27_Y80_N56
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a\(6));

-- Location: FF_X27_Y80_N58
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe18a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe18a\(6));

-- Location: LABCELL_X29_Y79_N15
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg[6]~feeder_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe18a\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|ALT_INV_dffe18a\(6),
	combout => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg[6]~feeder_combout\);

-- Location: FF_X29_Y79_N17
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg\(6));

-- Location: LABCELL_X27_Y80_N51
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[7]~feeder_combout\ = \GFX|FB|Data_FIFO|auto_generated|rdptr_g\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_rdptr_g\(7),
	combout => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[7]~feeder_combout\);

-- Location: FF_X27_Y80_N53
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a\(7));

-- Location: FF_X27_Y80_N49
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe18a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe17a\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe18a\(7));

-- Location: FF_X27_Y80_N55
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp|dffpipe16|dffe18a\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg\(7));

-- Location: LABCELL_X29_Y79_N57
\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor6\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor6~combout\ = !\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg\(6) $ (!\GFX|FB|Data_FIFO|auto_generated|ws_dgrp_reg\(7))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_ws_dgrp_reg\(6),
	datad => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_ws_dgrp_reg\(7),
	combout => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor6~combout\);

-- Location: FF_X29_Y79_N13
\GFX|FB|Data_FIFO|auto_generated|ws_brp|dffe15a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|ws_dgrp_gray2bin|xor6~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|ws_brp|dffe15a\(6));

-- Location: FF_X28_Y80_N50
\GFX|FB|Data_FIFO|auto_generated|ws_bwp|dffe15a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|ram_address_a\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|Data_FIFO|auto_generated|ws_bwp|dffe15a\(6));

-- Location: MLABCELL_X28_Y79_N18
\GFX|FB|Data_FIFO|auto_generated|op_1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|Data_FIFO|auto_generated|op_1~9_sumout\ = SUM(( !\GFX|FB|Data_FIFO|auto_generated|ws_brp|dffe15a\(6) $ (\GFX|FB|Data_FIFO|auto_generated|ws_bwp|dffe15a\(6)) ) + ( \GFX|FB|Data_FIFO|auto_generated|op_1~7\ ) + ( 
-- \GFX|FB|Data_FIFO|auto_generated|op_1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|ws_brp|ALT_INV_dffe15a\(6),
	datac => \GFX|FB|Data_FIFO|auto_generated|ws_bwp|ALT_INV_dffe15a\(6),
	cin => \GFX|FB|Data_FIFO|auto_generated|op_1~6\,
	sharein => \GFX|FB|Data_FIFO|auto_generated|op_1~7\,
	sumout => \GFX|FB|Data_FIFO|auto_generated|op_1~9_sumout\);

-- Location: MLABCELL_X28_Y79_N24
\GFX|FB|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|comb~0_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|op_1~5_sumout\ & ( (\GFX|SHADER|S_CTRL2|out\(0) & ((!\GFX|FB|Data_FIFO|auto_generated|op_1~9_sumout\) # (!\GFX|FB|Data_FIFO|auto_generated|op_1~1_sumout\))) ) ) # ( 
-- !\GFX|FB|Data_FIFO|auto_generated|op_1~5_sumout\ & ( \GFX|SHADER|S_CTRL2|out\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001110000011100000111000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_op_1~9_sumout\,
	datab => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_op_1~1_sumout\,
	datac => \GFX|SHADER|S_CTRL2|ALT_INV_out\(0),
	dataf => \GFX|FB|Data_FIFO|auto_generated|ALT_INV_op_1~5_sumout\,
	combout => \GFX|FB|comb~0_combout\);

-- Location: MLABCELL_X25_Y80_N0
\GFX|FB|VGA|vga_red[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|vga_red[2]~feeder_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(16) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ALT_INV_q_b\(16),
	combout => \GFX|FB|VGA|vga_red[2]~feeder_combout\);

-- Location: FF_X25_Y80_N1
\GFX|FB|VGA|vga_red[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|ALT_INV_outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|vga_red[2]~feeder_combout\,
	sclr => \GFX|FB|VGA|blanking_pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|vga_red\(2));

-- Location: FF_X25_Y80_N7
\GFX|FB|VGA|vga_red[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|ALT_INV_outclk_wire[0]~CLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(17),
	sclr => \GFX|FB|VGA|blanking_pulse~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|vga_red\(3));

-- Location: FF_X25_Y80_N13
\GFX|FB|VGA|vga_red[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|ALT_INV_outclk_wire[0]~CLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(18),
	sclr => \GFX|FB|VGA|blanking_pulse~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|vga_red\(4));

-- Location: MLABCELL_X25_Y80_N15
\GFX|FB|VGA|vga_red[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|vga_red[5]~feeder_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(19) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ALT_INV_q_b\(19),
	combout => \GFX|FB|VGA|vga_red[5]~feeder_combout\);

-- Location: FF_X25_Y80_N16
\GFX|FB|VGA|vga_red[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|ALT_INV_outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|vga_red[5]~feeder_combout\,
	sclr => \GFX|FB|VGA|blanking_pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|vga_red\(5));

-- Location: MLABCELL_X25_Y80_N48
\GFX|FB|VGA|vga_red[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|vga_red[6]~feeder_combout\ = \GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(20)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ALT_INV_q_b\(20),
	combout => \GFX|FB|VGA|vga_red[6]~feeder_combout\);

-- Location: FF_X25_Y80_N49
\GFX|FB|VGA|vga_red[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|ALT_INV_outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|vga_red[6]~feeder_combout\,
	sclr => \GFX|FB|VGA|blanking_pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|vga_red\(6));

-- Location: MLABCELL_X25_Y80_N24
\GFX|FB|VGA|vga_red[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|vga_red[7]~feeder_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(21) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ALT_INV_q_b\(21),
	combout => \GFX|FB|VGA|vga_red[7]~feeder_combout\);

-- Location: FF_X25_Y80_N26
\GFX|FB|VGA|vga_red[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|ALT_INV_outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|vga_red[7]~feeder_combout\,
	sclr => \GFX|FB|VGA|blanking_pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|vga_red\(7));

-- Location: FF_X25_Y80_N17
\GFX|FB|VGA|vga_red[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|ALT_INV_outclk_wire[0]~CLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(22),
	sclr => \GFX|FB|VGA|blanking_pulse~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|vga_red\(8));

-- Location: MLABCELL_X25_Y80_N33
\GFX|FB|VGA|vga_red[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|vga_red[9]~feeder_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(23) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ALT_INV_q_b\(23),
	combout => \GFX|FB|VGA|vga_red[9]~feeder_combout\);

-- Location: FF_X25_Y80_N34
\GFX|FB|VGA|vga_red[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|ALT_INV_outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|vga_red[9]~feeder_combout\,
	sclr => \GFX|FB|VGA|blanking_pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|vga_red\(9));

-- Location: FF_X25_Y80_N32
\GFX|FB|VGA|vga_green[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|ALT_INV_outclk_wire[0]~CLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(8),
	sclr => \GFX|FB|VGA|blanking_pulse~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|vga_green\(2));

-- Location: FF_X25_Y80_N50
\GFX|FB|VGA|vga_green[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|ALT_INV_outclk_wire[0]~CLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(9),
	sclr => \GFX|FB|VGA|blanking_pulse~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|vga_green\(3));

-- Location: MLABCELL_X25_Y80_N51
\GFX|FB|VGA|vga_green[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|vga_green[4]~feeder_combout\ = \GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(10)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ALT_INV_q_b\(10),
	combout => \GFX|FB|VGA|vga_green[4]~feeder_combout\);

-- Location: FF_X25_Y80_N52
\GFX|FB|VGA|vga_green[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|ALT_INV_outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|vga_green[4]~feeder_combout\,
	sclr => \GFX|FB|VGA|blanking_pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|vga_green\(4));

-- Location: MLABCELL_X25_Y80_N36
\GFX|FB|VGA|vga_green[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|vga_green[5]~feeder_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ALT_INV_q_b\(11),
	combout => \GFX|FB|VGA|vga_green[5]~feeder_combout\);

-- Location: FF_X25_Y80_N38
\GFX|FB|VGA|vga_green[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|ALT_INV_outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|vga_green[5]~feeder_combout\,
	sclr => \GFX|FB|VGA|blanking_pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|vga_green\(5));

-- Location: FF_X25_Y80_N40
\GFX|FB|VGA|vga_green[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|ALT_INV_outclk_wire[0]~CLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(12),
	sclr => \GFX|FB|VGA|blanking_pulse~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|vga_green\(6));

-- Location: MLABCELL_X25_Y80_N42
\GFX|FB|VGA|vga_green[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|vga_green[7]~feeder_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ALT_INV_q_b\(13),
	combout => \GFX|FB|VGA|vga_green[7]~feeder_combout\);

-- Location: FF_X25_Y80_N44
\GFX|FB|VGA|vga_green[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|ALT_INV_outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|vga_green[7]~feeder_combout\,
	sclr => \GFX|FB|VGA|blanking_pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|vga_green\(7));

-- Location: FF_X25_Y80_N46
\GFX|FB|VGA|vga_green[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|ALT_INV_outclk_wire[0]~CLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(14),
	sclr => \GFX|FB|VGA|blanking_pulse~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|vga_green\(8));

-- Location: FF_X25_Y80_N19
\GFX|FB|VGA|vga_green[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|ALT_INV_outclk_wire[0]~CLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(15),
	sclr => \GFX|FB|VGA|blanking_pulse~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|vga_green\(9));

-- Location: FF_X25_Y80_N4
\GFX|FB|VGA|vga_blue[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|ALT_INV_outclk_wire[0]~CLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(0),
	sclr => \GFX|FB|VGA|blanking_pulse~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|vga_blue\(2));

-- Location: MLABCELL_X25_Y80_N54
\GFX|FB|VGA|vga_blue[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|vga_blue[3]~feeder_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ALT_INV_q_b\(1),
	combout => \GFX|FB|VGA|vga_blue[3]~feeder_combout\);

-- Location: FF_X25_Y80_N55
\GFX|FB|VGA|vga_blue[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|ALT_INV_outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|vga_blue[3]~feeder_combout\,
	sclr => \GFX|FB|VGA|blanking_pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|vga_blue\(3));

-- Location: FF_X25_Y80_N22
\GFX|FB|VGA|vga_blue[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|ALT_INV_outclk_wire[0]~CLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(2),
	sclr => \GFX|FB|VGA|blanking_pulse~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|vga_blue\(4));

-- Location: FF_X25_Y80_N37
\GFX|FB|VGA|vga_blue[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|ALT_INV_outclk_wire[0]~CLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(3),
	sclr => \GFX|FB|VGA|blanking_pulse~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|vga_blue\(5));

-- Location: MLABCELL_X25_Y80_N57
\GFX|FB|VGA|vga_blue[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|vga_blue[6]~feeder_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ALT_INV_q_b\(4),
	combout => \GFX|FB|VGA|vga_blue[6]~feeder_combout\);

-- Location: FF_X25_Y80_N59
\GFX|FB|VGA|vga_blue[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|ALT_INV_outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|vga_blue[6]~feeder_combout\,
	sclr => \GFX|FB|VGA|blanking_pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|vga_blue\(6));

-- Location: FF_X25_Y80_N53
\GFX|FB|VGA|vga_blue[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|ALT_INV_outclk_wire[0]~CLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(5),
	sclr => \GFX|FB|VGA|blanking_pulse~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|vga_blue\(7));

-- Location: MLABCELL_X25_Y80_N39
\GFX|FB|VGA|vga_blue[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \GFX|FB|VGA|vga_blue[8]~feeder_combout\ = ( \GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \GFX|FB|Data_FIFO|auto_generated|fifo_ram|ALT_INV_q_b\(6),
	combout => \GFX|FB|VGA|vga_blue[8]~feeder_combout\);

-- Location: FF_X25_Y80_N41
\GFX|FB|VGA|vga_blue[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|ALT_INV_outclk_wire[0]~CLKENA0_outclk\,
	d => \GFX|FB|VGA|vga_blue[8]~feeder_combout\,
	sclr => \GFX|FB|VGA|blanking_pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|vga_blue\(8));

-- Location: FF_X25_Y80_N29
\GFX|FB|VGA|vga_blue[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GFX|FB|altera_pll_i|ALT_INV_outclk_wire[0]~CLKENA0_outclk\,
	asdata => \GFX|FB|Data_FIFO|auto_generated|fifo_ram|q_b\(7),
	sclr => \GFX|FB|VGA|blanking_pulse~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GFX|FB|VGA|vga_blue\(9));

-- Location: IOIBUF_X36_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);


pll_reconfig_inst_tasks : altera_pll_reconfig_tasks
-- pragma translate_off
GENERIC MAP (
      number_of_fplls => 1);
-- pragma translate_on
END structure;


