-- butterfly_tb.vhd
--
-- A testbench for the butterfly processor.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

USE work.n_bit_int.ALL;
--------------------------------------------------------------------------------
ENTITY butterfly_tb IS
END ENTITY butterfly_tb;
--------------------------------------------------------------------------------
ARCHITECTURE testbench OF butterfly_tb IS

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

    SIGNAL clk_tb    : STD_LOGIC := '0';
    SIGNAL reset_tb  : STD_LOGIC := '1';
    SIGNAL in1_r_tb  : S9 := 20;
    SIGNAL in1_i_tb  : S9 := 15;
    SIGNAL in2_r_tb  : S9 := 50;
    SIGNAL in2_i_tb  : S9 := 60;
    SIGNAL tw_r_tb   : S16 := 8192;
    SIGNAL tw_rpi_tb : S16 := 22381;
    SIGNAL tw_rmi_tb : S16 := -5997;
    SIGNAL out1_r_tb : S9;
    SIGNAL out1_i_tb : S9;
    SIGNAL out2_r_tb : S9;
    SIGNAL out2_i_tb : S9;

BEGIN

    dut: butterfly
        PORT MAP(clk    => clk_tb,
                 reset  => reset_tb,
                 in1_r  => in1_r_tb,
                 in1_i  => in1_i_tb,
                 in2_r  => in2_r_tb,
                 in2_i  => in2_i_tb,
                 tw_r   => tw_r_tb,
                 tw_rpi => tw_rpi_tb,
                 tw_rmi => tw_rmi_tb,
                 out1_r => out1_r_tb,
                 out1_i => out1_i_tb,
                 out2_r => out2_r_tb,
                 out2_i => out2_i_tb
        );

    clk_tb   <= NOT clk_tb AFTER 25ns;
    reset_tb <= '0' AFTER 50ns;

END ARCHITECTURE testbench;
