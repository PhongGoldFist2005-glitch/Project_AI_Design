############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project tinyyolo_lite
set_top tinyyolo_lite
add_files weights.h
add_files tinyyolo_lite.h
add_files tinyyolo_lite.c
add_files maxpool_2.c
add_files maxpool_1.c
add_files detection_head.c
add_files decode.c
add_files conv_relu3.c
add_files conv_relu2.c
add_files conv_relu1.c
add_files -tb tb_tinyyolo_lite.c -cflags "-Wno-unknown-pragmas"
open_solution "solution1_naive"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
source "./tinyyolo_lite/solution1_naive/directives.tcl"
csim_design
csynth_design
cosim_design -tool xsim
export_design -flow impl -rtl verilog -format ip_catalog
