#include "tinyyolo_lite.h"
#include "weights.h"

void conv_layer3(
    data_t input [POOL2_ROWS][POOL2_COLS][C2],
    data_t output[CONV3_ROWS][CONV3_COLS][C3]
)
{
    int row, col, oc, kr, kc, ic;
    data_t sum;

    LOOP_ROW:
    for (row = 0; row < CONV3_ROWS; row++) {
        LOOP_COL:
        for (col = 0; col < CONV3_COLS; col++) {
            LOOP_OC:
            for (oc = 0; oc < C3; oc++) {
                sum = b_conv3[oc];
                LOOP_KR:
                for (kr = 0; kr < KERNAL_SIZE; kr++) {
                    LOOP_KC:
                    for (kc = 0; kc < KERNAL_SIZE; kc++) {
                        LOOP_IC:
                        for (ic = 0; ic < C2; ic++) {
                            sum += input[row+kr][col+kc][ic]
                                 * w_conv3[kr][kc][ic][oc];
                        }
                    }
                }
                output[row][col][oc] = (sum > 0) ? sum : 0;
            }
        }
    }
}
