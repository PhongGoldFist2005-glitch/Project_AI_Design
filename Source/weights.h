#ifndef WEIGHTS_H
#define WEIGHTS_H

#include "tinyyolo_lite.h"

/*
 * Define WEIGHTS_DEFINE in exactly one C file before including this header.
 * Other translation units include this file normally and see extern symbols.
 *
 * The default values form a sparse test path for C simulation: the first tap
 * of each layer is 1 and every other tap is 0. This makes non-zero end-to-end
 * results easy to calculate by hand. Replace these initializers with trained
 * TinyYOLO-Lite weights and biases before synthesizing the real model.
 */
#ifdef WEIGHTS_DEFINE

const data_t w_conv1[KERNAL_SIZE][KERNAL_SIZE][INPUT_CH][C1] = {1};
const data_t b_conv1[C1] = {0};

const data_t w_conv2[KERNAL_SIZE][KERNAL_SIZE][C1][C2] = {1};
const data_t b_conv2[C2] = {0};

const data_t w_conv3[KERNAL_SIZE][KERNAL_SIZE][C2][C3] = {1};
const data_t b_conv3[C3] = {0};

const data_t w_det[KERNAL_DETECT][KERNAL_DETECT][C3][DET_OUT] = {1};
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
