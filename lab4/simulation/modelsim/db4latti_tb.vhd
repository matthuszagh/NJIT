-- db4latti_tb.vhd
--
-- A testbench for the lattice implementation of the DB4 filter.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

USE work.n_bit_int.ALL;
--------------------------------------------------------------------------------
ENTITY db4latti_tb IS
END ENTITY db4latti_tb;
--------------------------------------------------------------------------------
ARCHITECTURE testbench OF db4latti_tb IS

    COMPONENT db4latti IS
        GENERIC (s  : S10 := 124;   --  0.48301
                 a0 : S10 := 443;   --  1.73185
                 a1 : S10 := -69    -- -0.26790
        );
        PORT (clk   : IN  STD_LOGIC;
              reset : IN  STD_LOGIC;
              x_in  : IN  S8;
              g_out : OUT S16;
              h_out : OUT S16
        );
    END COMPONENT db4latti;

    SIGNAL clk_tb   : STD_LOGIC := '0';
    SIGNAL reset_tb : STD_LOGIC := '1';
    SIGNAL x_in_tb  : S8;
    SIGNAL g_out_tb : S16;
    SIGNAL h_out_tb : S16;

BEGIN

    dut: db4latti
        GENERIC MAP (s  => 124,
                     a0 => 443,
                     a1 => -69
        )
        PORT MAP (clk   => clk_tb,
                  reset => reset_tb,
                  x_in  => x_in_tb,
                  g_out => g_out_tb,
                  h_out => h_out_tb
        );

    clk_tb   <= NOT clk_tb AFTER 25ns;
    reset_tb <= '0' AFTER 50ns;
    x_in_tb  <= 100 AFTER 50ns,
                  0 AFTER 100ns,
                100 AFTER 300ns,
                  0 AFTER 350ns;

END ARCHITECTURE testbench;
