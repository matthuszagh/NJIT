-- biquad.vhd
--
-- A simple precision BiQuad filter.
--
-- I've used 17 bits to hold the value of the coefficients - although this
-- guarantees accurate precision to 4 decimal places with a integer value up 4,
-- this is probably excessive/wasteful and can be reduced if more resources are
-- needed. To get the actual coefficient value I divide each number by 16384
-- (14 bit shift right).
--
-- I've also used 18 bits for the input and output. This allows the BiQuad
-- filter to be used as a section in a chain of up to 5 sections with an input
-- value of up to 256.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

USE work.n_bit_int.ALL;
--------------------------------------------------------------------------------
ENTITY biquad IS
    GENERIC (b0 : S17 := 16384;   -- Set default coefficients to 1
             b1 : S17 := 16384;
             b2 : S17 := 16384;
             a1 : S17 := 16384;
             a2 : S17 := 16384
    );
    PORT (clk   : IN  STD_LOGIC;
          reset : IN  STD_LOGIC;
          x_in  : IN  S20;
          y_out : OUT S20
    );
END ENTITY biquad;
--------------------------------------------------------------------------------
ARCHITECTURE fpga OF biquad IS
    
    TYPE REG IS ARRAY (1 TO 2) OF S20;
    TYPE A_TYPE IS ARRAY (1 TO 2) OF S20;
    TYPE B_TYPE IS ARRAY (0 TO 2) OF S20;

    SIGNAL b_reg   : REG := (OTHERS => 0);
    SIGNAL a_reg   : REG := (OTHERS => 0);
    SIGNAL y       : S20 := 0;
    SIGNAL a       : A_TYPE := (OTHERS => 0);
    SIGNAL b       : B_TYPE := (OTHERS => 0);
    SIGNAL stage_1 : S20 := 0;
    SIGNAL stage_2 : S20 := 0;

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

    b(0) <= (b0 * x_in)/16384;
    b(1) <= (b1 * b_reg(1))/16384;
    b(2) <= (b2 * b_reg(2))/16384;

    a(1) <= -(a1 * a_reg(1))/16384;
    a(2) <= -(a2 * a_reg(2))/16384;

    stage_1 <= b(1) + a(1) + stage_2;
    stage_2 <= b(2) + a(2);

    y_out <= y;
END ARCHITECTURE fpga;
