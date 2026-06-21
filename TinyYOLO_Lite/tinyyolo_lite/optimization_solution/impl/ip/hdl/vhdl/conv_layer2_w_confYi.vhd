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

entity conv_layer2_w_confYi_rom is 
    generic(
             DWIDTH     : integer := 5; 
             AWIDTH     : integer := 8; 
             MEM_SIZE    : integer := 144
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of conv_layer2_w_confYi_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11111", 1 => "11110", 2 => "00011", 3 => "11011", 4 => "00111", 
    5 => "11101", 6 => "00101", 7 => "11010", 8 => "11001", 9 => "00010", 
    10 => "11100", 11 => "00110", 12 => "10111", 13 => "00100", 14 => "11000", 
    15 => "01001", 16 => "11111", 17 => "11110", 18 => "00011", 19 => "11011", 
    20 => "00111", 21 => "11101", 22 => "00101", 23 => "11010", 24 => "11001", 
    25 => "00010", 26 => "11100", 27 => "00110", 28 => "10111", 29 => "00100", 
    30 => "11000", 31 => "01001", 32 => "11111", 33 => "11110", 34 => "00011", 
    35 => "11011", 36 => "00111", 37 => "11101", 38 => "00101", 39 => "11010", 
    40 => "11001", 41 => "00010", 42 => "11100", 43 => "00110", 44 => "10111", 
    45 => "00100", 46 => "11000", 47 => "01001", 48 => "11111", 49 => "11110", 
    50 => "00011", 51 => "11011", 52 => "00111", 53 => "11101", 54 => "00101", 
    55 => "11010", 56 => "11001", 57 => "00010", 58 => "11100", 59 => "00110", 
    60 => "10111", 61 => "00100", 62 => "11000", 63 => "01001", 64 => "11111", 
    65 => "11110", 66 => "00011", 67 => "11011", 68 => "00111", 69 => "11101", 
    70 => "00101", 71 => "11010", 72 => "11001", 73 => "00010", 74 => "11100", 
    75 => "00110", 76 => "10111", 77 => "00100", 78 => "11000", 79 => "01001", 
    80 => "11111", 81 => "11110", 82 => "00011", 83 => "11011", 84 => "00111", 
    85 => "11101", 86 => "00101", 87 => "11010", 88 => "11001", 89 => "00010", 
    90 => "11100", 91 => "00110", 92 => "10111", 93 => "00100", 94 => "11000", 
    95 => "01001", 96 => "11111", 97 => "11110", 98 => "00011", 99 => "11011", 
    100 => "00111", 101 => "11101", 102 => "00101", 103 => "11010", 104 => "11001", 
    105 => "00010", 106 => "11100", 107 => "00110", 108 => "10111", 109 => "00100", 
    110 => "11000", 111 => "01001", 112 => "11111", 113 => "11110", 114 => "00011", 
    115 => "11011", 116 => "00111", 117 => "11101", 118 => "00101", 119 => "11010", 
    120 => "11001", 121 => "00010", 122 => "11100", 123 => "00110", 124 => "10111", 
    125 => "00100", 126 => "11000", 127 => "01001", 128 => "11111", 129 => "11110", 
    130 => "00011", 131 => "11011", 132 => "00111", 133 => "11101", 134 => "00101", 
    135 => "11010", 136 => "11001", 137 => "00010", 138 => "11100", 139 => "00110", 
    140 => "10111", 141 => "00100", 142 => "11000", 143 => "01001" );

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

entity conv_layer2_w_confYi is
    generic (
        DataWidth : INTEGER := 5;
        AddressRange : INTEGER := 144;
        AddressWidth : INTEGER := 8);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of conv_layer2_w_confYi is
    component conv_layer2_w_confYi_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    conv_layer2_w_confYi_rom_U :  component conv_layer2_w_confYi_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


