-- complex_mult.vhd
--
-- Employs the Karatsuba algorithm to efficiently compute the product
-- R + iI = (a+ib)(c+id)
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

USE work.n_bit_int.ALL;
--------------------------------------------------------------------------------
ENTITY complex_mult IS
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
END ENTITY complex_mult;
--------------------------------------------------------------------------------
ARCHITECTURE fpga OF complex_mult IS
    
    SIGNAL r : S10;
    SIGNAL i : S10;

BEGIN

    PROCESS (clk, reset) IS
    BEGIN
        IF reset='1' THEN
            r <= 0; i <= 0;
        ELSIF rising_edge(clk) THEN
            r <= (tw_rmi*in_i/32768) + (tw_r*(in_r-in_i)/32768);
            i <= (tw_rpi*in_r/32768) - (tw_r*(in_r-in_i)/32768);
        END IF;
    END PROCESS;

    out_r <= r;
    out_i <= i;

END ARCHITECTURE fpga;
