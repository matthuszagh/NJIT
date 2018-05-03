-- encrypt.vhd
--
-- An encryption module that takes a key and bit stream and
-- encrypts that bitstream using an xor.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity encrypt is
    port(
        stream : in  unsigned(5 downto 0);
        key    : in  unsigned(5 downto 0);
        code   : out unsigned(5 downto 0)
    );
end entity;

architecture fpga of encrypt is
begin
    code <= stream xor key;
end architecture;