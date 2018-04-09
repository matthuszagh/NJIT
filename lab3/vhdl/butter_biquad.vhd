-- butter_biquad.vhd
--
-- An order 10 butterworth filter as a series of second-order biquad filters
-- with cutoff frequency = 0.3.
--
-- The transfer function coefficients are:
-- b[0]=0.0000; b[1]=0.0005; [b2]=0.0022; b[3]=0.0060; b[4]=0.0104; b[5]=0.0125
-- b[6]=0.0104; b[7]=0.0060; [b8]=0.0022; b[9]=0.0005; b[10]=0.0000
--
-- a[0]=1.0000; a[1]=-3.9877; a[2]=8.0944; a[3]=-10.4763; a[4]=9.4233;
-- a[5]=-6.0842; a[6]=2.8353; a[7]-0.9364; a[8]=0.2089; a[9]=-0.0283;
-- a[10]=0.0018
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

USE work.n_bit_int.ALL;
--------------------------------------------------------------------------------
ENTITY butter_biquad IS
    GENERIC (b00 : S17 := 16384;
             b10 : S17 := 34703;
             b20 : S17 := 18383;
             a10 : S17 := -10705;
             a20 : S17 := 1830;
             b01 : S17 := 16384;
             b11 : S17 := 33920;
             b21 : S17 := 17598;
             a11 : S17 := -11192;
             a21 : S17 := 2657;
             b02 : S17 := 16384;
             b12 : S17 := 32714;
             b22 : S17 := 16391;
             a12 : S17 := -12252;
             a22 : S17 := 4460;
             b03 : S17 := 16384;
             b13 : S17 := 31583;
             b23 : S17 := 15257;
             a13 : S17 := -14087;
             a23 : S17 := 7583;
             b04 : S17 := 16384;
             b14 : S17 := 30920;
             b24 : S17 := 14593;
             a14 : S17 := -17097;
             a24 : S17 := 12703
    );
    PORT (clk       : IN  STD_LOGIC;
          reset     : IN  STD_LOGIC;
          x_in_top  : IN  S20;
          y_out_top : OUT S20
    );
END ENTITY butter_biquad;
--------------------------------------------------------------------------------
ARCHITECTURE fpga OF butter_biquad IS
    
    COMPONENT biquad IS
        GENERIC (b0 : S17;
                 b1 : S17;
                 b2 : S17;
                 a1 : S17;
                 a2 : S17
        );
        PORT (clk   : IN  STD_LOGIC;
              reset : IN  STD_LOGIC;
              x_in  : IN  S20;
              y_out : OUT S20
        );
    END COMPONENT biquad;

    SIGNAL y01 : S20 := 0;
    SIGNAL y12 : S20 := 0;
    SIGNAL y23 : S20 := 0;
    SIGNAL y34 : S20 := 0;
    SIGNAL y45 : S20 := 0;

BEGIN
    
    seq1 : biquad
        GENERIC MAP (b0 => b00,
                     b1 => b10,
                     b2 => b20,
                     a1 => a10,
                     a2 => a20
        )
        PORT MAP (clk   => clk,
                  reset => reset,
                  x_in  => x_in_top,
                  y_out => y01
        );

    seq2 : biquad
        GENERIC MAP (b0 => b01,
                     b1 => b11,
                     b2 => b21,
                     a1 => a11,
                     a2 => a21
        )
        PORT MAP (clk   => clk,
                  reset => reset,
                  x_in  => y01,
                  y_out => y12
        );

    seq3 : biquad
        GENERIC MAP (b0 => b02,
                     b1 => b12,
                     b2 => b22,
                     a1 => a12,
                     a2 => a22
        )
        PORT MAP (clk   => clk,
                  reset => reset,
                  x_in  => y12,
                  y_out => y23
        );

    seq4 : biquad
        GENERIC MAP (b0 => b03,
                     b1 => b13,
                     b2 => b23,
                     a1 => a13,
                     a2 => a23
        )
        PORT MAP (clk   => clk,
                  reset => reset,
                  x_in  => y23,
                  y_out => y34
        );

    seq5 : biquad
        GENERIC MAP (b0 => b04,
                     b1 => b14,
                     b2 => b24,
                     a1 => a14,
                     a2 => a24
        )
        PORT MAP (clk   => clk,
                  reset => reset,
                  x_in  => y34,
                  y_out => y45
        );

        y_out_top <= y45;

END ARCHITECTURE fpga;
