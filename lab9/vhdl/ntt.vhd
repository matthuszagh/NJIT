-- ntt.vhd
--
-- Implements an FFT using an NTT.

library ieee;
use ieee.numeric_std.all;
package array_pkg is
    constant w      : integer := 8;     -- Input bit width.
    constant m      : integer := 15;    -- Multiplier bit width. 2w-1
    constant length : integer := 4;

    type array_1d is array (0 to length-1) of signed(w-1 downto 0);
    type array_lg is array (0 to length-1) of signed(m-1 downto 0);
    type array_2d is array (0 to length-1) of array_1d;
end package;
use work.array_pkg.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ntt is
    port(
        clk     : in  std_logic;
        reset   : in  std_logic;
        x_in    : in  signed(w-1 downto 0);
        h_in    : in  signed(w-1 downto 0);
        y_out   : out array_1d
    );
end entity;

architecture fpga of ntt is

    constant T    : array_2d := ((to_signed(  1, w), to_signed(  1, w), to_signed(  1, w), to_signed(  1, w)),
                                 (to_signed(  1, w), to_signed( 16, w), to_signed( -1, w), to_signed(-16, w)),
                                 (to_signed(  1, w), to_signed( -1, w), to_signed(  1, w), to_signed( -1, w)),
                                 (to_signed(  1, w), to_signed(-16, w), to_signed( -1, w), to_signed( 16, w)));
    constant invT : array_2d := ((to_signed(  1, w), to_signed(  1, w), to_signed(  1, w), to_signed(  1, w)),
                                 (to_signed(  1, w), to_signed(-16, w), to_signed( -1, w), to_signed( 16, w)),
                                 (to_signed(  1, w), to_signed( -1, w), to_signed(  1, w), to_signed( -1, w)),
                                 (to_signed(  1, w), to_signed( 16, w), to_signed( -1, w), to_signed(-16, w)));
    
    signal load  : std_logic := '1';
    signal count : integer range 0 to length-1 := 0;
    signal x     : array_1d := (others => (others => '0'));
    signal h     : array_1d := (others => (others => '0'));
    signal y     : array_1d := (others => (others => '0'));
    signal capx  : array_1d := (others => (others => '0'));
    signal caph  : array_1d := (others => (others => '0'));
    signal capy  : array_lg := (others => (others => '0'));
    signal capym : array_1d := (others => (others => '0'));
    
begin

    process(reset, clk)
    begin
        if reset='1' then
            load  <= '1';
            count <= 0;
            x     <= (others => (others => '0'));
            h     <= (others => (others => '0'));
            capx  <= (others => (others => '0'));
            caph  <= (others => (others => '0'));
            capy  <= (others => (others => '0'));
            capym <= (others => (others => '0'));
            y     <= (others => (others => '0'));
        elsif rising_edge(clk) then
            -- Increment counter to reevaluate whether data should be loaded.
            if count < length-1 then
                count <= count + 1;
            elsif count = length-1 then
                load <= '0';
            end if;

            -- Load x and h until we have the desired sample length.
            -- In this case we are assuming only a single sample.
            if load='1' then
                x(length-1) <= x_in;
                h(length-1) <= h_in;
                for i in length-2 downto 0 loop
                    x(i) <= x(i+1);
                    h(i) <= h(i+1);
                end loop;
            end if;

            -- Calculate X, H and y.
            for i in 0 to length-1 loop
                capx(i) <= resize(T(i)(0)*x(0) + T(i)(1)*x(1) + T(i)(2)*x(2) + T(i)(3)*x(3), w);
                caph(i) <= resize(T(i)(0)*h(0) + T(i)(1)*h(1) + T(i)(2)*h(2) + T(i)(3)*h(3), w);
                y(i)    <= resize(((invT(i)(0)*capym(0)) + (invT(i)(1)*capym(1)) +
                                  (invT(i)(2)*capym(2)) + (invT(i)(3)*capym(3)))/4, w);
            end loop;
            
            -- Calculate Y before mod operation.
            for i in 0 to length-1 loop
                capy(i) <= resize(capx(i) * caph(i), m);
            end loop;

            -- Calculate Y mod 257.
            for i in 0 to length-1 loop
                if capy(i)(m-1)='1' then
                    capym(i) <= resize(capy(i) + to_signed(257, m), w);
                else
                    capym(i) <= resize(capy(i), w);
                end if;
            end loop;
        end if;
    end process;

    y_out <= y;

end architecture;