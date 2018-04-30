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
        GENERIC (b0 : S17;
                 b1 : S17;
                 b2 : S17;
                 a1 : S17;
                 a2 : S17
        );
        PORT (clk   : IN  STD_LOGIC;
              reset : IN  STD_LOGIC;
              x_in  : IN  S18;
              y_out : OUT S18
        );
    END COMPONENT;

    --- Signal Declaration--------------
    SIGNAL clk_tb   : STD_LOGIC := '0';
    SIGNAL reset_tb : STD_LOGIC := '1';
    SIGNAL x_in_tb  : S18 := 0;
    SIGNAL y_out_tb : S18;

BEGIN
    --- DUT Instantiation---------------
    dut: biquad
    GENERIC MAP (b0 => 16384,   --  1.0000
                 b1 => 34703,   --  2.1181
                 b2 => 18383,   --  1.1220
                 a1 => -10705,  -- -0.6534
                 a2 => 1830     --  0.1117
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
