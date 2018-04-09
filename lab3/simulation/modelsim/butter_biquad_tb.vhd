-- biquad_tb.vhd
-- Testbench for project-home/vhdl/biquad.vhd
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

USE work.n_bit_int.ALL;
--------------------------------------------------------------------------------
ENTITY butter_biquad_tb IS
END ENTITY;
--------------------------------------------------------------------------------
ARCHITECTURE testbench OF butter_biquad_tb IS

    --- Component Declaration-----------
    COMPONENT butter_biquad IS
        GENERIC (b00 : S17;
                 b10 : S17;
                 b20 : S17;
                 a10 : S17;
                 a20 : S17;
                 b01 : S17;
                 b11 : S17;
                 b21 : S17;
                 a11 : S17;
                 a21 : S17;
                 b02 : S17;
                 b12 : S17;
                 b22 : S17;
                 a12 : S17;
                 a22 : S17;
                 b03 : S17;
                 b13 : S17;
                 b23 : S17;
                 a13 : S17;
                 a23 : S17;
                 b04 : S17;
                 b14 : S17;
                 b24 : S17;
                 a14 : S17;
                 a24 : S17
        );
        PORT (clk       : IN  STD_LOGIC;
              reset     : IN  STD_LOGIC;
              x_in_top  : IN  S20;
              y_out_top : OUT S20
        );
    END COMPONENT;

    --- Signal Declaration--------------
    SIGNAL clk_tb   : STD_LOGIC := '0';
    SIGNAL reset_tb : STD_LOGIC := '1';
    SIGNAL x_in_tb  : S20 := 0;
    SIGNAL y_out_tb : S20;

BEGIN
    --- DUT Instantiation---------------
    dut: butter_biquad
    GENERIC MAP (b00 => 16384,
                 b10 => 34703,
                 b20 => 18383,
                 a10 => -10705,
                 a20 => 1830,
                 b01 => 16384,
                 b11 => 33920,
                 b21 => 17598,
                 a11 => -11192,
                 a21 => 2657,
                 b02 => 16384,
                 b12 => 32714,
                 b22 => 16391,
                 a12 => -12252,
                 a22 => 4460,
                 b03 => 16384,
                 b13 => 31583,
                 b23 => 15257,
                 a13 => -14087,
                 a23 => 7583,
                 b04 => 16384,
                 b14 => 30920,
                 b24 => 14593,
                 a14 => -17097,
                 a24 => 12703
    )
    PORT MAP (
        clk       => clk_tb,
        reset     => reset_tb,
        x_in_top  => x_in_tb,
        y_out_top => y_out_tb);

    --- Stimuli Generation--------------
    clk_tb   <= NOT clk_tb AFTER 25ns;
    reset_tb <= '0' AFTER 50ns;
    x_in_tb  <= 100 AFTER 50ns,
                0 AFTER 100ns;

END ARCHITECTURE;
