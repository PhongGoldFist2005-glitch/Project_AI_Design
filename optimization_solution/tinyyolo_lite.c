/**
 * tinyyolo_lite.c
 *
 * Top-level TinyYOLO-Lite pipeline
 *
 * Full forward pass:
 *   Input Image (64x64x3)
 *       --> Conv1 (3x3, ReLU)   --> 62x62xC1
 *       --> MaxPool1 (2x2)      --> 31x31xC1
 *       --> Conv2 (3x3, ReLU)   --> 29x29xC2
 *       --> MaxPool2 (2x2)      --> 14x14xC2
 *       --> Conv3 (3x3, ReLU)   --> 12x12xC3
 *       --> Detection Head (5x5)--> 8x8xDET_OUT
 *       --> Decode              --> 8x8xBOX_SIZEx(5+CLASSES)
 */

#include "tinyyolo_lite.h"
#define WEIGHTS_DEFINE
#include "weights.h"

// ============================================================
// Intermediate buffers (static to avoid stack overflow on HLS)
// ============================================================
static data_t buf_conv1 [CONV1_ROWS][CONV1_COLS][C1];
static data_t buf_pool1 [POOL1_ROWS][POOL1_COLS][C1];
static data_t buf_conv2 [CONV2_ROWS][CONV2_COLS][C2];
static data_t buf_pool2 [POOL2_ROWS][POOL2_COLS][C2];
static data_t buf_conv3 [CONV3_ROWS][CONV3_COLS][C3];
static data_t buf_det   [GRID_SIZE][GRID_SIZE][DET_OUT];

// ============================================================
// tinyyolo_lite - Top-level function
//
// Parameters:
//   image    - Input image   [64][64][3]
//   weights  - Internal weights and biases from weights.h
//   output   - Decoded boxes [GRID][GRID][BOX_SIZE][5+CLASSES]
// ============================================================
void tinyyolo_lite(
    data_t image  [INPUT_ROWS][INPUT_COLS][INPUT_CH],
    data_t output_r [GRID_SIZE][GRID_SIZE][BOX_SIZE][OUTPUT_DECODED]
)
{
    // ----------------------------------------------------------
    // Stage 1: Conv Layer 1  (64x64x3 --> 62x62xC1)  + ReLU
    // ----------------------------------------------------------
    conv_layer1(image, buf_conv1);

    // ----------------------------------------------------------
    // Stage 2: MaxPool Layer 1  (62x62xC1 --> 31x31xC1)
    // ----------------------------------------------------------
    maxpool_layer1(buf_conv1, buf_pool1);

    // ----------------------------------------------------------
    // Stage 3: Conv Layer 2  (31x31xC1 --> 29x29xC2)  + ReLU
    // ----------------------------------------------------------
    conv_layer2(buf_pool1, buf_conv2);

    // ----------------------------------------------------------
    // Stage 4: MaxPool Layer 2  (29x29xC2 --> 14x14xC2)
    // ----------------------------------------------------------
    maxpool_layer2(buf_conv2, buf_pool2);

    // ----------------------------------------------------------
    // Stage 5: Conv Layer 3  (14x14xC2 --> 12x12xC3)  + ReLU
    // ----------------------------------------------------------
    conv_layer3(buf_pool2, buf_conv3);

    // ----------------------------------------------------------
    // Stage 6: Detection Head  (12x12xC3 --> 8x8xDET_OUT)
    // ----------------------------------------------------------
    detection_head(buf_conv3, buf_det);

    // ----------------------------------------------------------
    // Stage 7: Decode  (8x8xDET_OUT --> 8x8xBOX_SIZEx(5+CLASSES))
    // ----------------------------------------------------------
    decode(buf_det, output_r);
}
