#include "tinyyolo_lite.h"

void conv_layer1(
    data_t input [INPUT_ROWS][INPUT_COLS][INPUT_CH],
    data_t weight[KERNAL_SIZE][KERNAL_SIZE][INPUT_CH][C1],
    data_t bias  [C1],
    data_t output[CONV1_ROWS][CONV1_COLS][C1]
)
{
    int row, col, oc, kr, kc, ic;
    data_t sum;

    LOOP_ROW:
    for (row = 0; row < CONV1_ROWS; row++) {
        LOOP_COL:
        for (col = 0; col < CONV1_COLS; col++) {
            LOOP_OC:
            for (oc = 0; oc < C1; oc++) {
                sum = bias[oc];
                LOOP_KR:
                for (kr = 0; kr < KERNAL_SIZE; kr++) {
                    LOOP_KC:
                    for (kc = 0; kc < KERNAL_SIZE; kc++) {
                        LOOP_IC:
                        for (ic = 0; ic < INPUT_CH; ic++) {
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
