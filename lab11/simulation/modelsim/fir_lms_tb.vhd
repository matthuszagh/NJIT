-- fir_lms_tb.vhd
-- 
-- Testbench for fir_lms.vhd

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fir_lms_tb is end entity;

architecture testbench of fir_lms_tb is
    component fir_lms is
        generic(
            w      : integer := 8;  -- Data precision.
            mu     : signed(3 downto 0) := to_signed(2, 4);  -- right shift 3 bits, so = 1/4 (i.e. effective range is 1/8 to 7/8)
            length : integer := 2   -- Filter length.
        );
        port(
            clk   : in  std_logic;                -- Clock signal.
            rst   : in  std_logic;                -- Asynchronous reset.
            x_in  : in  signed(w-1 downto 0);     -- Input noise reference.
            d_in  : in  signed(w-1 downto 0);     -- Input signal + noise.
            e_out : out signed(w-1 downto 0)      -- Filtered output (hopefully signal) which is also the error.
        );
    end component;

    constant w : integer := 8;
    
    signal clk_tb     : std_logic := '0';
    signal rst_tb   : std_logic := '1';
    signal x_in_tb    : signed(w-1 downto 0) := to_signed(0, w);
    signal d_in_tb    : signed(w-1 downto 0) := to_signed(0, w);
    signal e_out_tb : signed(w-1 downto 0);
begin
    dut: fir_lms
        port map(
            clk   => clk_tb,
            rst   => rst_tb,
            x_in  => x_in_tb,
            d_in  => d_in_tb,
            e_out => e_out_tb
        );
    
    clk_tb      <= not clk_tb after 12.5ps;
    rst_tb      <= '0' after 50ps;
    x_in_tb     <= to_signed( 111, w) after 50ps,
                   to_signed( -64, w) after 100ps,
                   to_signed(-111, w) after 150ps,
                   to_signed(  64, w) after 200ps,
                   to_signed( 111, w) after 250ps,
                   to_signed( -64, w) after 300ps,
                   to_signed(-111, w) after 350ps,
                   to_signed(  64, w) after 400ps,
                   to_signed( 111, w) after 450ps,
                   to_signed( -64, w) after 500ps,
                   to_signed(-111, w) after 550ps,
                   to_signed(  64, w) after 600ps,
                   to_signed( 111, w) after 650ps,
                   to_signed( -64, w) after 700ps,
                   to_signed(-111, w) after 750ps,
                   to_signed(  64, w) after 800ps,
                   to_signed( 111, w) after 850ps,
                   to_signed( -64, w) after 900ps,
                   to_signed(-111, w) after 950ps,
                   to_signed(  64, w) after 1000ps,
                   to_signed( 111, w) after 1050ps,
                   to_signed( -64, w) after 1100ps,
                   to_signed(-111, w) after 1150ps,
                   to_signed(  64, w) after 1200ps,
                   to_signed( 111, w) after 1250ps,
                   to_signed( -64, w) after 1300ps;
    d_in_tb     <= to_signed( 60, w) after 50ps,
                   to_signed(  9, w) after 100ps,
                   to_signed(-41, w) after 150ps,
                   to_signed( 10, w) after 200ps,
                   to_signed( 60, w) after 250ps,
                   to_signed( 10, w) after 300ps,
                   to_signed(-39, w) after 350ps,
                   to_signed( 11, w) after 400ps,
                   to_signed( 60, w) after 450ps,
                   to_signed( 10, w) after 500ps,
                   to_signed(-40, w) after 550ps,
                   to_signed( 10, w) after 600ps,
                   to_signed( 59, w) after 650ps,
                   to_signed(  9, w) after 700ps,
                   to_signed(-41, w) after 750ps,
                   to_signed( 10, w) after 800ps,
                   to_signed( 60, w) after 850ps,
                   to_signed( 10, w) after 900ps,
                   to_signed(-39, w) after 950ps,
                   to_signed( 11, w) after 1000ps,
                   to_signed( 60, w) after 1050ps,
                   to_signed( 10, w) after 1100ps,
                   to_signed(-40, w) after 1150ps,
                   to_signed( 10, w) after 1200ps,
                   to_signed( 59, w) after 1250ps,
                   to_signed(  9, w) after 1300ps;
end architecture;
