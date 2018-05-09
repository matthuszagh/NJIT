LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

USE work.n_bit_int.ALL;
--------------------------------------------------------------------------------
ENTITY test IS
END ENTITY;
--------------------------------------------------------------------------------
ARCHITECTURE fpga OF test IS

    SIGNAL a : S8 := 127;
    SIGNAL b : S8 := 0;

BEGIN

    b <= a*a*a*a*a/4294967296;

END ARCHITECTURE;    
