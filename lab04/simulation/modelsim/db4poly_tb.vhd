-- db4poly_tb.vhd
--
-- A simple testbench for the db4poly.vhd file.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

USE work.n_bit_int.ALL;
--------------------------------------------------------------------------------
ENTITY db4poly_tb IS
END ENTITY;
--------------------------------------------------------------------------------
ARCHITECTURE testbench OF db4poly_tb IS

    COMPONENT db4poly IS
        GENERIC (coeff_del : A0_1S9 := (57, -33);
                 coeff_lve : A0_1S9 := (124, 214)
        );
        PORT (clk   : IN  STD_LOGIC;
              reset : IN  STD_LOGIC;
              x_in  : IN  S8;
              y_out : OUT S9
        );
    END COMPONENT db4poly;

    SIGNAL clk_tb   : STD_LOGIC := '0';
    SIGNAL reset_tb : STD_LOGIC := '1';
    SIGNAL x_in_tb  : S8 := 0;
    SIGNAL y_out_tb : S9;

BEGIN

    dut: db4poly
        GENERIC MAP (coeff_del => (57, -33),
                     coeff_lve => (124, 214)
        )
        PORT MAP (clk   => clk_tb,
                  reset => reset_tb,
                  x_in  => x_in_tb,
                  y_out => y_out_tb
        );

    clk_tb   <= NOT clk_tb AFTER 25ns;
    reset_tb <= '0' AFTER 50ns;
    x_in_tb  <= 1 AFTER 100ns,
                2 AFTER 150ns,
                3 AFTER 200ns,
                4 AFTER 250ns,
                0 AFTER 300ns,
                100 AFTER 450ns,
                0 AFTER 500ns,
                100 AFTER 600ns,
                0 AFTER 650ns;

END ARCHITECTURE testbench;
