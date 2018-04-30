-- calculator.vhd
--
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

USE work.n_bit_int.ALL;
--------------------------------------------------------------------------------
ENTITY calculator IS
    PORT (SW   : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
          LEDR : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
    );
END ENTITY calculator;
--------------------------------------------------------------------------------
ARCHITECTURE fpga OF calculator IS
BEGIN
    LEDR(1 DOWNTO 0) <= SW(1 DOWNTO 0);
    LEDR(2) <= SW(1) AND SW(0);
END ARCHITECTURE fpga;
