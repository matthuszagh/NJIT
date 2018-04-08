-- butter_biquad.vhd
--
-- An order 10 butterworth filter as a series of second-order biquad filters
-- with cutoff frequency = 0.3.
--
-- The transfer function coefficients are:
-- b[0]=0.0000; b[1]=0.0005; [b2]=0.0022; b[3]=0.0060; b[4]=0.0104; b[5]=0.0125
-- b[6]=0.0104; b[7]=0.0060; [b8]=0.0022; b[9]=0.0005; b[10]=0.0000
--
-- a[0]=1.0000; a[1]=-3.9877; a[2]=8.0944; a[3]=-10.4763; a[4]=9.4233;
-- a[5]=-6.0842; a[6]=2.8353; a[7]-0.9364; a[8]=0.2089; a[9]=-0.0283;
-- a[10]=0.0018
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

USE work.n_bit_int.ALL;
--------------------------------------------------------------------------------
ENTITY butter_biquad IS
    GENERIC (L : INTEGER := 11);
    PORT (clk   : IN  STD_LOGIC;
          reset : IN  STD_LOGIC;
          x_in  : IN  S15;
          y_out : OUT S15
    );
END ENTITY butter_biquad;
--------------------------------------------------------------------------------
ARCHITECTURE fpga OF butter_biquad IS
    
    TYPE coeff IS ARRAY (0 TO L-1) OF S15;

BEGIN
    

END ARCHITECTURE fpga;
