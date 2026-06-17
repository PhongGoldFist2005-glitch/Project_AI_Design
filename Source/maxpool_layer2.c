#include "tinyyolo_lite.h"
#include <ap_cint.h>



void maxpool_layer2(
    data_t input[CONV2_ROWS][CONV2_COLS][C2],
    data_t output[POOL2_ROWS][POOL2_COLS][C2]
){
    Channel:
    for(int i = 0; i < C2; i++){

        Row:
        for(int j = 0; j < CONV2_ROWS - 1; j += POOL_SIZE){

        	// Prevent overflowed array.
            Col:
            for(int k = 0; k < CONV2_COLS - 1; k += POOL_SIZE){

                data_t maxvalue = 0;

                int row_end =
                    (j + POOL_SIZE < CONV2_ROWS)
                    ? (j + POOL_SIZE)
                    : CONV2_ROWS;

                int col_end =
                    (k + POOL_SIZE < CONV2_COLS)
                    ? (k + POOL_SIZE)
                    : CONV2_COLS;

                MAX_ROW:
                for(int a = j; a < row_end; a++){

                    MAX_COL:
                    for(int b = k; b < col_end; b++){

                        if(input[a][b][i] > maxvalue)
                            maxvalue = input[a][b][i];
                    }
                }

                output[j/POOL_SIZE][k/POOL_SIZE][i] = maxvalue;
            }
        }
    }
}
