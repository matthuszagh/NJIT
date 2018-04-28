-- complex_multiply.vhd
--
-- Employs the Karatsuba algorithm to efficiently compute the product
-- R + iI = (a+ib)(c+id)
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package complex_multiply_pkg is
    generic (
        data_precision    : natural;
        twiddle_precision : natural
    );

    component complex_multiply is
        generic (
            constant data_precision    : natural := data_precision;
            constant twiddle_precision : natural := twiddle_precision
        );
        port (
            clk    : in  std_logic;
            reset  : in  std_logic;
            in_r   : in  signed(data_precision-1 downto 0);
            in_i   : in  signed(data_precision-1 downto 0);
            tw_r   : in  signed(twiddle_precision-1 downto 0);
            tw_rpi : in  signed(twiddle_precision-1 downto 0);
            tw_rmi : in  signed(twiddle_precision-1 downto 0);
            out_r  : out signed(data_precision-1 downto 0);
            out_i  : out signed(data_precision-1 downto 0)
        );
    end component;
end package;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--------------------------------------------------------------------------------
entity complex_multiply is
    generic (
        constant data_precision    : natural;
        constant twiddle_precision : natural
    );
    port (
        clk    : in  std_logic;
        reset  : in  std_logic;
        in_r   : in  signed(data_precision-1 downto 0);
        in_i   : in  signed(data_precision-1 downto 0);
        tw_r   : in  signed(twiddle_precision-1 downto 0);
        tw_rpi : in  signed(twiddle_precision-1 downto 0);
        tw_rmi : in  signed(twiddle_precision-1 downto 0);
        out_r  : out signed(data_precision-1 downto 0);
        out_i  : out signed(data_precision-1 downto 0)
    );
end entity complex_multiply;
--------------------------------------------------------------------------------
architecture fpga of complex_multiply is
    
    signal r : signed(data_precision-1 downto 0);
    signal i : signed(data_precision-1 downto 0);

begin

    process (clk, reset) is
    begin
        if reset='1' then
            r <= (others => '0'); i <= (others => '0');
        elsif rising_edge(clk) then
            r <= resize(shift_right(tw_rmi*in_i, twiddle_precision-2) + shift_right(tw_r*(in_r-in_i), twiddle_precision-2), data_precision);
            i <= resize(shift_right(tw_rpi*in_r, twiddle_precision-2) - shift_right(tw_r*(in_r-in_i), twiddle_precision-2), data_precision);
        end if;
    end process;

    out_r <= r;
    out_i <= i;

end architecture fpga;
