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

entity conv_layer2_w_coneOg_rom is 
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


architecture rtl of conv_layer2_w_coneOg_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00001", 1 => "00010", 2 => "11101", 3 => "00101", 4 => "11001", 
    5 => "00011", 6 => "11011", 7 => "00110", 8 => "00111", 9 => "11110", 
    10 => "00100", 11 => "11010", 12 => "01001", 13 => "11100", 14 => "01000", 
    15 => "10111", 16 => "00001", 17 => "00010", 18 => "11101", 19 => "00101", 
    20 => "11001", 21 => "00011", 22 => "11011", 23 => "00110", 24 => "00111", 
    25 => "11110", 26 => "00100", 27 => "11010", 28 => "01001", 29 => "11100", 
    30 => "01000", 31 => "10111", 32 => "00001", 33 => "00010", 34 => "11101", 
    35 => "00101", 36 => "11001", 37 => "00011", 38 => "11011", 39 => "00110", 
    40 => "00111", 41 => "11110", 42 => "00100", 43 => "11010", 44 => "01001", 
    45 => "11100", 46 => "01000", 47 => "10111", 48 => "00001", 49 => "00010", 
    50 => "11101", 51 => "00101", 52 => "11001", 53 => "00011", 54 => "11011", 
    55 => "00110", 56 => "00111", 57 => "11110", 58 => "00100", 59 => "11010", 
    60 => "01001", 61 => "11100", 62 => "01000", 63 => "10111", 64 => "00001", 
    65 => "00010", 66 => "11101", 67 => "00101", 68 => "11001", 69 => "00011", 
    70 => "11011", 71 => "00110", 72 => "00111", 73 => "11110", 74 => "00100", 
    75 => "11010", 76 => "01001", 77 => "11100", 78 => "01000", 79 => "10111", 
    80 => "00001", 81 => "00010", 82 => "11101", 83 => "00101", 84 => "11001", 
    85 => "00011", 86 => "11011", 87 => "00110", 88 => "00111", 89 => "11110", 
    90 => "00100", 91 => "11010", 92 => "01001", 93 => "11100", 94 => "01000", 
    95 => "10111", 96 => "00001", 97 => "00010", 98 => "11101", 99 => "00101", 
    100 => "11001", 101 => "00011", 102 => "11011", 103 => "00110", 104 => "00111", 
    105 => "11110", 106 => "00100", 107 => "11010", 108 => "01001", 109 => "11100", 
    110 => "01000", 111 => "10111", 112 => "00001", 113 => "00010", 114 => "11101", 
    115 => "00101", 116 => "11001", 117 => "00011", 118 => "11011", 119 => "00110", 
    120 => "00111", 121 => "11110", 122 => "00100", 123 => "11010", 124 => "01001", 
    125 => "11100", 126 => "01000", 127 => "10111", 128 => "00001", 129 => "00010", 
    130 => "11101", 131 => "00101", 132 => "11001", 133 => "00011", 134 => "11011", 
    135 => "00110", 136 => "00111", 137 => "11110", 138 => "00100", 139 => "11010", 
    140 => "01001", 141 => "11100", 142 => "01000", 143 => "10111" );

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

entity conv_layer2_w_coneOg is
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

architecture arch of conv_layer2_w_coneOg is
    component conv_layer2_w_coneOg_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    conv_layer2_w_coneOg_rom_U :  component conv_layer2_w_coneOg_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


