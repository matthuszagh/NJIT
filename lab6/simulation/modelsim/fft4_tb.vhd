-- fft4_tb.vhd
--
-- A testbench for the 4-length FFT using the Cooley-Tukey algorithm.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

USE work.n_bit_int.ALL;
--------------------------------------------------------------------------------
ENTITY fft4_tb IS
END ENTITY fft4_tb;
--------------------------------------------------------------------------------
ARCHITECTURE testbench OF fft4_tb IS

    COMPONENT fft4 IS
        PORT (clk     : IN  STD_LOGIC;
              reset   : IN  STD_LOGIC;
              x_in    : IN  S10;
              X_r_out : OUT A0_3S10;
              X_i_out : OUT A0_3S10
        );
    END COMPONENT fft4;

    SIGNAL clk_tb     : STD_LOGIC := '0';
    SIGNAL reset_tb   : STD_LOGIC := '1';
    SIGNAL x_in_tb    : S10 := 0;
    SIGNAL X_r_out_tb : A0_3S10;
    SIGNAL X_i_out_tb : A0_3S10;

BEGIN

    dut: fft4 PORT MAP (clk     => clk_tb,
                        reset   => reset_tb,
                        x_in    => x_in_tb,
                        X_r_out => X_r_out_tb,
                        X_i_out => X_i_out_tb);

    clk_tb <= NOT clk_tb AFTER 25ns;
    reset_tb <= '0' AFTER 50ns;
    x_in_tb <= 20 AFTER 50ns,
               40 AFTER 100ns,
               60 AFTER 150ns,
               80 AFTER 200ns,
                0 AFTER 250ns;

END ARCHITECTURE testbench;
