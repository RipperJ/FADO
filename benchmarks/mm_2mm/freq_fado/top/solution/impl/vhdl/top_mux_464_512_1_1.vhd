-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity top_mux_464_512_1_1 is
generic (
    ID            :integer := 0;
    NUM_STAGE     :integer := 1;
    din0_WIDTH       :integer := 32;
    din1_WIDTH       :integer := 32;
    din2_WIDTH       :integer := 32;
    din3_WIDTH       :integer := 32;
    din4_WIDTH       :integer := 32;
    dout_WIDTH        :integer := 32);
port (
    din0   :in  std_logic_vector(511 downto 0);
    din1   :in  std_logic_vector(511 downto 0);
    din2   :in  std_logic_vector(511 downto 0);
    din3   :in  std_logic_vector(511 downto 0);
    din4   :in  std_logic_vector(63 downto 0);
    dout     :out std_logic_vector(511 downto 0));
end entity;

architecture rtl of top_mux_464_512_1_1 is
    -- puts internal signals
    signal sel    : std_logic_vector(63 downto 0);
    -- level 1 signals
    signal mux_1_0    : std_logic_vector(511 downto 0);
    signal mux_1_1    : std_logic_vector(511 downto 0);
    -- level 2 signals
    signal mux_2_0    : std_logic_vector(511 downto 0);
    -- level 3 signals
    signal mux_3_0    : std_logic_vector(511 downto 0);
    -- level 4 signals
    signal mux_4_0    : std_logic_vector(511 downto 0);
    -- level 5 signals
    signal mux_5_0    : std_logic_vector(511 downto 0);
    -- level 6 signals
    signal mux_6_0    : std_logic_vector(511 downto 0);
    -- level 7 signals
    signal mux_7_0    : std_logic_vector(511 downto 0);
    -- level 8 signals
    signal mux_8_0    : std_logic_vector(511 downto 0);
    -- level 9 signals
    signal mux_9_0    : std_logic_vector(511 downto 0);
    -- level 10 signals
    signal mux_10_0    : std_logic_vector(511 downto 0);
    -- level 11 signals
    signal mux_11_0    : std_logic_vector(511 downto 0);
    -- level 12 signals
    signal mux_12_0    : std_logic_vector(511 downto 0);
    -- level 13 signals
    signal mux_13_0    : std_logic_vector(511 downto 0);
    -- level 14 signals
    signal mux_14_0    : std_logic_vector(511 downto 0);
    -- level 15 signals
    signal mux_15_0    : std_logic_vector(511 downto 0);
    -- level 16 signals
    signal mux_16_0    : std_logic_vector(511 downto 0);
    -- level 17 signals
    signal mux_17_0    : std_logic_vector(511 downto 0);
    -- level 18 signals
    signal mux_18_0    : std_logic_vector(511 downto 0);
    -- level 19 signals
    signal mux_19_0    : std_logic_vector(511 downto 0);
    -- level 20 signals
    signal mux_20_0    : std_logic_vector(511 downto 0);
    -- level 21 signals
    signal mux_21_0    : std_logic_vector(511 downto 0);
    -- level 22 signals
    signal mux_22_0    : std_logic_vector(511 downto 0);
    -- level 23 signals
    signal mux_23_0    : std_logic_vector(511 downto 0);
    -- level 24 signals
    signal mux_24_0    : std_logic_vector(511 downto 0);
    -- level 25 signals
    signal mux_25_0    : std_logic_vector(511 downto 0);
    -- level 26 signals
    signal mux_26_0    : std_logic_vector(511 downto 0);
    -- level 27 signals
    signal mux_27_0    : std_logic_vector(511 downto 0);
    -- level 28 signals
    signal mux_28_0    : std_logic_vector(511 downto 0);
    -- level 29 signals
    signal mux_29_0    : std_logic_vector(511 downto 0);
    -- level 30 signals
    signal mux_30_0    : std_logic_vector(511 downto 0);
    -- level 31 signals
    signal mux_31_0    : std_logic_vector(511 downto 0);
    -- level 32 signals
    signal mux_32_0    : std_logic_vector(511 downto 0);
    -- level 33 signals
    signal mux_33_0    : std_logic_vector(511 downto 0);
    -- level 34 signals
    signal mux_34_0    : std_logic_vector(511 downto 0);
    -- level 35 signals
    signal mux_35_0    : std_logic_vector(511 downto 0);
    -- level 36 signals
    signal mux_36_0    : std_logic_vector(511 downto 0);
    -- level 37 signals
    signal mux_37_0    : std_logic_vector(511 downto 0);
    -- level 38 signals
    signal mux_38_0    : std_logic_vector(511 downto 0);
    -- level 39 signals
    signal mux_39_0    : std_logic_vector(511 downto 0);
    -- level 40 signals
    signal mux_40_0    : std_logic_vector(511 downto 0);
    -- level 41 signals
    signal mux_41_0    : std_logic_vector(511 downto 0);
    -- level 42 signals
    signal mux_42_0    : std_logic_vector(511 downto 0);
    -- level 43 signals
    signal mux_43_0    : std_logic_vector(511 downto 0);
    -- level 44 signals
    signal mux_44_0    : std_logic_vector(511 downto 0);
    -- level 45 signals
    signal mux_45_0    : std_logic_vector(511 downto 0);
    -- level 46 signals
    signal mux_46_0    : std_logic_vector(511 downto 0);
    -- level 47 signals
    signal mux_47_0    : std_logic_vector(511 downto 0);
    -- level 48 signals
    signal mux_48_0    : std_logic_vector(511 downto 0);
    -- level 49 signals
    signal mux_49_0    : std_logic_vector(511 downto 0);
    -- level 50 signals
    signal mux_50_0    : std_logic_vector(511 downto 0);
    -- level 51 signals
    signal mux_51_0    : std_logic_vector(511 downto 0);
    -- level 52 signals
    signal mux_52_0    : std_logic_vector(511 downto 0);
    -- level 53 signals
    signal mux_53_0    : std_logic_vector(511 downto 0);
    -- level 54 signals
    signal mux_54_0    : std_logic_vector(511 downto 0);
    -- level 55 signals
    signal mux_55_0    : std_logic_vector(511 downto 0);
    -- level 56 signals
    signal mux_56_0    : std_logic_vector(511 downto 0);
    -- level 57 signals
    signal mux_57_0    : std_logic_vector(511 downto 0);
    -- level 58 signals
    signal mux_58_0    : std_logic_vector(511 downto 0);
    -- level 59 signals
    signal mux_59_0    : std_logic_vector(511 downto 0);
    -- level 60 signals
    signal mux_60_0    : std_logic_vector(511 downto 0);
    -- level 61 signals
    signal mux_61_0    : std_logic_vector(511 downto 0);
    -- level 62 signals
    signal mux_62_0    : std_logic_vector(511 downto 0);
    -- level 63 signals
    signal mux_63_0    : std_logic_vector(511 downto 0);
    -- level 64 signals
    signal mux_64_0    : std_logic_vector(511 downto 0);
begin

sel <= din4;

-- Generate level 1 logic
mux_1_0 <= din0 when sel(0) = '0' else din1;
mux_1_1 <= din2 when sel(0) = '0' else din3;

-- Generate level 2 logic
mux_2_0 <= mux_1_0 when sel(1) = '0' else mux_1_1;

-- Generate level 3 logic
mux_3_0 <= mux_2_0;

-- Generate level 4 logic
mux_4_0 <= mux_3_0;

-- Generate level 5 logic
mux_5_0 <= mux_4_0;

-- Generate level 6 logic
mux_6_0 <= mux_5_0;

-- Generate level 7 logic
mux_7_0 <= mux_6_0;

-- Generate level 8 logic
mux_8_0 <= mux_7_0;

-- Generate level 9 logic
mux_9_0 <= mux_8_0;

-- Generate level 10 logic
mux_10_0 <= mux_9_0;

-- Generate level 11 logic
mux_11_0 <= mux_10_0;

-- Generate level 12 logic
mux_12_0 <= mux_11_0;

-- Generate level 13 logic
mux_13_0 <= mux_12_0;

-- Generate level 14 logic
mux_14_0 <= mux_13_0;

-- Generate level 15 logic
mux_15_0 <= mux_14_0;

-- Generate level 16 logic
mux_16_0 <= mux_15_0;

-- Generate level 17 logic
mux_17_0 <= mux_16_0;

-- Generate level 18 logic
mux_18_0 <= mux_17_0;

-- Generate level 19 logic
mux_19_0 <= mux_18_0;

-- Generate level 20 logic
mux_20_0 <= mux_19_0;

-- Generate level 21 logic
mux_21_0 <= mux_20_0;

-- Generate level 22 logic
mux_22_0 <= mux_21_0;

-- Generate level 23 logic
mux_23_0 <= mux_22_0;

-- Generate level 24 logic
mux_24_0 <= mux_23_0;

-- Generate level 25 logic
mux_25_0 <= mux_24_0;

-- Generate level 26 logic
mux_26_0 <= mux_25_0;

-- Generate level 27 logic
mux_27_0 <= mux_26_0;

-- Generate level 28 logic
mux_28_0 <= mux_27_0;

-- Generate level 29 logic
mux_29_0 <= mux_28_0;

-- Generate level 30 logic
mux_30_0 <= mux_29_0;

-- Generate level 31 logic
mux_31_0 <= mux_30_0;

-- Generate level 32 logic
mux_32_0 <= mux_31_0;

-- Generate level 33 logic
mux_33_0 <= mux_32_0;

-- Generate level 34 logic
mux_34_0 <= mux_33_0;

-- Generate level 35 logic
mux_35_0 <= mux_34_0;

-- Generate level 36 logic
mux_36_0 <= mux_35_0;

-- Generate level 37 logic
mux_37_0 <= mux_36_0;

-- Generate level 38 logic
mux_38_0 <= mux_37_0;

-- Generate level 39 logic
mux_39_0 <= mux_38_0;

-- Generate level 40 logic
mux_40_0 <= mux_39_0;

-- Generate level 41 logic
mux_41_0 <= mux_40_0;

-- Generate level 42 logic
mux_42_0 <= mux_41_0;

-- Generate level 43 logic
mux_43_0 <= mux_42_0;

-- Generate level 44 logic
mux_44_0 <= mux_43_0;

-- Generate level 45 logic
mux_45_0 <= mux_44_0;

-- Generate level 46 logic
mux_46_0 <= mux_45_0;

-- Generate level 47 logic
mux_47_0 <= mux_46_0;

-- Generate level 48 logic
mux_48_0 <= mux_47_0;

-- Generate level 49 logic
mux_49_0 <= mux_48_0;

-- Generate level 50 logic
mux_50_0 <= mux_49_0;

-- Generate level 51 logic
mux_51_0 <= mux_50_0;

-- Generate level 52 logic
mux_52_0 <= mux_51_0;

-- Generate level 53 logic
mux_53_0 <= mux_52_0;

-- Generate level 54 logic
mux_54_0 <= mux_53_0;

-- Generate level 55 logic
mux_55_0 <= mux_54_0;

-- Generate level 56 logic
mux_56_0 <= mux_55_0;

-- Generate level 57 logic
mux_57_0 <= mux_56_0;

-- Generate level 58 logic
mux_58_0 <= mux_57_0;

-- Generate level 59 logic
mux_59_0 <= mux_58_0;

-- Generate level 60 logic
mux_60_0 <= mux_59_0;

-- Generate level 61 logic
mux_61_0 <= mux_60_0;

-- Generate level 62 logic
mux_62_0 <= mux_61_0;

-- Generate level 63 logic
mux_63_0 <= mux_62_0;

-- Generate level 64 logic
mux_64_0 <= mux_63_0;

-- output logic
dout <= mux_64_0;

end architecture;
