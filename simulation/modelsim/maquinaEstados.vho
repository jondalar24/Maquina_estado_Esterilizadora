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

-- DATE "12/04/2022 19:23:01"

-- 
-- Device: Altera 5M160ZM68C4 Package MBGA68
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	maquinaEstados IS
    PORT (
	temp_p : IN std_logic;
	temp_h : IN std_logic;
	start : IN std_logic;
	clk : IN std_logic;
	reset : IN std_logic;
	tics_p : IN std_logic_vector(15 DOWNTO 0);
	test : BUFFER std_logic;
	sterilized : BUFFER std_logic;
	valid : BUFFER std_logic;
	alarm : BUFFER std_logic
	);
END maquinaEstados;

-- Design Ports Information
-- test	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- sterilized	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- valid	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- alarm	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- temp_p	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tics_p[0]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tics_p[1]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tics_p[2]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tics_p[3]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tics_p[4]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tics_p[5]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tics_p[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tics_p[7]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tics_p[10]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tics_p[11]	=>  Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tics_p[9]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tics_p[8]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tics_p[12]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tics_p[13]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tics_p[14]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tics_p[15]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- start	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- temp_h	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF maquinaEstados IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_temp_p : std_logic;
SIGNAL ww_temp_h : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_tics_p : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_test : std_logic;
SIGNAL ww_sterilized : std_logic;
SIGNAL ww_valid : std_logic;
SIGNAL ww_alarm : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \temp_p~combout\ : std_logic;
SIGNAL \start~combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \state.w_bs~regout\ : std_logic;
SIGNAL \temp_h~combout\ : std_logic;
SIGNAL \contador_ticsp|count_int[0]~3\ : std_logic;
SIGNAL \contador_ticsp|count_int[0]~3COUT1_46\ : std_logic;
SIGNAL \contador_ticsp|count_int[1]~1\ : std_logic;
SIGNAL \contador_ticsp|count_int[1]~1COUT1_48\ : std_logic;
SIGNAL \contador_ticsp|count_int[2]~7\ : std_logic;
SIGNAL \contador_ticsp|count_int[3]~5\ : std_logic;
SIGNAL \contador_ticsp|count_int[3]~5COUT1_50\ : std_logic;
SIGNAL \contador_ticsp|count_int[4]~11\ : std_logic;
SIGNAL \contador_ticsp|count_int[4]~11COUT1_52\ : std_logic;
SIGNAL \contador_ticsp|count_int[5]~9\ : std_logic;
SIGNAL \contador_ticsp|count_int[5]~9COUT1_54\ : std_logic;
SIGNAL \contador_ticsp|count_int[6]~15\ : std_logic;
SIGNAL \contador_ticsp|count_int[6]~15COUT1_56\ : std_logic;
SIGNAL \contador_ticsp|count_int[7]~13\ : std_logic;
SIGNAL \contador_ticsp|count_int[8]~23\ : std_logic;
SIGNAL \contador_ticsp|count_int[8]~23COUT1_58\ : std_logic;
SIGNAL \contador_ticsp|count_int[9]~21\ : std_logic;
SIGNAL \contador_ticsp|count_int[9]~21COUT1_60\ : std_logic;
SIGNAL \contador_ticsp|count_int[10]~19\ : std_logic;
SIGNAL \contador_ticsp|count_int[10]~19COUT1_62\ : std_logic;
SIGNAL \contador_ticsp|count_int[11]~17\ : std_logic;
SIGNAL \contador_ticsp|count_int[11]~17COUT1_64\ : std_logic;
SIGNAL \contador_ticsp|count_int[12]~27\ : std_logic;
SIGNAL \contador_ticsp|count_int[13]~25\ : std_logic;
SIGNAL \contador_ticsp|count_int[13]~25COUT1_66\ : std_logic;
SIGNAL \contador_ticsp|count_int[14]~31\ : std_logic;
SIGNAL \contador_ticsp|count_int[14]~31COUT1_68\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~10_combout\ : std_logic;
SIGNAL \contador_25ciclos|count_int[0]~5\ : std_logic;
SIGNAL \contador_25ciclos|count_int[0]~5COUT1_16\ : std_logic;
SIGNAL \contador_25ciclos|count_int[1]~7\ : std_logic;
SIGNAL \contador_25ciclos|count_int[1]~7COUT1_18\ : std_logic;
SIGNAL \contador_25ciclos|count_int[2]~9\ : std_logic;
SIGNAL \contador_25ciclos|count_int[2]~9COUT1_20\ : std_logic;
SIGNAL \contador_25ciclos|count_int[3]~3\ : std_logic;
SIGNAL \contador_25ciclos|count_int[3]~3COUT1_22\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \state.w2~regout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \state.alarma~regout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \state.valido~regout\ : std_logic;
SIGNAL \next_state~13_combout\ : std_logic;
SIGNAL \Selector3~8_combout\ : std_logic;
SIGNAL \state.str1~regout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \state.w1~regout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \Selector3~5_combout\ : std_logic;
SIGNAL \Selector7~3_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector7~4_combout\ : std_logic;
SIGNAL \Selector7~5_combout\ : std_logic;
SIGNAL \Selector7~6_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \state.str2~regout\ : std_logic;
SIGNAL \contador_temph|count_int[2]~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \state.starting~regout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Selector3~3_combout\ : std_logic;
SIGNAL \Selector3~4_combout\ : std_logic;
SIGNAL \Selector3~6_combout\ : std_logic;
SIGNAL \Selector3~7_combout\ : std_logic;
SIGNAL \state.stand_by~regout\ : std_logic;
SIGNAL \biestable_2vez|Q~combout\ : std_logic;
SIGNAL \state.sec_vez~regout\ : std_logic;
SIGNAL \Selector7~7_combout\ : std_logic;
SIGNAL \state.str3~regout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \state.w3~regout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \state.testing~regout\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \tics_p~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \contador_temph|count_int\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \contador_25ciclos|count_int\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \contador_ticsp|count_int\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_Selector3~2_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr0~combout\ : std_logic;
SIGNAL \ALT_INV_state.testing~regout\ : std_logic;

BEGIN

ww_temp_p <= temp_p;
ww_temp_h <= temp_h;
ww_start <= start;
ww_clk <= clk;
ww_reset <= reset;
ww_tics_p <= tics_p;
test <= ww_test;
sterilized <= ww_sterilized;
valid <= ww_valid;
alarm <= ww_alarm;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Selector3~2_combout\ <= NOT \Selector3~2_combout\;
\ALT_INV_WideOr0~combout\ <= NOT \WideOr0~combout\;
\ALT_INV_state.testing~regout\ <= NOT \state.testing~regout\;

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\temp_p~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_temp_p,
	combout => \temp_p~combout\);

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\start~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_start,
	combout => \start~combout\);

-- Location: LC_X3_Y4_N0
\Selector7~1\ : maxv_lcell
-- Equation(s):
-- \Selector7~1_combout\ = (\start~combout\ & (((!\state.stand_by~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \start~combout\,
	datad => \state.stand_by~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector7~1_combout\);

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LC_X4_Y4_N2
\state.w_bs\ : maxv_lcell
-- Equation(s):
-- \state.w_bs~regout\ = DFFEAS((!\state.sec_vez~regout\ & ((\Selector3~7_combout\ & (\Selector7~1_combout\)) # (!\Selector3~7_combout\ & ((\state.w_bs~regout\))))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Selector7~1_combout\,
	datab => \state.w_bs~regout\,
	datac => \state.sec_vez~regout\,
	datad => \Selector3~7_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.w_bs~regout\);

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\temp_h~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_temp_h,
	combout => \temp_h~combout\);

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tics_p[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_tics_p(14),
	combout => \tics_p~combout\(14));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tics_p[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_tics_p(15),
	combout => \tics_p~combout\(15));

-- Location: LC_X6_Y3_N2
\contador_ticsp|count_int[0]\ : maxv_lcell
-- Equation(s):
-- \contador_ticsp|count_int\(0) = DFFEAS(((!\contador_ticsp|count_int\(0))), GLOBAL(\clk~combout\), VCC, , , , , !\state.testing~regout\, )
-- \contador_ticsp|count_int[0]~3\ = CARRY(((\contador_ticsp|count_int\(0))))
-- \contador_ticsp|count_int[0]~3COUT1_46\ = CARRY(((\contador_ticsp|count_int\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \contador_ticsp|count_int\(0),
	aclr => GND,
	sclr => \ALT_INV_state.testing~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador_ticsp|count_int\(0),
	cout0 => \contador_ticsp|count_int[0]~3\,
	cout1 => \contador_ticsp|count_int[0]~3COUT1_46\);

-- Location: LC_X6_Y3_N3
\contador_ticsp|count_int[1]\ : maxv_lcell
-- Equation(s):
-- \contador_ticsp|count_int\(1) = DFFEAS(\contador_ticsp|count_int\(1) $ ((((\contador_ticsp|count_int[0]~3\)))), GLOBAL(\clk~combout\), VCC, , , , , !\state.testing~regout\, )
-- \contador_ticsp|count_int[1]~1\ = CARRY(((!\contador_ticsp|count_int[0]~3\)) # (!\contador_ticsp|count_int\(1)))
-- \contador_ticsp|count_int[1]~1COUT1_48\ = CARRY(((!\contador_ticsp|count_int[0]~3COUT1_46\)) # (!\contador_ticsp|count_int\(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \contador_ticsp|count_int\(1),
	aclr => GND,
	sclr => \ALT_INV_state.testing~regout\,
	cin0 => \contador_ticsp|count_int[0]~3\,
	cin1 => \contador_ticsp|count_int[0]~3COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador_ticsp|count_int\(1),
	cout0 => \contador_ticsp|count_int[1]~1\,
	cout1 => \contador_ticsp|count_int[1]~1COUT1_48\);

-- Location: LC_X6_Y3_N4
\contador_ticsp|count_int[2]\ : maxv_lcell
-- Equation(s):
-- \contador_ticsp|count_int\(2) = DFFEAS(\contador_ticsp|count_int\(2) $ ((((!\contador_ticsp|count_int[1]~1\)))), GLOBAL(\clk~combout\), VCC, , , , , !\state.testing~regout\, )
-- \contador_ticsp|count_int[2]~7\ = CARRY((\contador_ticsp|count_int\(2) & ((!\contador_ticsp|count_int[1]~1COUT1_48\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \contador_ticsp|count_int\(2),
	aclr => GND,
	sclr => \ALT_INV_state.testing~regout\,
	cin0 => \contador_ticsp|count_int[1]~1\,
	cin1 => \contador_ticsp|count_int[1]~1COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador_ticsp|count_int\(2),
	cout => \contador_ticsp|count_int[2]~7\);

-- Location: LC_X6_Y3_N5
\contador_ticsp|count_int[3]\ : maxv_lcell
-- Equation(s):
-- \contador_ticsp|count_int\(3) = DFFEAS(\contador_ticsp|count_int\(3) $ ((((\contador_ticsp|count_int[2]~7\)))), GLOBAL(\clk~combout\), VCC, , , , , !\state.testing~regout\, )
-- \contador_ticsp|count_int[3]~5\ = CARRY(((!\contador_ticsp|count_int[2]~7\)) # (!\contador_ticsp|count_int\(3)))
-- \contador_ticsp|count_int[3]~5COUT1_50\ = CARRY(((!\contador_ticsp|count_int[2]~7\)) # (!\contador_ticsp|count_int\(3)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \contador_ticsp|count_int\(3),
	aclr => GND,
	sclr => \ALT_INV_state.testing~regout\,
	cin => \contador_ticsp|count_int[2]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador_ticsp|count_int\(3),
	cout0 => \contador_ticsp|count_int[3]~5\,
	cout1 => \contador_ticsp|count_int[3]~5COUT1_50\);

-- Location: LC_X6_Y3_N6
\contador_ticsp|count_int[4]\ : maxv_lcell
-- Equation(s):
-- \contador_ticsp|count_int\(4) = DFFEAS(\contador_ticsp|count_int\(4) $ ((((!(!\contador_ticsp|count_int[2]~7\ & \contador_ticsp|count_int[3]~5\) # (\contador_ticsp|count_int[2]~7\ & \contador_ticsp|count_int[3]~5COUT1_50\))))), GLOBAL(\clk~combout\), VCC, 
-- , , , , !\state.testing~regout\, )
-- \contador_ticsp|count_int[4]~11\ = CARRY((\contador_ticsp|count_int\(4) & ((!\contador_ticsp|count_int[3]~5\))))
-- \contador_ticsp|count_int[4]~11COUT1_52\ = CARRY((\contador_ticsp|count_int\(4) & ((!\contador_ticsp|count_int[3]~5COUT1_50\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \contador_ticsp|count_int\(4),
	aclr => GND,
	sclr => \ALT_INV_state.testing~regout\,
	cin => \contador_ticsp|count_int[2]~7\,
	cin0 => \contador_ticsp|count_int[3]~5\,
	cin1 => \contador_ticsp|count_int[3]~5COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador_ticsp|count_int\(4),
	cout0 => \contador_ticsp|count_int[4]~11\,
	cout1 => \contador_ticsp|count_int[4]~11COUT1_52\);

-- Location: LC_X6_Y3_N7
\contador_ticsp|count_int[5]\ : maxv_lcell
-- Equation(s):
-- \contador_ticsp|count_int\(5) = DFFEAS((\contador_ticsp|count_int\(5) $ (((!\contador_ticsp|count_int[2]~7\ & \contador_ticsp|count_int[4]~11\) # (\contador_ticsp|count_int[2]~7\ & \contador_ticsp|count_int[4]~11COUT1_52\)))), GLOBAL(\clk~combout\), VCC, 
-- , , , , !\state.testing~regout\, )
-- \contador_ticsp|count_int[5]~9\ = CARRY(((!\contador_ticsp|count_int[4]~11\) # (!\contador_ticsp|count_int\(5))))
-- \contador_ticsp|count_int[5]~9COUT1_54\ = CARRY(((!\contador_ticsp|count_int[4]~11COUT1_52\) # (!\contador_ticsp|count_int\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \contador_ticsp|count_int\(5),
	aclr => GND,
	sclr => \ALT_INV_state.testing~regout\,
	cin => \contador_ticsp|count_int[2]~7\,
	cin0 => \contador_ticsp|count_int[4]~11\,
	cin1 => \contador_ticsp|count_int[4]~11COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador_ticsp|count_int\(5),
	cout0 => \contador_ticsp|count_int[5]~9\,
	cout1 => \contador_ticsp|count_int[5]~9COUT1_54\);

-- Location: LC_X6_Y3_N8
\contador_ticsp|count_int[6]\ : maxv_lcell
-- Equation(s):
-- \contador_ticsp|count_int\(6) = DFFEAS(\contador_ticsp|count_int\(6) $ ((((!(!\contador_ticsp|count_int[2]~7\ & \contador_ticsp|count_int[5]~9\) # (\contador_ticsp|count_int[2]~7\ & \contador_ticsp|count_int[5]~9COUT1_54\))))), GLOBAL(\clk~combout\), VCC, 
-- , , , , !\state.testing~regout\, )
-- \contador_ticsp|count_int[6]~15\ = CARRY((\contador_ticsp|count_int\(6) & ((!\contador_ticsp|count_int[5]~9\))))
-- \contador_ticsp|count_int[6]~15COUT1_56\ = CARRY((\contador_ticsp|count_int\(6) & ((!\contador_ticsp|count_int[5]~9COUT1_54\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \contador_ticsp|count_int\(6),
	aclr => GND,
	sclr => \ALT_INV_state.testing~regout\,
	cin => \contador_ticsp|count_int[2]~7\,
	cin0 => \contador_ticsp|count_int[5]~9\,
	cin1 => \contador_ticsp|count_int[5]~9COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador_ticsp|count_int\(6),
	cout0 => \contador_ticsp|count_int[6]~15\,
	cout1 => \contador_ticsp|count_int[6]~15COUT1_56\);

-- Location: LC_X6_Y3_N9
\contador_ticsp|count_int[7]\ : maxv_lcell
-- Equation(s):
-- \contador_ticsp|count_int\(7) = DFFEAS((\contador_ticsp|count_int\(7) $ (((!\contador_ticsp|count_int[2]~7\ & \contador_ticsp|count_int[6]~15\) # (\contador_ticsp|count_int[2]~7\ & \contador_ticsp|count_int[6]~15COUT1_56\)))), GLOBAL(\clk~combout\), VCC, 
-- , , , , !\state.testing~regout\, )
-- \contador_ticsp|count_int[7]~13\ = CARRY(((!\contador_ticsp|count_int[6]~15COUT1_56\) # (!\contador_ticsp|count_int\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \contador_ticsp|count_int\(7),
	aclr => GND,
	sclr => \ALT_INV_state.testing~regout\,
	cin => \contador_ticsp|count_int[2]~7\,
	cin0 => \contador_ticsp|count_int[6]~15\,
	cin1 => \contador_ticsp|count_int[6]~15COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador_ticsp|count_int\(7),
	cout => \contador_ticsp|count_int[7]~13\);

-- Location: LC_X7_Y3_N0
\contador_ticsp|count_int[8]\ : maxv_lcell
-- Equation(s):
-- \contador_ticsp|count_int\(8) = DFFEAS((\contador_ticsp|count_int\(8) $ ((!\contador_ticsp|count_int[7]~13\))), GLOBAL(\clk~combout\), VCC, , , , , !\state.testing~regout\, )
-- \contador_ticsp|count_int[8]~23\ = CARRY(((\contador_ticsp|count_int\(8) & !\contador_ticsp|count_int[7]~13\)))
-- \contador_ticsp|count_int[8]~23COUT1_58\ = CARRY(((\contador_ticsp|count_int\(8) & !\contador_ticsp|count_int[7]~13\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \contador_ticsp|count_int\(8),
	aclr => GND,
	sclr => \ALT_INV_state.testing~regout\,
	cin => \contador_ticsp|count_int[7]~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador_ticsp|count_int\(8),
	cout0 => \contador_ticsp|count_int[8]~23\,
	cout1 => \contador_ticsp|count_int[8]~23COUT1_58\);

-- Location: LC_X7_Y3_N1
\contador_ticsp|count_int[9]\ : maxv_lcell
-- Equation(s):
-- \contador_ticsp|count_int\(9) = DFFEAS((\contador_ticsp|count_int\(9) $ (((!\contador_ticsp|count_int[7]~13\ & \contador_ticsp|count_int[8]~23\) # (\contador_ticsp|count_int[7]~13\ & \contador_ticsp|count_int[8]~23COUT1_58\)))), GLOBAL(\clk~combout\), 
-- VCC, , , , , !\state.testing~regout\, )
-- \contador_ticsp|count_int[9]~21\ = CARRY(((!\contador_ticsp|count_int[8]~23\) # (!\contador_ticsp|count_int\(9))))
-- \contador_ticsp|count_int[9]~21COUT1_60\ = CARRY(((!\contador_ticsp|count_int[8]~23COUT1_58\) # (!\contador_ticsp|count_int\(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \contador_ticsp|count_int\(9),
	aclr => GND,
	sclr => \ALT_INV_state.testing~regout\,
	cin => \contador_ticsp|count_int[7]~13\,
	cin0 => \contador_ticsp|count_int[8]~23\,
	cin1 => \contador_ticsp|count_int[8]~23COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador_ticsp|count_int\(9),
	cout0 => \contador_ticsp|count_int[9]~21\,
	cout1 => \contador_ticsp|count_int[9]~21COUT1_60\);

-- Location: LC_X7_Y3_N2
\contador_ticsp|count_int[10]\ : maxv_lcell
-- Equation(s):
-- \contador_ticsp|count_int\(10) = DFFEAS((\contador_ticsp|count_int\(10) $ ((!(!\contador_ticsp|count_int[7]~13\ & \contador_ticsp|count_int[9]~21\) # (\contador_ticsp|count_int[7]~13\ & \contador_ticsp|count_int[9]~21COUT1_60\)))), GLOBAL(\clk~combout\), 
-- VCC, , , , , !\state.testing~regout\, )
-- \contador_ticsp|count_int[10]~19\ = CARRY(((\contador_ticsp|count_int\(10) & !\contador_ticsp|count_int[9]~21\)))
-- \contador_ticsp|count_int[10]~19COUT1_62\ = CARRY(((\contador_ticsp|count_int\(10) & !\contador_ticsp|count_int[9]~21COUT1_60\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \contador_ticsp|count_int\(10),
	aclr => GND,
	sclr => \ALT_INV_state.testing~regout\,
	cin => \contador_ticsp|count_int[7]~13\,
	cin0 => \contador_ticsp|count_int[9]~21\,
	cin1 => \contador_ticsp|count_int[9]~21COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador_ticsp|count_int\(10),
	cout0 => \contador_ticsp|count_int[10]~19\,
	cout1 => \contador_ticsp|count_int[10]~19COUT1_62\);

-- Location: LC_X7_Y3_N3
\contador_ticsp|count_int[11]\ : maxv_lcell
-- Equation(s):
-- \contador_ticsp|count_int\(11) = DFFEAS(\contador_ticsp|count_int\(11) $ (((((!\contador_ticsp|count_int[7]~13\ & \contador_ticsp|count_int[10]~19\) # (\contador_ticsp|count_int[7]~13\ & \contador_ticsp|count_int[10]~19COUT1_62\))))), 
-- GLOBAL(\clk~combout\), VCC, , , , , !\state.testing~regout\, )
-- \contador_ticsp|count_int[11]~17\ = CARRY(((!\contador_ticsp|count_int[10]~19\)) # (!\contador_ticsp|count_int\(11)))
-- \contador_ticsp|count_int[11]~17COUT1_64\ = CARRY(((!\contador_ticsp|count_int[10]~19COUT1_62\)) # (!\contador_ticsp|count_int\(11)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \contador_ticsp|count_int\(11),
	aclr => GND,
	sclr => \ALT_INV_state.testing~regout\,
	cin => \contador_ticsp|count_int[7]~13\,
	cin0 => \contador_ticsp|count_int[10]~19\,
	cin1 => \contador_ticsp|count_int[10]~19COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador_ticsp|count_int\(11),
	cout0 => \contador_ticsp|count_int[11]~17\,
	cout1 => \contador_ticsp|count_int[11]~17COUT1_64\);

-- Location: LC_X7_Y3_N4
\contador_ticsp|count_int[12]\ : maxv_lcell
-- Equation(s):
-- \contador_ticsp|count_int\(12) = DFFEAS(\contador_ticsp|count_int\(12) $ ((((!(!\contador_ticsp|count_int[7]~13\ & \contador_ticsp|count_int[11]~17\) # (\contador_ticsp|count_int[7]~13\ & \contador_ticsp|count_int[11]~17COUT1_64\))))), 
-- GLOBAL(\clk~combout\), VCC, , , , , !\state.testing~regout\, )
-- \contador_ticsp|count_int[12]~27\ = CARRY((\contador_ticsp|count_int\(12) & ((!\contador_ticsp|count_int[11]~17COUT1_64\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \contador_ticsp|count_int\(12),
	aclr => GND,
	sclr => \ALT_INV_state.testing~regout\,
	cin => \contador_ticsp|count_int[7]~13\,
	cin0 => \contador_ticsp|count_int[11]~17\,
	cin1 => \contador_ticsp|count_int[11]~17COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador_ticsp|count_int\(12),
	cout => \contador_ticsp|count_int[12]~27\);

-- Location: LC_X7_Y3_N5
\contador_ticsp|count_int[13]\ : maxv_lcell
-- Equation(s):
-- \contador_ticsp|count_int\(13) = DFFEAS(\contador_ticsp|count_int\(13) $ ((((\contador_ticsp|count_int[12]~27\)))), GLOBAL(\clk~combout\), VCC, , , , , !\state.testing~regout\, )
-- \contador_ticsp|count_int[13]~25\ = CARRY(((!\contador_ticsp|count_int[12]~27\)) # (!\contador_ticsp|count_int\(13)))
-- \contador_ticsp|count_int[13]~25COUT1_66\ = CARRY(((!\contador_ticsp|count_int[12]~27\)) # (!\contador_ticsp|count_int\(13)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \contador_ticsp|count_int\(13),
	aclr => GND,
	sclr => \ALT_INV_state.testing~regout\,
	cin => \contador_ticsp|count_int[12]~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador_ticsp|count_int\(13),
	cout0 => \contador_ticsp|count_int[13]~25\,
	cout1 => \contador_ticsp|count_int[13]~25COUT1_66\);

-- Location: LC_X7_Y3_N6
\contador_ticsp|count_int[14]\ : maxv_lcell
-- Equation(s):
-- \contador_ticsp|count_int\(14) = DFFEAS((\contador_ticsp|count_int\(14) $ ((!(!\contador_ticsp|count_int[12]~27\ & \contador_ticsp|count_int[13]~25\) # (\contador_ticsp|count_int[12]~27\ & \contador_ticsp|count_int[13]~25COUT1_66\)))), 
-- GLOBAL(\clk~combout\), VCC, , , , , !\state.testing~regout\, )
-- \contador_ticsp|count_int[14]~31\ = CARRY(((\contador_ticsp|count_int\(14) & !\contador_ticsp|count_int[13]~25\)))
-- \contador_ticsp|count_int[14]~31COUT1_68\ = CARRY(((\contador_ticsp|count_int\(14) & !\contador_ticsp|count_int[13]~25COUT1_66\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \contador_ticsp|count_int\(14),
	aclr => GND,
	sclr => \ALT_INV_state.testing~regout\,
	cin => \contador_ticsp|count_int[12]~27\,
	cin0 => \contador_ticsp|count_int[13]~25\,
	cin1 => \contador_ticsp|count_int[13]~25COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador_ticsp|count_int\(14),
	cout0 => \contador_ticsp|count_int[14]~31\,
	cout1 => \contador_ticsp|count_int[14]~31COUT1_68\);

-- Location: LC_X7_Y3_N7
\contador_ticsp|count_int[15]\ : maxv_lcell
-- Equation(s):
-- \contador_ticsp|count_int\(15) = DFFEAS((\contador_ticsp|count_int\(15) $ (((!\contador_ticsp|count_int[12]~27\ & \contador_ticsp|count_int[14]~31\) # (\contador_ticsp|count_int[12]~27\ & \contador_ticsp|count_int[14]~31COUT1_68\)))), 
-- GLOBAL(\clk~combout\), VCC, , , , , !\state.testing~regout\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \contador_ticsp|count_int\(15),
	aclr => GND,
	sclr => \ALT_INV_state.testing~regout\,
	cin => \contador_ticsp|count_int[12]~27\,
	cin0 => \contador_ticsp|count_int[14]~31\,
	cin1 => \contador_ticsp|count_int[14]~31COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador_ticsp|count_int\(15));

-- Location: LC_X7_Y3_N8
\Equal1~9\ : maxv_lcell
-- Equation(s):
-- \Equal1~9_combout\ = (\tics_p~combout\(14) & (\contador_ticsp|count_int\(14) & (\tics_p~combout\(15) $ (!\contador_ticsp|count_int\(15))))) # (!\tics_p~combout\(14) & (!\contador_ticsp|count_int\(14) & (\tics_p~combout\(15) $ 
-- (!\contador_ticsp|count_int\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8241",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tics_p~combout\(14),
	datab => \tics_p~combout\(15),
	datac => \contador_ticsp|count_int\(15),
	datad => \contador_ticsp|count_int\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~9_combout\);

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tics_p[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_tics_p(9),
	combout => \tics_p~combout\(9));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tics_p[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_tics_p(8),
	combout => \tics_p~combout\(8));

-- Location: LC_X5_Y3_N4
\Equal1~6\ : maxv_lcell
-- Equation(s):
-- \Equal1~6_combout\ = ((\tics_p~combout\(8) $ (\contador_ticsp|count_int\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \tics_p~combout\(8),
	datad => \contador_ticsp|count_int\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~6_combout\);

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tics_p[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_tics_p(10),
	combout => \tics_p~combout\(10));

-- Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tics_p[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_tics_p(11),
	combout => \tics_p~combout\(11));

-- Location: LC_X6_Y3_N1
\Equal1~5\ : maxv_lcell
-- Equation(s):
-- \Equal1~5_combout\ = (\tics_p~combout\(10) & (\contador_ticsp|count_int\(10) & (\tics_p~combout\(11) $ (!\contador_ticsp|count_int\(11))))) # (!\tics_p~combout\(10) & (!\contador_ticsp|count_int\(10) & (\tics_p~combout\(11) $ 
-- (!\contador_ticsp|count_int\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tics_p~combout\(10),
	datab => \tics_p~combout\(11),
	datac => \contador_ticsp|count_int\(10),
	datad => \contador_ticsp|count_int\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~5_combout\);

-- Location: LC_X5_Y3_N7
\Equal1~7\ : maxv_lcell
-- Equation(s):
-- \Equal1~7_combout\ = (!\Equal1~6_combout\ & (\Equal1~5_combout\ & (\tics_p~combout\(9) $ (!\contador_ticsp|count_int\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0900",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tics_p~combout\(9),
	datab => \contador_ticsp|count_int\(9),
	datac => \Equal1~6_combout\,
	datad => \Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~7_combout\);

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tics_p[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_tics_p(13),
	combout => \tics_p~combout\(13));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tics_p[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_tics_p(12),
	combout => \tics_p~combout\(12));

-- Location: LC_X7_Y3_N9
\Equal1~8\ : maxv_lcell
-- Equation(s):
-- \Equal1~8_combout\ = (\tics_p~combout\(13) & (\contador_ticsp|count_int\(13) & (\tics_p~combout\(12) $ (!\contador_ticsp|count_int\(12))))) # (!\tics_p~combout\(13) & (!\contador_ticsp|count_int\(13) & (\tics_p~combout\(12) $ 
-- (!\contador_ticsp|count_int\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tics_p~combout\(13),
	datab => \tics_p~combout\(12),
	datac => \contador_ticsp|count_int\(13),
	datad => \contador_ticsp|count_int\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~8_combout\);

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tics_p[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_tics_p(7),
	combout => \tics_p~combout\(7));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tics_p[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_tics_p(6),
	combout => \tics_p~combout\(6));

-- Location: LC_X5_Y3_N5
\Equal1~3\ : maxv_lcell
-- Equation(s):
-- \Equal1~3_combout\ = (\tics_p~combout\(7) & (\contador_ticsp|count_int\(7) & (\tics_p~combout\(6) $ (!\contador_ticsp|count_int\(6))))) # (!\tics_p~combout\(7) & (!\contador_ticsp|count_int\(7) & (\tics_p~combout\(6) $ (!\contador_ticsp|count_int\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tics_p~combout\(7),
	datab => \tics_p~combout\(6),
	datac => \contador_ticsp|count_int\(7),
	datad => \contador_ticsp|count_int\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~3_combout\);

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tics_p[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_tics_p(2),
	combout => \tics_p~combout\(2));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tics_p[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_tics_p(3),
	combout => \tics_p~combout\(3));

-- Location: LC_X5_Y3_N9
\Equal1~1\ : maxv_lcell
-- Equation(s):
-- \Equal1~1_combout\ = (\tics_p~combout\(2) & (\contador_ticsp|count_int\(2) & (\tics_p~combout\(3) $ (!\contador_ticsp|count_int\(3))))) # (!\tics_p~combout\(2) & (!\contador_ticsp|count_int\(2) & (\tics_p~combout\(3) $ (!\contador_ticsp|count_int\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9009",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tics_p~combout\(2),
	datab => \contador_ticsp|count_int\(2),
	datac => \tics_p~combout\(3),
	datad => \contador_ticsp|count_int\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~1_combout\);

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tics_p[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_tics_p(1),
	combout => \tics_p~combout\(1));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tics_p[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_tics_p(0),
	combout => \tics_p~combout\(0));

-- Location: LC_X6_Y3_N0
\Equal1~0\ : maxv_lcell
-- Equation(s):
-- \Equal1~0_combout\ = (\tics_p~combout\(1) & (\contador_ticsp|count_int\(1) & (\tics_p~combout\(0) $ (!\contador_ticsp|count_int\(0))))) # (!\tics_p~combout\(1) & (!\contador_ticsp|count_int\(1) & (\tics_p~combout\(0) $ (!\contador_ticsp|count_int\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tics_p~combout\(1),
	datab => \tics_p~combout\(0),
	datac => \contador_ticsp|count_int\(1),
	datad => \contador_ticsp|count_int\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~0_combout\);

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tics_p[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_tics_p(4),
	combout => \tics_p~combout\(4));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tics_p[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_tics_p(5),
	combout => \tics_p~combout\(5));

-- Location: LC_X5_Y3_N2
\Equal1~2\ : maxv_lcell
-- Equation(s):
-- \Equal1~2_combout\ = (\tics_p~combout\(4) & (\contador_ticsp|count_int\(4) & (\tics_p~combout\(5) $ (!\contador_ticsp|count_int\(5))))) # (!\tics_p~combout\(4) & (!\contador_ticsp|count_int\(4) & (\tics_p~combout\(5) $ (!\contador_ticsp|count_int\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tics_p~combout\(4),
	datab => \tics_p~combout\(5),
	datac => \contador_ticsp|count_int\(4),
	datad => \contador_ticsp|count_int\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~2_combout\);

-- Location: LC_X5_Y3_N1
\Equal1~4\ : maxv_lcell
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~3_combout\ & (\Equal1~1_combout\ & (\Equal1~0_combout\ & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~3_combout\,
	datab => \Equal1~1_combout\,
	datac => \Equal1~0_combout\,
	datad => \Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~4_combout\);

-- Location: LC_X5_Y3_N8
\Equal1~10\ : maxv_lcell
-- Equation(s):
-- \Equal1~10_combout\ = (\Equal1~9_combout\ & (\Equal1~7_combout\ & (\Equal1~8_combout\ & \Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Equal1~7_combout\,
	datac => \Equal1~8_combout\,
	datad => \Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~10_combout\);

-- Location: LC_X2_Y3_N5
\contador_25ciclos|count_int[0]\ : maxv_lcell
-- Equation(s):
-- \contador_25ciclos|count_int\(0) = DFFEAS((!\contador_25ciclos|count_int\(0)), GLOBAL(\clk~combout\), VCC, , , , , !\Selector3~2_combout\, )
-- \contador_25ciclos|count_int[0]~5\ = CARRY((\contador_25ciclos|count_int\(0)))
-- \contador_25ciclos|count_int[0]~5COUT1_16\ = CARRY((\contador_25ciclos|count_int\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \contador_25ciclos|count_int\(0),
	aclr => GND,
	sclr => \ALT_INV_Selector3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador_25ciclos|count_int\(0),
	cout0 => \contador_25ciclos|count_int[0]~5\,
	cout1 => \contador_25ciclos|count_int[0]~5COUT1_16\);

-- Location: LC_X2_Y3_N6
\contador_25ciclos|count_int[1]\ : maxv_lcell
-- Equation(s):
-- \contador_25ciclos|count_int\(1) = DFFEAS(\contador_25ciclos|count_int\(1) $ ((((\contador_25ciclos|count_int[0]~5\)))), GLOBAL(\clk~combout\), VCC, , , , , !\Selector3~2_combout\, )
-- \contador_25ciclos|count_int[1]~7\ = CARRY(((!\contador_25ciclos|count_int[0]~5\)) # (!\contador_25ciclos|count_int\(1)))
-- \contador_25ciclos|count_int[1]~7COUT1_18\ = CARRY(((!\contador_25ciclos|count_int[0]~5COUT1_16\)) # (!\contador_25ciclos|count_int\(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \contador_25ciclos|count_int\(1),
	aclr => GND,
	sclr => \ALT_INV_Selector3~2_combout\,
	cin0 => \contador_25ciclos|count_int[0]~5\,
	cin1 => \contador_25ciclos|count_int[0]~5COUT1_16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador_25ciclos|count_int\(1),
	cout0 => \contador_25ciclos|count_int[1]~7\,
	cout1 => \contador_25ciclos|count_int[1]~7COUT1_18\);

-- Location: LC_X2_Y3_N7
\contador_25ciclos|count_int[2]\ : maxv_lcell
-- Equation(s):
-- \contador_25ciclos|count_int\(2) = DFFEAS(\contador_25ciclos|count_int\(2) $ ((((!\contador_25ciclos|count_int[1]~7\)))), GLOBAL(\clk~combout\), VCC, , , , , !\Selector3~2_combout\, )
-- \contador_25ciclos|count_int[2]~9\ = CARRY((\contador_25ciclos|count_int\(2) & ((!\contador_25ciclos|count_int[1]~7\))))
-- \contador_25ciclos|count_int[2]~9COUT1_20\ = CARRY((\contador_25ciclos|count_int\(2) & ((!\contador_25ciclos|count_int[1]~7COUT1_18\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \contador_25ciclos|count_int\(2),
	aclr => GND,
	sclr => \ALT_INV_Selector3~2_combout\,
	cin0 => \contador_25ciclos|count_int[1]~7\,
	cin1 => \contador_25ciclos|count_int[1]~7COUT1_18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador_25ciclos|count_int\(2),
	cout0 => \contador_25ciclos|count_int[2]~9\,
	cout1 => \contador_25ciclos|count_int[2]~9COUT1_20\);

-- Location: LC_X2_Y3_N8
\contador_25ciclos|count_int[3]\ : maxv_lcell
-- Equation(s):
-- \contador_25ciclos|count_int\(3) = DFFEAS(\contador_25ciclos|count_int\(3) $ ((((\contador_25ciclos|count_int[2]~9\)))), GLOBAL(\clk~combout\), VCC, , , , , !\Selector3~2_combout\, )
-- \contador_25ciclos|count_int[3]~3\ = CARRY(((!\contador_25ciclos|count_int[2]~9\)) # (!\contador_25ciclos|count_int\(3)))
-- \contador_25ciclos|count_int[3]~3COUT1_22\ = CARRY(((!\contador_25ciclos|count_int[2]~9COUT1_20\)) # (!\contador_25ciclos|count_int\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \contador_25ciclos|count_int\(3),
	aclr => GND,
	sclr => \ALT_INV_Selector3~2_combout\,
	cin0 => \contador_25ciclos|count_int[2]~9\,
	cin1 => \contador_25ciclos|count_int[2]~9COUT1_20\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador_25ciclos|count_int\(3),
	cout0 => \contador_25ciclos|count_int[3]~3\,
	cout1 => \contador_25ciclos|count_int[3]~3COUT1_22\);

-- Location: LC_X2_Y3_N9
\contador_25ciclos|count_int[4]\ : maxv_lcell
-- Equation(s):
-- \contador_25ciclos|count_int\(4) = DFFEAS(((\contador_25ciclos|count_int[3]~3\ $ (!\contador_25ciclos|count_int\(4)))), GLOBAL(\clk~combout\), VCC, , , , , !\Selector3~2_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \contador_25ciclos|count_int\(4),
	aclr => GND,
	sclr => \ALT_INV_Selector3~2_combout\,
	cin0 => \contador_25ciclos|count_int[3]~3\,
	cin1 => \contador_25ciclos|count_int[3]~3COUT1_22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador_25ciclos|count_int\(4));

-- Location: LC_X2_Y3_N2
\LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \LessThan0~0_combout\ = (((\contador_25ciclos|count_int\(2)) # (\contador_25ciclos|count_int\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \contador_25ciclos|count_int\(2),
	datad => \contador_25ciclos|count_int\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~0_combout\);

-- Location: LC_X2_Y3_N3
\LessThan0~1\ : maxv_lcell
-- Equation(s):
-- \LessThan0~1_combout\ = (\contador_25ciclos|count_int\(3) & (\contador_25ciclos|count_int\(4) & ((\contador_25ciclos|count_int\(0)) # (\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8880",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contador_25ciclos|count_int\(3),
	datab => \contador_25ciclos|count_int\(4),
	datac => \contador_25ciclos|count_int\(0),
	datad => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~1_combout\);

-- Location: LC_X3_Y3_N8
\Selector6~0\ : maxv_lcell
-- Equation(s):
-- \Selector6~0_combout\ = ((\state.w2~regout\ & ((!\LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \state.w2~regout\,
	datad => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector6~0_combout\);

-- Location: LC_X3_Y3_N9
\Selector6~1\ : maxv_lcell
-- Equation(s):
-- \Selector6~1_combout\ = (\Selector6~0_combout\) # ((\Equal0~0_combout\ & ((\state.str2~regout\))) # (!\Equal0~0_combout\ & (\state.str3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffe2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.str3~regout\,
	datab => \Equal0~0_combout\,
	datac => \state.str2~regout\,
	datad => \Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector6~1_combout\);

-- Location: LC_X3_Y3_N1
\state.w2\ : maxv_lcell
-- Equation(s):
-- \state.w2~regout\ = DFFEAS((\next_state~13_combout\ & (!\temp_h~combout\ & ((\Selector6~1_combout\)))) # (!\next_state~13_combout\ & ((\state.w2~regout\) # ((!\temp_h~combout\ & \Selector6~1_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , 
-- , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7350",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \next_state~13_combout\,
	datab => \temp_h~combout\,
	datac => \state.w2~regout\,
	datad => \Selector6~1_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.w2~regout\);

-- Location: LC_X4_Y3_N5
\Selector3~2\ : maxv_lcell
-- Equation(s):
-- \Selector3~2_combout\ = (((\state.w1~regout\) # (\state.w2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \state.w1~regout\,
	datad => \state.w2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector3~2_combout\);

-- Location: LC_X4_Y2_N5
\Selector9~1\ : maxv_lcell
-- Equation(s):
-- \Selector9~1_combout\ = (\Selector3~2_combout\ & (!\temp_h~combout\ & ((\state.alarma~regout\) # (\LessThan0~1_combout\)))) # (!\Selector3~2_combout\ & (\state.alarma~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3a2a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.alarma~regout\,
	datab => \temp_h~combout\,
	datac => \Selector3~2_combout\,
	datad => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector9~1_combout\);

-- Location: LC_X4_Y2_N2
\Selector12~1\ : maxv_lcell
-- Equation(s):
-- \Selector12~1_combout\ = ((\state.testing~regout\ & ((\Equal1~10_combout\) # (!\temp_p~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \temp_p~combout\,
	datac => \state.testing~regout\,
	datad => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector12~1_combout\);

-- Location: LC_X4_Y2_N3
\state.alarma\ : maxv_lcell
-- Equation(s):
-- \state.alarma~regout\ = DFFEAS((\Selector12~1_combout\ & (!\Equal1~10_combout\ & (\biestable_2vez|Q~combout\))) # (!\Selector12~1_combout\ & (((\Selector9~1_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "44f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal1~10_combout\,
	datab => \biestable_2vez|Q~combout\,
	datac => \Selector9~1_combout\,
	datad => \Selector12~1_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.alarma~regout\);

-- Location: LC_X4_Y4_N8
\Selector3~0\ : maxv_lcell
-- Equation(s):
-- \Selector3~0_combout\ = ((\state.testing~regout\ & ((\Equal1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \state.testing~regout\,
	datad => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector3~0_combout\);

-- Location: LC_X4_Y4_N6
\state.valido\ : maxv_lcell
-- Equation(s):
-- \state.valido~regout\ = DFFEAS((!\state.sec_vez~regout\ & ((\Selector3~7_combout\ & (\Selector3~0_combout\)) # (!\Selector3~7_combout\ & ((\state.valido~regout\))))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Selector3~0_combout\,
	datab => \state.valido~regout\,
	datac => \state.sec_vez~regout\,
	datad => \Selector3~7_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.valido~regout\);

-- Location: LC_X4_Y2_N7
\next_state~13\ : maxv_lcell
-- Equation(s):
-- \next_state~13_combout\ = (!\state.alarma~regout\ & (((!\state.valido~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.alarma~regout\,
	datac => \state.valido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~13_combout\);

-- Location: LC_X3_Y4_N6
\Selector3~8\ : maxv_lcell
-- Equation(s):
-- \Selector3~8_combout\ = (\temp_h~combout\ & (((\state.starting~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \temp_h~combout\,
	datad => \state.starting~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector3~8_combout\);

-- Location: LC_X4_Y4_N7
\state.str1\ : maxv_lcell
-- Equation(s):
-- \state.str1~regout\ = DFFEAS((!\state.sec_vez~regout\ & ((\Selector3~7_combout\ & ((\Selector3~8_combout\))) # (!\Selector3~7_combout\ & (\state.str1~regout\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \state.str1~regout\,
	datab => \Selector3~8_combout\,
	datac => \state.sec_vez~regout\,
	datad => \Selector3~7_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.str1~regout\);

-- Location: LC_X2_Y3_N4
\Selector4~0\ : maxv_lcell
-- Equation(s):
-- \Selector4~0_combout\ = (((\state.w1~regout\ & !\LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \state.w1~regout\,
	datad => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector4~0_combout\);

-- Location: LC_X4_Y3_N7
\Selector4~1\ : maxv_lcell
-- Equation(s):
-- \Selector4~1_combout\ = (\Selector4~0_combout\) # ((\Equal0~0_combout\ & (\state.str1~regout\)) # (!\Equal0~0_combout\ & ((\state.str2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.str1~regout\,
	datab => \state.str2~regout\,
	datac => \Equal0~0_combout\,
	datad => \Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector4~1_combout\);

-- Location: LC_X4_Y3_N4
\state.w1\ : maxv_lcell
-- Equation(s):
-- \state.w1~regout\ = DFFEAS((\state.w1~regout\ & (((!\temp_h~combout\ & \Selector4~1_combout\)) # (!\next_state~13_combout\))) # (!\state.w1~regout\ & (!\temp_h~combout\ & ((\Selector4~1_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , 
-- , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3b0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \state.w1~regout\,
	datab => \temp_h~combout\,
	datac => \next_state~13_combout\,
	datad => \Selector4~1_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.w1~regout\);

-- Location: LC_X4_Y2_N0
\Selector7~0\ : maxv_lcell
-- Equation(s):
-- \Selector7~0_combout\ = (!\state.alarma~regout\ & (((!\state.valido~regout\ & !\state.sec_vez~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.alarma~regout\,
	datac => \state.valido~regout\,
	datad => \state.sec_vez~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector7~0_combout\);

-- Location: LC_X4_Y3_N6
\Selector7~2\ : maxv_lcell
-- Equation(s):
-- \Selector7~2_combout\ = (\Selector3~2_combout\ & ((\temp_h~combout\) # ((\state.testing~regout\ & \Equal1~10_combout\)))) # (!\Selector3~2_combout\ & (\state.testing~regout\ & ((\Equal1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~2_combout\,
	datab => \state.testing~regout\,
	datac => \temp_h~combout\,
	datad => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector7~2_combout\);

-- Location: LC_X3_Y3_N6
\Selector3~5\ : maxv_lcell
-- Equation(s):
-- \Selector3~5_combout\ = (!\temp_h~combout\ & ((\state.str3~regout\) # ((\state.str2~regout\) # (\state.str1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5554",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \temp_h~combout\,
	datab => \state.str3~regout\,
	datac => \state.str2~regout\,
	datad => \state.str1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector3~5_combout\);

-- Location: LC_X3_Y3_N7
\Selector7~3\ : maxv_lcell
-- Equation(s):
-- \Selector7~3_combout\ = (\Selector3~5_combout\) # ((\temp_p~combout\ & ((\state.w3~regout\))) # (!\temp_p~combout\ & (\state.testing~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffe4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \temp_p~combout\,
	datab => \state.testing~regout\,
	datac => \state.w3~regout\,
	datad => \Selector3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector7~3_combout\);

-- Location: LC_X3_Y3_N3
\Selector9~0\ : maxv_lcell
-- Equation(s):
-- \Selector9~0_combout\ = ((\LessThan0~1_combout\ & ((\state.w2~regout\) # (\state.w1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \state.w2~regout\,
	datac => \state.w1~regout\,
	datad => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector9~0_combout\);

-- Location: LC_X3_Y3_N2
\Selector7~4\ : maxv_lcell
-- Equation(s):
-- \Selector7~4_combout\ = (\state.starting~regout\ & (\temp_h~combout\)) # (!\state.starting~regout\ & (((\Selector7~3_combout\) # (\Selector9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ddd8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.starting~regout\,
	datab => \temp_h~combout\,
	datac => \Selector7~3_combout\,
	datad => \Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector7~4_combout\);

-- Location: LC_X4_Y3_N3
\Selector7~5\ : maxv_lcell
-- Equation(s):
-- \Selector7~5_combout\ = (\state.stand_by~regout\ & ((\state.w_bs~regout\ & (!\start~combout\)) # (!\state.w_bs~regout\ & ((\Selector7~4_combout\))))) # (!\state.stand_by~regout\ & (\start~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6e62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \start~combout\,
	datab => \state.stand_by~regout\,
	datac => \state.w_bs~regout\,
	datad => \Selector7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector7~5_combout\);

-- Location: LC_X4_Y3_N0
\Selector7~6\ : maxv_lcell
-- Equation(s):
-- \Selector7~6_combout\ = ((\Selector7~2_combout\) # ((\Selector7~0_combout\ & \Selector7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~0_combout\,
	datac => \Selector7~2_combout\,
	datad => \Selector7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector7~6_combout\);

-- Location: LC_X4_Y3_N8
\Selector5~0\ : maxv_lcell
-- Equation(s):
-- \Selector5~0_combout\ = (\Selector7~6_combout\ & (\state.w1~regout\ & ((\temp_h~combout\)))) # (!\Selector7~6_combout\ & (((\state.str2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ac0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.w1~regout\,
	datab => \state.str2~regout\,
	datac => \Selector7~6_combout\,
	datad => \temp_h~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector5~0_combout\);

-- Location: LC_X4_Y3_N9
\state.str2\ : maxv_lcell
-- Equation(s):
-- \state.str2~regout\ = DFFEAS((((!\state.sec_vez~regout\ & \Selector5~0_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \state.sec_vez~regout\,
	datad => \Selector5~0_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.str2~regout\);

-- Location: LC_X3_Y3_N0
\contador_temph|count_int[2]~2\ : maxv_lcell
-- Equation(s):
-- \contador_temph|count_int[2]~2_combout\ = ((!\state.str3~regout\ & (!\state.str2~regout\ & !\state.str1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \state.str3~regout\,
	datac => \state.str2~regout\,
	datad => \state.str1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \contador_temph|count_int[2]~2_combout\);

-- Location: LC_X3_Y4_N1
\contador_temph|count_int[0]\ : maxv_lcell
-- Equation(s):
-- \contador_temph|count_int\(0) = DFFEAS((!\contador_temph|count_int[2]~2_combout\ & (((\contador_temph|count_int\(2) & !\contador_temph|count_int\(1))) # (!\contador_temph|count_int\(0)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0233",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \contador_temph|count_int\(2),
	datab => \contador_temph|count_int[2]~2_combout\,
	datac => \contador_temph|count_int\(1),
	datad => \contador_temph|count_int\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador_temph|count_int\(0));

-- Location: LC_X3_Y4_N5
\contador_temph|count_int[1]\ : maxv_lcell
-- Equation(s):
-- \contador_temph|count_int\(1) = DFFEAS((!\contador_temph|count_int[2]~2_combout\ & ((\contador_temph|count_int\(1) & ((!\contador_temph|count_int\(0)))) # (!\contador_temph|count_int\(1) & (!\contador_temph|count_int\(2) & 
-- \contador_temph|count_int\(0))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0130",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \contador_temph|count_int\(2),
	datab => \contador_temph|count_int[2]~2_combout\,
	datac => \contador_temph|count_int\(1),
	datad => \contador_temph|count_int\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador_temph|count_int\(1));

-- Location: LC_X3_Y4_N4
\contador_temph|count_int[2]\ : maxv_lcell
-- Equation(s):
-- \contador_temph|count_int\(2) = DFFEAS((!\contador_temph|count_int[2]~2_combout\ & (\contador_temph|count_int\(2) $ (((\contador_temph|count_int\(1) & \contador_temph|count_int\(0)))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1222",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \contador_temph|count_int\(2),
	datab => \contador_temph|count_int[2]~2_combout\,
	datac => \contador_temph|count_int\(1),
	datad => \contador_temph|count_int\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador_temph|count_int\(2));

-- Location: LC_X3_Y4_N2
\Equal0~0\ : maxv_lcell
-- Equation(s):
-- \Equal0~0_combout\ = (\contador_temph|count_int\(2) & (((!\contador_temph|count_int\(1) & \contador_temph|count_int\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contador_temph|count_int\(2),
	datac => \contador_temph|count_int\(1),
	datad => \contador_temph|count_int\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0_combout\);

-- Location: LC_X3_Y4_N7
\Selector2~0\ : maxv_lcell
-- Equation(s):
-- \Selector2~0_combout\ = ((\state.sec_vez~regout\) # ((!\start~combout\ & \state.w_bs~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \start~combout\,
	datab => \state.w_bs~regout\,
	datad => \state.sec_vez~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector2~0_combout\);

-- Location: LC_X3_Y4_N8
\Selector2~1\ : maxv_lcell
-- Equation(s):
-- \Selector2~1_combout\ = (\Selector2~0_combout\) # ((\state.starting~regout\ & ((!\next_state~13_combout\) # (!\temp_h~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ceee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.starting~regout\,
	datab => \Selector2~0_combout\,
	datac => \temp_h~combout\,
	datad => \next_state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector2~1_combout\);

-- Location: LC_X3_Y4_N3
\state.starting\ : maxv_lcell
-- Equation(s):
-- \state.starting~regout\ = DFFEAS((\Selector2~1_combout\) # ((!\temp_h~combout\ & (!\Equal0~0_combout\ & \state.str1~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff10",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \temp_h~combout\,
	datab => \Equal0~0_combout\,
	datac => \state.str1~regout\,
	datad => \Selector2~1_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.starting~regout\);

-- Location: LC_X4_Y4_N4
\Selector3~1\ : maxv_lcell
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector10~0_combout\) # ((\start~combout\ & (!\state.stand_by~regout\)) # (!\start~combout\ & ((\state.w_bs~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff5c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.stand_by~regout\,
	datab => \state.w_bs~regout\,
	datac => \start~combout\,
	datad => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector3~1_combout\);

-- Location: LC_X4_Y4_N0
\Selector3~3\ : maxv_lcell
-- Equation(s):
-- \Selector3~3_combout\ = (\Selector3~1_combout\) # ((\temp_h~combout\ & ((\state.starting~regout\) # (\Selector3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faf8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \temp_h~combout\,
	datab => \state.starting~regout\,
	datac => \Selector3~1_combout\,
	datad => \Selector3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector3~3_combout\);

-- Location: LC_X3_Y3_N4
\Selector3~4\ : maxv_lcell
-- Equation(s):
-- \Selector3~4_combout\ = (\Selector9~0_combout\ & (((\state.testing~regout\) # (!\contador_temph|count_int[2]~2_combout\)) # (!\temp_h~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "df00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \temp_h~combout\,
	datab => \state.testing~regout\,
	datac => \contador_temph|count_int[2]~2_combout\,
	datad => \Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector3~4_combout\);

-- Location: LC_X3_Y3_N5
\Selector3~6\ : maxv_lcell
-- Equation(s):
-- \Selector3~6_combout\ = (\Selector3~4_combout\) # ((\state.testing~regout\ & (!\temp_p~combout\)) # (!\state.testing~regout\ & ((\Selector3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff74",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \temp_p~combout\,
	datab => \state.testing~regout\,
	datac => \Selector3~5_combout\,
	datad => \Selector3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector3~6_combout\);

-- Location: LC_X4_Y4_N1
\Selector3~7\ : maxv_lcell
-- Equation(s):
-- \Selector3~7_combout\ = (\Selector3~3_combout\) # ((\Selector3~0_combout\) # ((!\state.w_bs~regout\ & \Selector3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffdc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.w_bs~regout\,
	datab => \Selector3~3_combout\,
	datac => \Selector3~6_combout\,
	datad => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector3~7_combout\);

-- Location: LC_X4_Y4_N5
\state.stand_by\ : maxv_lcell
-- Equation(s):
-- \state.stand_by~regout\ = DFFEAS((\state.stand_by~regout\) # (((\state.sec_vez~regout\) # (\Selector3~7_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \state.stand_by~regout\,
	datac => \state.sec_vez~regout\,
	datad => \Selector3~7_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.stand_by~regout\);

-- Location: LC_X4_Y2_N9
\biestable_2vez|Q\ : maxv_lcell
-- Equation(s):
-- \biestable_2vez|Q~combout\ = ((\state.stand_by~regout\ & ((\state.sec_vez~regout\) # (\biestable_2vez|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \state.stand_by~regout\,
	datac => \state.sec_vez~regout\,
	datad => \biestable_2vez|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \biestable_2vez|Q~combout\);

-- Location: LC_X4_Y2_N4
\state.sec_vez\ : maxv_lcell
-- Equation(s):
-- \state.sec_vez~regout\ = DFFEAS((!\biestable_2vez|Q~combout\ & (!\temp_p~combout\ & (\state.testing~regout\ & !\Equal1~10_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \biestable_2vez|Q~combout\,
	datab => \temp_p~combout\,
	datac => \state.testing~regout\,
	datad => \Equal1~10_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.sec_vez~regout\);

-- Location: LC_X4_Y3_N1
\Selector7~7\ : maxv_lcell
-- Equation(s):
-- \Selector7~7_combout\ = (\Selector7~6_combout\ & (((\state.w2~regout\ & \temp_h~combout\)))) # (!\Selector7~6_combout\ & (\state.str3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.str3~regout\,
	datab => \state.w2~regout\,
	datac => \temp_h~combout\,
	datad => \Selector7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector7~7_combout\);

-- Location: LC_X4_Y3_N2
\state.str3\ : maxv_lcell
-- Equation(s):
-- \state.str3~regout\ = DFFEAS((((!\state.sec_vez~regout\ & \Selector7~7_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \state.sec_vez~regout\,
	datad => \Selector7~7_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.str3~regout\);

-- Location: LC_X4_Y2_N8
\Selector8~0\ : maxv_lcell
-- Equation(s):
-- \Selector8~0_combout\ = (\state.w3~regout\ & (((\state.valido~regout\) # (\state.alarma~regout\)) # (!\temp_p~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \temp_p~combout\,
	datab => \state.w3~regout\,
	datac => \state.valido~regout\,
	datad => \state.alarma~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector8~0_combout\);

-- Location: LC_X4_Y2_N1
\state.w3\ : maxv_lcell
-- Equation(s):
-- \state.w3~regout\ = DFFEAS((\Selector8~0_combout\) # ((\state.str3~regout\ & (!\temp_h~combout\ & \Equal0~0_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff20",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \state.str3~regout\,
	datab => \temp_h~combout\,
	datac => \Equal0~0_combout\,
	datad => \Selector8~0_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.w3~regout\);

-- Location: LC_X4_Y2_N6
\Selector10~0\ : maxv_lcell
-- Equation(s):
-- \Selector10~0_combout\ = ((\temp_p~combout\ & ((\state.w3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \temp_p~combout\,
	datad => \state.w3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector10~0_combout\);

-- Location: LC_X4_Y4_N9
\state.testing\ : maxv_lcell
-- Equation(s):
-- \state.testing~regout\ = DFFEAS((!\state.sec_vez~regout\ & ((\Selector3~7_combout\ & (\Selector10~0_combout\)) # (!\Selector3~7_combout\ & ((\state.testing~regout\))))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Selector10~0_combout\,
	datab => \state.testing~regout\,
	datac => \state.sec_vez~regout\,
	datad => \Selector3~7_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.testing~regout\);

-- Location: LC_X4_Y4_N3
WideOr0 : maxv_lcell
-- Equation(s):
-- \WideOr0~combout\ = ((\state.testing~regout\) # ((\state.w_bs~regout\) # (!\Selector7~0_combout\))) # (!\state.stand_by~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffdf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.stand_by~regout\,
	datab => \state.testing~regout\,
	datac => \Selector7~0_combout\,
	datad => \state.w_bs~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr0~combout\);

-- Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\test~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \state.testing~regout\,
	oe => VCC,
	padio => ww_test);

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sterilized~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_WideOr0~combout\,
	oe => VCC,
	padio => ww_sterilized);

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\valid~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \state.valido~regout\,
	oe => VCC,
	padio => ww_valid);

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\alarm~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \state.alarma~regout\,
	oe => VCC,
	padio => ww_alarm);
END structure;


