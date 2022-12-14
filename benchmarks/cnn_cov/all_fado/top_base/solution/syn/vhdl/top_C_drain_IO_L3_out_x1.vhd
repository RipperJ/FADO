-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Version: 2020.2
-- Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity top_C_drain_IO_L3_out_x1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    fifo_C_drain_C_drain_IO_L2_out_0_x1135_dout : IN STD_LOGIC_VECTOR (63 downto 0);
    fifo_C_drain_C_drain_IO_L2_out_0_x1135_empty_n : IN STD_LOGIC;
    fifo_C_drain_C_drain_IO_L2_out_0_x1135_read : OUT STD_LOGIC;
    C_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    C_ce0 : OUT STD_LOGIC;
    C_we0 : OUT STD_LOGIC;
    C_d0 : OUT STD_LOGIC_VECTOR (511 downto 0) );
end;


architecture behav of top_C_drain_IO_L3_out_x1 is 
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
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv12_0 : STD_LOGIC_VECTOR (11 downto 0) := "000000000000";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv64_7 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000111";
    constant ap_const_lv64_6 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000110";
    constant ap_const_lv64_5 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000101";
    constant ap_const_lv64_4 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000100";
    constant ap_const_lv64_3 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000011";
    constant ap_const_lv64_2 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000010";
    constant ap_const_lv64_1 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv12_1 : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";
    constant ap_const_lv12_800 : STD_LOGIC_VECTOR (11 downto 0) := "100000000000";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_1 : BOOLEAN := true;

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal fifo_C_drain_C_drain_IO_L2_out_0_x1135_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal i_V_2_fu_183_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal i_V_2_reg_271 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal add_ln691_fu_195_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln691_reg_279 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal zext_ln878_fu_201_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln878_reg_284 : STD_LOGIC_VECTOR (63 downto 0);
    signal mem_data_split_V_q1 : STD_LOGIC_VECTOR (63 downto 0);
    signal v2_V_reg_292 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal mem_data_split_V_q0 : STD_LOGIC_VECTOR (63 downto 0);
    signal v2_V_1969_reg_297 : STD_LOGIC_VECTOR (63 downto 0);
    signal v2_V_1970_reg_302 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal v2_V_1971_reg_307 : STD_LOGIC_VECTOR (63 downto 0);
    signal v2_V_1972_reg_312 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal v2_V_1973_reg_317 : STD_LOGIC_VECTOR (63 downto 0);
    signal mem_data_split_V_address0 : STD_LOGIC_VECTOR (2 downto 0);
    signal mem_data_split_V_ce0 : STD_LOGIC;
    signal mem_data_split_V_we0 : STD_LOGIC;
    signal mem_data_split_V_address1 : STD_LOGIC_VECTOR (2 downto 0);
    signal mem_data_split_V_ce1 : STD_LOGIC;
    signal i_V_reg_160 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal p_V_reg_172 : STD_LOGIC_VECTOR (3 downto 0);
    signal icmp_ln11772_fu_189_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln534_fu_226_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal icmp_ln878_fu_205_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_ce_reg : STD_LOGIC;

    component top_C_drain_IO_L3_out_x0_mem_data_split_V IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (2 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (63 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (63 downto 0);
        address1 : IN STD_LOGIC_VECTOR (2 downto 0);
        ce1 : IN STD_LOGIC;
        q1 : OUT STD_LOGIC_VECTOR (63 downto 0) );
    end component;



begin
    mem_data_split_V_U : component top_C_drain_IO_L3_out_x0_mem_data_split_V
    generic map (
        DataWidth => 64,
        AddressRange => 8,
        AddressWidth => 3)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => mem_data_split_V_address0,
        ce0 => mem_data_split_V_ce0,
        we0 => mem_data_split_V_we0,
        d0 => fifo_C_drain_C_drain_IO_L2_out_0_x1135_dout,
        q0 => mem_data_split_V_q0,
        address1 => mem_data_split_V_address1,
        ce1 => mem_data_split_V_ce1,
        q1 => mem_data_split_V_q1);





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
                elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln11772_fu_189_p2 = ap_const_lv1_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    i_V_reg_160_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
                i_V_reg_160 <= i_V_2_reg_271;
            elsif ((not(((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_V_reg_160 <= ap_const_lv12_0;
            end if; 
        end if;
    end process;

    p_V_reg_172_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln11772_fu_189_p2 = ap_const_lv1_0))) then 
                p_V_reg_172 <= ap_const_lv4_0;
            elsif (((fifo_C_drain_C_drain_IO_L2_out_0_x1135_empty_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                p_V_reg_172 <= add_ln691_reg_279;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                add_ln691_reg_279 <= add_ln691_fu_195_p2;
                    zext_ln878_reg_284(3 downto 0) <= zext_ln878_fu_201_p1(3 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_V_2_reg_271 <= i_V_2_fu_183_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                v2_V_1969_reg_297 <= mem_data_split_V_q0;
                v2_V_reg_292 <= mem_data_split_V_q1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                v2_V_1970_reg_302 <= mem_data_split_V_q0;
                v2_V_1971_reg_307 <= mem_data_split_V_q1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                v2_V_1972_reg_312 <= mem_data_split_V_q0;
                v2_V_1973_reg_317 <= mem_data_split_V_q1;
            end if;
        end if;
    end process;
    zext_ln878_reg_284(63 downto 4) <= "000000000000000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, fifo_C_drain_C_drain_IO_L2_out_0_x1135_empty_n, ap_CS_fsm_state4, ap_CS_fsm_state2, ap_CS_fsm_state3, icmp_ln11772_fu_189_p2, icmp_ln878_fu_205_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln11772_fu_189_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (icmp_ln878_fu_205_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                if (((fifo_C_drain_C_drain_IO_L2_out_0_x1135_empty_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XXXXXXXX";
        end case;
    end process;
    C_address0 <= zext_ln534_fu_226_p1(12 - 1 downto 0);

    C_ce0_assign_proc : process(ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            C_ce0 <= ap_const_logic_1;
        else 
            C_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    C_d0 <= (((((((mem_data_split_V_q1 & mem_data_split_V_q0) & v2_V_1973_reg_317) & v2_V_1972_reg_312) & v2_V_1971_reg_307) & v2_V_1970_reg_302) & v2_V_1969_reg_297) & v2_V_reg_292);

    C_we0_assign_proc : process(ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            C_we0 <= ap_const_logic_1;
        else 
            C_we0 <= ap_const_logic_0;
        end if; 
    end process;

    add_ln691_fu_195_p2 <= std_logic_vector(unsigned(p_V_reg_172) + unsigned(ap_const_lv4_1));
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


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state2, icmp_ln11772_fu_189_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln11772_fu_189_p2 = ap_const_lv1_1))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln11772_fu_189_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln11772_fu_189_p2 = ap_const_lv1_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    fifo_C_drain_C_drain_IO_L2_out_0_x1135_blk_n_assign_proc : process(fifo_C_drain_C_drain_IO_L2_out_0_x1135_empty_n, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            fifo_C_drain_C_drain_IO_L2_out_0_x1135_blk_n <= fifo_C_drain_C_drain_IO_L2_out_0_x1135_empty_n;
        else 
            fifo_C_drain_C_drain_IO_L2_out_0_x1135_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    fifo_C_drain_C_drain_IO_L2_out_0_x1135_read_assign_proc : process(fifo_C_drain_C_drain_IO_L2_out_0_x1135_empty_n, ap_CS_fsm_state4)
    begin
        if (((fifo_C_drain_C_drain_IO_L2_out_0_x1135_empty_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            fifo_C_drain_C_drain_IO_L2_out_0_x1135_read <= ap_const_logic_1;
        else 
            fifo_C_drain_C_drain_IO_L2_out_0_x1135_read <= ap_const_logic_0;
        end if; 
    end process;

    i_V_2_fu_183_p2 <= std_logic_vector(unsigned(i_V_reg_160) + unsigned(ap_const_lv12_1));
    icmp_ln11772_fu_189_p2 <= "1" when (i_V_reg_160 = ap_const_lv12_800) else "0";
    icmp_ln878_fu_205_p2 <= "1" when (p_V_reg_172 = ap_const_lv4_8) else "0";

    mem_data_split_V_address0_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state3, zext_ln878_reg_284, ap_CS_fsm_state5, ap_CS_fsm_state6, ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            mem_data_split_V_address0 <= ap_const_lv64_6(3 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            mem_data_split_V_address0 <= ap_const_lv64_4(3 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            mem_data_split_V_address0 <= ap_const_lv64_2(3 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            mem_data_split_V_address0 <= zext_ln878_reg_284(3 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            mem_data_split_V_address0 <= ap_const_lv64_1(3 - 1 downto 0);
        else 
            mem_data_split_V_address0 <= "XXX";
        end if; 
    end process;


    mem_data_split_V_address1_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state5, ap_CS_fsm_state6, ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            mem_data_split_V_address1 <= ap_const_lv64_7(3 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            mem_data_split_V_address1 <= ap_const_lv64_5(3 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            mem_data_split_V_address1 <= ap_const_lv64_3(3 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            mem_data_split_V_address1 <= ap_const_lv64_0(3 - 1 downto 0);
        else 
            mem_data_split_V_address1 <= "XXX";
        end if; 
    end process;


    mem_data_split_V_ce0_assign_proc : process(fifo_C_drain_C_drain_IO_L2_out_0_x1135_empty_n, ap_CS_fsm_state4, ap_CS_fsm_state3, ap_CS_fsm_state5, ap_CS_fsm_state6, ap_CS_fsm_state7)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state3) or ((fifo_C_drain_C_drain_IO_L2_out_0_x1135_empty_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4)))) then 
            mem_data_split_V_ce0 <= ap_const_logic_1;
        else 
            mem_data_split_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    mem_data_split_V_ce1_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state5, ap_CS_fsm_state6, ap_CS_fsm_state7)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            mem_data_split_V_ce1 <= ap_const_logic_1;
        else 
            mem_data_split_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    mem_data_split_V_we0_assign_proc : process(fifo_C_drain_C_drain_IO_L2_out_0_x1135_empty_n, ap_CS_fsm_state4)
    begin
        if (((fifo_C_drain_C_drain_IO_L2_out_0_x1135_empty_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            mem_data_split_V_we0 <= ap_const_logic_1;
        else 
            mem_data_split_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln534_fu_226_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_V_reg_160),64));
    zext_ln878_fu_201_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_V_reg_172),64));
end behav;
