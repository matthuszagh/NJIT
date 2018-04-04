--------------------------------------------------------------------------------
USE std.textio.ALL;

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;		-- Conversion between INTEGER and STD_LOGIC

USE work.n_bit_other_int.ALL;
--------------------------------------------------------------------------------
ENTITY fir_direct_tb IS
END ENTITY;
--------------------------------------------------------------------------------
ARCHITECTURE testbench OF fir_direct_tb IS

	COMPONENT fir_direct IS
    	PORT (clk   : IN  STD_LOGIC; -- System clock
    	      reset : IN  STD_LOGIC; -- Asynchronous reset
    	      x     : IN  S9;        -- Data input
    	      y     : OUT S11        -- Data output
    	);
	END COMPONENT;
	
	---Signal Declarations--------------
	SIGNAL clk_tb   : STD_LOGIC := '0';
	SIGNAL reset_tb : STD_LOGIC := '1';
	SIGNAL x_tb     : S9 := 0;
	SIGNAL y_tb     : S11 := 0;

BEGIN
	---DUT Instantiation----------------
	dut: fir_direct PORT MAP (
		clk   => clk_tb,
		reset => reset_tb,
		x     => x_tb,
		y     => y_tb);

	---Stimuli Generation---------------
	clk_tb   <= NOT clk_tb AFTER 25ns;
	reset_tb <= '0' AFTER 50ns;
	x_tb     <= 100 AFTER 50ns,
				0 AFTER 100ns;

END ARCHITECTURE;
