-- A pipelined, lookahead IIR filter.
--
-- y[n] = (9/16)y[n-2] + (3/4)x[n-2] + x[n-1]
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
--------------------------------------------------------------------------------
ENTITY iir_pipe IS
    GENERIC (W1 : INTEGER := 15);
    PORT (clk   : IN  STD_LOGIC;
          reset : IN  STD_LOGIC;
          x_in  : IN  SIGNED(W1-1 DOWNTO 0);
          y_out : OUT SIGNED(W1-1 DOWNTO 0)
    );
END ENTITY;
--------------------------------------------------------------------------------
ARCHITECTURE fpga OF iir_pipe IS

    SIGNAL x, x3, sx, y9, y : SIGNED(W1-1 DOWNTO 0);

BEGIN
    PROCESS (clk, reset)
    BEGIN
        IF reset='1' THEN
            x  <= to_signed(0, W1);
            x3 <= to_signed(0, W1);
            sx <= to_signed(0, W1); -- sx allows only one adder in each stage
            y9 <= to_signed(0, W1);
            y  <= to_signed(0, W1);
        ELSIF rising_edge(clk) THEN
            x  <= x_in;
            x3 <= shift_right(x, 2) + shift_right(x, 1); -- (3/4)x[n-1]
            sx <= x3 + x;                                -- (3/4)x[n-2] + x[n-1]
            y9 <= shift_right(y, 4) + shift_right(y, 1); -- (9/16)y[n-1]
            y  <= y9 + sx;
        END IF;
    END PROCESS;
    y_out <= y;
END ARCHITECTURE;
