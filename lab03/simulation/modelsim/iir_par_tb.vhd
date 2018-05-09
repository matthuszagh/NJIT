-- Testbench for project-home/vhdl/iir_par.vhd
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY work;
USE work.n_bit_int.ALL;
--------------------------------------------------------------------------------
ENTITY iir_par_tb IS
END ENTITY;
--------------------------------------------------------------------------------
ARCHITECTURE testbench OF iir_par_tb IS

    --- Component Declaration-----------
    COMPONENT iir_par IS
        PORT (clk      : IN  STD_LOGIC; -- System clock
              reset    : IN  STD_LOGIC; -- Asynchronous reset
              x_in     : IN  S15;       -- System input
              x_e, x_o : OUT S15;       -- Even/odd input
              y_e, y_o : OUT S15;       -- Even/odd output
              clk2     : OUT STD_LOGIC; -- Clock divided by 2
              y_out    : OUT S15        -- System output 
        );
    END COMPONENT;

    --- Signal Declaration--------------
    SIGNAL clk_tb         : STD_LOGIC := '0';
    SIGNAL reset_tb       : STD_LOGIC := '1';
    SIGNAL x_in_tb        : S15 := 0;
    SIGNAL x_e_tb, x_o_tb : S15;
    SIGNAL y_e_tb, y_o_tb : S15;
    SIGNAL clk2_tb        : STD_LOGIC;
    SIGNAL y_out_tb       : S15;

BEGIN
    --- DUT Instantiation---------------
    dut: iir_par PORT MAP (
        clk   => clk_tb,
        reset => reset_tb,
        x_in  => x_in_tb,
        x_e   => x_e_tb,
        x_o   => x_o_tb,
        y_e   => y_e_tb,
        y_o   => y_o_tb,
        clk2  => clk2_tb,
        y_out => y_out_tb);

    --- Stimuli Generation--------------
    clk_tb   <= NOT clk_tb AFTER 25ns;
    reset_tb <= '0' AFTER 50ns;
    x_in_tb  <= 1000 AFTER 50ns,
                0 AFTER 100ns;

END ARCHITECTURE;
