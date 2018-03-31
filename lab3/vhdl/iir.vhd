-- Implement a lossy integrator IIR filter
-- y[n+1] = (3/4)y[n] + x[n]
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
--------------------------------------------------------------------------------
ENTITY iir IS
    GENERIC (W1 : INTEGER := 15
    );
    PORT (clk   : IN  STD_LOGIC;
          reset : IN  STD_LOGIC;
          x_in  : IN  SIGNED(W1-1 DOWNTO 0);
          y_out : OUT SIGNED(W1-1 DOWNTO 0)
    ); 
END ENTITY;
--------------------------------------------------------------------------------
ARCHITECTURE fpga OF iir IS

    SIGNAL x, y : SIGNED(W1-1 DOWNTO 0);

BEGIN
    PROCESS (clk, reset)
    BEGIN
        IF reset='1' THEN
            x <= (OTHERS => '0');
            y <= (OTHERS => '0');
        ELSIF rising_edge(clk) THEN
            x <= x_in;
            y <= shift_left(y, 2) + shift_left(y, 1) + x;
        END IF;
    END PROCESS;
    y_out <= y;
END ARCHITECTURE;
