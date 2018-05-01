-- cordic_tb.vhd
--
-- A testbench for cordic.vhd.

package cordic_inst is new work.cordic_pkg
    generic map(
        iterations      => 4,
        data_precision  => 9,
        theta_precision => 9,
        k_precision     => 9
    );
use work.cordic_inst.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.array_pkg.all;

entity cordic_tb is end entity;

architecture testbench of cordic_tb is
    
--    constant iterations      : integer := 3;
--    constant data_precision  : integer := 9;
--    constant theta_precision : integer := 9;
--    constant k_precision     : integer := 9;


    signal r_tb      : signed(data_precision-1 downto 0)
                := to_signed(100, data_precision);
    signal theta_tb  : signed(theta_precision+1 downto 0)
                := to_signed(integer(0*(2**(theta_precision-1))), theta_precision+2);
    signal k_tb      : signed(k_precision-1 downto 0)
                := to_signed(integer(0.6088*(2**(k_precision-1))), k_precision);
    signal gammas_tb : array_type(0 to iterations-1)(theta_precision+1 downto 0)
                := (to_signed(integer(0.7854*(2**(theta_precision-1))), theta_precision+2),
                    to_signed(integer(0.4636*(2**(theta_precision-1))), theta_precision+2),
                    to_signed(integer(0.2450*(2**(theta_precision-1))), theta_precision+2),
                    to_signed(integer(0.1244*(2**(theta_precision-1))), theta_precision+2));
    signal clk_tb    : std_logic := '0';
    signal reset_tb  : std_logic := '1';
    signal x_tb      : signed(data_precision-1 downto 0);
    signal y_tb      : signed(data_precision-1 downto 0);

begin

    dut: cordic
--        generic map(
--            iterations     => iterations,
--            data_precision => data_precision,
--            theta_precision => theta_precision,
--            k_precision    => k_precision
--        )
        port map(
            r      => r_tb,
            theta  => theta_tb,
            k      => k_tb,
            gammas => gammas_tb,
            clk    => clk_tb,
            reset  => reset_tb,
            x      => x_tb,
            y      => y_tb
        );

    clk_tb    <= not clk_tb after 25ns;
    reset_tb  <= '0' after 50ns;
    r_tb      <= to_signed(25, data_precision) after 900ns;
    theta_tb  <= to_signed(integer( 0.52360*(2**(theta_precision-1))), theta_precision+2) after 350ns,
                 to_signed(integer( 1.04720*(2**(theta_precision-1))), theta_precision+2) after 400ns,
                 to_signed(integer( 1.57080*(2**(theta_precision-1))), theta_precision+2) after 450ns,
                 to_signed(integer( 2.09440*(2**(theta_precision-1))), theta_precision+2) after 500ns,
                 to_signed(integer( 2.61799*(2**(theta_precision-1))), theta_precision+2) after 550ns,
                 to_signed(integer(-3.14159*(2**(theta_precision-1))), theta_precision+2) after 600ns,
                 to_signed(integer(-2.61799*(2**(theta_precision-1))), theta_precision+2) after 650ns,
                 to_signed(integer(-2.09440*(2**(theta_precision-1))), theta_precision+2) after 700ns,
                 to_signed(integer(-1.57080*(2**(theta_precision-1))), theta_precision+2) after 750ns,
                 to_signed(integer(-1.04720*(2**(theta_precision-1))), theta_precision+2) after 800ns,
                 to_signed(integer(-0.52360*(2**(theta_precision-1))), theta_precision+2) after 850ns,
                 to_signed(integer(       0*(2**(theta_precision-1))), theta_precision+2) after 900ns,
                 to_signed(integer( 0.52360*(2**(theta_precision-1))), theta_precision+2) after 950ns,
                 to_signed(integer( 1.04720*(2**(theta_precision-1))), theta_precision+2) after 1000ns,
                 to_signed(integer( 1.57080*(2**(theta_precision-1))), theta_precision+2) after 1050ns,
                 to_signed(integer( 2.09440*(2**(theta_precision-1))), theta_precision+2) after 1100ns,
                 to_signed(integer( 2.61799*(2**(theta_precision-1))), theta_precision+2) after 1150ns,
                 to_signed(integer(-3.14159*(2**(theta_precision-1))), theta_precision+2) after 1200ns,
                 to_signed(integer(-2.61799*(2**(theta_precision-1))), theta_precision+2) after 1250ns,
                 to_signed(integer(-1.57080*(2**(theta_precision-1))), theta_precision+2) after 1300ns,
                 to_signed(integer(-1.04720*(2**(theta_precision-1))), theta_precision+2) after 1350ns,
                 to_signed(integer(-0.52360*(2**(theta_precision-1))), theta_precision+2) after 1400ns,
                 to_signed(integer(       0*(2**(theta_precision-1))), theta_precision+2) after 1450ns;

end architecture;
