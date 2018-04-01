-- A pipelined, lookahead IIR filter.
--
-- y[n+1] = (3/5)y[n] + x[n]
-- y[n] = (9/25)y[n-2] + (3/5)x[n-2] + x[n-1]
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY work;
USE work.n_bit_int.ALL;
--------------------------------------------------------------------------------
ENTITY iir_pipe_2 IS
    PORT (clk   : IN  STD_LOGIC;
          reset : IN  STD_LOGIC;
          x_in  : IN  S15;
          y_out : OUT S15
    );
END ENTITY;
--------------------------------------------------------------------------------
ARCHITECTURE fpga OF iir_pipe_2 IS

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
            x3 <= 3*x/5;    -- (3/5)x[n-1]
            sx <= x3 + x;   -- (3/5)x[n-2] + x[n-1]
            y9 <= 9*y/25;   -- (9/25)y[n-1]
            y  <= y9 + sx;
        END IF;
    END PROCESS;
    y_out <= y;
END ARCHITECTURE;
