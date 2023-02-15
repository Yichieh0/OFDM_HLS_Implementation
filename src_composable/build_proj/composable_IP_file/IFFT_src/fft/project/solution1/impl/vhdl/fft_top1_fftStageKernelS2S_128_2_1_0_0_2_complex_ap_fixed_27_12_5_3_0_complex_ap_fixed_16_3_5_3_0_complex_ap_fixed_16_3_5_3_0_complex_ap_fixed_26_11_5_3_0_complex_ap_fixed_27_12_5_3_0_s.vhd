-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fft_top1_fftStageKernelS2S_128_2_1_0_0_2_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_27_12_5_3_0_s is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    fftOutData_local2_dout : IN STD_LOGIC_VECTOR (127 downto 0);
    fftOutData_local2_empty_n : IN STD_LOGIC;
    fftOutData_local2_read : OUT STD_LOGIC;
    fftOutData_local_din : OUT STD_LOGIC_VECTOR (127 downto 0);
    fftOutData_local_full_n : IN STD_LOGIC;
    fftOutData_local_write : OUT STD_LOGIC );
end;


architecture behav of fft_top1_fftStageKernelS2S_128_2_1_0_0_2_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_27_12_5_3_0_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv32_FFFFFFFF : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111111111111111111";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_39 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111001";
    constant ap_const_lv32_40 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000000";
    constant ap_const_lv32_59 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001011001";
    constant ap_const_lv32_60 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001100000";
    constant ap_const_lv32_79 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001111001";
    constant ap_const_lv13_0 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000000";
    constant ap_const_lv39_0 : STD_LOGIC_VECTOR (38 downto 0) := "000000000000000000000000000000000000000";
    constant ap_const_lv32_D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001101";
    constant ap_const_lv32_26 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100110";
    constant ap_const_lv7_60 : STD_LOGIC_VECTOR (6 downto 0) := "1100000";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv15_6000 : STD_LOGIC_VECTOR (14 downto 0) := "110000000000000";
    constant ap_const_lv15_0 : STD_LOGIC_VECTOR (14 downto 0) := "000000000000000";
    constant ap_const_lv15_2000 : STD_LOGIC_VECTOR (14 downto 0) := "010000000000000";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv7_20 : STD_LOGIC_VECTOR (6 downto 0) := "0100000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv31_1 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000001";
    constant ap_const_lv32_27 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100111";
    constant ap_const_lv5_1F : STD_LOGIC_VECTOR (4 downto 0) := "11111";

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal fftOutData_local2_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal tmp_nbreadreq_fu_110_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal fftOutData_local_blk_n : STD_LOGIC;
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal tmp_reg_557 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_reg_557_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal k1_reg_143 : STD_LOGIC_VECTOR (31 downto 0);
    signal f_fu_164_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal f_reg_552 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal ap_block_state3_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state6_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal tmp_reg_557_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal complexExpMulOut_M_real_V_0_fu_211_p2 : STD_LOGIC_VECTOR (25 downto 0);
    signal complexExpMulOut_M_real_V_0_reg_561 : STD_LOGIC_VECTOR (25 downto 0);
    signal complexExpMulOut_M_real_V_0_reg_561_pp0_iter1_reg : STD_LOGIC_VECTOR (25 downto 0);
    signal complexExpMulOut_M_real_V_0_reg_561_pp0_iter2_reg : STD_LOGIC_VECTOR (25 downto 0);
    signal bflyOutData_M_imag_V_0_fu_217_p2 : STD_LOGIC_VECTOR (25 downto 0);
    signal bflyOutData_M_imag_V_0_reg_566 : STD_LOGIC_VECTOR (25 downto 0);
    signal bflyOutData_M_imag_V_0_reg_566_pp0_iter1_reg : STD_LOGIC_VECTOR (25 downto 0);
    signal bflyOutData_M_imag_V_0_reg_566_pp0_iter2_reg : STD_LOGIC_VECTOR (25 downto 0);
    signal sext_ln1171_fu_401_p1 : STD_LOGIC_VECTOR (39 downto 0);
    signal sext_ln1171_16_fu_405_p1 : STD_LOGIC_VECTOR (39 downto 0);
    signal sext_ln1171_17_fu_409_p1 : STD_LOGIC_VECTOR (39 downto 0);
    signal sext_ln1171_18_fu_413_p1 : STD_LOGIC_VECTOR (39 downto 0);
    signal k_fu_417_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal k_reg_595 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln151_fu_433_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln151_reg_600 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_flush_enable : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal f_032_reg_131 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal icmp_ln149_fu_518_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_mux_k1_phi_fu_147_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_phi_mux_k_1_phi_fu_157_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_phi_reg_pp0_iter0_k_1_reg_154 : STD_LOGIC_VECTOR (31 downto 0);
    signal k_8_fu_170_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal X_of_ns_M_real_V_1_fu_191_p4 : STD_LOGIC_VECTOR (25 downto 0);
    signal X_of_ns_M_real_V_0_fu_177_p1 : STD_LOGIC_VECTOR (25 downto 0);
    signal X_of_ns_M_imag_V_1_fu_201_p4 : STD_LOGIC_VECTOR (25 downto 0);
    signal X_of_ns_M_imag_V_0_fu_181_p4 : STD_LOGIC_VECTOR (25 downto 0);
    signal shl_ln_fu_223_p3 : STD_LOGIC_VECTOR (38 downto 0);
    signal r_V_fu_231_p2 : STD_LOGIC_VECTOR (38 downto 0);
    signal shl_ln1171_6_fu_247_p3 : STD_LOGIC_VECTOR (38 downto 0);
    signal r_V_28_fu_255_p2 : STD_LOGIC_VECTOR (38 downto 0);
    signal real1_V_24_fu_237_p4 : STD_LOGIC_VECTOR (25 downto 0);
    signal imag2_V_30_fu_261_p4 : STD_LOGIC_VECTOR (25 downto 0);
    signal trunc_ln177_fu_283_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal index_V_fu_287_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal icmp_ln1049_fu_309_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1049_16_fu_315_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal output_saturation_control_imag_fu_321_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal output_negate_control_imag_fu_301_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln122_1_fu_335_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal select_ln122_fu_327_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal index_cos_V_fu_295_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal icmp_ln1049_17_fu_359_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1049_18_fu_365_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal output_saturation_control_real_V_fu_371_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal output_negate_control_real_V_fu_351_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln138_fu_385_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal select_ln755_fu_377_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal r_V_29_fu_271_p2 : STD_LOGIC_VECTOR (25 downto 0);
    signal p_Val2_31_fu_393_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal r_V_30_fu_277_p2 : STD_LOGIC_VECTOR (25 downto 0);
    signal p_Val2_s_fu_343_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_54_fu_423_p4 : STD_LOGIC_VECTOR (30 downto 0);
    signal grp_fu_524_p2 : STD_LOGIC_VECTOR (39 downto 0);
    signal grp_fu_531_p2 : STD_LOGIC_VECTOR (39 downto 0);
    signal real1_V_fu_442_p4 : STD_LOGIC_VECTOR (26 downto 0);
    signal real2_V_fu_451_p4 : STD_LOGIC_VECTOR (26 downto 0);
    signal grp_fu_538_p2 : STD_LOGIC_VECTOR (39 downto 0);
    signal grp_fu_545_p2 : STD_LOGIC_VECTOR (39 downto 0);
    signal imag2_V_fu_475_p4 : STD_LOGIC_VECTOR (26 downto 0);
    signal imag1_V_fu_466_p4 : STD_LOGIC_VECTOR (26 downto 0);
    signal sext_ln174_fu_490_p1 : STD_LOGIC_VECTOR (26 downto 0);
    signal imag_out_V_fu_484_p2 : STD_LOGIC_VECTOR (26 downto 0);
    signal real_out_V_fu_460_p2 : STD_LOGIC_VECTOR (26 downto 0);
    signal zext_ln174_fu_493_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal sext_ln712_fu_439_p1 : STD_LOGIC_VECTOR (26 downto 0);
    signal tmp_7_fu_497_p7 : STD_LOGIC_VECTOR (122 downto 0);
    signal grp_fu_524_p0 : STD_LOGIC_VECTOR (25 downto 0);
    signal grp_fu_524_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal grp_fu_531_p0 : STD_LOGIC_VECTOR (25 downto 0);
    signal grp_fu_531_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal grp_fu_538_p0 : STD_LOGIC_VECTOR (25 downto 0);
    signal grp_fu_538_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal grp_fu_545_p0 : STD_LOGIC_VECTOR (25 downto 0);
    signal grp_fu_545_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal grp_fu_524_ce : STD_LOGIC;
    signal grp_fu_531_ce : STD_LOGIC;
    signal grp_fu_538_ce : STD_LOGIC;
    signal grp_fu_545_ce : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state7_blk : STD_LOGIC;
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component fft_top1_mul_mul_26s_15s_40_4_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (25 downto 0);
        din1 : IN STD_LOGIC_VECTOR (14 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (39 downto 0) );
    end component;



begin
    mul_mul_26s_15s_40_4_1_U130 : component fft_top1_mul_mul_26s_15s_40_4_1
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 26,
        din1_WIDTH => 15,
        dout_WIDTH => 40)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_524_p0,
        din1 => grp_fu_524_p1,
        ce => grp_fu_524_ce,
        dout => grp_fu_524_p2);

    mul_mul_26s_15s_40_4_1_U131 : component fft_top1_mul_mul_26s_15s_40_4_1
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 26,
        din1_WIDTH => 15,
        dout_WIDTH => 40)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_531_p0,
        din1 => grp_fu_531_p1,
        ce => grp_fu_531_ce,
        dout => grp_fu_531_p2);

    mul_mul_26s_15s_40_4_1_U132 : component fft_top1_mul_mul_26s_15s_40_4_1
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 26,
        din1_WIDTH => 15,
        dout_WIDTH => 40)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_538_p0,
        din1 => grp_fu_538_p1,
        ce => grp_fu_538_ce,
        dout => grp_fu_538_p2);

    mul_mul_26s_15s_40_4_1_U133 : component fft_top1_mul_mul_26s_15s_40_4_1
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 26,
        din1_WIDTH => 15,
        dout_WIDTH => 40)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_545_p0,
        din1 => grp_fu_545_p1,
        ce => grp_fu_545_ce,
        dout => grp_fu_545_p2);





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
                elsif (((ap_const_logic_1 = ap_CS_fsm_state7) and (icmp_ln149_fu_518_p2 = ap_const_lv1_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_pp0_flush_enable)) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
                    ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    f_032_reg_131_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state7) and (icmp_ln149_fu_518_p2 = ap_const_lv1_0))) then 
                f_032_reg_131 <= f_reg_552;
            elsif ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                f_032_reg_131 <= ap_const_lv5_0;
            end if; 
        end if;
    end process;

    k1_reg_143_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (icmp_ln151_reg_600 = ap_const_lv1_1))) then 
                k1_reg_143 <= k_reg_595;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
                k1_reg_143 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_nbreadreq_fu_110_p3 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                bflyOutData_M_imag_V_0_reg_566 <= bflyOutData_M_imag_V_0_fu_217_p2;
                complexExpMulOut_M_real_V_0_reg_561 <= complexExpMulOut_M_real_V_0_fu_211_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                bflyOutData_M_imag_V_0_reg_566_pp0_iter1_reg <= bflyOutData_M_imag_V_0_reg_566;
                complexExpMulOut_M_real_V_0_reg_561_pp0_iter1_reg <= complexExpMulOut_M_real_V_0_reg_561;
                icmp_ln151_reg_600 <= icmp_ln151_fu_433_p2;
                tmp_reg_557 <= tmp_nbreadreq_fu_110_p3;
                tmp_reg_557_pp0_iter1_reg <= tmp_reg_557;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                bflyOutData_M_imag_V_0_reg_566_pp0_iter2_reg <= bflyOutData_M_imag_V_0_reg_566_pp0_iter1_reg;
                complexExpMulOut_M_real_V_0_reg_561_pp0_iter2_reg <= complexExpMulOut_M_real_V_0_reg_561_pp0_iter1_reg;
                tmp_reg_557_pp0_iter2_reg <= tmp_reg_557_pp0_iter1_reg;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                f_reg_552 <= f_fu_164_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                k_reg_595 <= k_fu_417_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_subdone, ap_enable_reg_pp0_iter2, ap_CS_fsm_state7, icmp_ln149_fu_518_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when ap_ST_fsm_pp0_stage0 => 
                if (not(((ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state7;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state7 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state7) and (icmp_ln149_fu_518_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    X_of_ns_M_imag_V_0_fu_181_p4 <= fftOutData_local2_dout(57 downto 32);
    X_of_ns_M_imag_V_1_fu_201_p4 <= fftOutData_local2_dout(121 downto 96);
    X_of_ns_M_real_V_0_fu_177_p1 <= fftOutData_local2_dout(26 - 1 downto 0);
    X_of_ns_M_real_V_1_fu_191_p4 <= fftOutData_local2_dout(89 downto 64);
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state7 <= ap_CS_fsm(3);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start, ap_done_reg)
    begin
        if (((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state2_blk <= ap_const_logic_0;
    ap_ST_fsm_state7_blk <= ap_const_logic_0;
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(fftOutData_local2_empty_n, fftOutData_local_full_n, ap_enable_reg_pp0_iter0, tmp_nbreadreq_fu_110_p3, ap_enable_reg_pp0_iter3, tmp_reg_557_pp0_iter2_reg)
    begin
                ap_block_pp0_stage0_01001 <= (((tmp_reg_557_pp0_iter2_reg = ap_const_lv1_1) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (fftOutData_local_full_n = ap_const_logic_0)) or ((tmp_nbreadreq_fu_110_p3 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (fftOutData_local2_empty_n = ap_const_logic_0)));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(fftOutData_local2_empty_n, fftOutData_local_full_n, ap_enable_reg_pp0_iter0, tmp_nbreadreq_fu_110_p3, ap_enable_reg_pp0_iter3, tmp_reg_557_pp0_iter2_reg)
    begin
                ap_block_pp0_stage0_11001 <= (((tmp_reg_557_pp0_iter2_reg = ap_const_lv1_1) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (fftOutData_local_full_n = ap_const_logic_0)) or ((tmp_nbreadreq_fu_110_p3 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (fftOutData_local2_empty_n = ap_const_logic_0)));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(fftOutData_local2_empty_n, fftOutData_local_full_n, ap_enable_reg_pp0_iter0, tmp_nbreadreq_fu_110_p3, ap_enable_reg_pp0_iter3, tmp_reg_557_pp0_iter2_reg)
    begin
                ap_block_pp0_stage0_subdone <= (((tmp_reg_557_pp0_iter2_reg = ap_const_lv1_1) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (fftOutData_local_full_n = ap_const_logic_0)) or ((tmp_nbreadreq_fu_110_p3 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (fftOutData_local2_empty_n = ap_const_logic_0)));
    end process;


    ap_block_state1_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_block_state3_pp0_stage0_iter0_assign_proc : process(fftOutData_local2_empty_n, tmp_nbreadreq_fu_110_p3)
    begin
                ap_block_state3_pp0_stage0_iter0 <= ((tmp_nbreadreq_fu_110_p3 = ap_const_lv1_1) and (fftOutData_local2_empty_n = ap_const_logic_0));
    end process;

        ap_block_state4_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state6_pp0_stage0_iter3_assign_proc : process(fftOutData_local_full_n, tmp_reg_557_pp0_iter2_reg)
    begin
                ap_block_state6_pp0_stage0_iter3 <= ((tmp_reg_557_pp0_iter2_reg = ap_const_lv1_1) and (fftOutData_local_full_n = ap_const_logic_0));
    end process;


    ap_condition_pp0_flush_enable_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln151_fu_433_p2, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln151_fu_433_p2 = ap_const_lv1_0))) then 
            ap_condition_pp0_flush_enable <= ap_const_logic_1;
        else 
            ap_condition_pp0_flush_enable <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state7, icmp_ln149_fu_518_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state7) and (icmp_ln149_fu_518_p2 = ap_const_lv1_1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter3, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_phi_mux_k1_phi_fu_147_p4_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, k1_reg_143, k_reg_595, icmp_ln151_reg_600, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (icmp_ln151_reg_600 = ap_const_lv1_1))) then 
            ap_phi_mux_k1_phi_fu_147_p4 <= k_reg_595;
        else 
            ap_phi_mux_k1_phi_fu_147_p4 <= k1_reg_143;
        end if; 
    end process;


    ap_phi_mux_k_1_phi_fu_157_p4_assign_proc : process(tmp_nbreadreq_fu_110_p3, ap_phi_mux_k1_phi_fu_147_p4, ap_phi_reg_pp0_iter0_k_1_reg_154, k_8_fu_170_p2)
    begin
        if ((tmp_nbreadreq_fu_110_p3 = ap_const_lv1_0)) then 
            ap_phi_mux_k_1_phi_fu_157_p4 <= k_8_fu_170_p2;
        elsif ((tmp_nbreadreq_fu_110_p3 = ap_const_lv1_1)) then 
            ap_phi_mux_k_1_phi_fu_157_p4 <= ap_phi_mux_k1_phi_fu_147_p4;
        else 
            ap_phi_mux_k_1_phi_fu_157_p4 <= ap_phi_reg_pp0_iter0_k_1_reg_154;
        end if; 
    end process;

    ap_phi_reg_pp0_iter0_k_1_reg_154 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";

    ap_ready_assign_proc : process(ap_CS_fsm_state7, icmp_ln149_fu_518_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state7) and (icmp_ln149_fu_518_p2 = ap_const_lv1_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    bflyOutData_M_imag_V_0_fu_217_p2 <= std_logic_vector(unsigned(X_of_ns_M_imag_V_1_fu_201_p4) + unsigned(X_of_ns_M_imag_V_0_fu_181_p4));
    complexExpMulOut_M_real_V_0_fu_211_p2 <= std_logic_vector(unsigned(X_of_ns_M_real_V_1_fu_191_p4) + unsigned(X_of_ns_M_real_V_0_fu_177_p1));
    f_fu_164_p2 <= std_logic_vector(unsigned(f_032_reg_131) + unsigned(ap_const_lv5_1));

    fftOutData_local2_blk_n_assign_proc : process(fftOutData_local2_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0, tmp_nbreadreq_fu_110_p3)
    begin
        if (((tmp_nbreadreq_fu_110_p3 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            fftOutData_local2_blk_n <= fftOutData_local2_empty_n;
        else 
            fftOutData_local2_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    fftOutData_local2_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, tmp_nbreadreq_fu_110_p3, ap_block_pp0_stage0_11001)
    begin
        if (((tmp_nbreadreq_fu_110_p3 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            fftOutData_local2_read <= ap_const_logic_1;
        else 
            fftOutData_local2_read <= ap_const_logic_0;
        end if; 
    end process;


    fftOutData_local_blk_n_assign_proc : process(fftOutData_local_full_n, ap_block_pp0_stage0, ap_enable_reg_pp0_iter3, tmp_reg_557_pp0_iter2_reg)
    begin
        if (((tmp_reg_557_pp0_iter2_reg = ap_const_lv1_1) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            fftOutData_local_blk_n <= fftOutData_local_full_n;
        else 
            fftOutData_local_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    fftOutData_local_din <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_7_fu_497_p7),128));

    fftOutData_local_write_assign_proc : process(ap_enable_reg_pp0_iter3, tmp_reg_557_pp0_iter2_reg, ap_block_pp0_stage0_11001)
    begin
        if (((tmp_reg_557_pp0_iter2_reg = ap_const_lv1_1) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            fftOutData_local_write <= ap_const_logic_1;
        else 
            fftOutData_local_write <= ap_const_logic_0;
        end if; 
    end process;


    grp_fu_524_ce_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            grp_fu_524_ce <= ap_const_logic_1;
        else 
            grp_fu_524_ce <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_524_p0 <= sext_ln1171_fu_401_p1(26 - 1 downto 0);
    grp_fu_524_p1 <= sext_ln1171_16_fu_405_p1(15 - 1 downto 0);

    grp_fu_531_ce_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            grp_fu_531_ce <= ap_const_logic_1;
        else 
            grp_fu_531_ce <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_531_p0 <= sext_ln1171_17_fu_409_p1(26 - 1 downto 0);
    grp_fu_531_p1 <= sext_ln1171_18_fu_413_p1(15 - 1 downto 0);

    grp_fu_538_ce_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            grp_fu_538_ce <= ap_const_logic_1;
        else 
            grp_fu_538_ce <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_538_p0 <= sext_ln1171_fu_401_p1(26 - 1 downto 0);
    grp_fu_538_p1 <= sext_ln1171_18_fu_413_p1(15 - 1 downto 0);

    grp_fu_545_ce_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            grp_fu_545_ce <= ap_const_logic_1;
        else 
            grp_fu_545_ce <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_545_p0 <= sext_ln1171_17_fu_409_p1(26 - 1 downto 0);
    grp_fu_545_p1 <= sext_ln1171_16_fu_405_p1(15 - 1 downto 0);
    icmp_ln1049_16_fu_315_p2 <= "1" when (trunc_ln177_fu_283_p1 = ap_const_lv2_3) else "0";
    icmp_ln1049_17_fu_359_p2 <= "1" when (index_cos_V_fu_295_p2 = ap_const_lv7_20) else "0";
    icmp_ln1049_18_fu_365_p2 <= "1" when (trunc_ln177_fu_283_p1 = ap_const_lv2_0) else "0";
    icmp_ln1049_fu_309_p2 <= "1" when (trunc_ln177_fu_283_p1 = ap_const_lv2_1) else "0";
    icmp_ln149_fu_518_p2 <= "1" when (f_032_reg_131 = ap_const_lv5_1F) else "0";
    icmp_ln151_fu_433_p2 <= "1" when (signed(tmp_54_fu_423_p4) < signed(ap_const_lv31_1)) else "0";
    imag1_V_fu_466_p4 <= grp_fu_538_p2(39 downto 13);
    imag2_V_30_fu_261_p4 <= r_V_28_fu_255_p2(38 downto 13);
    imag2_V_fu_475_p4 <= grp_fu_545_p2(39 downto 13);
    imag_out_V_fu_484_p2 <= std_logic_vector(unsigned(imag2_V_fu_475_p4) + unsigned(imag1_V_fu_466_p4));
    index_V_fu_287_p3 <= (trunc_ln177_fu_283_p1 & ap_const_lv5_0);
    index_cos_V_fu_295_p2 <= std_logic_vector(unsigned(index_V_fu_287_p3) + unsigned(ap_const_lv7_60));
    k_8_fu_170_p2 <= std_logic_vector(unsigned(ap_phi_mux_k1_phi_fu_147_p4) + unsigned(ap_const_lv32_FFFFFFFF));
    k_fu_417_p2 <= std_logic_vector(unsigned(ap_phi_mux_k_1_phi_fu_157_p4) + unsigned(ap_const_lv32_1));
    output_negate_control_imag_fu_301_p3 <= ap_phi_mux_k1_phi_fu_147_p4(1 downto 1);
    output_negate_control_real_V_fu_351_p3 <= index_cos_V_fu_295_p2(6 downto 6);
    output_saturation_control_imag_fu_321_p2 <= (icmp_ln1049_fu_309_p2 or icmp_ln1049_16_fu_315_p2);
    output_saturation_control_real_V_fu_371_p2 <= (icmp_ln1049_18_fu_365_p2 or icmp_ln1049_17_fu_359_p2);
    p_Val2_31_fu_393_p3 <= 
        select_ln138_fu_385_p3 when (output_negate_control_real_V_fu_351_p3(0) = '1') else 
        select_ln755_fu_377_p3;
    p_Val2_s_fu_343_p3 <= 
        select_ln122_1_fu_335_p3 when (output_negate_control_imag_fu_301_p3(0) = '1') else 
        select_ln122_fu_327_p3;
    r_V_28_fu_255_p2 <= std_logic_vector(unsigned(ap_const_lv39_0) - unsigned(shl_ln1171_6_fu_247_p3));
    r_V_29_fu_271_p2 <= std_logic_vector(unsigned(real1_V_24_fu_237_p4) + unsigned(X_of_ns_M_real_V_0_fu_177_p1));
    r_V_30_fu_277_p2 <= std_logic_vector(unsigned(imag2_V_30_fu_261_p4) + unsigned(X_of_ns_M_imag_V_0_fu_181_p4));
    r_V_fu_231_p2 <= std_logic_vector(unsigned(ap_const_lv39_0) - unsigned(shl_ln_fu_223_p3));
    real1_V_24_fu_237_p4 <= r_V_fu_231_p2(38 downto 13);
    real1_V_fu_442_p4 <= grp_fu_524_p2(39 downto 13);
    real2_V_fu_451_p4 <= grp_fu_531_p2(39 downto 13);
    real_out_V_fu_460_p2 <= std_logic_vector(unsigned(real1_V_fu_442_p4) - unsigned(real2_V_fu_451_p4));
    select_ln122_1_fu_335_p3 <= 
        ap_const_lv15_2000 when (output_saturation_control_imag_fu_321_p2(0) = '1') else 
        ap_const_lv15_0;
    select_ln122_fu_327_p3 <= 
        ap_const_lv15_6000 when (output_saturation_control_imag_fu_321_p2(0) = '1') else 
        ap_const_lv15_0;
    select_ln138_fu_385_p3 <= 
        ap_const_lv15_2000 when (output_saturation_control_real_V_fu_371_p2(0) = '1') else 
        ap_const_lv15_0;
    select_ln755_fu_377_p3 <= 
        ap_const_lv15_6000 when (output_saturation_control_real_V_fu_371_p2(0) = '1') else 
        ap_const_lv15_0;
        sext_ln1171_16_fu_405_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_Val2_31_fu_393_p3),40));

        sext_ln1171_17_fu_409_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(r_V_30_fu_277_p2),40));

        sext_ln1171_18_fu_413_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_Val2_s_fu_343_p3),40));

        sext_ln1171_fu_401_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(r_V_29_fu_271_p2),40));

        sext_ln174_fu_490_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(bflyOutData_M_imag_V_0_reg_566_pp0_iter2_reg),27));

        sext_ln712_fu_439_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(complexExpMulOut_M_real_V_0_reg_561_pp0_iter2_reg),27));

    shl_ln1171_6_fu_247_p3 <= (X_of_ns_M_imag_V_1_fu_201_p4 & ap_const_lv13_0);
    shl_ln_fu_223_p3 <= (X_of_ns_M_real_V_1_fu_191_p4 & ap_const_lv13_0);
    tmp_54_fu_423_p4 <= k_fu_417_p2(31 downto 1);
    tmp_7_fu_497_p7 <= (((((imag_out_V_fu_484_p2 & ap_const_lv5_0) & real_out_V_fu_460_p2) & zext_ln174_fu_493_p1) & ap_const_lv5_0) & sext_ln712_fu_439_p1);
    tmp_nbreadreq_fu_110_p3 <= (0=>(fftOutData_local2_empty_n), others=>'-');
    trunc_ln177_fu_283_p1 <= ap_phi_mux_k1_phi_fu_147_p4(2 - 1 downto 0);
    zext_ln174_fu_493_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sext_ln174_fu_490_p1),32));
end behav;