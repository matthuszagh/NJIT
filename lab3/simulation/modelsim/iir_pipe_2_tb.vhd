-- Testbench for project-home/vhdl/iir_pipe_2.vhd
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY work;
USE work.n_bit_int.ALL;
--------------------------------------------------------------------------------
ENTITY iir_pipe_2_tb IS
END ENTITY;
--------------------------------------------------------------------------------
ARCHITECTURE testbench OF iir_pipe_2_tb IS

    --- Component Declaration-----------
    COMPONENT iir_pipe_2 IS
        PORT (clk   : IN  STD_LOGIC;
              reset : IN  STD_LOGIC;
              x_in  : IN  S15;
              y_out : OUT S15
        );
    END COMPONENT;

    --- Signal Declaration--------------
    SIGNAL clk_tb   : STD_LOGIC := '0';
    SIGNAL reset_tb : STD_LOGIC := '1';
    SIGNAL x_in_tb  : S15 := 0;
    SIGNAL y_out_tb : S15;

BEGIN
    --- DUT Instantiation---------------
    dut: iir_pipe_2 PORT MAP (
        clk   => clk_tb,
        reset => reset_tb,
        x_in  => x_in_tb,
        y_out => y_out_tb);

    --- Stimuli Generation--------------
    clk_tb   <= NOT clk_tb AFTER 25ns;
    reset_tb <= '0' AFTER 50ns;
    x_in_tb  <= 1000 AFTER 50ns,
                0 AFTER 100ns;

END ARCHITECTURE;
