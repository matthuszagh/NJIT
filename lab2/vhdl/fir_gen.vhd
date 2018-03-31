-- Simple implementation of a generic transposed FIR filter
--
-- Order of operations
-- 1. The coefficients are loaded, one at a time, starting with coefficient 0.
-- 2. Once all coefficients have been loaded (4 clock cycles) we raise load_x,
--	  specifying that we have finished loading the filter coefficients and will
--	  begin loading the sample.
-- 3. Combinationally multiply each coefficient with x in parallel.
-- 4. Take 3 cycles to add all the products together.
-- 5. Take the 11 most significant bits of the SOP (thus dividing by 256).
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_signed.ALL;
-- -----------------------------------------------------------------------------
ENTITY fir_gen IS
	GENERIC(W1 : INTEGER := 9;	-- Input bit width
			W2 : INTEGER := 18;	-- Multiply bit width [2*W1]
			W3 : INTEGER := 19;	-- Adder width [W2+Log_2(L)-1]
			W4 : INTEGER := 11;	-- Output bit width
			L  : INTEGER := 4	-- Filter length
	);
	PORT(clk    : IN  STD_LOGIC;	-- System clock
	     reset  : IN  STD_LOGIC;	-- Asynchronous reset
	     load_x : IN  STD_LOGIC;	-- Load/run switch
	     c_in   : IN  STD_LOGIC_VECTOR(W1-1 DOWNTO 0);  -- Coefficient input
	     x_in   : IN  STD_LOGIC_VECTOR(W1-1 DOWNTO 0);  -- Data input
	     y_out  : OUT STD_LOGIC_VECTOR(W4-1 DOWNTO 0)   -- Data output
	);
END fir_gen;
-- -----------------------------------------------------------------------------
ARCHITECTURE fpga OF fir_gen IS

	SUBTYPE SLVW1 IS STD_LOGIC_VECTOR(W1-1 DOWNTO 0);
	SUBTYPE SLVW2 IS STD_LOGIC_VECTOR(W2-1 DOWNTO 0);
	SUBTYPE SLVW3 IS STD_LOGIC_VECTOR(W3-1 DOWNTO 0);
	TYPE A0_L1SLVW1 IS ARRAY (0 TO L-1) OF SLVW1;
	TYPE A0_L1SLVW2 IS ARRAY (0 TO L-1) OF SLVW2;
	TYPE A0_L1SLVW3 IS ARRAY (0 TO L-1) OF SLVW3;

	SIGNAL x : SLVW1;
	SIGNAL y : SLVW3;
	SIGNAL c : A0_L1SLVW1;
	SIGNAL p : A0_L1SLVW2;
	SIGNAL a : A0_L1SLVW3;

BEGIN
	Load: PROCESS(clk, reset)			-- reset must be here since it is async
	BEGIN
		IF reset='1' THEN					-- Clear data and coefficients
			x <= (OTHERS => '0');
			FOR i IN 0 TO L-1 LOOP
				c(i) <= (OTHERS => '0');
			END LOOP;
		ELSIF rising_edge(clk) THEN
			IF load_x = '0' THEN			-- Load coefficients
				c(L-1) <= c_in;
				FOR i IN L-2 DOWNTO 0 LOOP
					c(i) <= c(i+1);
				END LOOP;
			ELSE							-- Done loading coefficients, load x
				x <= x_in;
			END IF;
		END IF;
	END PROCESS Load;

	SOP: PROCESS(clk, reset)
	BEGIN
		IF reset='1' THEN		-- Clear adders
			FOR i IN 0 TO L-1 LOOP
				a(i) <= (OTHERS => '0');
			END LOOP;
		ELSIF rising_edge(clk) THEN
			FOR i IN 0 TO L-2 LOOP
				a(i) <= (p(i)(W2-1) & p(i)) + a(i+1);	-- Sign extend p (a is 1
														-- bit wider than p) and
														-- add the next a
			END LOOP;
			a(L-1) <= p(L-1)(W2-1) & p(L-1);
		END IF;
		y <= a(0);
	END PROCESS SOP;

	-- Instantiate L multipliers
	MulGen: FOR i IN 0 TO L-1 GENERATE
		p(i) <= c(i) * x;
	END GENERATE;

	y_out <= y(W3-1 DOWNTO W3-W4);	-- 18 to 8: this is equivalent to dividing
									-- by 2^8=256		

END fpga;
