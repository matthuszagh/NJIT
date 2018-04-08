-- iir_par.vhd
-- 
-- A parallel implementation of a simple IIR filter. We will again use a
-- lookahead, so the equation is the same as in the pipelined implementation.
--
-- y[n] = (9/16)y[n-2] + (3/4)x[n-2] + x[n-1]
--------------------------------------------------------------------------------
--PACKAGE n_bit_int IS
--    SUBTYPE S15 IS INTEGER RANGE -2**14 TO 2**14-1;
--END PACKAGE;
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY work;
USE work.n_bit_int.ALL;
--------------------------------------------------------------------------------
ENTITY iir_par IS
    PORT (clk      : IN  STD_LOGIC; -- System clock
          reset    : IN  STD_LOGIC; -- Asynchronous reset
          x_in     : IN  S15;       -- System input
          x_e, x_o : OUT S15;       -- Even/odd input
          y_e, y_o : OUT S15;       -- Even/odd output
          clk2     : OUT STD_LOGIC; -- Clock divided by 2
          y_out    : OUT S15        -- System output
    );
END ENTITY;
--------------------------------------------------------------------------------
ARCHITECTURE fpga OF iir_par IS
    
    --- Custom Types--------------------
    TYPE STATE_TYPE IS (even, odd);

    --- Signal Declarations-------------
    SIGNAL state                    : STATE_TYPE;
    SIGNAL x_even, xd_even          : S15 := 0;
    SIGNAL x_odd, xd_odd, x_wait    : S15 := 0;
    SIGNAL y_even, y_odd, y_wait, y : S15 := 0;
    SIGNAL sum_x_even, sum_x_odd    : S15 := 0;
    SIGNAL clk_div2                 : STD_LOGIC;

BEGIN
        
    Multiplex: PROCESS (clk, reset) --> Split x into even and odd samples;
    BEGIN                           --> recombine y at clock rate
        IF reset='1' THEN           --  asynchronous reset
            state <= even; x_even <= 0; x_odd <= 0;
            y <= 0; x_wait <= 0; y_wait <= 0;
        ELSIF rising_edge(clk) THEN
            CASE state IS
                WHEN even =>
                    x_even   <= x_in;
                    x_odd    <= x_wait;
                    clk_div2 <= '1';
                    y        <= y_wait;
                    state    <= odd;
                WHEN odd =>
                    x_wait   <= x_in;
                    y        <= y_odd;
                    y_wait   <= y_even;
                    clk_div2 <= '0';
                    state    <= even;
            END CASE;
        END IF;
    END PROCESS Multiplex;

    y_out <= y;
    clk2  <= clk_div2;
    x_e   <= x_even;
    x_o   <= x_odd;
    y_e   <= y_even;
    y_o   <= y_odd;

    Arithmetic: PROCESS (clk_div2, reset)
    BEGIN
        IF reset='1' THEN
            xd_even <= 0; sum_x_even <= 0; y_even <= 0;
            xd_odd <= 0; sum_x_odd <= 0; y_odd <= 0;
        ELSIF falling_edge(clk_div2) THEN
            xd_even    <= x_even;
            sum_x_even <= (xd_even * 2 + xd_even) / 4 + x_odd;
            y_even     <= (y_even * 8 + y_even) / 16 + sum_x_even;
            xd_odd     <= x_odd;
            sum_x_odd  <= (xd_odd * 2 + xd_odd) / 4 + xd_even;
            y_odd      <= (y_odd * 8 + y_odd) / 16 + sum_x_odd;
        END IF;
    END PROCESS Arithmetic;

END ARCHITECTURE;
