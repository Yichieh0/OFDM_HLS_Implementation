-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity fft_top1_fftStageKernelS2S_128_2_1_0_0_7_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_bkb is 
    generic(
             DataWidth     : integer := 14; 
             AddressWidth     : integer := 5; 
             AddressRange    : integer := 32
    ); 
    port (
          address0      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DataWidth-1 downto 0);
          address1      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce1       : in std_logic; 
          q1         : out std_logic_vector(DataWidth-1 downto 0);
          reset     : in std_logic;
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of fft_top1_fftStageKernelS2S_128_2_1_0_0_7_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_bkb is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
signal address1_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00000000000000", 1 => "11111001101110", 2 => "11110011011101", 
    3 => "11101101001110", 4 => "11100111000010", 5 => "11100000111010", 
    6 => "11011010110110", 7 => "11010100111000", 8 => "11001111000001", 
    9 => "11001001010001", 10 => "11000011101010", 11 => "10111110001100", 
    12 => "10111000111001", 13 => "10110011110000", 14 => "10101110110011", 
    15 => "10101010000011", 16 => "10100101011111", 17 => "10100001001010", 
    18 => "10011101000011", 19 => "10011001001100", 20 => "10010101100101", 
    21 => "10010010001101", 22 => "10001111000111", 23 => "10001100010011", 
    24 => "10001001110000", 25 => "10000111011111", 26 => "10000101100001", 
    27 => "10000011110110", 28 => "10000010011101", 29 => "10000001011001", 
    30 => "10000000100111", 31 => "10000000001010" );


begin 


memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;

memory_access_guard_1: process (address1) 
begin
      address1_tmp <= address1;
--synthesis translate_off
      if (CONV_INTEGER(address1) > AddressRange-1) then
           address1_tmp <= (others => '0');
      else 
           address1_tmp <= address1;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(address0_tmp)); 
        end if;
        if (ce1 = '1') then 
            q1 <= mem(CONV_INTEGER(address1_tmp)); 
        end if;
    end if;
end process;

end rtl;

