-- biquad.vhd
--
-- A simple precision BiQuad filter.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

USE work.n_bit_int.ALL;
--------------------------------------------------------------------------------
ENTITY biquad IS
    GENERIC (b0 : S11 := 256;   -- Set default coefficients to 1
             b1 : S11 := 256;
             b2 : S11 := 256;
             a1 : S11 := 256;
             a2 : S11 := 256
    );
    PORT (clk   : IN  STD_LOGIC;
          reset : IN  STD_LOGIC;
          x_in  : IN  S9;
          y_out : OUT S15
    );
END ENTITY biquad;
--------------------------------------------------------------------------------
ARCHITECTURE fpga OF biquad IS
    
    TYPE REG IS ARRAY (1 TO 2) OF S15;
    TYPE A_TYPE IS ARRAY (1 TO 2) OF S15;
    TYPE B_TYPE IS ARRAY (0 TO 2) OF S15;

    SIGNAL b_reg   : REG := (OTHERS => 0);
    SIGNAL a_reg   : REG := (OTHERS => 0);
    SIGNAL y       : S15 := 0;
    SIGNAL a       : A_TYPE := (OTHERS => 0);
    SIGNAL b       : B_TYPE := (OTHERS => 0);
    SIGNAL stage_1 : S15 := 0;
    SIGNAL stage_2 : S15 := 0;

BEGIN
    PROCESS (clk, reset)
    BEGIN
        IF reset='1' THEN
            b_reg <= (OTHERS => 0);
            a_reg <= (OTHERS => 0);
            y <= 0;
        ELSIF rising_edge(clk) THEN
            b_reg(1) <= x_in;
            b_reg(2) <= b_reg(1);
            a_reg(1) <= b(0) + stage_1;
            a_reg(2) <= a_reg(1);
            y <= b(0) + stage_1;
        END IF;
    END PROCESS;

    b(0) <= (b0 * x_in)/256;
    b(1) <= (b1 * b_reg(1))/256;
    b(2) <= (b2 * b_reg(2))/256;

    a(1) <= -(a1 * a_reg(1))/256;
    a(2) <= -(a2 * a_reg(2))/256;

    stage_1 <= b(1) + a(1) + stage_2;
    stage_2 <= b(2) + a(2);

    y_out <= y;
END ARCHITECTURE fpga;
