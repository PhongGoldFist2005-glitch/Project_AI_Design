-- ==============================================================
-- File generated on Sat Jun 20 22:52:23 +0700 2026
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
-- SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
-- IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity conv_layer1_w_conv1_rom is 
    generic(
             DWIDTH     : integer := 4; 
             AWIDTH     : integer := 8; 
             MEM_SIZE    : integer := 216
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of conv_layer1_w_conv1_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0001", 1 => "0010", 2 => "1101", 3 => "0101", 4 => "1001", 
    5 => "0011", 6 => "1011", 7 => "0110", 8 => "1111", 9 => "1110", 
    10 => "0011", 11 => "1011", 12 => "0111", 13 => "1101", 14 => "0101", 
    15 => "1010", 16 => "0001", 17 => "0010", 18 => "1101", 19 => "0101", 
    20 => "1001", 21 => "0011", 22 => "1011", 23 => "0110", 24 => "1111", 
    25 => "1110", 26 => "0011", 27 => "1011", 28 => "0111", 29 => "1101", 
    30 => "0101", 31 => "1010", 32 => "0001", 33 => "0010", 34 => "1101", 
    35 => "0101", 36 => "1001", 37 => "0011", 38 => "1011", 39 => "0110", 
    40 => "1111", 41 => "1110", 42 => "0011", 43 => "1011", 44 => "0111", 
    45 => "1101", 46 => "0101", 47 => "1010", 48 => "0001", 49 => "0010", 
    50 => "1101", 51 => "0101", 52 => "1001", 53 => "0011", 54 => "1011", 
    55 => "0110", 56 => "1111", 57 => "1110", 58 => "0011", 59 => "1011", 
    60 => "0111", 61 => "1101", 62 => "0101", 63 => "1010", 64 => "0001", 
    65 => "0010", 66 => "1101", 67 => "0101", 68 => "1001", 69 => "0011", 
    70 => "1011", 71 => "0110", 72 => "1111", 73 => "1110", 74 => "0011", 
    75 => "1011", 76 => "0111", 77 => "1101", 78 => "0101", 79 => "1010", 
    80 => "0001", 81 => "0010", 82 => "1101", 83 => "0101", 84 => "1001", 
    85 => "0011", 86 => "1011", 87 => "0110", 88 => "1111", 89 => "1110", 
    90 => "0011", 91 => "1011", 92 => "0111", 93 => "1101", 94 => "0101", 
    95 => "1010", 96 => "0001", 97 => "0010", 98 => "1101", 99 => "0101", 
    100 => "1001", 101 => "0011", 102 => "1011", 103 => "0110", 104 => "1111", 
    105 => "1110", 106 => "0011", 107 => "1011", 108 => "0111", 109 => "1101", 
    110 => "0101", 111 => "1010", 112 => "0001", 113 => "0010", 114 => "1101", 
    115 => "0101", 116 => "1001", 117 => "0011", 118 => "1011", 119 => "0110", 
    120 => "1111", 121 => "1110", 122 => "0011", 123 => "1011", 124 => "0111", 
    125 => "1101", 126 => "0101", 127 => "1010", 128 => "0001", 129 => "0010", 
    130 => "1101", 131 => "0101", 132 => "1001", 133 => "0011", 134 => "1011", 
    135 => "0110", 136 => "1111", 137 => "1110", 138 => "0011", 139 => "1011", 
    140 => "0111", 141 => "1101", 142 => "0101", 143 => "1010", 144 => "0001", 
    145 => "0010", 146 => "1101", 147 => "0101", 148 => "1001", 149 => "0011", 
    150 => "1011", 151 => "0110", 152 => "1111", 153 => "1110", 154 => "0011", 
    155 => "1011", 156 => "0111", 157 => "1101", 158 => "0101", 159 => "1010", 
    160 => "0001", 161 => "0010", 162 => "1101", 163 => "0101", 164 => "1001", 
    165 => "0011", 166 => "1011", 167 => "0110", 168 => "1111", 169 => "1110", 
    170 => "0011", 171 => "1011", 172 => "0111", 173 => "1101", 174 => "0101", 
    175 => "1010", 176 => "0001", 177 => "0010", 178 => "1101", 179 => "0101", 
    180 => "1001", 181 => "0011", 182 => "1011", 183 => "0110", 184 => "1111", 
    185 => "1110", 186 => "0011", 187 => "1011", 188 => "0111", 189 => "1101", 
    190 => "0101", 191 => "1010", 192 => "0001", 193 => "0010", 194 => "1101", 
    195 => "0101", 196 => "1001", 197 => "0011", 198 => "1011", 199 => "0110", 
    200 => "1111", 201 => "1110", 202 => "0011", 203 => "1011", 204 => "0111", 
    205 => "1101", 206 => "0101", 207 => "1010", 208 => "0001", 209 => "0010", 
    210 => "1101", 211 => "0101", 212 => "1001", 213 => "0011", 214 => "1011", 
    215 => "0110" );

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

entity conv_layer1_w_conv1 is
    generic (
        DataWidth : INTEGER := 4;
        AddressRange : INTEGER := 216;
        AddressWidth : INTEGER := 8);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of conv_layer1_w_conv1 is
    component conv_layer1_w_conv1_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    conv_layer1_w_conv1_rom_U :  component conv_layer1_w_conv1_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


