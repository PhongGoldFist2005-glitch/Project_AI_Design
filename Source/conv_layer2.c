#include "tinyyolo_lite.h"

void conv_layer2(
    data_t input [POOL1_ROWS][POOL1_COLS][C1],
    data_t weight[KERNAL_SIZE][KERNAL_SIZE][C1][C2],
    data_t bias  [C2],
    data_t output[CONV2_ROWS][CONV2_COLS][C2]
)
{
    int row, col, oc, kr, kc, ic;
    data_t sum;

    LOOP_ROW:
    for (row = 0; row < CONV2_ROWS; row++) {
        LOOP_COL:
        for (col = 0; col < CONV2_COLS; col++) {
            LOOP_OC:
            for (oc = 0; oc < C2; oc++) {
                sum = bias[oc];
                LOOP_KR:
                for (kr = 0; kr < KERNAL_SIZE; kr++) {
                    LOOP_KC:
                    for (kc = 0; kc < KERNAL_SIZE; kc++) {
                        LOOP_IC:
                        for (ic = 0; ic < C1; ic++) {
                            sum += input[row+kr][col+kc][ic]
                                 * weight[kr][kc][ic][oc];
                        }
                    }
                }
                output[row][col][oc] = (sum > 0) ? sum : 0;
            }
        }
    }
}
