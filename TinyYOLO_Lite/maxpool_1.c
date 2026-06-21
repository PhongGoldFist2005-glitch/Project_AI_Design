#include "tinyyolo_lite.h"
#include <ap_cint.h>

void maxpool_layer1(
    data_t input[CONV1_ROWS][CONV1_COLS][C1],
    data_t output[POOL1_ROWS][POOL1_COLS][C1]
){
    #pragma HLS ARRAY_PARTITION variable=input cyclic factor=2 dim=2
    Channel: for(int ch = 0; ch < C1; ch++){

        Row: for(int out_row = 0; out_row < POOL1_ROWS; out_row++){

            Col: for(int out_col = 0; out_col < POOL1_COLS; out_col++){
			#pragma HLS PIPELINE II=1
                int in_row = out_row * POOL_SIZE;
                int in_col = out_col * POOL_SIZE;
//                data_t maxvalue = input[in_row][in_col][ch];

//                 POOL_ROW: for(int pool_row = 0; pool_row < POOL_SIZE; pool_row++){
//
//                     POOL_COL: for(int pool_col = 0; pool_col < POOL_SIZE; pool_col++){
//
//                         data_t value =
//                             input[in_row + pool_row][in_col + pool_col][ch];
//
//                         if(value > maxvalue)
//                             maxvalue = value;
//                     }
//                 }
//                output[out_row][out_col][ch] = maxvalue;

                data_t v0 = input[in_row    ][in_col    ][ch];
                data_t v1 = input[in_row    ][in_col + 1][ch];
                data_t v2 = input[in_row + 1][in_col    ][ch];
                data_t v3 = input[in_row + 1][in_col + 1][ch];

                data_t m0 = (v0 > v1) ? v0 : v1;
                data_t m1 = (v2 > v3) ? v2 : v3;

                output[out_row][out_col][ch] = (m0 > m1) ? m0 : m1;

            }
        }
    }
}
