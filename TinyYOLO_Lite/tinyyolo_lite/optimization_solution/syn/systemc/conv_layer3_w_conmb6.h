// ==============================================================
// File generated on Sun Jun 21 08:38:16 +0700 2026
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __conv_layer3_w_conmb6_H__
#define __conv_layer3_w_conmb6_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct conv_layer3_w_conmb6_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 5;
  static const unsigned AddressRange = 288;
  static const unsigned AddressWidth = 9;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(conv_layer3_w_conmb6_ram) {
        ram[0] = "0b00001";
        ram[1] = "0b00010";
        ram[2] = "0b11101";
        ram[3] = "0b00101";
        ram[4] = "0b11001";
        ram[5] = "0b00011";
        ram[6] = "0b11011";
        ram[7] = "0b00110";
        ram[8] = "0b00111";
        ram[9] = "0b11110";
        ram[10] = "0b00100";
        ram[11] = "0b11010";
        ram[12] = "0b01001";
        ram[13] = "0b11100";
        ram[14] = "0b01000";
        ram[15] = "0b10111";
        ram[16] = "0b01010";
        ram[17] = "0b11000";
        ram[18] = "0b01011";
        ram[19] = "0b10110";
        ram[20] = "0b00011";
        ram[21] = "0b11001";
        ram[22] = "0b00101";
        ram[23] = "0b10101";
        ram[24] = "0b00110";
        ram[25] = "0b11011";
        ram[26] = "0b00010";
        ram[27] = "0b11100";
        ram[28] = "0b00111";
        ram[29] = "0b10111";
        ram[30] = "0b01000";
        ram[31] = "0b11010";
        ram[32] = "0b00001";
        ram[33] = "0b00010";
        ram[34] = "0b11101";
        ram[35] = "0b00101";
        ram[36] = "0b11001";
        ram[37] = "0b00011";
        ram[38] = "0b11011";
        ram[39] = "0b00110";
        ram[40] = "0b00111";
        ram[41] = "0b11110";
        ram[42] = "0b00100";
        ram[43] = "0b11010";
        ram[44] = "0b01001";
        ram[45] = "0b11100";
        ram[46] = "0b01000";
        ram[47] = "0b10111";
        ram[48] = "0b01010";
        ram[49] = "0b11000";
        ram[50] = "0b01011";
        ram[51] = "0b10110";
        ram[52] = "0b00011";
        ram[53] = "0b11001";
        ram[54] = "0b00101";
        ram[55] = "0b10101";
        ram[56] = "0b00110";
        ram[57] = "0b11011";
        ram[58] = "0b00010";
        ram[59] = "0b11100";
        ram[60] = "0b00111";
        ram[61] = "0b10111";
        ram[62] = "0b01000";
        ram[63] = "0b11010";
        ram[64] = "0b00001";
        ram[65] = "0b00010";
        ram[66] = "0b11101";
        ram[67] = "0b00101";
        ram[68] = "0b11001";
        ram[69] = "0b00011";
        ram[70] = "0b11011";
        ram[71] = "0b00110";
        ram[72] = "0b00111";
        ram[73] = "0b11110";
        ram[74] = "0b00100";
        ram[75] = "0b11010";
        ram[76] = "0b01001";
        ram[77] = "0b11100";
        ram[78] = "0b01000";
        ram[79] = "0b10111";
        ram[80] = "0b01010";
        ram[81] = "0b11000";
        ram[82] = "0b01011";
        ram[83] = "0b10110";
        ram[84] = "0b00011";
        ram[85] = "0b11001";
        ram[86] = "0b00101";
        ram[87] = "0b10101";
        ram[88] = "0b00110";
        ram[89] = "0b11011";
        ram[90] = "0b00010";
        ram[91] = "0b11100";
        ram[92] = "0b00111";
        ram[93] = "0b10111";
        ram[94] = "0b01000";
        ram[95] = "0b11010";
        ram[96] = "0b00001";
        ram[97] = "0b00010";
        ram[98] = "0b11101";
        ram[99] = "0b00101";
        ram[100] = "0b11001";
        ram[101] = "0b00011";
        ram[102] = "0b11011";
        ram[103] = "0b00110";
        ram[104] = "0b00111";
        ram[105] = "0b11110";
        ram[106] = "0b00100";
        ram[107] = "0b11010";
        ram[108] = "0b01001";
        ram[109] = "0b11100";
        ram[110] = "0b01000";
        ram[111] = "0b10111";
        ram[112] = "0b01010";
        ram[113] = "0b11000";
        ram[114] = "0b01011";
        ram[115] = "0b10110";
        ram[116] = "0b00011";
        ram[117] = "0b11001";
        ram[118] = "0b00101";
        ram[119] = "0b10101";
        ram[120] = "0b00110";
        ram[121] = "0b11011";
        ram[122] = "0b00010";
        ram[123] = "0b11100";
        ram[124] = "0b00111";
        ram[125] = "0b10111";
        ram[126] = "0b01000";
        ram[127] = "0b11010";
        ram[128] = "0b00001";
        ram[129] = "0b00010";
        ram[130] = "0b11101";
        ram[131] = "0b00101";
        ram[132] = "0b11001";
        ram[133] = "0b00011";
        ram[134] = "0b11011";
        ram[135] = "0b00110";
        ram[136] = "0b00111";
        ram[137] = "0b11110";
        ram[138] = "0b00100";
        ram[139] = "0b11010";
        ram[140] = "0b01001";
        ram[141] = "0b11100";
        ram[142] = "0b01000";
        ram[143] = "0b10111";
        ram[144] = "0b01010";
        ram[145] = "0b11000";
        ram[146] = "0b01011";
        ram[147] = "0b10110";
        ram[148] = "0b00011";
        ram[149] = "0b11001";
        ram[150] = "0b00101";
        ram[151] = "0b10101";
        ram[152] = "0b00110";
        ram[153] = "0b11011";
        ram[154] = "0b00010";
        ram[155] = "0b11100";
        ram[156] = "0b00111";
        ram[157] = "0b10111";
        ram[158] = "0b01000";
        ram[159] = "0b11010";
        ram[160] = "0b00001";
        ram[161] = "0b00010";
        ram[162] = "0b11101";
        ram[163] = "0b00101";
        ram[164] = "0b11001";
        ram[165] = "0b00011";
        ram[166] = "0b11011";
        ram[167] = "0b00110";
        ram[168] = "0b00111";
        ram[169] = "0b11110";
        ram[170] = "0b00100";
        ram[171] = "0b11010";
        ram[172] = "0b01001";
        ram[173] = "0b11100";
        ram[174] = "0b01000";
        ram[175] = "0b10111";
        ram[176] = "0b01010";
        ram[177] = "0b11000";
        ram[178] = "0b01011";
        ram[179] = "0b10110";
        ram[180] = "0b00011";
        ram[181] = "0b11001";
        ram[182] = "0b00101";
        ram[183] = "0b10101";
        ram[184] = "0b00110";
        ram[185] = "0b11011";
        ram[186] = "0b00010";
        ram[187] = "0b11100";
        ram[188] = "0b00111";
        ram[189] = "0b10111";
        ram[190] = "0b01000";
        ram[191] = "0b11010";
        ram[192] = "0b00001";
        ram[193] = "0b00010";
        ram[194] = "0b11101";
        ram[195] = "0b00101";
        ram[196] = "0b11001";
        ram[197] = "0b00011";
        ram[198] = "0b11011";
        ram[199] = "0b00110";
        ram[200] = "0b00111";
        ram[201] = "0b11110";
        ram[202] = "0b00100";
        ram[203] = "0b11010";
        ram[204] = "0b01001";
        ram[205] = "0b11100";
        ram[206] = "0b01000";
        ram[207] = "0b10111";
        ram[208] = "0b01010";
        ram[209] = "0b11000";
        ram[210] = "0b01011";
        ram[211] = "0b10110";
        ram[212] = "0b00011";
        ram[213] = "0b11001";
        ram[214] = "0b00101";
        ram[215] = "0b10101";
        ram[216] = "0b00110";
        ram[217] = "0b11011";
        ram[218] = "0b00010";
        ram[219] = "0b11100";
        ram[220] = "0b00111";
        ram[221] = "0b10111";
        ram[222] = "0b01000";
        ram[223] = "0b11010";
        ram[224] = "0b00001";
        ram[225] = "0b00010";
        ram[226] = "0b11101";
        ram[227] = "0b00101";
        ram[228] = "0b11001";
        ram[229] = "0b00011";
        ram[230] = "0b11011";
        ram[231] = "0b00110";
        ram[232] = "0b00111";
        ram[233] = "0b11110";
        ram[234] = "0b00100";
        ram[235] = "0b11010";
        ram[236] = "0b01001";
        ram[237] = "0b11100";
        ram[238] = "0b01000";
        ram[239] = "0b10111";
        ram[240] = "0b01010";
        ram[241] = "0b11000";
        ram[242] = "0b01011";
        ram[243] = "0b10110";
        ram[244] = "0b00011";
        ram[245] = "0b11001";
        ram[246] = "0b00101";
        ram[247] = "0b10101";
        ram[248] = "0b00110";
        ram[249] = "0b11011";
        ram[250] = "0b00010";
        ram[251] = "0b11100";
        ram[252] = "0b00111";
        ram[253] = "0b10111";
        ram[254] = "0b01000";
        ram[255] = "0b11010";
        ram[256] = "0b00001";
        ram[257] = "0b00010";
        ram[258] = "0b11101";
        ram[259] = "0b00101";
        ram[260] = "0b11001";
        ram[261] = "0b00011";
        ram[262] = "0b11011";
        ram[263] = "0b00110";
        ram[264] = "0b00111";
        ram[265] = "0b11110";
        ram[266] = "0b00100";
        ram[267] = "0b11010";
        ram[268] = "0b01001";
        ram[269] = "0b11100";
        ram[270] = "0b01000";
        ram[271] = "0b10111";
        ram[272] = "0b01010";
        ram[273] = "0b11000";
        ram[274] = "0b01011";
        ram[275] = "0b10110";
        ram[276] = "0b00011";
        ram[277] = "0b11001";
        ram[278] = "0b00101";
        ram[279] = "0b10101";
        ram[280] = "0b00110";
        ram[281] = "0b11011";
        ram[282] = "0b00010";
        ram[283] = "0b11100";
        ram[284] = "0b00111";
        ram[285] = "0b10111";
        ram[286] = "0b01000";
        ram[287] = "0b11010";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(conv_layer3_w_conmb6) {


static const unsigned DataWidth = 5;
static const unsigned AddressRange = 288;
static const unsigned AddressWidth = 9;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


conv_layer3_w_conmb6_ram* meminst;


SC_CTOR(conv_layer3_w_conmb6) {
meminst = new conv_layer3_w_conmb6_ram("conv_layer3_w_conmb6_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~conv_layer3_w_conmb6() {
    delete meminst;
}


};//endmodule
#endif
