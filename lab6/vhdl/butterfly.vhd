-- butterfly.vhd
--
-- A butterfly processor.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

USE work.n_bit_int.ALL;
--------------------------------------------------------------------------------
ENTITY butterfly IS
    PORT (clk    : IN  STD_LOGIC;
          reset  : IN  STD_LOGIC;
          in1_r  : IN  S9;
          in1_i  : IN  S9;
          in2_r  : IN  S9;
          in2_i  : IN  S9;
          tw_r   : IN  S16;
          tw_rpi : IN  S16;
          tw_rmi : IN  S16;
          out1_r : OUT S9;
          out1_i : OUT S9;
          out2_r : OUT S9;
          out2_i : OUT S9
    );
END ENTITY butterfly;
--------------------------------------------------------------------------------
ARCHITECTURE fpga OF butterfly IS

    TYPE STATE_TYPE is (even, odd);

    COMPONENT complex_mult IS
        PORT (clk    : IN  STD_LOGIC;
              reset  : IN  STD_LOGIC;
              in_r   : IN  S9;
              in_i   : IN  S9;
              tw_r   : IN  S16; -- twiddle factors will take 16 bits / 16384
              tw_rpi : IN  S16; -- twiddle real + imaginary
              tw_rmi : IN  S16; -- twiddle real - imaginary
              out_r  : OUT S9;
              out_i  : OUT S9
        );
    END COMPONENT complex_mult;

    SIGNAL state       : STATE_TYPE := even;
    SIGNAL clk_div2    : STD_LOGIC := '0';
    SIGNAL out1_r_ff   : S9 := 0;
    SIGNAL out1_i_ff   : S9 := 0;
    SIGNAL out2_r_ff   : S9 := 0;
    SIGNAL out2_i_ff   : S9 := 0;
    SIGNAL in2_tw_r    : S9 := 0;
    SIGNAL in2_tw_i    : S9 := 0;

BEGIN

    Fast_clk: PROCESS (clk, reset) IS
    BEGIN
        IF reset='1' THEN
            clk_div2 <= '0';
        ELSIF rising_edge(clk) THEN
            IF state=even THEN
                clk_div2 <= '1';
                state <= odd;
            ELSE
                clk_div2 <= '0';
                state <= even;
            END IF;
        END IF;
    END PROCESS Fast_clk;

    Slow_clk: PROCESS (clk_div2) IS
    BEGIN
        IF falling_edge(clk_div2) THEN
            out1_r_ff <= in1_r + in2_tw_r;
            out1_i_ff <= in1_i + in2_tw_i;
            out2_r_ff <= in1_r - in2_tw_r;
            out2_i_ff <= in1_i - in2_tw_i;
        END IF;
    END PROCESS Slow_clk;

    mul: complex_mult
        PORT MAP (clk    => clk,
                  reset  => reset,
                  in_r   => in2_r,
                  in_i   => in2_i,
                  tw_r   => tw_r,
                  tw_rpi => tw_rpi,
                  tw_rmi => tw_rmi,
                  out_r  => in2_tw_r,
                  out_i  => in2_tw_i
        );

    out1_r <= out1_r_ff;
    out1_i <= out1_i_ff;
    out2_r <= out2_r_ff;
    out2_i <= out2_i_ff;

END ARCHITECTURE fpga;
