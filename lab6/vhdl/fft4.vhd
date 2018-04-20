-- fft4.vhd
--
-- A 4-length FFT using the Cooley-Tukey algorithm.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

USE work.n_bit_int.ALL;
--------------------------------------------------------------------------------
ENTITY fft4 IS
    PORT (clk     : IN  STD_LOGIC;
          reset   : IN  STD_LOGIC;
          x_in    : IN  S9;
          X_r_out : OUT A0_3S9;
          X_i_out : OUT A0_3S9
    );
END ENTITY fft4;
--------------------------------------------------------------------------------
ARCHITECTURE fpga OF fft4 IS

    TYPE CONST_ARR IS ARRAY (0 TO 1) OF A0_2S16;

    CONSTANT W : CONST_ARR := ((16384, 16384, 16384),
                               (0, -16384, 16384));

    SIGNAL count     : INTEGER RANGE -1 TO 3 := 3;
    SIGNAL x         : A0_3S9 := (OTHERS => 0);
    SIGNAL out_r_int : A0_3S9 := (OTHERS => 0);
    SIGNAL out_i_int : A0_3S9 := (OTHERS => 0);

    COMPONENT butterfly IS
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
    END COMPONENT butterfly;

BEGIN

    load_x: PROCESS (clk, reset) IS
    BEGIN
        IF reset='1' THEN
            x      <= (OTHERS => 0);
            count  <= 3;
        ELSIF rising_edge(clk) THEN
            IF count >= 0 THEN
                x(3) <= x_in;
                FOR i IN 3 DOWNTO 1 LOOP
                    x(i-1) <= x(i);
                END LOOP;
                count <= count-1;
            END IF;
        END IF;
    END PROCESS load_x;

    butterfly_stage1: FOR i IN 0 TO 1 GENERATE
        stg1: butterfly PORT MAP (clk    => clk,
                                  reset  => reset,
                                  in1_r  => x(i),
                                  in1_i  => 0,
                                  in2_r  => x(i+2),
                                  in2_i  => 0,
                                  tw_r   => W(0)(0),
                                  tw_rpi => W(0)(1),
                                  tw_rmi => W(0)(2),
                                  out1_r => out_r_int(2*i),
                                  out1_i => out_i_int(2*i),
                                  out2_r => out_r_int(2*i+1),
                                  out2_i => out_i_int(2*i+1));
    END GENERATE butterfly_stage1;

    butterfly_stage2: FOR i IN 0 TO 1 GENERATE
        stg2: butterfly PORT MAP (clk    => clk,
                                  reset  => reset,
                                  in1_r  => out_r_int(i),
                                  in1_i  => out_i_int(i),
                                  in2_r  => out_r_int(i+2),
                                  in2_i  => out_i_int(i+2),
                                  tw_r   => W(i)(0),
                                  tw_rpi => W(i)(1),
                                  tw_rmi => W(i)(2),
                                  out1_r => X_r_out(i),
                                  out1_i => X_i_out(i),
                                  out2_r => X_r_out(i+2),
                                  out2_i => X_i_out(i+2));
    END GENERATE butterfly_stage2;

END ARCHITECTURE fpga;
