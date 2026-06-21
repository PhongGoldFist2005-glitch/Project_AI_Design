#include "tinyyolo_lite.h"
#include "weights.h"

void conv_layer1(
    data_t input [INPUT_ROWS][INPUT_COLS][INPUT_CH],
    data_t output[CONV1_ROWS][CONV1_COLS][C1]
)
{
 #pragma HLS ARRAY_PARTITION variable=input complete dim=3
 #pragma HLS ARRAY_PARTITION variable=w_conv1 complete dim=3


    int row, col, oc, kr, kc, ic;
    data_t sum;

    LOOP_ROW: for(row = 0; row < CONV1_ROWS; row++) {
        LOOP_COL: for (col = 0; col < CONV1_COLS; col++) {
            LOOP_OC: for(oc = 0; oc < C1; oc++) {
// #pragma HLS UNROLL factor=2
                sum = b_conv1[oc];
                LOOP_KR: for(kr = 0; kr < KERNAL_SIZE; kr++) {
                    LOOP_KC: for (kc = 0; kc < KERNAL_SIZE; kc++) {
                        LOOP_IC: for(ic = 0; ic < INPUT_CH; ic++) {
                            sum += input[row+kr][col+kc][ic]
                                 * w_conv1[kr][kc][ic][oc];
                        }
                    }
                }
                output[row][col][oc] = (sum > 0) ? sum : 0;
            }
        }
    }
}
