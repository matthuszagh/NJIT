-- butterfly.vhd
--
-- A butterfly processor.
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package butterfly_pkg is
    generic (
        constant data_precision    : natural;
        constant twiddle_precision : natural
    );

    component butterfly is
        generic (
            constant data_precision    : natural := data_precision;
            constant twiddle_precision : natural := twiddle_precision
        );
        port (
            clk    : in  std_logic;
            reset  : in  std_logic;
            in1_r  : in  signed(data_precision-1 downto 0);
            in1_i  : in  signed(data_precision-1 downto 0);
            in2_r  : in  signed(data_precision-1 downto 0);
            in2_i  : in  signed(data_precision-1 downto 0);
            tw_r   : in  signed(twiddle_precision-1 downto 0);
            tw_rpi : in  signed(twiddle_precision-1 downto 0);
            tw_rmi : in  signed(twiddle_precision-1 downto 0);
            out1_r : out signed(data_precision-1 downto 0);
            out1_i : out signed(data_precision-1 downto 0);
            out2_r : out signed(data_precision-1 downto 0);
            out2_i : out signed(data_precision-1 downto 0)
        );
    end component;
end package;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--------------------------------------------------------------------------------
entity butterfly is
    generic (
        constant data_precision    : natural;
        constant twiddle_precision : natural
    );
    port (
        clk    : in  std_logic;
        reset  : in  std_logic;
        in1_r  : in  signed(data_precision-1 downto 0);
        in1_i  : in  signed(data_precision-1 downto 0);
        in2_r  : in  signed(data_precision-1 downto 0);
        in2_i  : in  signed(data_precision-1 downto 0);
        tw_r   : in  signed(twiddle_precision-1 downto 0);
        tw_rpi : in  signed(twiddle_precision-1 downto 0);
        tw_rmi : in  signed(twiddle_precision-1 downto 0);
        out1_r : out signed(data_precision-1 downto 0);
        out1_i : out signed(data_precision-1 downto 0);
        out2_r : out signed(data_precision-1 downto 0);
        out2_i : out signed(data_precision-1 downto 0)
    );
end entity;
--------------------------------------------------------------------------------
architecture fpga of butterfly is
    package complex_multiply_pkg_inst is new work.complex_multiply_pkg
        generic map (
            data_precision    => data_precision,
            twiddle_precision => twiddle_precision
        );
    use complex_multiply_pkg_inst.all;

    type state_type is (even, odd);

    signal state       : state_type := even;
    signal clk_div2    : std_logic := '0';
    signal out1_r_ff   : signed(data_precision-1 downto 0) := (others => '0');
    signal out1_i_ff   : signed(data_precision-1 downto 0) := (others => '0');
    signal out2_r_ff   : signed(data_precision-1 downto 0) := (others => '0');
    signal out2_i_ff   : signed(data_precision-1 downto 0) := (others => '0');
    signal in2_tw_r    : signed(data_precision-1 downto 0) := (others => '0');
    signal in2_tw_i    : signed(data_precision-1 downto 0) := (others => '0');

begin

    fast_clk: process (clk, reset) is
    begin
        if reset='1' then
            clk_div2 <= '0';
        elsif rising_edge(clk) then
            if state=even then
                clk_div2 <= '1';
                state <= odd;
            else
                clk_div2 <= '0';
                state <= even;
            end if;
        end if;
    end process fast_clk;

    slow_clk: process (clk_div2) is
    begin
        if falling_edge(clk_div2) then
            out1_r_ff <= in1_r + in2_tw_r;
            out1_i_ff <= in1_i + in2_tw_i;
            out2_r_ff <= in1_r - in2_tw_r;
            out2_i_ff <= in1_i - in2_tw_i;
        end if;
    end process slow_clk;

    mul: complex_multiply
        generic map (
            data_precision    => data_precision,
            twiddle_precision => twiddle_precision
        )
        port map (
            clk    => clk,
            reset  => reset,
            in_r   => in2_r,
            in_i   => in2_i,
            tw_r   => tw_r,
            tw_rpi => tw_rpi,
            tw_rmi => tw_rmi,
            out_r  => in2_tw_r,
            out_i  => in2_tw_i
        );

    out1_r <= out1_r_ff;
    out1_i <= out1_i_ff;
    out2_r <= out2_r_ff;
    out2_i <= out2_i_ff;

end architecture fpga;
