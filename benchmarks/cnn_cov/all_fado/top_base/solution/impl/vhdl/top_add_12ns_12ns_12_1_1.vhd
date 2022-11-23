-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_arith.all;


entity top_add_12ns_12ns_12_1_1_Adder_2 is
port (
    a: in std_logic_vector(11 downto 0);
    b: in std_logic_vector(11 downto 0);
    s: out std_logic_vector(11 downto 0));
end entity;

architecture behav of top_add_12ns_12ns_12_1_1_Adder_2 is
    signal s_tmp : std_logic_vector(11 downto 0);
begin

s_tmp <= unsigned(a) + unsigned(b);
s <= std_logic_vector(s_tmp);

end architecture;
Library IEEE;
use IEEE.std_logic_1164.all;

entity top_add_12ns_12ns_12_1_1 is
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER);
    port (
        din0 : IN STD_LOGIC_VECTOR(din0_WIDTH - 1 DOWNTO 0);
        din1 : IN STD_LOGIC_VECTOR(din1_WIDTH - 1 DOWNTO 0);
        dout : OUT STD_LOGIC_VECTOR(dout_WIDTH - 1 DOWNTO 0));
end entity;

architecture arch of top_add_12ns_12ns_12_1_1 is
    component top_add_12ns_12ns_12_1_1_Adder_2 is
        port (
            a : IN STD_LOGIC_VECTOR;
            b : IN STD_LOGIC_VECTOR;
            s : OUT STD_LOGIC_VECTOR);
    end component;



begin
    top_add_12ns_12ns_12_1_1_Adder_2_U :  component top_add_12ns_12ns_12_1_1_Adder_2
    port map (
        a => din0,
        b => din1,
        s => dout);

end architecture;


