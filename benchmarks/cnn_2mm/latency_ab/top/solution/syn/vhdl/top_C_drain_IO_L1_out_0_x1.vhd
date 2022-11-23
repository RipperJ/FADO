-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Version: 2020.2
-- Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity top_C_drain_IO_L1_out_0_x1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    fifo_C_drain_C_drain_IO_L1_out_0_12_x1121_dout : IN STD_LOGIC_VECTOR (63 downto 0);
    fifo_C_drain_C_drain_IO_L1_out_0_12_x1121_empty_n : IN STD_LOGIC;
    fifo_C_drain_C_drain_IO_L1_out_0_12_x1121_read : OUT STD_LOGIC;
    fifo_C_drain_C_drain_IO_L1_out_0_11_x1120_din : OUT STD_LOGIC_VECTOR (63 downto 0);
    fifo_C_drain_C_drain_IO_L1_out_0_11_x1120_full_n : IN STD_LOGIC;
    fifo_C_drain_C_drain_IO_L1_out_0_11_x1120_write : OUT STD_LOGIC;
    fifo_C_drain_PE_11_0_x194_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    fifo_C_drain_PE_11_0_x194_empty_n : IN STD_LOGIC;
    fifo_C_drain_PE_11_0_x194_read : OUT STD_LOGIC );
end;


architecture behav of top_C_drain_IO_L1_out_0_x1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (12 downto 0) := "0000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (12 downto 0) := "0000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (12 downto 0) := "0000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (12 downto 0) := "0000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (12 downto 0) := "0000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (12 downto 0) := "0000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (12 downto 0) := "0001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (12 downto 0) := "0010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (12 downto 0) := "0100000000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (12 downto 0) := "1000000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_B : STD_LOGIC_VECTOR (3 downto 0) := "1011";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv64_1 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv7_40 : STD_LOGIC_VECTOR (6 downto 0) := "1000000";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv5_10 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv4_D : STD_LOGIC_VECTOR (3 downto 0) := "1101";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_lv6_20 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_boolean_1 : BOOLEAN := true;

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (12 downto 0) := "0000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal fifo_C_drain_C_drain_IO_L1_out_0_12_x1121_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state11 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state11 : signal is "none";
    signal fifo_C_drain_C_drain_IO_L1_out_0_11_x1120_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state13 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state13 : signal is "none";
    signal fifo_C_drain_PE_11_0_x194_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal icmp_ln878_fu_351_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal local_C_V_q0 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal ap_CS_fsm_state12 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state12 : signal is "none";
    signal add_ln691_fu_285_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal add_ln691_reg_463 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal div_i_i120_udiv_reg_471 : STD_LOGIC_VECTOR (4 downto 0);
    signal icmp_ln890_fu_291_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal buf_data_split_V_addr_152_reg_476 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln691_622_fu_316_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln691_622_reg_481 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal local_C_V_addr_reg_486 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln691_623_fu_340_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_block_state5 : BOOLEAN;
    signal zext_ln1497_fu_372_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal cmp_i_i_fu_391_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal cmp_i_i_reg_511 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal icmp_ln890_467_fu_385_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln691_624_fu_397_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln691_624_reg_515 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal tmp_317_cast_fu_407_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_317_cast_reg_520 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln691_621_fu_421_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal icmp_ln890_469_fu_415_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln691_625_fu_427_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln691_625_reg_533 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal local_C_V_address0 : STD_LOGIC_VECTOR (8 downto 0);
    signal local_C_V_ce0 : STD_LOGIC;
    signal local_C_V_ce1 : STD_LOGIC;
    signal local_C_V_we1 : STD_LOGIC;
    signal local_C_V_d1 : STD_LOGIC_VECTOR (63 downto 0);
    signal buf_data_split_V_address0 : STD_LOGIC_VECTOR (0 downto 0);
    signal buf_data_split_V_ce0 : STD_LOGIC;
    signal buf_data_split_V_we0 : STD_LOGIC;
    signal buf_data_split_V_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal buf_data_split_V_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal buf_data_split_V_address1 : STD_LOGIC_VECTOR (0 downto 0);
    signal buf_data_split_V_ce1 : STD_LOGIC;
    signal buf_data_split_V_q1 : STD_LOGIC_VECTOR (31 downto 0);
    signal c6_V_reg_193 : STD_LOGIC_VECTOR (6 downto 0);
    signal icmp_ln890_468_fu_334_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal c7_V_reg_204 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal n_V_reg_215 : STD_LOGIC_VECTOR (1 downto 0);
    signal p_Val2_s_reg_226 : STD_LOGIC_VECTOR (63 downto 0);
    signal c4_V_reg_235 : STD_LOGIC_VECTOR (3 downto 0);
    signal c5_V_reg_247 : STD_LOGIC_VECTOR (4 downto 0);
    signal icmp_ln890_470_fu_447_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal c6_V_103_reg_258 : STD_LOGIC_VECTOR (5 downto 0);
    signal fifo_data_51_reg_269 : STD_LOGIC_VECTOR (63 downto 0);
    signal idxprom_fu_311_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln10253_fu_329_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln878_fu_346_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln10278_1_fu_442_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal trunc_ln674_fu_357_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal empty_fu_307_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_s_fu_322_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal r_fu_362_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln10278_fu_403_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln10278_fu_433_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln10278_fu_437_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (12 downto 0);
    signal ap_ce_reg : STD_LOGIC;

    component top_C_drain_IO_L1_out_boundary_0_x0_local_C_V IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (8 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (63 downto 0);
        address1 : IN STD_LOGIC_VECTOR (8 downto 0);
        ce1 : IN STD_LOGIC;
        we1 : IN STD_LOGIC;
        d1 : IN STD_LOGIC_VECTOR (63 downto 0) );
    end component;


    component top_C_drain_IO_L1_out_boundary_0_x0_buf_data_split_V IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (0 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (31 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        address1 : IN STD_LOGIC_VECTOR (0 downto 0);
        ce1 : IN STD_LOGIC;
        q1 : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    local_C_V_U : component top_C_drain_IO_L1_out_boundary_0_x0_local_C_V
    generic map (
        DataWidth => 64,
        AddressRange => 512,
        AddressWidth => 9)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => local_C_V_address0,
        ce0 => local_C_V_ce0,
        q0 => local_C_V_q0,
        address1 => local_C_V_addr_reg_486,
        ce1 => local_C_V_ce1,
        we1 => local_C_V_we1,
        d1 => local_C_V_d1);

    buf_data_split_V_U : component top_C_drain_IO_L1_out_boundary_0_x0_buf_data_split_V
    generic map (
        DataWidth => 32,
        AddressRange => 2,
        AddressWidth => 1)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => buf_data_split_V_address0,
        ce0 => buf_data_split_V_ce0,
        we0 => buf_data_split_V_we0,
        d0 => buf_data_split_V_d0,
        q0 => buf_data_split_V_q0,
        address1 => buf_data_split_V_address1,
        ce1 => buf_data_split_V_ce1,
        q1 => buf_data_split_V_q1);





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
                elsif (((ap_const_logic_1 = ap_CS_fsm_state8) and (icmp_ln890_467_fu_385_p2 = ap_const_lv1_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    c4_V_reg_235_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln890_fu_291_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                c4_V_reg_235 <= ap_const_lv4_B;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state9) and (icmp_ln890_469_fu_415_p2 = ap_const_lv1_1))) then 
                c4_V_reg_235 <= add_ln691_621_fu_421_p2;
            end if; 
        end if;
    end process;

    c5_V_reg_247_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state8) and (icmp_ln890_467_fu_385_p2 = ap_const_lv1_0))) then 
                c5_V_reg_247 <= ap_const_lv5_0;
            elsif (((icmp_ln890_470_fu_447_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state10))) then 
                c5_V_reg_247 <= add_ln691_624_reg_515;
            end if; 
        end if;
    end process;

    c6_V_103_reg_258_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((fifo_C_drain_C_drain_IO_L1_out_0_11_x1120_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state13))) then 
                c6_V_103_reg_258 <= add_ln691_625_reg_533;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state9) and (icmp_ln890_469_fu_415_p2 = ap_const_lv1_0))) then 
                c6_V_103_reg_258 <= ap_const_lv6_0;
            end if; 
        end if;
    end process;

    c6_V_reg_193_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                c6_V_reg_193 <= ap_const_lv7_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and (icmp_ln890_468_fu_334_p2 = ap_const_lv1_1))) then 
                c6_V_reg_193 <= add_ln691_reg_463;
            end if; 
        end if;
    end process;

    c7_V_reg_204_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln890_fu_291_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                c7_V_reg_204 <= ap_const_lv5_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
                c7_V_reg_204 <= add_ln691_622_reg_481;
            end if; 
        end if;
    end process;

    fifo_data_51_reg_269_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((fifo_C_drain_C_drain_IO_L1_out_0_12_x1121_empty_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state11))) then 
                fifo_data_51_reg_269 <= fifo_C_drain_C_drain_IO_L1_out_0_12_x1121_dout;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
                fifo_data_51_reg_269 <= local_C_V_q0;
            end if; 
        end if;
    end process;

    n_V_reg_215_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                n_V_reg_215 <= ap_const_lv2_0;
            elsif ((not(((icmp_ln878_fu_351_p2 = ap_const_lv1_1) and (fifo_C_drain_PE_11_0_x194_empty_n = ap_const_logic_0))) and (icmp_ln878_fu_351_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                n_V_reg_215 <= add_ln691_623_fu_340_p2;
            end if; 
        end if;
    end process;

    p_Val2_s_reg_226_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                p_Val2_s_reg_226 <= local_C_V_q0;
            elsif ((not(((icmp_ln878_fu_351_p2 = ap_const_lv1_1) and (fifo_C_drain_PE_11_0_x194_empty_n = ap_const_logic_0))) and (icmp_ln878_fu_351_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                p_Val2_s_reg_226 <= zext_ln1497_fu_372_p1;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                add_ln691_622_reg_481 <= add_ln691_622_fu_316_p2;
                local_C_V_addr_reg_486 <= zext_ln10253_fu_329_p1(9 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state9)) then
                add_ln691_624_reg_515 <= add_ln691_624_fu_397_p2;
                    tmp_317_cast_reg_520(8 downto 5) <= tmp_317_cast_fu_407_p3(8 downto 5);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state10)) then
                add_ln691_625_reg_533 <= add_ln691_625_fu_427_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                add_ln691_reg_463 <= add_ln691_fu_285_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln890_fu_291_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                buf_data_split_V_addr_152_reg_476 <= idxprom_fu_311_p1(1 - 1 downto 0);
                div_i_i120_udiv_reg_471 <= c6_V_reg_193(5 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state8) and (icmp_ln890_467_fu_385_p2 = ap_const_lv1_0))) then
                cmp_i_i_reg_511 <= cmp_i_i_fu_391_p2;
            end if;
        end if;
    end process;
    tmp_317_cast_reg_520(4 downto 0) <= "00000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, fifo_C_drain_C_drain_IO_L1_out_0_12_x1121_empty_n, fifo_C_drain_C_drain_IO_L1_out_0_11_x1120_full_n, fifo_C_drain_PE_11_0_x194_empty_n, ap_CS_fsm_state11, ap_CS_fsm_state13, ap_CS_fsm_state5, icmp_ln878_fu_351_p2, ap_CS_fsm_state2, icmp_ln890_fu_291_p2, ap_CS_fsm_state3, cmp_i_i_reg_511, ap_CS_fsm_state8, icmp_ln890_467_fu_385_p2, ap_CS_fsm_state9, icmp_ln890_469_fu_415_p2, ap_CS_fsm_state10, icmp_ln890_468_fu_334_p2, icmp_ln890_470_fu_447_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln890_fu_291_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state8;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (icmp_ln890_468_fu_334_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                if ((not(((icmp_ln878_fu_351_p2 = ap_const_lv1_1) and (fifo_C_drain_PE_11_0_x194_empty_n = ap_const_logic_0))) and (icmp_ln878_fu_351_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                elsif ((not(((icmp_ln878_fu_351_p2 = ap_const_lv1_1) and (fifo_C_drain_PE_11_0_x194_empty_n = ap_const_logic_0))) and (icmp_ln878_fu_351_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state8 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state8) and (icmp_ln890_467_fu_385_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state9;
                end if;
            when ap_ST_fsm_state9 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state9) and (icmp_ln890_469_fu_415_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state8;
                else
                    ap_NS_fsm <= ap_ST_fsm_state10;
                end if;
            when ap_ST_fsm_state10 => 
                if (((icmp_ln890_470_fu_447_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state10))) then
                    ap_NS_fsm <= ap_ST_fsm_state9;
                elsif (((icmp_ln890_470_fu_447_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state10) and (cmp_i_i_reg_511 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state12;
                else
                    ap_NS_fsm <= ap_ST_fsm_state11;
                end if;
            when ap_ST_fsm_state11 => 
                if (((fifo_C_drain_C_drain_IO_L1_out_0_12_x1121_empty_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state11))) then
                    ap_NS_fsm <= ap_ST_fsm_state13;
                else
                    ap_NS_fsm <= ap_ST_fsm_state11;
                end if;
            when ap_ST_fsm_state12 => 
                ap_NS_fsm <= ap_ST_fsm_state13;
            when ap_ST_fsm_state13 => 
                if (((fifo_C_drain_C_drain_IO_L1_out_0_11_x1120_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state13))) then
                    ap_NS_fsm <= ap_ST_fsm_state10;
                else
                    ap_NS_fsm <= ap_ST_fsm_state13;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXX";
        end case;
    end process;
    add_ln10278_fu_437_p2 <= std_logic_vector(unsigned(tmp_317_cast_reg_520) + unsigned(zext_ln10278_fu_433_p1));
    add_ln691_621_fu_421_p2 <= std_logic_vector(unsigned(c4_V_reg_235) + unsigned(ap_const_lv4_1));
    add_ln691_622_fu_316_p2 <= std_logic_vector(unsigned(c7_V_reg_204) + unsigned(ap_const_lv5_1));
    add_ln691_623_fu_340_p2 <= std_logic_vector(unsigned(n_V_reg_215) + unsigned(ap_const_lv2_1));
    add_ln691_624_fu_397_p2 <= std_logic_vector(unsigned(c5_V_reg_247) + unsigned(ap_const_lv5_1));
    add_ln691_625_fu_427_p2 <= std_logic_vector(unsigned(c6_V_103_reg_258) + unsigned(ap_const_lv6_1));
    add_ln691_fu_285_p2 <= std_logic_vector(unsigned(c6_V_reg_193) + unsigned(ap_const_lv7_1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state11 <= ap_CS_fsm(10);
    ap_CS_fsm_state12 <= ap_CS_fsm(11);
    ap_CS_fsm_state13 <= ap_CS_fsm(12);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_block_state1_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0));
    end process;


    ap_block_state5_assign_proc : process(fifo_C_drain_PE_11_0_x194_empty_n, icmp_ln878_fu_351_p2)
    begin
                ap_block_state5 <= ((icmp_ln878_fu_351_p2 = ap_const_lv1_1) and (fifo_C_drain_PE_11_0_x194_empty_n = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state8, icmp_ln890_467_fu_385_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state8) and (icmp_ln890_467_fu_385_p2 = ap_const_lv1_1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state8, icmp_ln890_467_fu_385_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state8) and (icmp_ln890_467_fu_385_p2 = ap_const_lv1_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    buf_data_split_V_address0_assign_proc : process(ap_CS_fsm_state5, icmp_ln878_fu_351_p2, buf_data_split_V_addr_152_reg_476, zext_ln878_fu_346_p1, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            buf_data_split_V_address0 <= ap_const_lv64_1(1 - 1 downto 0);
        elsif (((icmp_ln878_fu_351_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            buf_data_split_V_address0 <= buf_data_split_V_addr_152_reg_476;
        elsif (((icmp_ln878_fu_351_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            buf_data_split_V_address0 <= zext_ln878_fu_346_p1(1 - 1 downto 0);
        else 
            buf_data_split_V_address0 <= "X";
        end if; 
    end process;

    buf_data_split_V_address1 <= ap_const_lv64_0(1 - 1 downto 0);

    buf_data_split_V_ce0_assign_proc : process(fifo_C_drain_PE_11_0_x194_empty_n, ap_CS_fsm_state5, icmp_ln878_fu_351_p2, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) or (not(((icmp_ln878_fu_351_p2 = ap_const_lv1_1) and (fifo_C_drain_PE_11_0_x194_empty_n = ap_const_logic_0))) and (icmp_ln878_fu_351_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5)) or (not(((icmp_ln878_fu_351_p2 = ap_const_lv1_1) and (fifo_C_drain_PE_11_0_x194_empty_n = ap_const_logic_0))) and (icmp_ln878_fu_351_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5)))) then 
            buf_data_split_V_ce0 <= ap_const_logic_1;
        else 
            buf_data_split_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    buf_data_split_V_ce1_assign_proc : process(ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            buf_data_split_V_ce1 <= ap_const_logic_1;
        else 
            buf_data_split_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    buf_data_split_V_d0_assign_proc : process(fifo_C_drain_PE_11_0_x194_dout, ap_CS_fsm_state5, icmp_ln878_fu_351_p2, trunc_ln674_fu_357_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
            if ((icmp_ln878_fu_351_p2 = ap_const_lv1_1)) then 
                buf_data_split_V_d0 <= fifo_C_drain_PE_11_0_x194_dout;
            elsif ((icmp_ln878_fu_351_p2 = ap_const_lv1_0)) then 
                buf_data_split_V_d0 <= trunc_ln674_fu_357_p1;
            else 
                buf_data_split_V_d0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            end if;
        else 
            buf_data_split_V_d0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    buf_data_split_V_we0_assign_proc : process(fifo_C_drain_PE_11_0_x194_empty_n, ap_CS_fsm_state5, icmp_ln878_fu_351_p2)
    begin
        if (((not(((icmp_ln878_fu_351_p2 = ap_const_lv1_1) and (fifo_C_drain_PE_11_0_x194_empty_n = ap_const_logic_0))) and (icmp_ln878_fu_351_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5)) or (not(((icmp_ln878_fu_351_p2 = ap_const_lv1_1) and (fifo_C_drain_PE_11_0_x194_empty_n = ap_const_logic_0))) and (icmp_ln878_fu_351_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5)))) then 
            buf_data_split_V_we0 <= ap_const_logic_1;
        else 
            buf_data_split_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    cmp_i_i_fu_391_p2 <= "1" when (c4_V_reg_235 = ap_const_lv4_B) else "0";
    empty_fu_307_p1 <= c6_V_reg_193(1 - 1 downto 0);

    fifo_C_drain_C_drain_IO_L1_out_0_11_x1120_blk_n_assign_proc : process(fifo_C_drain_C_drain_IO_L1_out_0_11_x1120_full_n, ap_CS_fsm_state13)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state13)) then 
            fifo_C_drain_C_drain_IO_L1_out_0_11_x1120_blk_n <= fifo_C_drain_C_drain_IO_L1_out_0_11_x1120_full_n;
        else 
            fifo_C_drain_C_drain_IO_L1_out_0_11_x1120_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    fifo_C_drain_C_drain_IO_L1_out_0_11_x1120_din <= fifo_data_51_reg_269;

    fifo_C_drain_C_drain_IO_L1_out_0_11_x1120_write_assign_proc : process(fifo_C_drain_C_drain_IO_L1_out_0_11_x1120_full_n, ap_CS_fsm_state13)
    begin
        if (((fifo_C_drain_C_drain_IO_L1_out_0_11_x1120_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state13))) then 
            fifo_C_drain_C_drain_IO_L1_out_0_11_x1120_write <= ap_const_logic_1;
        else 
            fifo_C_drain_C_drain_IO_L1_out_0_11_x1120_write <= ap_const_logic_0;
        end if; 
    end process;


    fifo_C_drain_C_drain_IO_L1_out_0_12_x1121_blk_n_assign_proc : process(fifo_C_drain_C_drain_IO_L1_out_0_12_x1121_empty_n, ap_CS_fsm_state11)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
            fifo_C_drain_C_drain_IO_L1_out_0_12_x1121_blk_n <= fifo_C_drain_C_drain_IO_L1_out_0_12_x1121_empty_n;
        else 
            fifo_C_drain_C_drain_IO_L1_out_0_12_x1121_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    fifo_C_drain_C_drain_IO_L1_out_0_12_x1121_read_assign_proc : process(fifo_C_drain_C_drain_IO_L1_out_0_12_x1121_empty_n, ap_CS_fsm_state11)
    begin
        if (((fifo_C_drain_C_drain_IO_L1_out_0_12_x1121_empty_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state11))) then 
            fifo_C_drain_C_drain_IO_L1_out_0_12_x1121_read <= ap_const_logic_1;
        else 
            fifo_C_drain_C_drain_IO_L1_out_0_12_x1121_read <= ap_const_logic_0;
        end if; 
    end process;


    fifo_C_drain_PE_11_0_x194_blk_n_assign_proc : process(fifo_C_drain_PE_11_0_x194_empty_n, ap_CS_fsm_state5, icmp_ln878_fu_351_p2)
    begin
        if (((icmp_ln878_fu_351_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            fifo_C_drain_PE_11_0_x194_blk_n <= fifo_C_drain_PE_11_0_x194_empty_n;
        else 
            fifo_C_drain_PE_11_0_x194_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    fifo_C_drain_PE_11_0_x194_read_assign_proc : process(fifo_C_drain_PE_11_0_x194_empty_n, ap_CS_fsm_state5, icmp_ln878_fu_351_p2)
    begin
        if ((not(((icmp_ln878_fu_351_p2 = ap_const_lv1_1) and (fifo_C_drain_PE_11_0_x194_empty_n = ap_const_logic_0))) and (icmp_ln878_fu_351_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            fifo_C_drain_PE_11_0_x194_read <= ap_const_logic_1;
        else 
            fifo_C_drain_PE_11_0_x194_read <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln878_fu_351_p2 <= "1" when (n_V_reg_215 = ap_const_lv2_2) else "0";
    icmp_ln890_467_fu_385_p2 <= "1" when (c4_V_reg_235 = ap_const_lv4_D) else "0";
    icmp_ln890_468_fu_334_p2 <= "1" when (c7_V_reg_204 = ap_const_lv5_10) else "0";
    icmp_ln890_469_fu_415_p2 <= "1" when (c5_V_reg_247 = ap_const_lv5_10) else "0";
    icmp_ln890_470_fu_447_p2 <= "1" when (c6_V_103_reg_258 = ap_const_lv6_20) else "0";
    icmp_ln890_fu_291_p2 <= "1" when (c6_V_reg_193 = ap_const_lv7_40) else "0";
    idxprom_fu_311_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(empty_fu_307_p1),64));

    local_C_V_address0_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state10, zext_ln10253_fu_329_p1, zext_ln10278_1_fu_442_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            local_C_V_address0 <= zext_ln10278_1_fu_442_p1(9 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            local_C_V_address0 <= zext_ln10253_fu_329_p1(9 - 1 downto 0);
        else 
            local_C_V_address0 <= "XXXXXXXXX";
        end if; 
    end process;


    local_C_V_ce0_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state10)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            local_C_V_ce0 <= ap_const_logic_1;
        else 
            local_C_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    local_C_V_ce1_assign_proc : process(ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            local_C_V_ce1 <= ap_const_logic_1;
        else 
            local_C_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    local_C_V_d1 <= (buf_data_split_V_q0 & buf_data_split_V_q1);

    local_C_V_we1_assign_proc : process(ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            local_C_V_we1 <= ap_const_logic_1;
        else 
            local_C_V_we1 <= ap_const_logic_0;
        end if; 
    end process;

    r_fu_362_p4 <= p_Val2_s_reg_226(63 downto 32);
    tmp_317_cast_fu_407_p3 <= (trunc_ln10278_fu_403_p1 & ap_const_lv5_0);
    tmp_s_fu_322_p3 <= (c7_V_reg_204 & div_i_i120_udiv_reg_471);
    trunc_ln10278_fu_403_p1 <= c5_V_reg_247(4 - 1 downto 0);
    trunc_ln674_fu_357_p1 <= p_Val2_s_reg_226(32 - 1 downto 0);
    zext_ln10253_fu_329_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_s_fu_322_p3),64));
    zext_ln10278_1_fu_442_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln10278_fu_437_p2),64));
    zext_ln10278_fu_433_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(c6_V_103_reg_258),9));
    zext_ln1497_fu_372_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(r_fu_362_p4),64));
    zext_ln878_fu_346_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(n_V_reg_215),64));
end behav;
