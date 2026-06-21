#ifndef WEIGHTS_H
#define WEIGHTS_H

#include "tinyyolo_lite.h"

#ifdef WEIGHTS_DEFINE

#define C1_W_A  1,  2, -3,  5, -7,  3, -5,  6
#define C1_W_B -1, -2,  3, -5,  7, -3,  5, -6
#define C1_PAIR       C1_W_A, C1_W_B
#define C1_PAIR_2     C1_PAIR, C1_PAIR
#define C1_PAIR_4     C1_PAIR_2, C1_PAIR_2
#define C1_PAIR_8     C1_PAIR_4, C1_PAIR_4

const data_t w_conv1[KERNAL_SIZE][KERNAL_SIZE][INPUT_CH][C1] = {
    C1_PAIR_8, C1_PAIR_4, C1_PAIR, C1_W_A
};
const data_t b_conv1[C1] = {0};

#define C2_W_A  1,  2, -3,  5, -7,  3, -5,  6,  7, -2,  4, -6,  9, -4,  8, -9
#define C2_W_B -1, -2,  3, -5,  7, -3,  5, -6, -7,  2, -4,  6, -9,  4, -8,  9
#define C2_PAIR       C2_W_A, C2_W_B
#define C2_PAIR_2     C2_PAIR, C2_PAIR
#define C2_PAIR_4     C2_PAIR_2, C2_PAIR_2
#define C2_PAIR_8     C2_PAIR_4, C2_PAIR_4
#define C2_PAIR_16    C2_PAIR_8, C2_PAIR_8
#define C2_PAIR_32    C2_PAIR_16, C2_PAIR_16

const data_t w_conv2[KERNAL_SIZE][KERNAL_SIZE][C1][C2] = {
    C2_PAIR_32, C2_PAIR_4
};
const data_t b_conv2[C2] = {0};

#define C3_W_A  1,  2, -3,  5, -7,  3, -5,  6,  7, -2,  4, -6,  9, -4,  8, -9, \
               10, -8, 11,-10,  3, -7,  5,-11,  6, -5,  2, -4,  7, -9,  8, -6
#define C3_W_B -1, -2,  3, -5,  7, -3,  5, -6, -7,  2, -4,  6, -9,  4, -8,  9, \
              -10,  8,-11, 10, -3,  7, -5, 11, -6,  5, -2,  4, -7,  9, -8,  6
#define C3_PAIR       C3_W_A, C3_W_B
#define C3_PAIR_2     C3_PAIR, C3_PAIR
#define C3_PAIR_4     C3_PAIR_2, C3_PAIR_2
#define C3_PAIR_8     C3_PAIR_4, C3_PAIR_4
#define C3_PAIR_16    C3_PAIR_8, C3_PAIR_8
#define C3_PAIR_32    C3_PAIR_16, C3_PAIR_16
#define C3_PAIR_64    C3_PAIR_32, C3_PAIR_32

const data_t w_conv3[KERNAL_SIZE][KERNAL_SIZE][C2][C3] = {
    C3_PAIR_64, C3_PAIR_8
};
const data_t b_conv3[C3] = {0};

#define DET_W_A  1,  2, -3,  5, -7,  3, -5,  6,  7, -2,  4, -6,  9, -4,  8, -9
#define DET_W_B -1, -2,  3, -5,  7, -3,  5, -6, -7,  2, -4,  6, -9,  4, -8,  9
#define DET_PAIR       DET_W_A, DET_W_B
#define DET_PAIR_2     DET_PAIR, DET_PAIR
#define DET_PAIR_4     DET_PAIR_2, DET_PAIR_2
#define DET_PAIR_8     DET_PAIR_4, DET_PAIR_4
#define DET_PAIR_16    DET_PAIR_8, DET_PAIR_8
#define DET_PAIR_32    DET_PAIR_16, DET_PAIR_16
#define DET_PAIR_64    DET_PAIR_32, DET_PAIR_32
#define DET_PAIR_128   DET_PAIR_64, DET_PAIR_64
#define DET_PAIR_256   DET_PAIR_128, DET_PAIR_128

const data_t w_det[KERNAL_DETECT][KERNAL_DETECT][C3][DET_OUT] = {
    DET_PAIR_256, DET_PAIR_128, DET_PAIR_16
};
const data_t b_det[DET_OUT] = {0};

#undef C1_W_A
#undef C1_W_B
#undef C1_PAIR
#undef C1_PAIR_2
#undef C1_PAIR_4
#undef C1_PAIR_8
#undef C2_W_A
#undef C2_W_B
#undef C2_PAIR
#undef C2_PAIR_2
#undef C2_PAIR_4
#undef C2_PAIR_8
#undef C2_PAIR_16
#undef C2_PAIR_32
#undef C3_W_A
#undef C3_W_B
#undef C3_PAIR
#undef C3_PAIR_2
#undef C3_PAIR_4
#undef C3_PAIR_8
#undef C3_PAIR_16
#undef C3_PAIR_32
#undef C3_PAIR_64
#undef DET_W_A
#undef DET_W_B
#undef DET_PAIR
#undef DET_PAIR_2
#undef DET_PAIR_4
#undef DET_PAIR_8
#undef DET_PAIR_16
#undef DET_PAIR_32
#undef DET_PAIR_64
#undef DET_PAIR_128
#undef DET_PAIR_256

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
