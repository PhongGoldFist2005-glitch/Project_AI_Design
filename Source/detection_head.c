#include "tinyyolo_lite.h"
#include "weights.h"

void detection_head(
    data_t input[CONV3_ROWS][CONV3_COLS][C3],
    data_t output[GRID_SIZE][GRID_SIZE][DET_OUT]
){
	OUTPUT_CHANNEL:
    for(int oc = 0; oc < DET_OUT; oc++){

    	OUTPUT_ROWS:
        for(int oy = 0; oy < GRID_SIZE; oy++){

        	OUTPUT_COLS:
            for(int ox = 0; ox < GRID_SIZE; ox++){

                int sum = b_det[oc];

                INPUT_CHANNELS:
                for(int ic = 0; ic < C3; ic++){

                	KERNAL_ROWS:
                    for(int ky = 0; ky < KERNAL_DETECT; ky++){

                    	KERNAL_COLS:
                        for(int kx = 0; kx < KERNAL_DETECT; kx++){

                            sum +=
                                input[oy + ky][ox + kx][ic] *
                                w_det[ky][kx][ic][oc];
                        }
                    }
                }

                output[oy][ox][oc] = (data_t)sum;
            }
        }
    }
}
