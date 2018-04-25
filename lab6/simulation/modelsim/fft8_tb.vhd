-- fft8_tb.vhd
--
-- A testbench for the 8-length FFT using the Cooley-Tukey algorithm.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.n_bit_int.ALL;

USE work.default_fft8_declarations.ALL;
--------------------------------------------------------------------------------
ENTITY fft8_tb IS
END ENTITY fft8_tb;
--------------------------------------------------------------------------------
ARCHITECTURE testbench OF fft8_tb IS

    COMPONENT fft8 IS
        GENERIC (CONSTANT w : twiddle_array_type :=
                   (( 32768,  32768,  32768),  -- 1
                    ( 23170,      0,  46340),  -- cos( pi/4) - isin( pi/4)
                    (     0, -32768,  32768),  -- -i
                    (-23170,      0, -46340))  -- cos(3pi/4) - isin(3pi/4)
        );
        PORT (clk     : IN  STD_LOGIC;
              reset   : IN  STD_LOGIC;
              x_in    : IN  S12;
              X_r_out : OUT data_array_type;
              X_i_out : OUT data_array_type
        );
    END COMPONENT fft8;

    SIGNAL clk_tb     : STD_LOGIC := '0';
    SIGNAL reset_tb   : STD_LOGIC := '1';
    SIGNAL x_in_tb    : S12 := 0;
    SIGNAL X_r_out_tb : data_array_type;
    SIGNAL X_i_out_tb : data_array_type;

BEGIN

    dut: fft8 PORT MAP (clk     => clk_tb,
                        reset   => reset_tb,
                        x_in    => x_in_tb,
                        X_r_out => X_r_out_tb,
                        X_i_out => X_i_out_tb);

    clk_tb <= NOT clk_tb AFTER 25ns;
    reset_tb <= '0' AFTER 50ns;
    x_in_tb <= 20  AFTER 50ns,
               40  AFTER 100ns,
               60  AFTER 150ns,
               80  AFTER 200ns,
               100 AFTER 250ns,
               120 AFTER 300ns,
               140 AFTER 350ns,
               160 AFTER 400ns,
                 0 AFTER 450ns;

END ARCHITECTURE testbench;
