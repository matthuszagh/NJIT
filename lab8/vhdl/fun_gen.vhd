library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;

entity fun_gen is
    generic(
        m : integer := 10;
        n : integer := 5
    );
    port(
        CLOCK_50          : in  std_logic;
        -- wren              : in  std_logic := '0';        -- Write enable (set to '1' for writing operation).
        -- memory_input      : in  unsigned(7 downto 0);    -- Memory input bus.
        SW                : in  integer range 0 to 2**n-1;	 -- Period of slower clock.
        VGA_G             : out std_logic_vector(7 downto 0);    -- Bus to drive VGA data.
        VGA_CLK           : out std_logic;               -- Clock for VGA DAC.
        VGA_BLANK_N       : out std_logic := '1';        -- VGA Blank pin.
        VGA_SYNC_N        : out std_logic := '1'         -- VGA Sync pin.
    );
end entity;

architecture fpga of fun_gen is
    
    component ram is
        port(
            address : in  std_logic_vector(4 downto 0); -- Address.
            clock   : in  std_logic;            -- RAM clock.
            -- data    : in  unsigned(7 downto 0); -- Data input bus.
            -- wren    : in  std_logic;            -- Write enable.
            q       : out std_logic_vector(7 downto 0)  -- Data output bus.
        );
    end component;

    signal address       : std_logic_vector(n-1 downto 0);
    signal address_ctr   : integer range 0 to 2**5 - 1  := 0;
    signal freq_ctr      : integer range 0 to 2**(m+n)-1  := 0;
    signal memory_output : std_logic_vector(7 downto 0);
    signal slower_clk    : std_logic;

begin

    samples: ram
        port map(
            address => address,
            clock   => slower_clk,
            -- data    => memory_input,
            -- wren    => wren,
            q       => memory_output
        );
    
    VGA_CLK <= slower_clk;

    freq_divider: process(CLOCK_50)
    begin
        if rising_edge(CLOCK_50) then
            if freq_ctr = SW * 2**m - 1 then
                freq_ctr <= 0;
                if slower_clk='0' then
                    slower_clk <= '1';
                else
                    slower_clk <= '0';
                end if;
            else
                freq_ctr <= freq_ctr + 1;
            end if;
        end if;
    end process;

    repeater: process(slower_clk)
    begin
        if rising_edge(slower_clk) then
            address_ctr <= address_ctr + 1;
            address <= conv_std_logic_vector(address_ctr, 5);
        end if;
    end process;

    main: process(CLOCK_50)
    begin
        VGA_G(7 downto 2) <= memory_output(5 downto 0);
        VGA_G(1 downto 0) <= "00";
    end process;

end architecture;