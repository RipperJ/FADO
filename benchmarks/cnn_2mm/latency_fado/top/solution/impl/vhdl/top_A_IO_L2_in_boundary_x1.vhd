-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Version: 2020.2
-- Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity top_A_IO_L2_in_boundary_x1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    fifo_A_A_IO_L2_in_12_x113_dout : IN STD_LOGIC_VECTOR (255 downto 0);
    fifo_A_A_IO_L2_in_12_x113_empty_n : IN STD_LOGIC;
    fifo_A_A_IO_L2_in_12_x113_read : OUT STD_LOGIC;
    fifo_A_PE_12_0_x152_din : OUT STD_LOGIC_VECTOR (255 downto 0);
    fifo_A_PE_12_0_x152_full_n : IN STD_LOGIC;
    fifo_A_PE_12_0_x152_write : OUT STD_LOGIC );
end;


architecture behav of top_A_IO_L2_in_boundary_x1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (7 downto 0) := "00000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (7 downto 0) := "00000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (7 downto 0) := "00001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (7 downto 0) := "00010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (7 downto 0) := "00100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (7 downto 0) := "01000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (7 downto 0) := "10000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv5_10 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_lv6_20 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv7_40 : STD_LOGIC_VECTOR (6 downto 0) := "1000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal fifo_A_A_IO_L2_in_12_x113_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal fifo_A_PE_12_0_x152_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal add_ln691_fu_164_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln691_reg_276 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp_330_cast_fu_174_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_330_cast_reg_281 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln691_709_fu_188_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln691_709_reg_289 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal local_A_pong_V_addr_reg_294 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln691_710_fu_214_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln691_710_reg_302 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal zext_ln890_fu_220_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln890_reg_307 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln691_711_fu_230_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal add_ln691_711_reg_315 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal add_ln691_712_fu_242_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln691_712_reg_323 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal local_A_pong_V_address0 : STD_LOGIC_VECTOR (8 downto 0);
    signal local_A_pong_V_ce0 : STD_LOGIC;
    signal local_A_pong_V_q0 : STD_LOGIC_VECTOR (255 downto 0);
    signal local_A_pong_V_ce1 : STD_LOGIC;
    signal local_A_pong_V_we1 : STD_LOGIC;
    signal c4_V_reg_109 : STD_LOGIC_VECTOR (4 downto 0);
    signal icmp_ln890_554_fu_208_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal c5_V_5_reg_120 : STD_LOGIC_VECTOR (5 downto 0);
    signal icmp_ln890_fu_182_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal c5_V_reg_131 : STD_LOGIC_VECTOR (5 downto 0);
    signal icmp_ln890_555_fu_236_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal c6_V_reg_142 : STD_LOGIC_VECTOR (6 downto 0);
    signal icmp_ln890_556_fu_270_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln890_553_fu_224_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal c7_V_reg_153 : STD_LOGIC_VECTOR (4 downto 0);
    signal zext_ln7091_1_fu_203_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln7102_fu_265_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal trunc_ln7091_fu_170_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln7091_fu_194_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln7091_fu_198_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal trunc_ln7102_fu_248_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_cast_fu_252_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln7102_fu_260_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (7 downto 0);
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
        address1 => local_A_pong_V_addr_reg_294,
        ce1 => local_A_pong_V_ce1,
        we1 => local_A_pong_V_we1,
        d1 => fifo_A_A_IO_L2_in_12_x113_dout);





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
                elsif (((ap_const_logic_1 = ap_CS_fsm_state5) and (icmp_ln890_553_fu_224_p2 = ap_const_lv1_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    c4_V_reg_109_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                c4_V_reg_109 <= ap_const_lv5_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and (icmp_ln890_554_fu_208_p2 = ap_const_lv1_1))) then 
                c4_V_reg_109 <= add_ln691_reg_276;
            end if; 
        end if;
    end process;

    c5_V_5_reg_120_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln890_fu_182_p2 = ap_const_lv1_0))) then 
                c5_V_5_reg_120 <= ap_const_lv6_0;
            elsif (((fifo_A_A_IO_L2_in_12_x113_empty_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                c5_V_5_reg_120 <= add_ln691_709_reg_289;
            end if; 
        end if;
    end process;

    c5_V_reg_131_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln890_fu_182_p2 = ap_const_lv1_1))) then 
                c5_V_reg_131 <= ap_const_lv6_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state6) and (icmp_ln890_555_fu_236_p2 = ap_const_lv1_1))) then 
                c5_V_reg_131 <= add_ln691_710_reg_302;
            end if; 
        end if;
    end process;

    c6_V_reg_142_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state5) and (icmp_ln890_553_fu_224_p2 = ap_const_lv1_0))) then 
                c6_V_reg_142 <= ap_const_lv7_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state7) and (icmp_ln890_556_fu_270_p2 = ap_const_lv1_1))) then 
                c6_V_reg_142 <= add_ln691_711_reg_315;
            end if; 
        end if;
    end process;

    c7_V_reg_153_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (icmp_ln890_555_fu_236_p2 = ap_const_lv1_0))) then 
                c7_V_reg_153 <= ap_const_lv5_0;
            elsif (((fifo_A_PE_12_0_x152_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
                c7_V_reg_153 <= add_ln691_712_reg_323;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                add_ln691_709_reg_289 <= add_ln691_709_fu_188_p2;
                local_A_pong_V_addr_reg_294 <= zext_ln7091_1_fu_203_p1(9 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                add_ln691_710_reg_302 <= add_ln691_710_fu_214_p2;
                    zext_ln890_reg_307(5 downto 0) <= zext_ln890_fu_220_p1(5 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                add_ln691_711_reg_315 <= add_ln691_711_fu_230_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                add_ln691_712_reg_323 <= add_ln691_712_fu_242_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                add_ln691_reg_276 <= add_ln691_fu_164_p2;
                    tmp_330_cast_reg_281(8 downto 5) <= tmp_330_cast_fu_174_p3(8 downto 5);
            end if;
        end if;
    end process;
    tmp_330_cast_reg_281(4 downto 0) <= "00000";
    zext_ln890_reg_307(8 downto 6) <= "000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, fifo_A_A_IO_L2_in_12_x113_empty_n, fifo_A_PE_12_0_x152_full_n, ap_CS_fsm_state4, ap_CS_fsm_state8, ap_CS_fsm_state2, ap_CS_fsm_state3, ap_CS_fsm_state5, ap_CS_fsm_state6, ap_CS_fsm_state7, icmp_ln890_554_fu_208_p2, icmp_ln890_fu_182_p2, icmp_ln890_555_fu_236_p2, icmp_ln890_556_fu_270_p2, icmp_ln890_553_fu_224_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln890_fu_182_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (icmp_ln890_554_fu_208_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                if (((fifo_A_A_IO_L2_in_12_x113_empty_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state5 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state5) and (icmp_ln890_553_fu_224_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state6 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state6) and (icmp_ln890_555_fu_236_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when ap_ST_fsm_state7 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state7) and (icmp_ln890_556_fu_270_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state8;
                end if;
            when ap_ST_fsm_state8 => 
                if (((fifo_A_PE_12_0_x152_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then
                    ap_NS_fsm <= ap_ST_fsm_state7;
                else
                    ap_NS_fsm <= ap_ST_fsm_state8;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXXX";
        end case;
    end process;
    add_ln691_709_fu_188_p2 <= std_logic_vector(unsigned(c5_V_5_reg_120) + unsigned(ap_const_lv6_1));
    add_ln691_710_fu_214_p2 <= std_logic_vector(unsigned(c5_V_reg_131) + unsigned(ap_const_lv6_1));
    add_ln691_711_fu_230_p2 <= std_logic_vector(unsigned(c6_V_reg_142) + unsigned(ap_const_lv7_1));
    add_ln691_712_fu_242_p2 <= std_logic_vector(unsigned(c7_V_reg_153) + unsigned(ap_const_lv5_1));
    add_ln691_fu_164_p2 <= std_logic_vector(unsigned(c4_V_reg_109) + unsigned(ap_const_lv5_1));
    add_ln7091_fu_198_p2 <= std_logic_vector(unsigned(tmp_330_cast_reg_281) + unsigned(zext_ln7091_fu_194_p1));
    add_ln7102_fu_260_p2 <= std_logic_vector(unsigned(tmp_cast_fu_252_p3) + unsigned(zext_ln890_reg_307));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);

    ap_block_state1_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state5, icmp_ln890_553_fu_224_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) and (icmp_ln890_553_fu_224_p2 = ap_const_lv1_1))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state5, icmp_ln890_553_fu_224_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) and (icmp_ln890_553_fu_224_p2 = ap_const_lv1_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    fifo_A_A_IO_L2_in_12_x113_blk_n_assign_proc : process(fifo_A_A_IO_L2_in_12_x113_empty_n, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            fifo_A_A_IO_L2_in_12_x113_blk_n <= fifo_A_A_IO_L2_in_12_x113_empty_n;
        else 
            fifo_A_A_IO_L2_in_12_x113_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    fifo_A_A_IO_L2_in_12_x113_read_assign_proc : process(fifo_A_A_IO_L2_in_12_x113_empty_n, ap_CS_fsm_state4)
    begin
        if (((fifo_A_A_IO_L2_in_12_x113_empty_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            fifo_A_A_IO_L2_in_12_x113_read <= ap_const_logic_1;
        else 
            fifo_A_A_IO_L2_in_12_x113_read <= ap_const_logic_0;
        end if; 
    end process;


    fifo_A_PE_12_0_x152_blk_n_assign_proc : process(fifo_A_PE_12_0_x152_full_n, ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            fifo_A_PE_12_0_x152_blk_n <= fifo_A_PE_12_0_x152_full_n;
        else 
            fifo_A_PE_12_0_x152_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    fifo_A_PE_12_0_x152_din <= local_A_pong_V_q0;

    fifo_A_PE_12_0_x152_write_assign_proc : process(fifo_A_PE_12_0_x152_full_n, ap_CS_fsm_state8)
    begin
        if (((fifo_A_PE_12_0_x152_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            fifo_A_PE_12_0_x152_write <= ap_const_logic_1;
        else 
            fifo_A_PE_12_0_x152_write <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln890_553_fu_224_p2 <= "1" when (c5_V_reg_131 = ap_const_lv6_20) else "0";
    icmp_ln890_554_fu_208_p2 <= "1" when (c5_V_5_reg_120 = ap_const_lv6_20) else "0";
    icmp_ln890_555_fu_236_p2 <= "1" when (c6_V_reg_142 = ap_const_lv7_40) else "0";
    icmp_ln890_556_fu_270_p2 <= "1" when (c7_V_reg_153 = ap_const_lv5_10) else "0";
    icmp_ln890_fu_182_p2 <= "1" when (c4_V_reg_109 = ap_const_lv5_10) else "0";
    local_A_pong_V_address0 <= zext_ln7102_fu_265_p1(9 - 1 downto 0);

    local_A_pong_V_ce0_assign_proc : process(ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            local_A_pong_V_ce0 <= ap_const_logic_1;
        else 
            local_A_pong_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    local_A_pong_V_ce1_assign_proc : process(fifo_A_A_IO_L2_in_12_x113_empty_n, ap_CS_fsm_state4)
    begin
        if (((fifo_A_A_IO_L2_in_12_x113_empty_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            local_A_pong_V_ce1 <= ap_const_logic_1;
        else 
            local_A_pong_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    local_A_pong_V_we1_assign_proc : process(fifo_A_A_IO_L2_in_12_x113_empty_n, ap_CS_fsm_state4)
    begin
        if (((fifo_A_A_IO_L2_in_12_x113_empty_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            local_A_pong_V_we1 <= ap_const_logic_1;
        else 
            local_A_pong_V_we1 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_330_cast_fu_174_p3 <= (trunc_ln7091_fu_170_p1 & ap_const_lv5_0);
    tmp_cast_fu_252_p3 <= (trunc_ln7102_fu_248_p1 & ap_const_lv5_0);
    trunc_ln7091_fu_170_p1 <= c4_V_reg_109(4 - 1 downto 0);
    trunc_ln7102_fu_248_p1 <= c7_V_reg_153(4 - 1 downto 0);
    zext_ln7091_1_fu_203_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln7091_fu_198_p2),64));
    zext_ln7091_fu_194_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(c5_V_5_reg_120),9));
    zext_ln7102_fu_265_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln7102_fu_260_p2),64));
    zext_ln890_fu_220_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(c5_V_reg_131),9));
end behav;
