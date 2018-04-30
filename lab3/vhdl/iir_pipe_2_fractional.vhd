-- A pipelined, lookahead IIR filter.
--
-- y[n+1] = (3/5)y[n] + x[n]
-- y[n] = (9/25)y[n-2] + (3/5)x[n-2] + x[n-1]
--
-- The main problem with this is that we can't use bit shifts. However, we can
-- develop an approximation for the fractional coefficients that are
-- sufficiently accurate for the range we care about (i.e. where the number
-- doesn't make a difference for the highest possible value = 2^14-1 = 16,383.
--
-- We can decompose 3/5 into:
-- 1/2 + 1/16 + 1/32 + 1/256 + 1/512 + 1/4096 + 1/8192 + 1/40960.
-- It is clear that the last term won't make a difference since our largest
-- value divided by it gives a number smaller than 1, so we drop it and we're
-- left with:
-- 3/5 approx = 1/2 + 1/16 + 1/32 + 1/256 + 1/512 + 1/4096 + 1/8192
--
-- The same process for 9/25 gives
-- 9/25 approx = 1/4 + 1/16 + 1/32 + 1/64 + 1/2048 + 1/8192
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY work;
USE work.n_bit_int.ALL;
--------------------------------------------------------------------------------
ENTITY iir_pipe_2_fractional IS
    PORT (clk   : IN  STD_LOGIC;
          reset : IN  STD_LOGIC;
          x_in  : IN  S15;
          y_out : OUT S15
    );
END ENTITY;
--------------------------------------------------------------------------------
ARCHITECTURE fpga OF iir_pipe_2_fractional IS

    SIGNAL x, x3, sx, y9, y : S15;

BEGIN
    PROCESS (clk, reset)
    BEGIN
        IF reset='1' THEN
            x  <= 0;
            x3 <= 0;
            sx <= 0;    -- sx allows only one adder in each stage
            y9 <= 0;
            y  <= 0;
        ELSIF rising_edge(clk) THEN
            x  <= x_in;
            x3 <= x/2 + x/16 + x/32 + x/256 + x/512 + x/4096 + x/8192;  -- (3/5)x[n-1]
            sx <= x3 + x;                                               -- (3/5)x[n-2] + x[n-1]
            y9 <= y/4 + y/16 + y/32 + y/64 + y/2048 + y/8192;           -- (9/25)y[n-1]
            y  <= y9 + sx;
        END IF;
    END PROCESS;
    y_out <= y;
END ARCHITECTURE;
