-- lfsr.vhd
--
-- A shift register used for a cipher.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lfsr is
    generic(
        sdata : std_logic := '1'
    );
    port(
        clk   : in  std_logic;
        reset : in  std_logic;
        y     : out unsigned(1 to 6)
    );
end entity;

architecture fpga of lfsr is
    signal ff : unsigned(1 to 6) := to_unsigned(0, 6);
begin
    process (clk, reset)
    begin
        if reset='1' then
            ff(1) <= sdata;
        elsif rising_edge(clk) then
            ff(1) <= not(ff(5) xor ff(6));
            for i in 2 to 6 loop
                ff(i) <= ff(i-1);
            end loop;
        end if;
    end process;
    y <= ff;
end architecture;