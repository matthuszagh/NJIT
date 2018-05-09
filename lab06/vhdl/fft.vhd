-- fft.vhd
--
-- A power-of-2-length FFT using the Cooley-Tukey algorithm.
-----Package:-------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package array_pkg is
    type array_type is array (natural range <>) of signed;
    type array_of_array_type is array (natural range <>) of array_type;
end package;
use work.array_pkg.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package fft_pkg is
    generic (
        length            : positive; -- Filter length.
        stages            : positive; -- M = lg(length)
        data_precision    : positive; -- Number of bits for data input/output
        twiddle_precision : positive  -- Number of bits for twiddle factors
    );

    subtype data_array_type is array_type(0 to length-1)(data_precision-1 downto 0);
    subtype twiddle_array_type is array_of_array_type(0 to stages)(0 to 2)(twiddle_precision-1 downto 0);

    component fft is
        generic (
            constant length            : positive := length;
            constant stages            : positive := stages;
            constant data_precision    : positive := data_precision;
            constant twiddle_precision : positive := twiddle_precision
        );
        port (
            clk     : in  std_logic;
            reset   : in  std_logic;
            x_in    : in  signed(data_precision-1 downto 0);
            twiddle : in  array_of_array_type(0 to stages)(0 to 2)(twiddle_precision-1 downto 0);
            x_r_out : out array_type(0 to length-1)(data_precision-1 downto 0);
            x_i_out : out array_type(0 to length-1)(data_precision-1 downto 0)
        );
    end component;
end package;
-----main code:-----------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.array_pkg.all;
use work.n_bit_int.all;
--------------------------------------------------------------------------------
entity fft is
    generic (
        constant length            : positive;
        constant stages            : positive;
        constant data_precision    : positive;
        constant twiddle_precision : positive
    );
    port (
        clk     : in  std_logic;
        reset   : in  std_logic;
        x_in    : in  signed(data_precision-1 downto 0);
        twiddle : in  array_of_array_type(0 to stages)(0 to 2)(twiddle_precision-1 downto 0);
        x_r_out : out array_type(0 to length-1)(data_precision-1 downto 0);
        x_i_out : out array_type(0 to length-1)(data_precision-1 downto 0)
    );
end entity fft;
--------------------------------------------------------------------------------
architecture fpga of fft is

    package butterfly_pkg_inst is new work.butterfly_pkg
        generic map (
            data_precision    => data_precision,
            twiddle_precision => twiddle_precision
        );
    use butterfly_pkg_inst.all;

    type x_array_type is array (0 to stages) of array_type(0 to length-1)(data_precision-1 downto 0);

    signal count : integer range -1 to length-1 := length-1;
    signal xmr   : x_array_type := (others => (others => (others => '0'))); -- array at stage m - reals
    signal xmi   : x_array_type := (others => (others => (others => '0'))); -- array at stage m - imaginaries

begin

    load_x: process (clk, reset) is
    begin
        if reset='1' then
            --xmr <= (others => (others => 0));
            --xmi <= (others => (others => 0));
            count  <= length-1;
        elsif rising_edge(clk) then
            if count >= 0 then
                xmr(0)(length-1) <= x_in;
                for i in length-1 downto 1 loop
                    xmr(0)(i-1) <= xmr(0)(i);
                end loop;
                count <= count-1;
            end if;
        end if;
    end process load_x;

    -- perform butterfly computations in every stage.
    stage: for i in 0 to stages-1 generate
        substage: for j in 0 to length/2-1 generate
            signal vec_index : unsigned(stages-1 downto 0) := (others => '0');
            constant index : integer range 0 to length-1
                    := to_integer(insert_pad_bit(reverse_vector(delete_bit(vec_index, stages-1-i)+j), stages-1-i));
            constant inc : integer range 1 to length/2 := length/(2**(i+1));
            constant w_inc : unsigned(stages-2 downto 0) := to_unsigned(inc*j, stages-1);
        begin
            butterfly_comp: butterfly
                port map (clk    => clk,
                          reset  => reset,
                          in1_r  => xmr(i)(index),
                          in1_i  => xmi(i)(index),
                          in2_r  => xmr(i)(index+inc),
                          in2_i  => xmi(i)(index+inc),
                          tw_r   => twiddle(to_integer(w_inc))(0),
                          tw_rpi => twiddle(to_integer(w_inc))(1),
                          tw_rmi => twiddle(to_integer(w_inc))(2),
                          out1_r => xmr(i+1)(index),
                          out1_i => xmi(i+1)(index),
                          out2_r => xmr(i+1)(index+inc),
                          out2_i => xmi(i+1)(index+inc));
        end generate substage;
    end generate stage;

    -- map internal data to output.
    output: for i in 0 to length-1 generate
        signal vec_index : unsigned(stages-1 downto 0) := (others => '0');
        constant index : integer range 0 to length-1
                := to_integer(reverse_vector(vec_index+i));
    begin
        x_r_out(i) <= xmr(stages)(index);
        x_i_out(i) <= xmi(stages)(index);
    end generate output;

end architecture fpga;
