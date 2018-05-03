-- cipher_tb.vhd
-- 
-- A top level design file that tests the functionality of the cipher system.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cipher_tb is end entity;

architecture testbench of cipher_tb is
    signal stream_in  : unsigned(5 downto 0) := to_unsigned(0, 6);
    signal key_in     : unsigned(5 downto 0) := to_unsigned(0, 6);
    signal code       : unsigned(5 downto 0) := to_unsigned(0, 6);
    signal key_out    : unsigned(5 downto 0) := to_unsigned(0, 6);
    signal stream_out : unsigned(5 downto 0) := to_unsigned(0, 6);
    signal clk_tb     : std_logic := '0';
    signal reset_tb   : std_logic := '1';

    component lfsr is
        port(
            clk   : in  std_logic;
            reset : in  std_logic;
            y     : out unsigned(1 to 6)
        );
    end component;

    component encrypt is
        port(
            stream : in  unsigned(5 downto 0);
            key    : in  unsigned(5 downto 0);
            code   : out unsigned(5 downto 0)
        );
    end component;

    component decrypt is
        port(
            code   : in  unsigned(5 downto 0);
            key    : in  unsigned(5 downto 0);
            stream : out unsigned(5 downto 0)
        );
    end component;

begin

    l1: lfsr
        port map(
            clk   => clk_tb,
            reset => reset_tb,
            y     => key_in
        );
    l2: lfsr
        port map(
            clk   => clk_tb,
            reset => reset_tb,
            y     => key_out
        );
    e: encrypt
        port map(
            stream => stream_in,
            key    => key_in,
            code   => code
        );
    d: decrypt
        port map(
            code   => code,
            key    => key_out,
            stream => stream_out
        );

    clk_tb    <= not clk_tb after 25ns;
    reset_tb  <= '0' after 50ns;
    stream_in <= to_unsigned(10, 6) after 50ns,
                 to_unsigned(20, 6) after 100ns,
                 to_unsigned(30, 6) after 150ns;

end architecture;