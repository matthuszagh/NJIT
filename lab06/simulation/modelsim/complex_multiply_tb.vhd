-- complex_multiply_tb.vhd
--
-- A testbench for complex_multiply.
--------------------------------------------------------------------------------
package complex_multiply_pkg_test is new work.complex_multiply_pkg
    generic map (
        data_precision    => 12,
        twiddle_precision => 17
    );
use work.complex_multiply_pkg_test.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--------------------------------------------------------------------------------
entity complex_multiply_tb is
end entity;
--------------------------------------------------------------------------------
architecture testbench of complex_multiply_tb is
    
    signal clk_tb    : std_logic := '0';
    signal reset_tb  : std_logic := '1';
    signal in_r_tb   : signed(data_precision-1 downto 0) := to_signed(50, data_precision);
    signal in_i_tb   : signed(data_precision-1 downto 0) := to_signed(60, data_precision);
    signal tw_r_tb   : signed(twiddle_precision-1 downto 0) := to_signed(16384, twiddle_precision);     -- r=1/2, i=sqrt[3]/2 (14,189)
    signal tw_rpi_tb : signed(twiddle_precision-1 downto 0) := to_signed(44762, twiddle_precision);
    signal tw_rmi_tb : signed(twiddle_precision-1 downto 0) := to_signed(-11994, twiddle_precision);
    signal out_r_tb  : signed(data_precision-1 downto 0);
    signal out_i_tb  : signed(data_precision-1 downto 0);

begin

    dut: complex_multiply
        generic map (
            data_precision    => data_precision,
            twiddle_precision => twiddle_precision
        )
        port map (
            clk    => clk_tb,
            reset  => reset_tb,
            in_r   => in_r_tb,
            in_i   => in_i_tb,
            tw_r   => tw_r_tb,
            tw_rpi => tw_rpi_tb,
            tw_rmi => tw_rmi_tb,
            out_r  => out_r_tb,
            out_i  => out_i_tb
        );

    clk_tb   <= not clk_tb after 25ns;
    reset_tb <= '0' after 50ns;

end architecture;
