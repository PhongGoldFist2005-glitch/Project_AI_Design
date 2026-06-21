#include "tinyyolo_lite.h"
#include <math.h>

static const data_t sigmoid_lut[17] = {
     0,   // x = -8  -> 0.000335
     1,   // x = -7  -> 0.000911
     2,   // x = -6  -> 0.002473
     7,   // x = -5  -> 0.006693
    18,   // x = -4  -> 0.017986
    47,   // x = -3  -> 0.047426
   119,   // x = -2  -> 0.119203
   269,   // x = -1  -> 0.268941
   500,   // x =  0  -> 0.500000
   731,   // x =  1  -> 0.731059
   881,   // x =  2  -> 0.880797
   953,   // x =  3  -> 0.952574
   982,   // x =  4  -> 0.982014
   993,   // x =  5  -> 0.993307
   998,   // x =  6  -> 0.997527
   999,   // x =  7  -> 0.999089
  1000    // x =  8  -> 0.999665
};

static data_t sigmoid(data_t x)
{
    if (x < -8)
        return 0;

    if (x > 8)
        return 1000;

    return sigmoid_lut[x + 8];
}

// sigmoid is been saturation and data type is not optimized yet
void decode(
    data_t input[GRID_SIZE][GRID_SIZE][DET_OUT],
    data_t output[GRID_SIZE][GRID_SIZE][BOX_SIZE][OUTPUT_DECODED]
)
{
    GRID_ROWS:
    for(int gy = 0; gy < GRID_SIZE; gy++){

        GRID_COLS:
        for(int gx = 0; gx < GRID_SIZE; gx++){

            BOXES:
            for(int b = 0; b < BOX_SIZE; b++){

                int offset = b * OUTPUT_DECODED;

                output[gy][gx][b][0] =
                    input[gy][gx][offset + 0]; // x

                output[gy][gx][b][1] =
                    input[gy][gx][offset + 1]; // y

                output[gy][gx][b][2] =
                    input[gy][gx][offset + 2]; // w

                output[gy][gx][b][3] =
                    input[gy][gx][offset + 3]; // h

                output[gy][gx][b][4] =
                    sigmoid(input[gy][gx][offset + 4]); // conf

                CLASSES_LOOP:
                for(int c = 0; c < CLASSES; c++){

                    output[gy][gx][b][5 + c] =
                        input[gy][gx][offset + 5 + c];
                }
            }
        }
    }
}
