-- db4latti.vhd
--
-- A lattice implementation of the DB4 filter.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

USE work.n_bit_int.ALL;
--------------------------------------------------------------------------------
ENTITY db4latti IS
    GENERIC (s  : S10 := 124;   --  0.48301
             a0 : S10 := 443;   --  1.73185
             a1 : S10 := -69    -- -0.26790
    );
    PORT (clk   : IN  STD_LOGIC;
          reset : IN  STD_LOGIC;
          x_in  : IN  S8;
          g_out : OUT S16;
          h_out : OUT S16
    );
END ENTITY db4latti;
--------------------------------------------------------------------------------
ARCHITECTURE fpga OF db4latti IS

    TYPE STATE_TYPE IS (even, odd);

    SIGNAL state   : STATE_TYPE := even;
    SIGNAL x_s     : S24 := 0;
    SIGNAL mul_top : A0_1S24 := (OTHERS => 0);
    SIGNAL mul_bot : A0_1S24 := (OTHERS => 0);
    SIGNAL sum_top : A0_1S24 := (OTHERS => 0);
    SIGNAL sum_bot : A0_1S24 := (OTHERS => 0);
    SIGNAL reg1    : S24 := 0;
    SIGNAL reg2    : S24 := 0;
    SIGNAL g       : S24 := 0;
    SIGNAL h       : S24 := 0;

BEGIN

    PROCESS (clk, reset)
    BEGIN
        IF reset='1' THEN
            reg1   <= 0;
            reg2   <= 0;
        ELSIF rising_edge(clk) THEN
            reg1 <= x_s;
            CASE state IS
                WHEN even =>
                    reg2 <= sum_bot(0);
                    g <= sum_top(1);
                    h <= sum_bot(1);
                    state<=odd;
                WHEN odd =>
                    state<=even;
            END CASE;
        END IF;
    END PROCESS;

    x_s        <= x_in * s;
    mul_bot(0) <= reg1 * a0 / 256;
    mul_top(0) <= -a0 * x_s / 256;
    sum_bot(0) <= mul_top(0) + reg1;
    sum_top(0) <= mul_bot(0) + x_s;
    mul_bot(1) <= reg2 * a1 / 256;
    mul_top(1) <= -a1 * sum_top(0) / 256;
    sum_bot(1) <= mul_top(1) + reg2;
    sum_top(1) <= sum_top(0) + mul_bot(1);
    
    g_out <= g / 256;
    h_out <= h / 256;

END ARCHITECTURE fpga;
