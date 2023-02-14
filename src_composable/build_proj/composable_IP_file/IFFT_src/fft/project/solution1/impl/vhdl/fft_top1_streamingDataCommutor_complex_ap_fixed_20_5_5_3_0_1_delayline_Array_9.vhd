-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity fft_top1_streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_1_delayline_Array_9_core is
    generic (
        DATA_WIDTH : integer := 41;
        ADDR_WIDTH : integer := 1;
        DEPTH : integer := 2);
    port (
        clk : in std_logic;
        ce : in std_logic;
        din : in std_logic_vector(DATA_WIDTH-1 downto 0);
        addr : in std_logic_vector(ADDR_WIDTH-1 downto 0);
        dout : out std_logic_vector(DATA_WIDTH-1 downto 0));

    attribute keep_hierarchy : string;
    attribute keep_hierarchy of fft_top1_streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_1_delayline_Array_9_core : entity is "yes";

end entity;

architecture rtl of fft_top1_streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_1_delayline_Array_9_core is
type SRL_ARRAY is array (0 to DEPTH - 1) of std_logic_vector(DATA_WIDTH-1 downto 0);
signal ShiftRegMem : SRL_ARRAY := (others=>(others=>'0'));

begin
p_shift: process (clk)
    variable i: integer;
begin
    if (clk'event and clk = '1') then
        if (ce = '1') then
            for i in 0 to DEPTH - 2 loop
                ShiftRegMem(i+1) <= ShiftRegMem(i);
            end loop;
            ShiftRegMem(0) <= din;
        end if;
    end if;
end process;

dout <= ShiftRegMem(CONV_INTEGER(addr)) when (CONV_INTEGER(addr) < DEPTH) else (others => '0');

end rtl;


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_signed.all;
use IEEE.std_logic_unsigned.all;

entity fft_top1_streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_1_delayline_Array_9 is
    generic (
        DataWidth : integer := 41;
        AddressWidth : integer := 1;
        AddressRange : integer := 2);
    port (
        clk : in std_logic;
        reset : in std_logic;
        address0 : in std_logic_vector(AddressWidth-1 downto 0);
        ce0 : in std_logic;
        we0 : in std_logic;
        d0 : in std_logic_vector(DataWidth-1 downto 0);
        q0 : out std_logic_vector(DataWidth-1 downto 0));
end;

architecture behav of fft_top1_streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_1_delayline_Array_9 is

    component fft_top1_streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_1_delayline_Array_9_core is
        generic (
            DATA_WIDTH : integer;
            ADDR_WIDTH : integer;
            DEPTH : integer);
        port (
            clk : in std_logic;
            ce : in std_logic;
            din : in std_logic_vector(DATA_WIDTH-1 downto 0);
            addr : in std_logic_vector(ADDR_WIDTH-1 downto 0);
            dout : out std_logic_vector(DATA_WIDTH-1 downto 0));
    end component;

begin
    fft_top1_streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_1_delayline_Array_9_core_U : component fft_top1_streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_1_delayline_Array_9_core
    generic map (
        DATA_WIDTH => DataWidth,
        ADDR_WIDTH => AddressWidth,
        DEPTH => AddressRange)
    port map (
        clk => clk,
        ce => we0,
        din => d0,
        addr => address0,
        dout => q0);

end behav;

