-- biquad_tb.vhd
-- Testbench for project-home/vhdl/biquad.vhd
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

USE work.n_bit_int.ALL;
--------------------------------------------------------------------------------
ENTITY biquad_tb IS
END ENTITY;
--------------------------------------------------------------------------------
ARCHITECTURE testbench OF biquad_tb IS

    --- Component Declaration-----------
    COMPONENT biquad IS
        GENERIC (b0 : S15 := 256;   --  1.0000
                 b1 : S15 := 542;   --  2.1181
                 b2 : S15 := 287;   --  1.1220
                 a1 : S15 := -167;  -- -0.6534
                 a2 : S15 := 29     --  0.1117
        );
        PORT (clk   : IN  STD_LOGIC;
              reset : IN  STD_LOGIC;
              x_in  : IN  S9;
              y_out : OUT S15
        );
    END COMPONENT;

    --- Signal Declaration--------------
    SIGNAL clk_tb   : STD_LOGIC := '0';
    SIGNAL reset_tb : STD_LOGIC := '1';
    SIGNAL x_in_tb  : S9 := 0;
    SIGNAL y_out_tb : S15;

BEGIN
    --- DUT Instantiation---------------
    dut: biquad
    GENERIC MAP (b0 => 256,   --  1.0000
                 b1 => 542,   --  2.1181
                 b2 => 287,   --  1.1220
                 a1 => -167,  -- -0.6534
                 a2 => 29     --  0.1117
    )
    PORT MAP (
        clk   => clk_tb,
        reset => reset_tb,
        x_in  => x_in_tb,
        y_out => y_out_tb);

    --- Stimuli Generation--------------
    clk_tb   <= NOT clk_tb AFTER 25ns;
    reset_tb <= '0' AFTER 50ns;
    x_in_tb  <= 100 AFTER 50ns,
                0 AFTER 100ns;

END ARCHITECTURE;
