#include "tinyyolo_lite.h"
#include "weights.h"

void conv_layer2(
    data_t input [POOL1_ROWS][POOL1_COLS][C1],
    data_t output[CONV2_ROWS][CONV2_COLS][C2]
)
{
#pragma HLS ARRAY_PARTITION variable=input complete dim=3
#pragma HLS ARRAY_PARTITION variable=w_conv2 complete dim=3

    int row, col, oc, kr, kc, ic;
    data_t sum;

    LOOP_ROW:
    for (row = 0; row < CONV2_ROWS; row++) {
        LOOP_COL:
        for (col = 0; col < CONV2_COLS; col++) {
            LOOP_OC:
            for (oc = 0; oc < C2; oc++) {
                sum = b_conv2[oc];
                LOOP_KR:
                for (kr = 0; kr < KERNAL_SIZE; kr++) {
                    LOOP_KC:
                    for (kc = 0; kc < KERNAL_SIZE; kc++) {
                        LOOP_IC:
                        for (ic = 0; ic < C1; ic++) {
                            sum += input[row+kr][col+kc][ic]
                                 * w_conv2[kr][kc][ic][oc];
                        }
                    }
                }
                output[row][col][oc] = (sum > 0) ? sum : 0;
            }
        }
    }
}
