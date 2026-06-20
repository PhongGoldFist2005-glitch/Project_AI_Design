#ifndef TINYYOLO_LITE_H
#define TINYYOLO_LITE_H

#include <ap_cint.h>

// ========================
// Layer output sizes
// ========================
#define INPUT_ROWS  64
#define INPUT_COLS  64
#define INPUT_CH    3

#define CONV1_ROWS  62
#define CONV1_COLS  62
#define POOL1_ROWS  31
#define POOL1_COLS  31

#define CONV2_ROWS  29
#define CONV2_COLS  29
#define POOL2_ROWS  14
#define POOL2_COLS  14

#define CONV3_ROWS  12
#define CONV3_COLS  12

#define POOL_SIZE      2
#define GRID_SIZE      8
#define BOX_SIZE       2
#define CLASSES        3

#define KERNAL_SIZE    3    // 3x3 convolution kernel
#define KERNAL_DETECT  5    // 5x5 detection head kernel (12 -> 8)

#define C1  8
#define C2  16
#define C3  32

#define DET_OUT        (BOX_SIZE * (5 + CLASSES))  // 2*(5+3) = 16
#define OUTPUT_DECODED (5 + CLASSES)               // 8 per anchor box

typedef int data_t;

// ============================================================
// Sub-layer functions
// ============================================================

void conv_layer1(
    data_t input [INPUT_ROWS][INPUT_COLS][INPUT_CH],
    data_t output[CONV1_ROWS][CONV1_COLS][C1]
);

void conv_layer2(
    data_t input [POOL1_ROWS][POOL1_COLS][C1],
    data_t output[CONV2_ROWS][CONV2_COLS][C2]
);

void conv_layer3(
    data_t input [POOL2_ROWS][POOL2_COLS][C2],
    data_t output[CONV3_ROWS][CONV3_COLS][C3]
);

void maxpool_layer1(
    data_t input [CONV1_ROWS][CONV1_COLS][C1],
    data_t output[POOL1_ROWS][POOL1_COLS][C1]
);

void maxpool_layer2(
    data_t input [CONV2_ROWS][CONV2_COLS][C2],
    data_t output[POOL2_ROWS][POOL2_COLS][C2]
);

void detection_head(
    data_t input [CONV3_ROWS][CONV3_COLS][C3],
    data_t output[GRID_SIZE][GRID_SIZE][DET_OUT]
);

void decode(
    data_t input [GRID_SIZE][GRID_SIZE][DET_OUT],
    data_t output[GRID_SIZE][GRID_SIZE][BOX_SIZE][OUTPUT_DECODED]
);

// ============================================================
// Top-level pipeline function  <-- HLS top function
// ============================================================
void tinyyolo_lite(
    data_t image  [INPUT_ROWS][INPUT_COLS][INPUT_CH],
    data_t output [GRID_SIZE][GRID_SIZE][BOX_SIZE][OUTPUT_DECODED]
);

#endif /* TINYYOLO_LITE_H */
