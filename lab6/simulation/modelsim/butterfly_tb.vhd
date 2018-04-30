-- butterfly_tb.vhd
--
-- A testbench for the butterfly processor.
--------------------------------------------------------------------------------
package butterfly_pkg_inst is new work.butterfly_pkg
    generic map (
        data_precision    => 12,
        twiddle_precision => 17
    );
use work.butterfly_pkg_inst.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--------------------------------------------------------------------------------
entity butterfly_tb is
end entity butterfly_tb;
--------------------------------------------------------------------------------
architecture testbench of butterfly_tb is

    signal clk_tb    : std_logic := '0';
    signal reset_tb  : std_logic := '1';
    signal in1_r_tb  : signed(data_precision-1 downto 0) := to_signed(20, data_precision);
    signal in1_i_tb  : signed(data_precision-1 downto 0) := to_signed(15, data_precision);
    signal in2_r_tb  : signed(data_precision-1 downto 0) := to_signed(50, data_precision);
    signal in2_i_tb  : signed(data_precision-1 downto 0) := to_signed(60, data_precision);
    signal tw_r_tb   : signed(twiddle_precision-1 downto 0) := to_signed(16384, twiddle_precision);
    signal tw_rpi_tb : signed(twiddle_precision-1 downto 0) := to_signed(44762, twiddle_precision);
    signal tw_rmi_tb : signed(twiddle_precision-1 downto 0) := to_signed(-11994, twiddle_precision);
    signal out1_r_tb : signed(data_precision-1 downto 0);
    signal out1_i_tb : signed(data_precision-1 downto 0);
    signal out2_r_tb : signed(data_precision-1 downto 0);
    signal out2_i_tb : signed(data_precision-1 downto 0);

begin

    dut: butterfly
        generic map (
            data_precision    => data_precision,
            twiddle_precision => twiddle_precision
        )
        port map(
            clk    => clk_tb,
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

    clk_tb   <= not clk_tb after 25ns;
    reset_tb <= '0' after 50ns;

end architecture testbench;
