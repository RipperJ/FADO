-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Version: 2020.2
-- Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity top_B_IO_L3_in_x1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    fifo_B_B_IO_L2_in_0_x114_din : OUT STD_LOGIC_VECTOR (255 downto 0);
    fifo_B_B_IO_L2_in_0_x114_full_n : IN STD_LOGIC;
    fifo_B_B_IO_L2_in_0_x114_write : OUT STD_LOGIC;
    B_address1 : OUT STD_LOGIC_VECTOR (9 downto 0);
    B_ce1 : OUT STD_LOGIC;
    B_q1 : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of top_B_IO_L3_in_x1 is 
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
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv11_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    constant ap_const_lv11_400 : STD_LOGIC_VECTOR (10 downto 0) := "10000000000";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_100 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000100000000";
    constant ap_const_lv257_lc_3 : STD_LOGIC_VECTOR (256 downto 0) := "01111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111";
    constant ap_const_lv257_lc_1 : STD_LOGIC_VECTOR (256 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal fifo_B_B_IO_L2_in_0_x114_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal icmp_ln878_55_fu_138_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_V_3_fu_111_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal i_V_3_reg_165 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal icmp_ln878_fu_117_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_data_V_cast_fu_128_p1 : STD_LOGIC_VECTOR (256 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal add_ln691_fu_132_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_block_state4 : BOOLEAN;
    signal select_ln0_fu_157_p3 : STD_LOGIC_VECTOR (256 downto 0);
    signal i_V_reg_80 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal p_V_reg_91 : STD_LOGIC_VECTOR (1 downto 0);
    signal p_Val2_s_reg_102 : STD_LOGIC_VECTOR (256 downto 0);
    signal zext_ln534_fu_123_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_fu_149_p3 : STD_LOGIC_VECTOR (0 downto 0);
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
                elsif (((icmp_ln878_fu_117_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    i_V_reg_80_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((icmp_ln878_55_fu_138_p2 = ap_const_lv1_0) and (fifo_B_B_IO_L2_in_0_x114_full_n = ap_const_logic_0))) and (icmp_ln878_55_fu_138_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                i_V_reg_80 <= i_V_3_reg_165;
            elsif ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_V_reg_80 <= ap_const_lv11_0;
            end if; 
        end if;
    end process;

    p_V_reg_91_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                p_V_reg_91 <= ap_const_lv2_0;
            elsif ((not(((icmp_ln878_55_fu_138_p2 = ap_const_lv1_0) and (fifo_B_B_IO_L2_in_0_x114_full_n = ap_const_logic_0))) and (icmp_ln878_55_fu_138_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                p_V_reg_91 <= add_ln691_fu_132_p2;
            end if; 
        end if;
    end process;

    p_Val2_s_reg_102_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                p_Val2_s_reg_102 <= mem_data_V_cast_fu_128_p1;
            elsif ((not(((icmp_ln878_55_fu_138_p2 = ap_const_lv1_0) and (fifo_B_B_IO_L2_in_0_x114_full_n = ap_const_logic_0))) and (icmp_ln878_55_fu_138_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                p_Val2_s_reg_102 <= select_ln0_fu_157_p3;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_V_3_reg_165 <= i_V_3_fu_111_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, fifo_B_B_IO_L2_in_0_x114_full_n, ap_CS_fsm_state4, icmp_ln878_55_fu_138_p2, ap_CS_fsm_state2, icmp_ln878_fu_117_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln878_fu_117_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                if ((not(((icmp_ln878_55_fu_138_p2 = ap_const_lv1_0) and (fifo_B_B_IO_L2_in_0_x114_full_n = ap_const_logic_0))) and (icmp_ln878_55_fu_138_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                elsif ((not(((icmp_ln878_55_fu_138_p2 = ap_const_lv1_0) and (fifo_B_B_IO_L2_in_0_x114_full_n = ap_const_logic_0))) and (icmp_ln878_55_fu_138_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    B_address1 <= zext_ln534_fu_123_p1(10 - 1 downto 0);

    B_ce1_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            B_ce1 <= ap_const_logic_1;
        else 
            B_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    add_ln691_fu_132_p2 <= std_logic_vector(unsigned(p_V_reg_91) + unsigned(ap_const_lv2_1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);

    ap_block_state1_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_block_state4_assign_proc : process(fifo_B_B_IO_L2_in_0_x114_full_n, icmp_ln878_55_fu_138_p2)
    begin
                ap_block_state4 <= ((icmp_ln878_55_fu_138_p2 = ap_const_lv1_0) and (fifo_B_B_IO_L2_in_0_x114_full_n = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state2, icmp_ln878_fu_117_p2)
    begin
        if (((icmp_ln878_fu_117_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln878_fu_117_p2)
    begin
        if (((icmp_ln878_fu_117_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    fifo_B_B_IO_L2_in_0_x114_blk_n_assign_proc : process(fifo_B_B_IO_L2_in_0_x114_full_n, ap_CS_fsm_state4, icmp_ln878_55_fu_138_p2)
    begin
        if (((icmp_ln878_55_fu_138_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            fifo_B_B_IO_L2_in_0_x114_blk_n <= fifo_B_B_IO_L2_in_0_x114_full_n;
        else 
            fifo_B_B_IO_L2_in_0_x114_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    fifo_B_B_IO_L2_in_0_x114_din <= p_Val2_s_reg_102(256 - 1 downto 0);

    fifo_B_B_IO_L2_in_0_x114_write_assign_proc : process(fifo_B_B_IO_L2_in_0_x114_full_n, ap_CS_fsm_state4, icmp_ln878_55_fu_138_p2)
    begin
        if ((not(((icmp_ln878_55_fu_138_p2 = ap_const_lv1_0) and (fifo_B_B_IO_L2_in_0_x114_full_n = ap_const_logic_0))) and (icmp_ln878_55_fu_138_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            fifo_B_B_IO_L2_in_0_x114_write <= ap_const_logic_1;
        else 
            fifo_B_B_IO_L2_in_0_x114_write <= ap_const_logic_0;
        end if; 
    end process;

    i_V_3_fu_111_p2 <= std_logic_vector(unsigned(i_V_reg_80) + unsigned(ap_const_lv11_1));
    icmp_ln878_55_fu_138_p2 <= "1" when (p_V_reg_91 = ap_const_lv2_2) else "0";
    icmp_ln878_fu_117_p2 <= "1" when (i_V_reg_80 = ap_const_lv11_400) else "0";
        mem_data_V_cast_fu_128_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(B_q1),257));

    select_ln0_fu_157_p3 <= 
        ap_const_lv257_lc_3 when (tmp_fu_149_p3(0) = '1') else 
        ap_const_lv257_lc_1;
    tmp_fu_149_p3 <= p_Val2_s_reg_102(256 downto 256);
    zext_ln534_fu_123_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_V_reg_80),64));
end behav;
