-- fft4.vhd
--
-- A 8-length FFT using the Cooley-Tukey algorithm.
-----Package:-------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.n_bit_int.ALL;

PACKAGE fft4_declarations IS
    GENERIC (CONSTANT length : INTEGER; -- Filter length.
             CONSTANT stages : INTEGER  -- M = lg(length)
    );
    TYPE data_array_type IS ARRAY (0 TO length-1) OF S12;
    TYPE twiddle_array_type IS ARRAY (0 TO length/2 - 1) OF A0_2S17;
END PACKAGE fft4_declarations;
-----Main code:-----------------------------------------------------------------
PACKAGE default_fft4_declarations IS NEW work.fft4_declarations
    GENERIC MAP (length => 4,
                 stages => 2
    );
USE work.default_fft4_declarations.ALL;

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.n_bit_int.ALL;
--------------------------------------------------------------------------------
ENTITY fft4 IS
    GENERIC (CONSTANT w : twiddle_array_type :=
                ((32768, 32768, 32768),
                 (0, -32768, 32768))
    );
    PORT (clk     : IN  STD_LOGIC;
          reset   : IN  STD_LOGIC;
          x_in    : IN  S12;
          X_r_out : OUT data_array_type;
          X_i_out : OUT data_array_type
    );
END ENTITY fft4;
--------------------------------------------------------------------------------
ARCHITECTURE fpga OF fft4 IS

    TYPE A0_M_A0_LS12 IS ARRAY (0 TO stages) OF data_array_type;

    SIGNAL count : INTEGER RANGE -1 TO length-1 := length-1;
    SIGNAL xmr   : A0_M_A0_LS12 := (OTHERS => (OTHERS => 0)); -- Array at stage M - reals
    SIGNAL xmi   : A0_M_A0_LS12 := (OTHERS => (OTHERS => 0)); -- Array at stage M - imaginaries

    COMPONENT butterfly IS
        PORT (clk    : IN  STD_LOGIC;
              reset  : IN  STD_LOGIC;
              in1_r  : IN  S12;
              in1_i  : IN  S12;
              in2_r  : IN  S12;
              in2_i  : IN  S12;
              tw_r   : IN  S17;
              tw_rpi : IN  S17;
              tw_rmi : IN  S17;
              out1_r : OUT S12;
              out1_i : OUT S12;
              out2_r : OUT S12;
              out2_i : OUT S12
        );
    END COMPONENT butterfly;

BEGIN

    load_x: PROCESS (clk, reset) IS
    BEGIN
        IF reset='1' THEN
            --xmr <= (OTHERS => (OTHERS => 0));
            --xmi <= (OTHERS => (OTHERS => 0));
            count  <= length-1;
        ELSIF rising_edge(clk) THEN
            IF count >= 0 THEN
                xmr(0)(length-1) <= x_in;
                FOR i IN length-1 DOWNTO 1 LOOP
                    xmr(0)(i-1) <= xmr(0)(i);
                END LOOP;
                count <= count-1;
            END IF;
        END IF;
    END PROCESS load_x;

    -- Perform butterfly computations in every stage.
    stage: FOR i IN 0 TO stages-1 GENERATE
        substage: FOR j IN 0 TO length/2-1 GENERATE
            SIGNAL vec_index : UNSIGNED(stages-1 DOWNTO 0) := (OTHERS => '0');
            CONSTANT index : INTEGER RANGE 0 TO length-1
                    := TO_INTEGER(insert_pad_bit(reverse_vector(delete_bit(vec_index, stages-1-i)+j), stages-1-i));
            CONSTANT inc : INTEGER RANGE 1 TO length/2 := length/(2**(i+1));
            CONSTANT w_inc : UNSIGNED(stages-2 DOWNTO 0) := TO_UNSIGNED(inc*j, stages-1);
        BEGIN
            butterfly_comp: butterfly
                PORT MAP (clk    => clk,
                          reset  => reset,
                          in1_r  => xmr(i)(index),
                          in1_i  => xmi(i)(index),
                          in2_r  => xmr(i)(index+inc),
                          in2_i  => xmi(i)(index+inc),
                          tw_r   => w(TO_INTEGER(w_inc))(0),
                          tw_rpi => w(TO_INTEGER(w_inc))(1),
                          tw_rmi => w(TO_INTEGER(w_inc))(2),
                          out1_r => xmr(i+1)(index),
                          out1_i => xmi(i+1)(index),
                          out2_r => xmr(i+1)(index+inc),
                          out2_i => xmi(i+1)(index+inc));
        END GENERATE substage;
    END GENERATE stage;

    -- Map internal data to output.
    output: FOR i IN 0 TO length-1 GENERATE
        SIGNAL vec_index : UNSIGNED(stages-1 DOWNTO 0) := (OTHERS => '0');
        CONSTANT index : INTEGER RANGE 0 TO length-1
                := TO_INTEGER(reverse_vector(vec_index+i));
    BEGIN
        X_r_out(i) <= xmr(stages)(index);
        X_i_out(i) <= xmi(stages)(index);
    END GENERATE output;

END ARCHITECTURE fpga;
