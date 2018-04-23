-- fft8_tb.vhd
--
-- A testbench for the 8-length FFT using the Cooley-Tukey algorithm.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

USE work.n_bit_int.ALL;
--------------------------------------------------------------------------------
ENTITY fft8_tb IS
END ENTITY fft8_tb;
--------------------------------------------------------------------------------
ARCHITECTURE testbench OF fft8_tb IS

    COMPONENT fft8 IS
        GENERIC (LENGTH : INTEGER := 8;
                 STAGES : INTEGER := 3
        );
        PORT (clk     : IN  STD_LOGIC;
              reset   : IN  STD_LOGIC;
              x_in    : IN  S10;
              X_r_out : OUT A0_7S10;
              X_i_out : OUT A0_7S10
        );
    END COMPONENT fft8;

    SIGNAL clk_tb     : STD_LOGIC := '0';
    SIGNAL reset_tb   : STD_LOGIC := '1';
    SIGNAL x_in_tb    : S10 := 0;
    SIGNAL X_r_out_tb : A0_7S10;
    SIGNAL X_i_out_tb : A0_7S10;

BEGIN

    dut: fft8 PORT MAP (clk     => clk_tb,
                        reset   => reset_tb,
                        x_in    => x_in_tb,
                        X_r_out => X_r_out_tb,
                        X_i_out => X_i_out_tb);

    clk_tb <= NOT clk_tb AFTER 25ns;
    reset_tb <= '0' AFTER 50ns;
    x_in_tb <= 2  AFTER 50ns,
               4  AFTER 100ns,
               6  AFTER 150ns,
               8  AFTER 200ns,
               10 AFTER 250ns,
               12 AFTER 300ns,
               14 AFTER 350ns,
               16 AFTER 400ns,
                0 AFTER 450ns;

END ARCHITECTURE testbench;
