-- ntt_tb.vhd
--
-- A testbench for ntt.vhd.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.array_pkg.all;

entity ntt_tb is end entity;

architecture testbench of ntt_tb is
    component ntt is
        port(
            clk     : in  std_logic;
            reset   : in  std_logic;
            x_in    : in  signed(w-1 downto 0);
            h_in    : in  signed(w-1 downto 0);
            y_out   : out array_1d
        );
    end component;

    signal clk_tb   : std_logic := '0';
    signal reset_tb : std_logic := '1';
    signal x_in_tb  : signed(w-1 downto 0) := (others => '0');
    signal h_in_tb  : signed(w-1 downto 0) := (others => '0');
    signal y_out_tb : array_1d;

begin
    
    dut: ntt
        port map(
            clk   => clk_tb,
            reset => reset_tb,
            x_in  => x_in_tb,
            h_in  => h_in_tb,
            y_out => y_out_tb
        );

    clk_tb   <= not clk_tb after 25ns;
    reset_tb <= '0' after 50ns;
    x_in_tb  <= to_signed(1, w) after 50ns,
                to_signed(1, w) after 100ns,
                to_signed(0, w) after 150ns,
                to_signed(0, w) after 200ns;
    h_in_tb  <= to_signed(1, w) after 50ns,
                to_signed(0, w) after 100ns,
                to_signed(0, w) after 150ns,
                to_signed(1, w) after 200ns;

end architecture;