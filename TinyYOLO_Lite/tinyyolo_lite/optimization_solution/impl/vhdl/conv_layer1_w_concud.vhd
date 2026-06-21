-- ==============================================================
-- File generated on Sun Jun 21 08:38:16 +0700 2026
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
-- SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
-- IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity conv_layer1_w_concud_rom is 
    generic(
             DWIDTH     : integer := 4; 
             AWIDTH     : integer := 7; 
             MEM_SIZE    : integer := 72
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of conv_layer1_w_concud_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1111", 1 => "1110", 2 => "0011", 3 => "1011", 4 => "0111", 
    5 => "1101", 6 => "0101", 7 => "1010", 8 => "0001", 9 => "0010", 
    10 => "1101", 11 => "0101", 12 => "1001", 13 => "0011", 14 => "1011", 
    15 => "0110", 16 => "1111", 17 => "1110", 18 => "0011", 19 => "1011", 
    20 => "0111", 21 => "1101", 22 => "0101", 23 => "1010", 24 => "0001", 
    25 => "0010", 26 => "1101", 27 => "0101", 28 => "1001", 29 => "0011", 
    30 => "1011", 31 => "0110", 32 => "1111", 33 => "1110", 34 => "0011", 
    35 => "1011", 36 => "0111", 37 => "1101", 38 => "0101", 39 => "1010", 
    40 => "0001", 41 => "0010", 42 => "1101", 43 => "0101", 44 => "1001", 
    45 => "0011", 46 => "1011", 47 => "0110", 48 => "1111", 49 => "1110", 
    50 => "0011", 51 => "1011", 52 => "0111", 53 => "1101", 54 => "0101", 
    55 => "1010", 56 => "0001", 57 => "0010", 58 => "1101", 59 => "0101", 
    60 => "1001", 61 => "0011", 62 => "1011", 63 => "0110", 64 => "1111", 
    65 => "1110", 66 => "0011", 67 => "1011", 68 => "0111", 69 => "1101", 
    70 => "0101", 71 => "1010" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem : signal is "select_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem : signal is "distributed";

begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity conv_layer1_w_concud is
    generic (
        DataWidth : INTEGER := 4;
        AddressRange : INTEGER := 72;
        AddressWidth : INTEGER := 7);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of conv_layer1_w_concud is
    component conv_layer1_w_concud_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    conv_layer1_w_concud_rom_U :  component conv_layer1_w_concud_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


