# ==============================================================
# File generated on Sat Jun 20 22:52:26 +0700 2026
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../../tb_tinyyolo_lite.c -cflags { -Wno-unknown-pragmas}
add_files conv_relu1.c
add_files conv_relu2.c
add_files conv_relu3.c
add_files decode.c
add_files detection_head.c
add_files maxpool_1.c
add_files maxpool_2.c
add_files tinyyolo_lite.c
add_files tinyyolo_lite.h
add_files weights.h
set_part xc7z020clg484-1
create_clock -name default -period 10
