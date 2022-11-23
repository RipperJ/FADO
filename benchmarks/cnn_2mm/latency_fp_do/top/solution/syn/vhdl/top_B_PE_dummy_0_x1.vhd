-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Version: 2020.2
-- Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity top_B_PE_dummy_0_x1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    fifo_B_PE_13_0_x168_dout : IN STD_LOGIC_VECTOR (255 downto 0);
    fifo_B_PE_13_0_x168_empty_n : IN STD_LOGIC;
    fifo_B_PE_13_0_x168_read : OUT STD_LOGIC );
end;


architecture behav of top_B_PE_dummy_0_x1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_lv6_20 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv7_40 : STD_LOGIC_VECTOR (6 downto 0) := "1000000";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv5_10 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_boolean_1 : BOOLEAN := true;

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal fifo_B_PE_13_0_x168_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal icmp_ln890_480_fu_115_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln691_fu_85_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln691_reg_121 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal add_ln691_635_fu_97_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal add_ln691_635_reg_129 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal add_ln691_636_fu_109_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_block_state4 : BOOLEAN;
    signal c5_V_reg_52 : STD_LOGIC_VECTOR (5 downto 0);
    signal icmp_ln890_479_fu_103_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal c6_V_reg_63 : STD_LOGIC_VECTOR (6 downto 0);
    signal icmp_ln890_fu_91_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal c7_V_reg_74 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_ce_reg : STD_LOGIC;


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((icmp_ln890_fu_91_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    c5_V_reg_52_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                c5_V_reg_52 <= ap_const_lv6_0;
            elsif (((icmp_ln890_479_fu_103_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                c5_V_reg_52 <= add_ln691_reg_121;
            end if; 
        end if;
    end process;

    c6_V_reg_63_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln890_fu_91_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                c6_V_reg_63 <= ap_const_lv7_0;
            elsif ((not(((icmp_ln890_480_fu_115_p2 = ap_const_lv1_0) and (fifo_B_PE_13_0_x168_empty_n = ap_const_logic_0))) and (icmp_ln890_480_fu_115_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                c6_V_reg_63 <= add_ln691_635_reg_129;
            end if; 
        end if;
    end process;

    c7_V_reg_74_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln890_479_fu_103_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                c7_V_reg_74 <= ap_const_lv5_0;
            elsif ((not(((icmp_ln890_480_fu_115_p2 = ap_const_lv1_0) and (fifo_B_PE_13_0_x168_empty_n = ap_const_logic_0))) and (icmp_ln890_480_fu_115_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                c7_V_reg_74 <= add_ln691_636_fu_109_p2;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                add_ln691_635_reg_129 <= add_ln691_635_fu_97_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                add_ln691_reg_121 <= add_ln691_fu_85_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, fifo_B_PE_13_0_x168_empty_n, ap_CS_fsm_state4, icmp_ln890_480_fu_115_p2, ap_CS_fsm_state2, ap_CS_fsm_state3, icmp_ln890_479_fu_103_p2, icmp_ln890_fu_91_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln890_fu_91_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((icmp_ln890_479_fu_103_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                if ((not(((icmp_ln890_480_fu_115_p2 = ap_const_lv1_0) and (fifo_B_PE_13_0_x168_empty_n = ap_const_logic_0))) and (icmp_ln890_480_fu_115_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                elsif ((not(((icmp_ln890_480_fu_115_p2 = ap_const_lv1_0) and (fifo_B_PE_13_0_x168_empty_n = ap_const_logic_0))) and (icmp_ln890_480_fu_115_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    add_ln691_635_fu_97_p2 <= std_logic_vector(unsigned(c6_V_reg_63) + unsigned(ap_const_lv7_1));
    add_ln691_636_fu_109_p2 <= std_logic_vector(unsigned(c7_V_reg_74) + unsigned(ap_const_lv5_1));
    add_ln691_fu_85_p2 <= std_logic_vector(unsigned(c5_V_reg_52) + unsigned(ap_const_lv6_1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);

    ap_block_state1_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_block_state4_assign_proc : process(fifo_B_PE_13_0_x168_empty_n, icmp_ln890_480_fu_115_p2)
    begin
                ap_block_state4 <= ((icmp_ln890_480_fu_115_p2 = ap_const_lv1_0) and (fifo_B_PE_13_0_x168_empty_n = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state2, icmp_ln890_fu_91_p2)
    begin
        if (((icmp_ln890_fu_91_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln890_fu_91_p2)
    begin
        if (((icmp_ln890_fu_91_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    fifo_B_PE_13_0_x168_blk_n_assign_proc : process(fifo_B_PE_13_0_x168_empty_n, ap_CS_fsm_state4, icmp_ln890_480_fu_115_p2)
    begin
        if (((icmp_ln890_480_fu_115_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            fifo_B_PE_13_0_x168_blk_n <= fifo_B_PE_13_0_x168_empty_n;
        else 
            fifo_B_PE_13_0_x168_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    fifo_B_PE_13_0_x168_read_assign_proc : process(fifo_B_PE_13_0_x168_empty_n, ap_CS_fsm_state4, icmp_ln890_480_fu_115_p2)
    begin
        if ((not(((icmp_ln890_480_fu_115_p2 = ap_const_lv1_0) and (fifo_B_PE_13_0_x168_empty_n = ap_const_logic_0))) and (icmp_ln890_480_fu_115_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            fifo_B_PE_13_0_x168_read <= ap_const_logic_1;
        else 
            fifo_B_PE_13_0_x168_read <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln890_479_fu_103_p2 <= "1" when (c6_V_reg_63 = ap_const_lv7_40) else "0";
    icmp_ln890_480_fu_115_p2 <= "1" when (c7_V_reg_74 = ap_const_lv5_10) else "0";
    icmp_ln890_fu_91_p2 <= "1" when (c5_V_reg_52 = ap_const_lv6_20) else "0";
end behav;
