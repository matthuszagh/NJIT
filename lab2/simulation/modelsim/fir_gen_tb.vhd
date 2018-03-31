--------------------------------------------------------------------------------
USE std.textio.ALL;

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;		-- Conversion between INTEGER and STD_LOGIC
--------------------------------------------------------------------------------
ENTITY fir_gen_tb IS
    GENERIC(W1 : INTEGER := 9;  -- Input bit width
       	    W2 : INTEGER := 18; -- Multiply bit width [2*W1]
           	W3 : INTEGER := 19; -- Adder width [W2+Log_2(L)-1]
           	W4 : INTEGER := 11; -- Output bit width
           	L  : INTEGER := 4   -- Filter length
   	);
END ENTITY;
--------------------------------------------------------------------------------
ARCHITECTURE testbench OF fir_gen_tb IS

	COMPONENT fir_gen IS
    	GENERIC(W1 : INTEGER := 9;  -- Input bit width
        	    W2 : INTEGER := 18; -- Multiply bit width [2*W1]
            	W3 : INTEGER := 19; -- Adder width [W2+Log_2(L)-1]
            	W4 : INTEGER := 11; -- Output bit width
            	L  : INTEGER := 4   -- Filter length
    	);
    	PORT(clk    : IN  STD_LOGIC;    -- System clock
    	     reset  : IN  STD_LOGIC;    -- Asynchronous reset
    	     load_x : IN  STD_LOGIC;    -- Load/run switch
    	     c_in   : IN  STD_LOGIC_VECTOR(W1-1 DOWNTO 0);  -- Coefficient input
    	     x_in   : IN  STD_LOGIC_VECTOR(W1-1 DOWNTO 0);  -- Data input
    	     y_out  : OUT STD_LOGIC_VECTOR(W4-1 DOWNTO 0)   -- Data output
    	);
	END COMPONENT;
	
	---Signal Declarations--------------
	SIGNAL clk_tb    : STD_LOGIC := '0';
	SIGNAL reset_tb  : STD_LOGIC := '1';
	SIGNAL load_x_tb : STD_LOGIC := '0';
	SIGNAL c_in_tb   : STD_LOGIC_VECTOR(W1-1 DOWNTO 0)
							:= STD_LOGIC_VECTOR(TO_SIGNED(0, W1));
	SIGNAL x_in_tb   : STD_LOGIC_VECTOR(W1-1 DOWNTO 0)
							:= STD_LOGIC_VECTOR(TO_SIGNED(0, W1));
	SIGNAL y_out_tb  : STD_LOGIC_VECTOR(W4-1 DOWNTO 0);

BEGIN
	---DUT Instantiation----------------
	dut: fir_gen PORT MAP (
		clk    => clk_tb,
		reset  => reset_tb,
		load_x => load_x_tb,
		c_in   => c_in_tb,
		x_in   => x_in_tb,
		y_out  => y_out_tb);

	---Stimuli Generation---------------
	clk_tb    <= NOT clk_tb AFTER 25ns;
	reset_tb  <= '0' AFTER 50ns;
	load_x_tb <= '1' AFTER 250ns;
	c_in_tb   <= STD_LOGIC_VECTOR(TO_SIGNED(124, W1)) AFTER 50ns,
				 STD_LOGIC_VECTOR(TO_SIGNED(214, W1)) AFTER 100ns,
				 STD_LOGIC_VECTOR(TO_SIGNED(57, W1)) AFTER 150ns,
				 STD_LOGIC_VECTOR(TO_SIGNED(-33, W1)) AFTER 200ns;
	x_in_tb   <= STD_LOGIC_VECTOR(TO_SIGNED(100, W1)) AFTER 300ns,
				 STD_LOGIC_VECTOR(TO_SIGNED(0, W1)) AFTER 350ns;

END ARCHITECTURE;
