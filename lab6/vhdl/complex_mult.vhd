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
          in_r   : IN  S9;
          in_i   : IN  S9;
          tw_r   : IN  S16; -- twiddle factors will take 16 bits / 16384
          tw_rpi : IN  S16; -- twiddle real + imaginary
          tw_rmi : IN  S16; -- twiddle real - imaginary
          out_r  : OUT S9;
          out_i  : OUT S9
    );
END ENTITY complex_mult;
--------------------------------------------------------------------------------
ARCHITECTURE fpga OF complex_mult IS
    
    SIGNAL r : S9;
    SIGNAL i : S9;

BEGIN

    PROCESS (clk, reset) IS
    BEGIN
        IF reset='1' THEN
            r <= 0; i <= 0;
        ELSIF rising_edge(clk) THEN
            r <= (tw_rmi*in_i/16384) + (tw_r*(in_r-in_i)/16384);
            i <= (tw_rpi*in_r/16384) - (tw_r*(in_r-in_i)/16384);
        END IF;
    END PROCESS;

    out_r <= r;
    out_i <= i;

END ARCHITECTURE fpga;
