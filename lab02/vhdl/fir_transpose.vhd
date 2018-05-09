-- fir_transpose.vhd
--
-- Transposed form implementation of a simple Daubechies FIR filter.
--
-- y[n] = 0.48301x[n] + 0.8365x[n-1] + 0.2241x[n-2] - 0.1294x[n-3]
-- y[n] approx = (124/256)x[n] + (214/256)x[n-1]
--               + (57/256)x[n-2] - (33/256)x[n-3]
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

USE work.n_bit_other_int.ALL;
--------------------------------------------------------------------------------
ENTITY fir_transpose IS
    PORT (clk   : IN  STD_LOGIC;
          reset : IN  STD_LOGIC;
          x     : IN  S9;
          y     : OUT S11
    );
END ENTITY fir_transpose;
--------------------------------------------------------------------------------
ARCHITECTURE fpga OF fir_transpose IS

    TYPE S9C IS ARRAY (0 TO 3) OF S9;
    TYPE S9A IS ARRAY (1 TO 3) OF S9;
    TYPE S18A IS ARRAY (0 TO 3) OF S18;
    TYPE S19A IS ARRAY (1 TO 3) OF S19;

    SIGNAL coeff : S9C := (0 => 124, 1 => 214, 2 => 57, 3 => -33);
    SIGNAL mul   : S18A := (OTHERS => 0);
    SIGNAL add   : S19A := (OTHERS => 0);
    SIGNAL y_out : S11 := 0;

BEGIN
    PROCESS (clk, reset) IS
    BEGIN
        IF reset='1' THEN
            add <= (OTHERS => 0);
        ELSIF rising_edge(clk) THEN
            add(3) <= mul(3);
            FOR i IN 1 TO 2 LOOP
                add(i) <= mul(i) + add(i+1);
            END LOOP;
            y_out <= (add(1) + mul(0)) / 256;
        END IF;
    END PROCESS;

    mul(0) <= coeff(0) * x;
    MulC: FOR i IN 1 TO 3 GENERATE
        mul(i) <= coeff(i) * x;
    END GENERATE MulC;

    y <= y_out;

END ARCHITECTURE fpga;
