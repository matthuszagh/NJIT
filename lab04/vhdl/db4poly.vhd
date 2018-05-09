-- db4poly.vhd
--
-- A simple DB4 filter implementation of a polyphase decomposition with a
-- downsampling factor of 2.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

USE work.n_bit_int.ALL;
--------------------------------------------------------------------------------
ENTITY db4poly IS
    GENERIC (coeff_del : A0_1S9 := (57, -33);
             coeff_lve : A0_1S9 := (124, 214)
    );
    PORT (clk   : IN  STD_LOGIC;
          reset : IN  STD_LOGIC;
          x_in  : IN  S8;
          y_out : OUT S9
    );
END ENTITY db4poly;
--------------------------------------------------------------------------------
ARCHITECTURE fpga OF db4poly IS
    
    TYPE STATE_TYPE IS (even, odd);
    
    SIGNAL state      : STATE_TYPE;
    SIGNAL e_reg      : A0_1S8;
    SIGNAL filter_sep : S8 := 0;
    SIGNAL e_del      : A0_1S17 := (0, 0);
    SIGNAL e_lve      : A0_1S17 := (0, 0);
    SIGNAL e_out      : A0_1S17 := (0, 0);
    SIGNAL y          : S17 := 0;

BEGIN

    Fast_clk: PROCESS (reset, clk)
    BEGIN
        IF reset='1' THEN
            e_reg <= (OTHERS => 0);
            state <= even;
        ELSIF rising_edge(clk) THEN
            filter_sep <= x_in;
            CASE state IS
                WHEN even =>
                    -- update regs
                    e_reg(0) <= x_in;
                    e_reg(1) <= filter_sep;
                    -- compute first coefficients
                    e_lve(0) <= coeff_lve(0) * x_in;
                    e_lve(1) <= coeff_lve(1) * filter_sep;
                    -- compute e_del
                    FOR i IN 0 TO 1 LOOP
                        e_del(i) <= coeff_del(i) * e_reg(i);
                    END LOOP;
                    -- compute y
                    y <= e_out(0) + e_out(1);
                    state <= odd;
                WHEN odd =>
                    state <= even;
            END CASE;
        END IF;
    END PROCESS Fast_clk;

    Add: FOR i IN 0 TO 1 GENERATE
        e_out(i) <= e_del(i) + e_lve(i);
    END GENERATE Add;

    y_out <= y/256;

END ARCHITECTURE fpga;
