# This script segment is generated automatically by AutoPilot

set id 48
set name tinyyolo_lite_ureCeG
set corename simcore_urem_seq
set op urem
set stage_num 8
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set start_width 1
set start_signed 0
set done_width 1
set in0_width 4
set in0_signed 0
set in1_width 4
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 3
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_urem] == "ap_gen_simcore_urem"} {
eval "ap_gen_simcore_urem { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    start_width ${start_width} \
    start_signed ${start_signed} \
    done_width ${done_width} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_urem, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op urem
set corename DivnS_SEQ
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_div] == "::AESL_LIB_VIRTEX::xil_gen_div"} {
eval "::AESL_LIB_VIRTEX::xil_gen_div { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    start_width ${start_width} \
    start_signed ${start_signed} \
    done_width ${done_width} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_div, check your platform lib"
}
}


# Memory (RAM/ROM)  definition:
set ID 51
set hasByteEnable 0
set MemName conv_layer3_w_conmb6
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 5
set AddrRange 288
set AddrWd 9
set TrueReset 0
set IsROM 1
set ROMData { "00001" "00010" "11101" "00101" "11001" "00011" "11011" "00110" "00111" "11110" "00100" "11010" "01001" "11100" "01000" "10111" "01010" "11000" "01011" "10110" "00011" "11001" "00101" "10101" "00110" "11011" "00010" "11100" "00111" "10111" "01000" "11010" "00001" "00010" "11101" "00101" "11001" "00011" "11011" "00110" "00111" "11110" "00100" "11010" "01001" "11100" "01000" "10111" "01010" "11000" "01011" "10110" "00011" "11001" "00101" "10101" "00110" "11011" "00010" "11100" "00111" "10111" "01000" "11010" "00001" "00010" "11101" "00101" "11001" "00011" "11011" "00110" "00111" "11110" "00100" "11010" "01001" "11100" "01000" "10111" "01010" "11000" "01011" "10110" "00011" "11001" "00101" "10101" "00110" "11011" "00010" "11100" "00111" "10111" "01000" "11010" "00001" "00010" "11101" "00101" "11001" "00011" "11011" "00110" "00111" "11110" "00100" "11010" "01001" "11100" "01000" "10111" "01010" "11000" "01011" "10110" "00011" "11001" "00101" "10101" "00110" "11011" "00010" "11100" "00111" "10111" "01000" "11010" "00001" "00010" "11101" "00101" "11001" "00011" "11011" "00110" "00111" "11110" "00100" "11010" "01001" "11100" "01000" "10111" "01010" "11000" "01011" "10110" "00011" "11001" "00101" "10101" "00110" "11011" "00010" "11100" "00111" "10111" "01000" "11010" "00001" "00010" "11101" "00101" "11001" "00011" "11011" "00110" "00111" "11110" "00100" "11010" "01001" "11100" "01000" "10111" "01010" "11000" "01011" "10110" "00011" "11001" "00101" "10101" "00110" "11011" "00010" "11100" "00111" "10111" "01000" "11010" "00001" "00010" "11101" "00101" "11001" "00011" "11011" "00110" "00111" "11110" "00100" "11010" "01001" "11100" "01000" "10111" "01010" "11000" "01011" "10110" "00011" "11001" "00101" "10101" "00110" "11011" "00010" "11100" "00111" "10111" "01000" "11010" "00001" "00010" "11101" "00101" "11001" "00011" "11011" "00110" "00111" "11110" "00100" "11010" "01001" "11100" "01000" "10111" "01010" "11000" "01011" "10110" "00011" "11001" "00101" "10101" "00110" "11011" "00010" "11100" "00111" "10111" "01000" "11010" "00001" "00010" "11101" "00101" "11001" "00011" "11011" "00110" "00111" "11110" "00100" "11010" "01001" "11100" "01000" "10111" "01010" "11000" "01011" "10110" "00011" "11001" "00101" "10101" "00110" "11011" "00010" "11100" "00111" "10111" "01000" "11010" }
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
set ID 52
set hasByteEnable 0
set MemName conv_layer3_w_conncg
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 5
set AddrRange 288
set AddrWd 9
set TrueReset 0
set IsROM 1
set ROMData { "11111" "11110" "00011" "11011" "00111" "11101" "00101" "11010" "11001" "00010" "11100" "00110" "10111" "00100" "11000" "01001" "10110" "01000" "10101" "01010" "11101" "00111" "11011" "01011" "11010" "00101" "11110" "00100" "11001" "01001" "11000" "00110" "11111" "11110" "00011" "11011" "00111" "11101" "00101" "11010" "11001" "00010" "11100" "00110" "10111" "00100" "11000" "01001" "10110" "01000" "10101" "01010" "11101" "00111" "11011" "01011" "11010" "00101" "11110" "00100" "11001" "01001" "11000" "00110" "11111" "11110" "00011" "11011" "00111" "11101" "00101" "11010" "11001" "00010" "11100" "00110" "10111" "00100" "11000" "01001" "10110" "01000" "10101" "01010" "11101" "00111" "11011" "01011" "11010" "00101" "11110" "00100" "11001" "01001" "11000" "00110" "11111" "11110" "00011" "11011" "00111" "11101" "00101" "11010" "11001" "00010" "11100" "00110" "10111" "00100" "11000" "01001" "10110" "01000" "10101" "01010" "11101" "00111" "11011" "01011" "11010" "00101" "11110" "00100" "11001" "01001" "11000" "00110" "11111" "11110" "00011" "11011" "00111" "11101" "00101" "11010" "11001" "00010" "11100" "00110" "10111" "00100" "11000" "01001" "10110" "01000" "10101" "01010" "11101" "00111" "11011" "01011" "11010" "00101" "11110" "00100" "11001" "01001" "11000" "00110" "11111" "11110" "00011" "11011" "00111" "11101" "00101" "11010" "11001" "00010" "11100" "00110" "10111" "00100" "11000" "01001" "10110" "01000" "10101" "01010" "11101" "00111" "11011" "01011" "11010" "00101" "11110" "00100" "11001" "01001" "11000" "00110" "11111" "11110" "00011" "11011" "00111" "11101" "00101" "11010" "11001" "00010" "11100" "00110" "10111" "00100" "11000" "01001" "10110" "01000" "10101" "01010" "11101" "00111" "11011" "01011" "11010" "00101" "11110" "00100" "11001" "01001" "11000" "00110" "11111" "11110" "00011" "11011" "00111" "11101" "00101" "11010" "11001" "00010" "11100" "00110" "10111" "00100" "11000" "01001" "10110" "01000" "10101" "01010" "11101" "00111" "11011" "01011" "11010" "00101" "11110" "00100" "11001" "01001" "11000" "00110" "11111" "11110" "00011" "11011" "00111" "11101" "00101" "11010" "11001" "00010" "11100" "00110" "10111" "00100" "11000" "01001" "10110" "01000" "10101" "01010" "11101" "00111" "11011" "01011" "11010" "00101" "11110" "00100" "11001" "01001" "11000" "00110" }
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
    id 53 \
    name output_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_0 \
    op interface \
    ports { output_0_address0 { O 11 vector } output_0_ce0 { O 1 bit } output_0_we0 { O 1 bit } output_0_d0 { O 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 54 \
    name output_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_1 \
    op interface \
    ports { output_1_address0 { O 11 vector } output_1_ce0 { O 1 bit } output_1_we0 { O 1 bit } output_1_d0 { O 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 55 \
    name output_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_2 \
    op interface \
    ports { output_2_address0 { O 10 vector } output_2_ce0 { O 1 bit } output_2_we0 { O 1 bit } output_2_d0 { O 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 56 \
    name output_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_3 \
    op interface \
    ports { output_3_address0 { O 10 vector } output_3_ce0 { O 1 bit } output_3_we0 { O 1 bit } output_3_d0 { O 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 57 \
    name output_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_4 \
    op interface \
    ports { output_4_address0 { O 10 vector } output_4_ce0 { O 1 bit } output_4_we0 { O 1 bit } output_4_d0 { O 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 58 \
    name buf_pool2_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf_pool2_0 \
    op interface \
    ports { buf_pool2_0_address0 { O 8 vector } buf_pool2_0_ce0 { O 1 bit } buf_pool2_0_q0 { I 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf_pool2_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 59 \
    name buf_pool2_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf_pool2_1 \
    op interface \
    ports { buf_pool2_1_address0 { O 8 vector } buf_pool2_1_ce0 { O 1 bit } buf_pool2_1_q0 { I 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf_pool2_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 60 \
    name buf_pool2_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf_pool2_2 \
    op interface \
    ports { buf_pool2_2_address0 { O 8 vector } buf_pool2_2_ce0 { O 1 bit } buf_pool2_2_q0 { I 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf_pool2_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 61 \
    name buf_pool2_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf_pool2_3 \
    op interface \
    ports { buf_pool2_3_address0 { O 8 vector } buf_pool2_3_ce0 { O 1 bit } buf_pool2_3_q0 { I 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf_pool2_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 62 \
    name buf_pool2_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf_pool2_4 \
    op interface \
    ports { buf_pool2_4_address0 { O 8 vector } buf_pool2_4_ce0 { O 1 bit } buf_pool2_4_q0 { I 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf_pool2_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 63 \
    name buf_pool2_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf_pool2_5 \
    op interface \
    ports { buf_pool2_5_address0 { O 8 vector } buf_pool2_5_ce0 { O 1 bit } buf_pool2_5_q0 { I 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf_pool2_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 64 \
    name buf_pool2_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf_pool2_6 \
    op interface \
    ports { buf_pool2_6_address0 { O 8 vector } buf_pool2_6_ce0 { O 1 bit } buf_pool2_6_q0 { I 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf_pool2_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 65 \
    name buf_pool2_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf_pool2_7 \
    op interface \
    ports { buf_pool2_7_address0 { O 8 vector } buf_pool2_7_ce0 { O 1 bit } buf_pool2_7_q0 { I 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf_pool2_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 66 \
    name buf_pool2_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf_pool2_8 \
    op interface \
    ports { buf_pool2_8_address0 { O 8 vector } buf_pool2_8_ce0 { O 1 bit } buf_pool2_8_q0 { I 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf_pool2_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 67 \
    name buf_pool2_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf_pool2_9 \
    op interface \
    ports { buf_pool2_9_address0 { O 8 vector } buf_pool2_9_ce0 { O 1 bit } buf_pool2_9_q0 { I 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf_pool2_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 68 \
    name buf_pool2_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf_pool2_10 \
    op interface \
    ports { buf_pool2_10_address0 { O 8 vector } buf_pool2_10_ce0 { O 1 bit } buf_pool2_10_q0 { I 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf_pool2_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 69 \
    name buf_pool2_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf_pool2_11 \
    op interface \
    ports { buf_pool2_11_address0 { O 8 vector } buf_pool2_11_ce0 { O 1 bit } buf_pool2_11_q0 { I 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf_pool2_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 70 \
    name buf_pool2_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf_pool2_12 \
    op interface \
    ports { buf_pool2_12_address0 { O 8 vector } buf_pool2_12_ce0 { O 1 bit } buf_pool2_12_q0 { I 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf_pool2_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 71 \
    name buf_pool2_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf_pool2_13 \
    op interface \
    ports { buf_pool2_13_address0 { O 8 vector } buf_pool2_13_ce0 { O 1 bit } buf_pool2_13_q0 { I 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf_pool2_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 72 \
    name buf_pool2_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf_pool2_14 \
    op interface \
    ports { buf_pool2_14_address0 { O 8 vector } buf_pool2_14_ce0 { O 1 bit } buf_pool2_14_q0 { I 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf_pool2_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 73 \
    name buf_pool2_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf_pool2_15 \
    op interface \
    ports { buf_pool2_15_address0 { O 8 vector } buf_pool2_15_ce0 { O 1 bit } buf_pool2_15_q0 { I 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf_pool2_15'"
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


