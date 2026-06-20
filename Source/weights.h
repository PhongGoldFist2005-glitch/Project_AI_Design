#ifndef WEIGHTS_H
#define WEIGHTS_H

#include "tinyyolo_lite.h"

#ifdef WEIGHTS_DEFINE

const data_t w_conv1[KERNAL_SIZE][KERNAL_SIZE][INPUT_CH][C1] = {
     1,  2, -3,  5, -7,  3, -5,  6
};
const data_t b_conv1[C1] = {0};

const data_t w_conv2[KERNAL_SIZE][KERNAL_SIZE][C1][C2] = {
     1,  2, -3,  5, -7,  3, -5,  6,
     7, -2,  4, -6,  9, -4,  8, -9
};
const data_t b_conv2[C2] = {0};

const data_t w_conv3[KERNAL_SIZE][KERNAL_SIZE][C2][C3] = {
      1,   2,  -3,   5,  -7,   3,  -5,   6,
      7,  -2,   4,  -6,   9,  -4,   8,  -9,
     10,  -8,  11, -10,   3,  -7,   5, -11,
      6,  -5,   2,  -4,   7,  -9,   8,  -6
};
const data_t b_conv3[C3] = {0};

const data_t w_det[KERNAL_DETECT][KERNAL_DETECT][C3][DET_OUT] = {
     1,  2, -3,  5, -7,  3, -5,  6,
     7, -2,  4, -6,  9, -4,  8, -9
};
const data_t b_det[DET_OUT] = {0};

#else

extern const data_t w_conv1[KERNAL_SIZE][KERNAL_SIZE][INPUT_CH][C1];
extern const data_t b_conv1[C1];

extern const data_t w_conv2[KERNAL_SIZE][KERNAL_SIZE][C1][C2];
extern const data_t b_conv2[C2];

extern const data_t w_conv3[KERNAL_SIZE][KERNAL_SIZE][C2][C3];
extern const data_t b_conv3[C3];

extern const data_t w_det[KERNAL_DETECT][KERNAL_DETECT][C3][DET_OUT];
extern const data_t b_det[DET_OUT];

#endif

#endif /* WEIGHTS_H */
