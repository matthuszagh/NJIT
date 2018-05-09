PACKAGE n_bit_int IS
    SUBTYPE S8  IS INTEGER RANGE -2**7  TO 2**7-1;
    SUBTYPE S9  IS INTEGER RANGE -2**8  TO 2**8-1;
    SUBTYPE S10 IS INTEGER RANGE -2**9  TO 2**9-1;
    SUBTYPE S11 IS INTEGER RANGE -2**10 TO 2**10-1;
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
    TYPE A0_1S17 IS ARRAY (0 TO 1) OF S17;
    TYPE A0_1S24 IS ARRAY (0 TO 1) OF S24;
    TYPE A0_3S17 IS ARRAY (0 TO 3) OF S17;
END PACKAGE;