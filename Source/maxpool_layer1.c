#include "tinyyolo_lite.h"
#include <ap_cint.h>

void maxpool_layer1(
    data_t input[CONV1_ROWS][CONV1_COLS][C1],
    data_t output[POOL1_ROWS][POOL1_COLS][C1]
){
    Channel:
    for(int i = 0; i < C1; i++){

        Row:
        for(int j = 0; j < CONV1_ROWS; j += POOL_SIZE){

            Col:
            for(int k = 0; k < CONV1_COLS; k += POOL_SIZE){

                data_t maxvalue = 0;

                int row_end =
                    (j + POOL_SIZE < CONV1_ROWS)
                    ? (j + POOL_SIZE)
                    : CONV1_ROWS;

                int col_end =
                    (k + POOL_SIZE < CONV1_COLS)
                    ? (k + POOL_SIZE)
                    : CONV1_COLS;

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
