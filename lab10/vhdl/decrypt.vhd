-- decrypt.vhd
--
-- An decryption module that takes a key and bit stream and
-- decrypts that bitstream using an xor.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decrypt is
    port(
        code   : in  unsigned(5 downto 0);
        key    : in  unsigned(5 downto 0);
        stream : out unsigned(5 downto 0)
    );
end entity;

architecture fpga of decrypt is
begin
    stream <= code xor key;
end architecture;