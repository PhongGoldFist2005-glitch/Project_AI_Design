// ==============================================================
// File generated on Sun Jun 21 08:38:16 +0700 2026
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __conv_layer1_w_conbkb_H__
#define __conv_layer1_w_conbkb_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct conv_layer1_w_conbkb_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 4;
  static const unsigned AddressRange = 72;
  static const unsigned AddressWidth = 7;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(conv_layer1_w_conbkb_ram) {
        ram[0] = "0b0001";
        ram[1] = "0b0010";
        ram[2] = "0b1101";
        ram[3] = "0b0101";
        ram[4] = "0b1001";
        ram[5] = "0b0011";
        ram[6] = "0b1011";
        ram[7] = "0b0110";
        ram[8] = "0b1111";
        ram[9] = "0b1110";
        ram[10] = "0b0011";
        ram[11] = "0b1011";
        ram[12] = "0b0111";
        ram[13] = "0b1101";
        ram[14] = "0b0101";
        ram[15] = "0b1010";
        ram[16] = "0b0001";
        ram[17] = "0b0010";
        ram[18] = "0b1101";
        ram[19] = "0b0101";
        ram[20] = "0b1001";
        ram[21] = "0b0011";
        ram[22] = "0b1011";
        ram[23] = "0b0110";
        ram[24] = "0b1111";
        ram[25] = "0b1110";
        ram[26] = "0b0011";
        ram[27] = "0b1011";
        ram[28] = "0b0111";
        ram[29] = "0b1101";
        ram[30] = "0b0101";
        ram[31] = "0b1010";
        ram[32] = "0b0001";
        ram[33] = "0b0010";
        ram[34] = "0b1101";
        ram[35] = "0b0101";
        ram[36] = "0b1001";
        ram[37] = "0b0011";
        ram[38] = "0b1011";
        ram[39] = "0b0110";
        ram[40] = "0b1111";
        ram[41] = "0b1110";
        ram[42] = "0b0011";
        ram[43] = "0b1011";
        ram[44] = "0b0111";
        ram[45] = "0b1101";
        ram[46] = "0b0101";
        ram[47] = "0b1010";
        ram[48] = "0b0001";
        ram[49] = "0b0010";
        ram[50] = "0b1101";
        ram[51] = "0b0101";
        ram[52] = "0b1001";
        ram[53] = "0b0011";
        ram[54] = "0b1011";
        ram[55] = "0b0110";
        ram[56] = "0b1111";
        ram[57] = "0b1110";
        ram[58] = "0b0011";
        ram[59] = "0b1011";
        ram[60] = "0b0111";
        ram[61] = "0b1101";
        ram[62] = "0b0101";
        ram[63] = "0b1010";
        ram[64] = "0b0001";
        ram[65] = "0b0010";
        ram[66] = "0b1101";
        ram[67] = "0b0101";
        ram[68] = "0b1001";
        ram[69] = "0b0011";
        ram[70] = "0b1011";
        ram[71] = "0b0110";


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


SC_MODULE(conv_layer1_w_conbkb) {


static const unsigned DataWidth = 4;
static const unsigned AddressRange = 72;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


conv_layer1_w_conbkb_ram* meminst;


SC_CTOR(conv_layer1_w_conbkb) {
meminst = new conv_layer1_w_conbkb_ram("conv_layer1_w_conbkb_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~conv_layer1_w_conbkb() {
    delete meminst;
}


};//endmodule
#endif
