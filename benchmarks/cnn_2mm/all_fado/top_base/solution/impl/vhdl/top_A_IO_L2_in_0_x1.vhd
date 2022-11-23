-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Version: 2020.2
-- Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity top_A_IO_L2_in_0_x1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    fifo_A_A_IO_L2_in_0_x11_dout : IN STD_LOGIC_VECTOR (255 downto 0);
    fifo_A_A_IO_L2_in_0_x11_empty_n : IN STD_LOGIC;
    fifo_A_A_IO_L2_in_0_x11_read : OUT STD_LOGIC;
    fifo_A_A_IO_L2_in_1_x12_din : OUT STD_LOGIC_VECTOR (255 downto 0);
    fifo_A_A_IO_L2_in_1_x12_full_n : IN STD_LOGIC;
    fifo_A_A_IO_L2_in_1_x12_write : OUT STD_LOGIC;
    fifo_A_PE_0_0_x116_din : OUT STD_LOGIC_VECTOR (255 downto 0);
    fifo_A_PE_0_0_x116_full_n : IN STD_LOGIC;
    fifo_A_PE_0_0_x116_write : OUT STD_LOGIC );
end;


architecture behav of top_A_IO_L2_in_0_x1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (8 downto 0) := "000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (8 downto 0) := "000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (8 downto 0) := "000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (8 downto 0) := "000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (8 downto 0) := "000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (8 downto 0) := "001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (8 downto 0) := "010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (8 downto 0) := "100000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv4_D : STD_LOGIC_VECTOR (3 downto 0) := "1101";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv5_10 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_lv6_20 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv7_40 : STD_LOGIC_VECTOR (6 downto 0) := "1000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal fifo_A_A_IO_L2_in_0_x11_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal fifo_A_A_IO_L2_in_1_x12_blk_n : STD_LOGIC;
    signal cmp_i_i72_reg_333 : STD_LOGIC_VECTOR (0 downto 0);
    signal fifo_A_PE_0_0_x116_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal add_ln691_fu_195_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln691_reg_325 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal cmp_i_i72_fu_207_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln890_fu_201_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln691_828_fu_213_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln691_828_reg_337 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal tmp_378_cast_fu_223_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_378_cast_reg_342 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln691_831_fu_237_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln691_831_reg_350 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal local_A_pong_V_addr_reg_355 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln691_827_fu_263_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln691_827_reg_363 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal zext_ln890_fu_269_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln890_reg_368 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln691_829_fu_279_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal add_ln691_829_reg_376 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal add_ln691_830_fu_291_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln691_830_reg_384 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal local_A_pong_V_address0 : STD_LOGIC_VECTOR (8 downto 0);
    signal local_A_pong_V_ce0 : STD_LOGIC;
    signal local_A_pong_V_q0 : STD_LOGIC_VECTOR (255 downto 0);
    signal local_A_pong_V_ce1 : STD_LOGIC;
    signal local_A_pong_V_we1 : STD_LOGIC;
    signal c3_V_reg_129 : STD_LOGIC_VECTOR (3 downto 0);
    signal icmp_ln890_672_fu_231_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal c4_V_reg_140 : STD_LOGIC_VECTOR (4 downto 0);
    signal icmp_ln890_674_fu_257_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal c5_V_29_reg_151 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_block_state5 : BOOLEAN;
    signal c5_V_reg_162 : STD_LOGIC_VECTOR (5 downto 0);
    signal icmp_ln890_673_fu_285_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal c6_V_reg_173 : STD_LOGIC_VECTOR (6 downto 0);
    signal icmp_ln890_675_fu_319_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln890_671_fu_273_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal c7_V_reg_184 : STD_LOGIC_VECTOR (4 downto 0);
    signal zext_ln6519_1_fu_252_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln6536_fu_314_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal trunc_ln6519_fu_219_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln6519_fu_243_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln6519_fu_247_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal trunc_ln6536_fu_297_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_cast_fu_301_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln6536_fu_309_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_ce_reg : STD_LOGIC;

    component top_A_IO_L2_in_0_x0_local_A_pong_V IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (8 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (255 downto 0);
        address1 : IN STD_LOGIC_VECTOR (8 downto 0);
        ce1 : IN STD_LOGIC;
        we1 : IN STD_LOGIC;
        d1 : IN STD_LOGIC_VECTOR (255 downto 0) );
    end component;



begin
    local_A_pong_V_U : component top_A_IO_L2_in_0_x0_local_A_pong_V
    generic map (
        DataWidth => 256,
        AddressRange => 512,
        AddressWidth => 9)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => local_A_pong_V_address0,
        ce0 => local_A_pong_V_ce0,
        q0 => local_A_pong_V_q0,
        address1 => local_A_pong_V_addr_reg_355,
        ce1 => local_A_pong_V_ce1,
        we1 => local_A_pong_V_we1,
        d1 => fifo_A_A_IO_L2_in_0_x11_dout);





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
                elsif (((ap_const_logic_1 = ap_CS_fsm_state6) and (icmp_ln890_671_fu_273_p2 = ap_const_lv1_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    c3_V_reg_129_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                c3_V_reg_129 <= ap_const_lv4_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and (icmp_ln890_672_fu_231_p2 = ap_const_lv1_1))) then 
                c3_V_reg_129 <= add_ln691_reg_325;
            end if; 
        end if;
    end process;

    c4_V_reg_140_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln890_fu_201_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                c4_V_reg_140 <= ap_const_lv5_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state4) and (icmp_ln890_674_fu_257_p2 = ap_const_lv1_1))) then 
                c4_V_reg_140 <= add_ln691_828_reg_337;
            end if; 
        end if;
    end process;

    c5_V_29_reg_151_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((fifo_A_A_IO_L2_in_0_x11_empty_n = ap_const_logic_0) or ((cmp_i_i72_reg_333 = ap_const_lv1_0) and (fifo_A_A_IO_L2_in_1_x12_full_n = ap_const_logic_0)))) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                c5_V_29_reg_151 <= add_ln691_831_reg_350;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and (icmp_ln890_672_fu_231_p2 = ap_const_lv1_0))) then 
                c5_V_29_reg_151 <= ap_const_lv6_0;
            end if; 
        end if;
    end process;

    c5_V_reg_162_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln890_fu_201_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                c5_V_reg_162 <= ap_const_lv6_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state7) and (icmp_ln890_673_fu_285_p2 = ap_const_lv1_1))) then 
                c5_V_reg_162 <= add_ln691_827_reg_363;
            end if; 
        end if;
    end process;

    c6_V_reg_173_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (icmp_ln890_671_fu_273_p2 = ap_const_lv1_0))) then 
                c6_V_reg_173 <= ap_const_lv7_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state8) and (icmp_ln890_675_fu_319_p2 = ap_const_lv1_1))) then 
                c6_V_reg_173 <= add_ln691_829_reg_376;
            end if; 
        end if;
    end process;

    c7_V_reg_184_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state7) and (icmp_ln890_673_fu_285_p2 = ap_const_lv1_0))) then 
                c7_V_reg_184 <= ap_const_lv5_0;
            elsif (((fifo_A_PE_0_0_x116_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state9))) then 
                c7_V_reg_184 <= add_ln691_830_reg_384;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                add_ln691_827_reg_363 <= add_ln691_827_fu_263_p2;
                    zext_ln890_reg_368(5 downto 0) <= zext_ln890_fu_269_p1(5 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                add_ln691_828_reg_337 <= add_ln691_828_fu_213_p2;
                    tmp_378_cast_reg_342(8 downto 5) <= tmp_378_cast_fu_223_p3(8 downto 5);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                add_ln691_829_reg_376 <= add_ln691_829_fu_279_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then
                add_ln691_830_reg_384 <= add_ln691_830_fu_291_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                add_ln691_831_reg_350 <= add_ln691_831_fu_237_p2;
                local_A_pong_V_addr_reg_355 <= zext_ln6519_1_fu_252_p1(9 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                add_ln691_reg_325 <= add_ln691_fu_195_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln890_fu_201_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                cmp_i_i72_reg_333 <= cmp_i_i72_fu_207_p2;
            end if;
        end if;
    end process;
    tmp_378_cast_reg_342(4 downto 0) <= "00000";
    zext_ln890_reg_368(8 downto 6) <= "000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, fifo_A_A_IO_L2_in_0_x11_empty_n, fifo_A_A_IO_L2_in_1_x12_full_n, fifo_A_PE_0_0_x116_full_n, ap_CS_fsm_state5, cmp_i_i72_reg_333, ap_CS_fsm_state9, ap_CS_fsm_state2, icmp_ln890_fu_201_p2, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state6, ap_CS_fsm_state7, ap_CS_fsm_state8, icmp_ln890_672_fu_231_p2, icmp_ln890_674_fu_257_p2, icmp_ln890_673_fu_285_p2, icmp_ln890_675_fu_319_p2, icmp_ln890_671_fu_273_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln890_fu_201_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (icmp_ln890_672_fu_231_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state4) and (icmp_ln890_674_fu_257_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                if ((not(((fifo_A_A_IO_L2_in_0_x11_empty_n = ap_const_logic_0) or ((cmp_i_i72_reg_333 = ap_const_lv1_0) and (fifo_A_A_IO_L2_in_1_x12_full_n = ap_const_logic_0)))) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state6 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state6) and (icmp_ln890_671_fu_273_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when ap_ST_fsm_state7 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state7) and (icmp_ln890_673_fu_285_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state8;
                end if;
            when ap_ST_fsm_state8 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state8) and (icmp_ln890_675_fu_319_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state7;
                else
                    ap_NS_fsm <= ap_ST_fsm_state9;
                end if;
            when ap_ST_fsm_state9 => 
                if (((fifo_A_PE_0_0_x116_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state9))) then
                    ap_NS_fsm <= ap_ST_fsm_state8;
                else
                    ap_NS_fsm <= ap_ST_fsm_state9;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXX";
        end case;
    end process;
    add_ln6519_fu_247_p2 <= std_logic_vector(unsigned(tmp_378_cast_reg_342) + unsigned(zext_ln6519_fu_243_p1));
    add_ln6536_fu_309_p2 <= std_logic_vector(unsigned(tmp_cast_fu_301_p3) + unsigned(zext_ln890_reg_368));
    add_ln691_827_fu_263_p2 <= std_logic_vector(unsigned(c5_V_reg_162) + unsigned(ap_const_lv6_1));
    add_ln691_828_fu_213_p2 <= std_logic_vector(unsigned(c4_V_reg_140) + unsigned(ap_const_lv5_1));
    add_ln691_829_fu_279_p2 <= std_logic_vector(unsigned(c6_V_reg_173) + unsigned(ap_const_lv7_1));
    add_ln691_830_fu_291_p2 <= std_logic_vector(unsigned(c7_V_reg_184) + unsigned(ap_const_lv5_1));
    add_ln691_831_fu_237_p2 <= std_logic_vector(unsigned(c5_V_29_reg_151) + unsigned(ap_const_lv6_1));
    add_ln691_fu_195_p2 <= std_logic_vector(unsigned(c3_V_reg_129) + unsigned(ap_const_lv4_1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
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


    ap_block_state5_assign_proc : process(fifo_A_A_IO_L2_in_0_x11_empty_n, fifo_A_A_IO_L2_in_1_x12_full_n, cmp_i_i72_reg_333)
    begin
                ap_block_state5 <= ((fifo_A_A_IO_L2_in_0_x11_empty_n = ap_const_logic_0) or ((cmp_i_i72_reg_333 = ap_const_lv1_0) and (fifo_A_A_IO_L2_in_1_x12_full_n = ap_const_logic_0)));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state6, icmp_ln890_671_fu_273_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) and (icmp_ln890_671_fu_273_p2 = ap_const_lv1_1))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state6, icmp_ln890_671_fu_273_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) and (icmp_ln890_671_fu_273_p2 = ap_const_lv1_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    cmp_i_i72_fu_207_p2 <= "1" when (c3_V_reg_129 = ap_const_lv4_0) else "0";

    fifo_A_A_IO_L2_in_0_x11_blk_n_assign_proc : process(fifo_A_A_IO_L2_in_0_x11_empty_n, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            fifo_A_A_IO_L2_in_0_x11_blk_n <= fifo_A_A_IO_L2_in_0_x11_empty_n;
        else 
            fifo_A_A_IO_L2_in_0_x11_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    fifo_A_A_IO_L2_in_0_x11_read_assign_proc : process(fifo_A_A_IO_L2_in_0_x11_empty_n, fifo_A_A_IO_L2_in_1_x12_full_n, ap_CS_fsm_state5, cmp_i_i72_reg_333)
    begin
        if ((not(((fifo_A_A_IO_L2_in_0_x11_empty_n = ap_const_logic_0) or ((cmp_i_i72_reg_333 = ap_const_lv1_0) and (fifo_A_A_IO_L2_in_1_x12_full_n = ap_const_logic_0)))) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            fifo_A_A_IO_L2_in_0_x11_read <= ap_const_logic_1;
        else 
            fifo_A_A_IO_L2_in_0_x11_read <= ap_const_logic_0;
        end if; 
    end process;


    fifo_A_A_IO_L2_in_1_x12_blk_n_assign_proc : process(fifo_A_A_IO_L2_in_1_x12_full_n, ap_CS_fsm_state5, cmp_i_i72_reg_333)
    begin
        if (((cmp_i_i72_reg_333 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            fifo_A_A_IO_L2_in_1_x12_blk_n <= fifo_A_A_IO_L2_in_1_x12_full_n;
        else 
            fifo_A_A_IO_L2_in_1_x12_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    fifo_A_A_IO_L2_in_1_x12_din <= fifo_A_A_IO_L2_in_0_x11_dout;

    fifo_A_A_IO_L2_in_1_x12_write_assign_proc : process(fifo_A_A_IO_L2_in_0_x11_empty_n, fifo_A_A_IO_L2_in_1_x12_full_n, ap_CS_fsm_state5, cmp_i_i72_reg_333)
    begin
        if ((not(((fifo_A_A_IO_L2_in_0_x11_empty_n = ap_const_logic_0) or ((cmp_i_i72_reg_333 = ap_const_lv1_0) and (fifo_A_A_IO_L2_in_1_x12_full_n = ap_const_logic_0)))) and (cmp_i_i72_reg_333 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            fifo_A_A_IO_L2_in_1_x12_write <= ap_const_logic_1;
        else 
            fifo_A_A_IO_L2_in_1_x12_write <= ap_const_logic_0;
        end if; 
    end process;


    fifo_A_PE_0_0_x116_blk_n_assign_proc : process(fifo_A_PE_0_0_x116_full_n, ap_CS_fsm_state9)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            fifo_A_PE_0_0_x116_blk_n <= fifo_A_PE_0_0_x116_full_n;
        else 
            fifo_A_PE_0_0_x116_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    fifo_A_PE_0_0_x116_din <= local_A_pong_V_q0;

    fifo_A_PE_0_0_x116_write_assign_proc : process(fifo_A_PE_0_0_x116_full_n, ap_CS_fsm_state9)
    begin
        if (((fifo_A_PE_0_0_x116_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            fifo_A_PE_0_0_x116_write <= ap_const_logic_1;
        else 
            fifo_A_PE_0_0_x116_write <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln890_671_fu_273_p2 <= "1" when (c5_V_reg_162 = ap_const_lv6_20) else "0";
    icmp_ln890_672_fu_231_p2 <= "1" when (c4_V_reg_140 = ap_const_lv5_10) else "0";
    icmp_ln890_673_fu_285_p2 <= "1" when (c6_V_reg_173 = ap_const_lv7_40) else "0";
    icmp_ln890_674_fu_257_p2 <= "1" when (c5_V_29_reg_151 = ap_const_lv6_20) else "0";
    icmp_ln890_675_fu_319_p2 <= "1" when (c7_V_reg_184 = ap_const_lv5_10) else "0";
    icmp_ln890_fu_201_p2 <= "1" when (c3_V_reg_129 = ap_const_lv4_D) else "0";
    local_A_pong_V_address0 <= zext_ln6536_fu_314_p1(9 - 1 downto 0);

    local_A_pong_V_ce0_assign_proc : process(ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            local_A_pong_V_ce0 <= ap_const_logic_1;
        else 
            local_A_pong_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    local_A_pong_V_ce1_assign_proc : process(fifo_A_A_IO_L2_in_0_x11_empty_n, fifo_A_A_IO_L2_in_1_x12_full_n, ap_CS_fsm_state5, cmp_i_i72_reg_333)
    begin
        if ((not(((fifo_A_A_IO_L2_in_0_x11_empty_n = ap_const_logic_0) or ((cmp_i_i72_reg_333 = ap_const_lv1_0) and (fifo_A_A_IO_L2_in_1_x12_full_n = ap_const_logic_0)))) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            local_A_pong_V_ce1 <= ap_const_logic_1;
        else 
            local_A_pong_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    local_A_pong_V_we1_assign_proc : process(fifo_A_A_IO_L2_in_0_x11_empty_n, fifo_A_A_IO_L2_in_1_x12_full_n, ap_CS_fsm_state5, cmp_i_i72_reg_333)
    begin
        if ((not(((fifo_A_A_IO_L2_in_0_x11_empty_n = ap_const_logic_0) or ((cmp_i_i72_reg_333 = ap_const_lv1_0) and (fifo_A_A_IO_L2_in_1_x12_full_n = ap_const_logic_0)))) and (cmp_i_i72_reg_333 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            local_A_pong_V_we1 <= ap_const_logic_1;
        else 
            local_A_pong_V_we1 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_378_cast_fu_223_p3 <= (trunc_ln6519_fu_219_p1 & ap_const_lv5_0);
    tmp_cast_fu_301_p3 <= (trunc_ln6536_fu_297_p1 & ap_const_lv5_0);
    trunc_ln6519_fu_219_p1 <= c4_V_reg_140(4 - 1 downto 0);
    trunc_ln6536_fu_297_p1 <= c7_V_reg_184(4 - 1 downto 0);
    zext_ln6519_1_fu_252_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln6519_fu_247_p2),64));
    zext_ln6519_fu_243_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(c5_V_29_reg_151),9));
    zext_ln6536_fu_314_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln6536_fu_309_p2),64));
    zext_ln890_fu_269_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(c5_V_reg_162),9));
end behav;
