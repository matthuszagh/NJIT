-- complex_mult_tb.vhd
--
-- A testbench for complex_mult.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

USE work.n_bit_int.ALL;
--------------------------------------------------------------------------------
ENTITY complex_mult_tb IS
END ENTITY complex_mult_tb;
--------------------------------------------------------------------------------
ARCHITECTURE testbench OF complex_mult_tb IS
    
    SIGNAL clk_tb    : STD_LOGIC := '0';
    SIGNAL reset_tb  : STD_LOGIC := '1';
    SIGNAL in_r_tb   : S10 := 50;
    SIGNAL in_i_tb   : S10 := 60;
    SIGNAL tw_r_tb   : S17 := 8192;     -- r=1/2, i=sqrt[3]/2 (14,189)
    SIGNAL tw_rpi_tb : S17 := 22381;
    SIGNAL tw_rmi_tb : S17 := -5997;
    SIGNAL out_r_tb  : S17;
    SIGNAL out_i_tb  : S17;

    COMPONENT complex_mult IS
        PORT (clk    : IN  STD_LOGIC;
              reset  : IN  STD_LOGIC;
              in_r   : IN  S10;
              in_i   : IN  S10;
              tw_r   : IN  S17; -- twiddle factors will take 17 bits / 32768
              tw_rpi : IN  S17; -- twiddle real + imaginary
              tw_rmi : IN  S17; -- twiddle real - imaginary
              out_r  : OUT S10;
              out_i  : OUT S10
        );
    END COMPONENT complex_mult;

BEGIN

    dut: complex_mult
        PORT MAP (clk    => clk_tb,
                  reset  => reset_tb,
                  in_r   => in_r_tb,
                  in_i   => in_i_tb,
                  tw_r   => tw_r_tb,
                  tw_rpi => tw_rpi_tb,
                  tw_rmi => tw_rmi_tb,
                  out_r  => out_r_tb,
                  out_i  => out_i_tb
        );

    clk_tb   <= NOT clk_tb AFTER 25ns;
    reset_tb <= '0' AFTER 50ns;

END ARCHITECTURE testbench;
