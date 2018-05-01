-- cordic.vhd
--
-- An AM modulator using the CORDIC algorithm.

library ieee;
use ieee.numeric_std.all;
package array_pkg is
    type array_type is array (natural range <>) of signed;
end package;
use work.array_pkg.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
package cordic_pkg is
    generic(
        iterations      : natural; -- Number of iterations used to estimate x and y.
        data_precision  : natural; -- Number of bits used to hold the signed data values: r, x, y.
        theta_precision : natural; -- Precision of the angle in radians. Right shift by precision-1 to get actual angle.
        k_precision     : natural  -- Precision of K factor. Right shift by precision-1 to get actual factor.
    );

    component cordic is
        generic(
            constant iterations      : natural := iterations;
            constant data_precision  : natural := data_precision;
            constant theta_precision : natural := theta_precision;
            constant k_precision     : natural := k_precision
        );
        port(
            r      : in  signed(data_precision-1 downto 0);
            theta  : in  signed(theta_precision+1 downto 0); -- Can go from 0 to pi so need 2 more bits.
            k      : in  signed(k_precision-1 downto 0);
            gammas : in  array_type(0 to iterations-1)(theta_precision+1 downto 0); -- Uses same precision as angles.
            clk    : in  std_logic;
            reset  : in  std_logic;
            x      : out signed(data_precision-1 downto 0);
            y      : out signed(data_precision-1 downto 0)
        );
    end component;
end package;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.array_pkg.all;

entity cordic is
    generic(
        constant iterations      : natural;
        constant data_precision  : natural;
        constant theta_precision : natural;
        constant k_precision     : natural
    );
    port(
        r      : in  signed(data_precision-1 downto 0);
        theta  : in  signed(theta_precision+1 downto 0);
        k      : in  signed(k_precision-1 downto 0);
        gammas : in  array_type(0 to iterations-1)(theta_precision+1 downto 0);
        clk    : in  std_logic;
        reset  : in  std_logic;
        x      : out signed(data_precision-1 downto 0);
        y      : out signed(data_precision-1 downto 0)
    );
end entity;

architecture fpga of cordic is
    signal xs     : array_type(0 to iterations)(data_precision-1 downto 0);
    signal ys     : array_type(0 to iterations)(data_precision-1 downto 0);
    signal betas  : array_type(0 to iterations)(theta_precision+1 downto 0);
    signal thetas : array_type(0 to iterations)(theta_precision+1 downto 0);
begin
    process(clk, reset) is
    begin
        if reset='1' then
            xs     <= (others => to_signed(0, data_precision));
            ys     <= (others => to_signed(0, data_precision));
            betas  <= (others => to_signed(0, theta_precision+2));
            thetas <= (others => to_signed(0, theta_precision+2));
        elsif rising_edge(clk) then
            if theta > integer(1.5708*(2**(theta_precision-1))) then        -- adjust if angle greater than pi/2
                xs(0)     <= to_signed(0, data_precision);
                ys(0)     <= resize(shift_right(r*k, k_precision-1), data_precision);
                thetas(0) <= theta - to_signed(integer(1.5708*(2**(theta_precision-1))), theta_precision+2);
            elsif theta < integer(-1.5708*(2**(theta_precision-1))) then    -- also adjust if less than -pi/2
                xs(0)     <= to_signed(0, data_precision);
                ys(0)     <= resize(shift_right(-r*k, k_precision-1), data_precision);
                thetas(0) <= theta + to_signed(integer(1.5708*(2**(theta_precision-1))), theta_precision+2);
            else
                xs(0)     <= resize(shift_right(r*k, k_precision-1), data_precision);
                ys(0)     <= to_signed(0, data_precision);
                thetas(0) <= theta;
            end if;
            betas(0)  <= to_signed(0, theta_precision+2);
            for i in 1 to iterations loop
                thetas(i) <= thetas(i-1);
                if thetas(i-1) >= betas(i-1) then
                    xs(i)    <= xs(i-1) - shift_right(ys(i-1), i-1);
                    ys(i)    <= shift_right(xs(i-1), i-1) + ys(i-1);
                    betas(i) <= betas(i-1) + gammas(i-1);
                elsif thetas(i-1) < betas(i-1) then
                    xs(i)    <= xs(i-1) + shift_right(ys(i-1), i-1);
                    ys(i)    <= -shift_right(xs(i-1), i-1) + ys(i-1);
                    betas(i) <= betas(i-1) - gammas(i-1);
                end if;
            end loop;
        end if;
    end process;

    x <= xs(iterations);
    y <= ys(iterations);
end architecture;
