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

entity conv_layer1_w_conbkb_rom is 
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


architecture rtl of conv_layer1_w_conbkb_rom is 

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
    70 => "1011", 71 => "0110" );

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

entity conv_layer1_w_conbkb is
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

architecture arch of conv_layer1_w_conbkb is
    component conv_layer1_w_conbkb_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    conv_layer1_w_conbkb_rom_U :  component conv_layer1_w_conbkb_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


