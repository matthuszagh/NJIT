LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
--------------------------------------------------------------------------------
PACKAGE n_bit_int IS
    SUBTYPE S8  IS INTEGER RANGE -2**7  TO 2**7-1;
    SUBTYPE S9  IS INTEGER RANGE -2**8  TO 2**8-1;
    SUBTYPE S10 IS INTEGER RANGE -2**9  TO 2**9-1;
    SUBTYPE S11 IS INTEGER RANGE -2**10 TO 2**10-1;
    SUBTYPE S12 IS INTEGER RANGE -2**11 TO 2**11-1;
    SUBTYPE S15 IS INTEGER RANGE -2**14 TO 2**14-1;
    SUBTYPE S16 IS INTEGER RANGE -2**15 TO 2**15-1;
    SUBTYPE S17 IS INTEGER RANGE -2**16 TO 2**16-1;
    SUBTYPE S18 IS INTEGER RANGE -2**17 TO 2**17-1;
    SUBTYPE S20 IS INTEGER RANGE -2**19 TO 2**19-1;
    SUBTYPE S22 IS INTEGER RANGE -2**21 TO 2**21-1;
    SUBTYPE S24 IS INTEGER RANGE -2**23 TO 2**23-1;
    SUBTYPE S30 IS INTEGER RANGE -2**29 TO 2**29-1;

    TYPE A0_1S8 IS ARRAY (0 TO 1) OF S8;
    TYPE A0_1S9 IS ARRAY (0 TO 1) OF S9;
    TYPE A0_1S10 IS ARRAY (0 TO 1) OF S10;
    TYPE A0_1S11 IS ARRAY (0 TO 1) OF S11;
    TYPE A0_1S12 IS ARRAY (0 TO 1) OF S12;
    TYPE A0_1S17 IS ARRAY (0 TO 1) OF S17;
    TYPE A0_1S24 IS ARRAY (0 TO 1) OF S24;

    TYPE A0_2S16 IS ARRAY (0 TO 2) OF S16;
    TYPE A0_2S17 IS ARRAY (0 TO 2) OF S17;

    TYPE A0_3S9 IS ARRAY (0 TO 3) OF S9;
    TYPE A0_3S10 IS ARRAY (0 TO 3) OF S10;
    TYPE A0_3S12 IS ARRAY (0 TO 3) OF S12;
    TYPE A0_3S17 IS ARRAY (0 TO 3) OF S17;

    TYPE A0_7S9 IS ARRAY (0 TO 7) OF S9;
    TYPE A0_7S10 IS ARRAY (0 TO 7) OF S10;
    TYPE A0_7S12 IS ARRAY (0 TO 7) OF S12;
    TYPE A0_7S17 IS ARRAY (0 TO 7) OF S17;

    FUNCTION reverse_vector(a : UNSIGNED) RETURN UNSIGNED;
    FUNCTION insert_pad_bit(vec : UNSIGNED; pos : INTEGER) RETURN UNSIGNED;
    FUNCTION delete_bit(vec : UNSIGNED; pos : INTEGER) RETURN UNSIGNED;
END PACKAGE;

PACKAGE BODY n_bit_int IS
    FUNCTION reverse_vector(a : UNSIGNED)
    RETURN UNSIGNED IS
        VARIABLE result : UNSIGNED(a'RANGE);
        ALIAS aa : UNSIGNED(a'REVERSE_RANGE) IS a;
    BEGIN
        FOR i IN aa'RANGE LOOP
            result(i) := aa(i);
        END LOOP;
        RETURN result;
    END;

    FUNCTION insert_pad_bit(vec : UNSIGNED; pos : INTEGER)
    RETURN UNSIGNED IS
        VARIABLE result : UNSIGNED(vec'LENGTH DOWNTO 0);
    BEGIN
        IF pos > 0 THEN
            FOR i IN 0 TO pos-1 LOOP
                result(i) := vec(i);
            END LOOP;
            result(pos) := '0';
            FOR i IN pos+1 TO vec'LENGTH LOOP
                result(i) := vec(i-1);
            END LOOP;
        ELSE
            result(0) := '0';
            FOR i IN 1 TO vec'LENGTH LOOP
                result(i) := vec(i-1);
            END LOOP;
        END IF;
        RETURN result;
    END;

    FUNCTION delete_bit(vec : UNSIGNED; pos : INTEGER)
    RETURN UNSIGNED IS
        VARIABLE result : UNSIGNED(vec'LENGTH-2 DOWNTO 0);
    BEGIN
        IF pos > 0 THEN
            FOR i IN 0 TO pos-1 LOOP
                result(i) := vec(i);
            END LOOP;
            FOR i IN pos TO vec'LENGTH-2 LOOP
                result(i) := vec(i+1);
            END LOOP;
        ELSE
            FOR i IN 0 TO vec'LENGTH-2 LOOP
                result(i) := vec(i+1);
            END LOOP;
        END IF;
        RETURN result;
    END;
END PACKAGE BODY;
