-- fft8.vhd
--
-- A 8-length FFT using the Cooley-Tukey algorithm.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

USE work.n_bit_int.ALL;
--------------------------------------------------------------------------------
ENTITY fft8 IS
    GENERIC (LENGTH      : INTEGER := 8;
             LENGTH_M1   : INTEGER := 7;
             LENGTH_D2   : INTEGER := 4;
             LENGTH_D2M1 : INTEGER := 3
    );
    PORT (clk     : IN  STD_LOGIC;
          reset   : IN  STD_LOGIC;
          x_in    : IN  S9;
          X_r_out : OUT A0_7S9;
          X_i_out : OUT A0_7S9
    );
END ENTITY fft8;
--------------------------------------------------------------------------------
ARCHITECTURE fpga OF fft8 IS

    TYPE CONST_ARR IS ARRAY (0 TO LENGTH_D2M1) OF A0_2S16;

    CONSTANT W : CONST_ARR := 
            (( 16384,  16384,  16384),  -- 1
             ( 11585,      0,  23170),  -- cos( pi/4) - isin( pi/4)
             (     0, -16384,  16384),  -- -i
             (-11585,      0, -23170)); -- cos(3pi/4) - isin(3pi/4)

    SIGNAL count        : INTEGER RANGE -1 TO LENGTH_M1 := LENGTH_M1;
    SIGNAL x            : A0_7S9 := (OTHERS => 0);
    SIGNAL out_r_int_s1 : A0_7S9 := (OTHERS => 0);
    SIGNAL out_i_int_s1 : A0_7S9 := (OTHERS => 0);
    SIGNAL out_r_int_s2 : A0_7S9 := (OTHERS => 0);
    SIGNAL out_i_int_s2 : A0_7S9 := (OTHERS => 0);

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
            count  <= LENGTH_M1;
        ELSIF rising_edge(clk) THEN
            IF count >= 0 THEN
                x(LENGTH_M1) <= x_in;
                FOR i IN LENGTH_M1 DOWNTO 1 LOOP
                    x(i-1) <= x(i);
                END LOOP;
                count <= count-1;
            END IF;
        END IF;
    END PROCESS load_x;

    butterfly_stage1: FOR i IN 0 TO 1 GENERATE
        stg1_1: butterfly PORT MAP (clk    => clk,
                                    reset  => reset,
                                    in1_r  => x(2*i),
                                    in1_i  => 0,
                                    in2_r  => x(2*i+4),
                                    in2_i  => 0,
                                    tw_r   => W(0)(0),
                                    tw_rpi => W(0)(1),
                                    tw_rmi => W(0)(2),
                                    out1_r => out_r_int_s1(2*i),
                                    out1_i => out_i_int_s1(2*i),
                                    out2_r => out_r_int_s1(2*i+1),
                                    out2_i => out_i_int_s1(2*i+1));

        stg1_2: butterfly PORT MAP (clk    => clk,
                                    reset  => reset,
                                    in1_r  => x(2*i+1),
                                    in1_i  => 0,
                                    in2_r  => x(2*i+5),
                                    in2_i  => 0,
                                    tw_r   => W(0)(0),
                                    tw_rpi => W(0)(1),
                                    tw_rmi => W(0)(2),
                                    out1_r => out_r_int_s1(2*i+4),
                                    out1_i => out_i_int_s1(2*i+4),
                                    out2_r => out_r_int_s1(2*i+5),
                                    out2_i => out_i_int_s1(2*i+5));
    END GENERATE butterfly_stage1;

    butterfly_stage2: FOR i IN 0 TO 1 GENERATE
        stg2_1: butterfly PORT MAP (clk    => clk,
                                    reset  => reset,
                                    in1_r  => out_r_int_s1(i),
                                    in1_i  => out_i_int_s1(i),
                                    in2_r  => out_r_int_s1(i+2),
                                    in2_i  => out_i_int_s1(i+2),
                                    tw_r   => W(i)(0),
                                    tw_rpi => W(i)(1),
                                    tw_rmi => W(i)(2),
                                    out1_r => out_r_int_s2(i),
                                    out1_i => out_i_int_s2(i),
                                    out2_r => out_r_int_s2(i+2),
                                    out2_i => out_i_int_s2(i+2));

        stg2_2: butterfly PORT MAP (clk    => clk,
                                    reset  => reset,
                                    in1_r  => out_r_int_s1(i+4),
                                    in1_i  => out_i_int_s1(i+4),
                                    in2_r  => out_r_int_s1(i+6),
                                    in2_i  => out_i_int_s1(i+6),
                                    tw_r   => W(i)(0),
                                    tw_rpi => W(i)(1),
                                    tw_rmi => W(i)(2),
                                    out1_r => out_r_int_s2(i+4),
                                    out1_i => out_i_int_s2(i+4),
                                    out2_r => out_r_int_s2(i+6),
                                    out2_i => out_i_int_s2(i+6));
    END GENERATE butterfly_stage2;

    butterfly_stage3: FOR i IN 0 TO 3 GENERATE
        stg3: butterfly PORT MAP (clk    => clk,
                                  reset  => reset,
                                  in1_r  => out_r_int_s2(i),
                                  in1_i  => out_i_int_s2(i),
                                  in2_r  => out_r_int_s2(i+4),
                                  in2_i  => out_i_int_s2(i+4),
                                  tw_r   => W(i)(0),
                                  tw_rpi => W(i)(1),
                                  tw_rmi => W(i)(2),
                                  out1_r => X_r_out(i),
                                  out1_i => X_i_out(i),
                                  out2_r => X_r_out(i+4),
                                  out2_i => X_i_out(i+4));
    END GENERATE butterfly_stage3;

END ARCHITECTURE fpga;
