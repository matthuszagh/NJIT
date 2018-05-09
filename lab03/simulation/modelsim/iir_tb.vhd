-- Testbench for project-home/vhdl/iir.vhd
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
--------------------------------------------------------------------------------
ENTITY iir_tb IS
    GENERIC (W1 : INTEGER := 15
    );
END ENTITY;
--------------------------------------------------------------------------------
ARCHITECTURE testbench OF iir_tb IS

    --- Component Declaration-----------
    COMPONENT iir_pipe IS
        GENERIC (W1 : INTEGER := 15
        );
        PORT (clk   : IN  STD_LOGIC;
              reset : IN  STD_LOGIC;
              x_in  : IN  SIGNED(W1-1 DOWNTO 0);
              y_out : OUT SIGNED(W1-1 DOWNTO 0)
        );
    END COMPONENT;

    --- Signal Declaration--------------
    SIGNAL clk_tb   : STD_LOGIC := '0';
    SIGNAL reset_tb : STD_LOGIC := '1';
    SIGNAL x_in_tb  : SIGNED(W1-1 DOWNTO 0)
                            := to_signed(0, W1);
    SIGNAL y_out_tb : SIGNED(W1-1 DOWNTO 0);

BEGIN
    --- DUT Instantiation---------------
    dut: iir_pipe PORT MAP (
        clk   => clk_tb,
        reset => reset_tb,
        x_in  => x_in_tb,
        y_out => y_out_tb);

    --- Stimuli Generation--------------
    clk_tb   <= NOT clk_tb AFTER 25ns;
    reset_tb <= '0' AFTER 50ns;
    x_in_tb  <= to_signed(1000, W1) AFTER 50ns,
                to_signed(0, W1) AFTER 100ns;

END ARCHITECTURE;
