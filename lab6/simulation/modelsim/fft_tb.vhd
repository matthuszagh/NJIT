-- fft_tb.vhd
--
-- A testbench for the power-of-2-length FFT using the Cooley-Tukey algorithm.
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package fft_pkg_inst is new work.fft_pkg
    generic map (
        length            => 8,
        stages            => 3,
        data_precision    => 11,
        twiddle_precision => 8
    );
use work.fft_pkg_inst.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--------------------------------------------------------------------------------
entity fft_tb is
end entity;
--------------------------------------------------------------------------------
architecture testbench of fft_tb is

    signal clk_tb     : std_logic := '0';
    signal reset_tb   : std_logic := '1';
    signal x_in_tb    : signed(data_precision-1 downto 0) := (others => '0');
    signal twiddle_tb : twiddle_array_type := 
                   ((to_signed(integer(       1*(2**(twiddle_precision-2))), twiddle_precision),
                     to_signed(integer(       1*(2**(twiddle_precision-2))), twiddle_precision),
                     to_signed(integer(       1*(2**(twiddle_precision-2))), twiddle_precision)),  -- 1
                    (to_signed(integer( 0.70711*(2**(twiddle_precision-2))), twiddle_precision),
                     to_signed(integer(       0*(2**(twiddle_precision-2))), twiddle_precision),
                     to_signed(integer(  1.4142*(2**(twiddle_precision-2))), twiddle_precision)),  -- cos( pi/4) - isin( pi/4)
                    (to_signed(integer(       0*(2**(twiddle_precision-2))), twiddle_precision),
                     to_signed(integer(      -1*(2**(twiddle_precision-2))), twiddle_precision),
                     to_signed(integer(       1*(2**(twiddle_precision-2))), twiddle_precision)),  -- -i
                    (to_signed(integer(-0.70711*(2**(twiddle_precision-2))), twiddle_precision),
                     to_signed(integer( -1.4142*(2**(twiddle_precision-2))), twiddle_precision),
                     to_signed(integer(       0*(2**(twiddle_precision-2))), twiddle_precision))); -- cos(3pi/4) - isin(3pi/4)
    signal x_r_out_tb : data_array_type;
    signal x_i_out_tb : data_array_type;

begin

    dut: fft
        generic map (
            length            => length,
            stages            => stages,
            data_precision    => data_precision,
            twiddle_precision => twiddle_precision
        )
        port map (
            clk     => clk_tb,
            reset   => reset_tb,
            x_in    => x_in_tb,
            twiddle => twiddle_tb, 
            x_r_out => x_r_out_tb,
            x_i_out => x_i_out_tb
        );

    clk_tb <= not clk_tb after 25ns;
    reset_tb <= '0' after 50ns;
    x_in_tb <= to_signed(20, data_precision)  after 50ns,
               to_signed(40, data_precision)  after 100ns,
               to_signed(60, data_precision)  after 150ns,
               to_signed(80, data_precision)  after 200ns,
               to_signed(100, data_precision) after 250ns,
               to_signed(120, data_precision) after 300ns,
               to_signed(140, data_precision) after 350ns,
               to_signed(160, data_precision) after 400ns,
               to_signed(0, data_precision)   after 450ns;

end architecture;
