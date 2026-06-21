# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 18
set hasByteEnable 0
set MemName conv_layer2_w_coneOg
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 5
set AddrRange 144
set AddrWd 8
set TrueReset 0
set IsROM 1
set ROMData { "00001" "00010" "11101" "00101" "11001" "00011" "11011" "00110" "00111" "11110" "00100" "11010" "01001" "11100" "01000" "10111" "00001" "00010" "11101" "00101" "11001" "00011" "11011" "00110" "00111" "11110" "00100" "11010" "01001" "11100" "01000" "10111" "00001" "00010" "11101" "00101" "11001" "00011" "11011" "00110" "00111" "11110" "00100" "11010" "01001" "11100" "01000" "10111" "00001" "00010" "11101" "00101" "11001" "00011" "11011" "00110" "00111" "11110" "00100" "11010" "01001" "11100" "01000" "10111" "00001" "00010" "11101" "00101" "11001" "00011" "11011" "00110" "00111" "11110" "00100" "11010" "01001" "11100" "01000" "10111" "00001" "00010" "11101" "00101" "11001" "00011" "11011" "00110" "00111" "11110" "00100" "11010" "01001" "11100" "01000" "10111" "00001" "00010" "11101" "00101" "11001" "00011" "11011" "00110" "00111" "11110" "00100" "11010" "01001" "11100" "01000" "10111" "00001" "00010" "11101" "00101" "11001" "00011" "11011" "00110" "00111" "11110" "00100" "11010" "01001" "11100" "01000" "10111" "00001" "00010" "11101" "00101" "11001" "00011" "11011" "00110" "00111" "11110" "00100" "11010" "01001" "11100" "01000" "10111" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 19
set hasByteEnable 0
set MemName conv_layer2_w_confYi
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 5
set AddrRange 144
set AddrWd 8
set TrueReset 0
set IsROM 1
set ROMData { "11111" "11110" "00011" "11011" "00111" "11101" "00101" "11010" "11001" "00010" "11100" "00110" "10111" "00100" "11000" "01001" "11111" "11110" "00011" "11011" "00111" "11101" "00101" "11010" "11001" "00010" "11100" "00110" "10111" "00100" "11000" "01001" "11111" "11110" "00011" "11011" "00111" "11101" "00101" "11010" "11001" "00010" "11100" "00110" "10111" "00100" "11000" "01001" "11111" "11110" "00011" "11011" "00111" "11101" "00101" "11010" "11001" "00010" "11100" "00110" "10111" "00100" "11000" "01001" "11111" "11110" "00011" "11011" "00111" "11101" "00101" "11010" "11001" "00010" "11100" "00110" "10111" "00100" "11000" "01001" "11111" "11110" "00011" "11011" "00111" "11101" "00101" "11010" "11001" "00010" "11100" "00110" "10111" "00100" "11000" "01001" "11111" "11110" "00011" "11011" "00111" "11101" "00101" "11010" "11001" "00010" "11100" "00110" "10111" "00100" "11000" "01001" "11111" "11110" "00011" "11011" "00111" "11101" "00101" "11010" "11001" "00010" "11100" "00110" "10111" "00100" "11000" "01001" "11111" "11110" "00011" "11011" "00111" "11101" "00101" "11010" "11001" "00010" "11100" "00110" "10111" "00100" "11000" "01001" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 20 \
    name output_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_0 \
    op interface \
    ports { output_0_address0 { O 13 vector } output_0_ce0 { O 1 bit } output_0_we0 { O 1 bit } output_0_d0 { O 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 21 \
    name output_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_1 \
    op interface \
    ports { output_1_address0 { O 13 vector } output_1_ce0 { O 1 bit } output_1_we0 { O 1 bit } output_1_d0 { O 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 22 \
    name buf_pool1_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf_pool1_0 \
    op interface \
    ports { buf_pool1_0_address0 { O 10 vector } buf_pool1_0_ce0 { O 1 bit } buf_pool1_0_q0 { I 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf_pool1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 23 \
    name buf_pool1_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf_pool1_1 \
    op interface \
    ports { buf_pool1_1_address0 { O 10 vector } buf_pool1_1_ce0 { O 1 bit } buf_pool1_1_q0 { I 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf_pool1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 24 \
    name buf_pool1_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf_pool1_2 \
    op interface \
    ports { buf_pool1_2_address0 { O 10 vector } buf_pool1_2_ce0 { O 1 bit } buf_pool1_2_q0 { I 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf_pool1_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 25 \
    name buf_pool1_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf_pool1_3 \
    op interface \
    ports { buf_pool1_3_address0 { O 10 vector } buf_pool1_3_ce0 { O 1 bit } buf_pool1_3_q0 { I 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf_pool1_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 26 \
    name buf_pool1_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf_pool1_4 \
    op interface \
    ports { buf_pool1_4_address0 { O 10 vector } buf_pool1_4_ce0 { O 1 bit } buf_pool1_4_q0 { I 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf_pool1_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 27 \
    name buf_pool1_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf_pool1_5 \
    op interface \
    ports { buf_pool1_5_address0 { O 10 vector } buf_pool1_5_ce0 { O 1 bit } buf_pool1_5_q0 { I 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf_pool1_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 28 \
    name buf_pool1_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf_pool1_6 \
    op interface \
    ports { buf_pool1_6_address0 { O 10 vector } buf_pool1_6_ce0 { O 1 bit } buf_pool1_6_q0 { I 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf_pool1_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 29 \
    name buf_pool1_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf_pool1_7 \
    op interface \
    ports { buf_pool1_7_address0 { O 10 vector } buf_pool1_7_ce0 { O 1 bit } buf_pool1_7_q0 { I 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf_pool1_7'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


