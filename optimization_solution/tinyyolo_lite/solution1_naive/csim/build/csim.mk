# ==============================================================
# File generated on Sat Jun 20 16:25:16 +0700 2026
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
CSIM_DESIGN = 1

__SIM_FPO__ = 1

__SIM_MATHHLS__ = 1

__SIM_OPENCV__ = 1

__SIM_FFT__ = 1

__SIM_FIR__ = 1

__SIM_DDS__ = 1

ObjDir = obj

HLS_SOURCES = ../../../../tb_tinyyolo_lite.c ../../../../tinyyolo_lite.c ../../../../maxpool_2.c ../../../../maxpool_1.c ../../../../detection_head.c ../../../../decode.c ../../../../conv_relu3.c ../../../../conv_relu2.c ../../../../conv_relu1.c

TARGET := csim.exe

AUTOPILOT_ROOT := E:/Xilinx/Vivado/2018.3
AUTOPILOT_MACH := win64
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
ifndef AP_GCC_PATH
  AP_GCC_PATH := E:/Xilinx/Vivado/2018.3/msys64/mingw64/bin
endif
AUTOPILOT_TOOL := ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AP_CLANG_PATH := ${AUTOPILOT_ROOT}/msys64/mingw64/bin
AUTOPILOT_TECH := ${AUTOPILOT_ROOT}/common/technology


IFLAG += -I "${AUTOPILOT_TOOL}/systemc/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/opencv"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_TOOL}/auto_cc/include"
IFLAG += -D__SIM_FPO__

IFLAG += -D__SIM_OPENCV__

IFLAG += -D__SIM_FFT__

IFLAG += -D__SIM_FIR__

IFLAG += -D__SIM_DDS__

IFLAG += -D__DSP48E1__
IFLAG += -Wno-unknown-pragmas 
IFLAG += -g
IFLAG += -DNT
LFLAG += -Wl,--enable-auto-import 
DFLAG += -DAUTOCC
DFLAG += -D__xilinx_ip_top= -DAESL_TB
CCFLAG += 
TOOLCHAIN += 



include ./Makefile.rules

all: $(TARGET)



AUTOCC := cmd //c apcc.bat  

$(ObjDir)/tb_tinyyolo_lite.o: ../../../../tb_tinyyolo_lite.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../../tb_tinyyolo_lite.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/tb_tinyyolo_lite.d

$(ObjDir)/tinyyolo_lite.o: ../../../../tinyyolo_lite.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../../tinyyolo_lite.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/tinyyolo_lite.d

$(ObjDir)/maxpool_2.o: ../../../../maxpool_2.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../../maxpool_2.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/maxpool_2.d

$(ObjDir)/maxpool_1.o: ../../../../maxpool_1.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../../maxpool_1.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/maxpool_1.d

$(ObjDir)/detection_head.o: ../../../../detection_head.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../../detection_head.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/detection_head.d

$(ObjDir)/decode.o: ../../../../decode.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../../decode.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/decode.d

$(ObjDir)/conv_relu3.o: ../../../../conv_relu3.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../../conv_relu3.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/conv_relu3.d

$(ObjDir)/conv_relu2.o: ../../../../conv_relu2.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../../conv_relu2.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/conv_relu2.d

$(ObjDir)/conv_relu1.o: ../../../../conv_relu1.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../../conv_relu1.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/conv_relu1.d
