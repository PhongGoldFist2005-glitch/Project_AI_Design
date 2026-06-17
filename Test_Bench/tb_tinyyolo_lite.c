/**
 * tb_tinyyolo_lite.c  –  C89-compatible testbench for Vivado HLS 2018
 *
 * Rule: ALL variables declared at the TOP of each block (no C99 for-init).
 */

#include <stdio.h>
#include <string.h>
#include "tinyyolo_lite.h"

/* ---- global buffers (tránh stack overflow) ---- */
static data_t image  [INPUT_ROWS][INPUT_COLS][INPUT_CH];
static data_t w_conv1[KERNAL_SIZE][KERNAL_SIZE][INPUT_CH][C1];
static data_t b_conv1[C1];
static data_t w_conv2[KERNAL_SIZE][KERNAL_SIZE][C1][C2];
static data_t b_conv2[C2];
static data_t w_conv3[KERNAL_SIZE][KERNAL_SIZE][C2][C3];
static data_t b_conv3[C3];
static data_t w_det  [KERNAL_DETECT][KERNAL_DETECT][C3][DET_OUT];
static data_t b_det  [DET_OUT];
static data_t result [GRID_SIZE][GRID_SIZE][BOX_SIZE][OUTPUT_DECODED];

/* ------------------------------------------------------------------ */
static void clear_all(void)
{
    memset(image,   0, sizeof(image));
    memset(w_conv1, 0, sizeof(w_conv1));
    memset(b_conv1, 0, sizeof(b_conv1));
    memset(w_conv2, 0, sizeof(w_conv2));
    memset(b_conv2, 0, sizeof(b_conv2));
    memset(w_conv3, 0, sizeof(w_conv3));
    memset(b_conv3, 0, sizeof(b_conv3));
    memset(w_det,   0, sizeof(w_det));
    memset(b_det,   0, sizeof(b_det));
    memset(result,  0, sizeof(result));
}

static void run(void)
{
    tinyyolo_lite(image,
                  w_conv1, b_conv1,
                  w_conv2, b_conv2,
                  w_conv3, b_conv3,
                  w_det,   b_det,
                  result);
}

/* ================================================================== */
int main(void)
{
    int all_pass, fail;
    int r, c, b, v;

    all_pass = 1;

    /* ==============================================================
     * TEST 1: weights=0, bias=0
     *   x/y/w/h = 0  (pass-through)
     *   conf    = sigmoid(0) = 500
     *   cls     = 0  (pass-through)
     * ============================================================== */
    printf("--- TEST 1: all-zero weights and biases ---\n");
    clear_all();
    run();

    fail = 0;
    for (r = 0; r < GRID_SIZE; r++) {
        for (c = 0; c < GRID_SIZE; c++) {
            for (b = 0; b < BOX_SIZE; b++) {
                /* x, y, w, h */
                for (v = 0; v < 4; v++) {
                    if (result[r][c][b][v] != 0) {
                        printf("[FAIL] T1 result[%d][%d][%d][%d]=%d (exp 0)\n",
                               r, c, b, v, result[r][c][b][v]);
                        fail = 1;
                    }
                }
                /* conf = sigmoid(0) = 500 */
                if (result[r][c][b][4] != 500) {
                    printf("[FAIL] T1 conf[%d][%d][%d]=%d (exp 500)\n",
                           r, c, b, result[r][c][b][4]);
                    fail = 1;
                }
                /* class scores */
                for (v = 5; v < OUTPUT_DECODED; v++) {
                    if (result[r][c][b][v] != 0) {
                        printf("[FAIL] T1 result[%d][%d][%d][%d]=%d (exp 0)\n",
                               r, c, b, v, result[r][c][b][v]);
                        fail = 1;
                    }
                }
            }
        }
    }
    if (!fail) printf("[PASS] TEST 1: x/y/w/h=0, conf=500, cls=0.\n\n");
    else       all_pass = 0;

    /* ==============================================================
     * TEST 2: b_det[0]=3  -->  x(box0) = 3  (pass-through)
     * ============================================================== */
    printf("--- TEST 2: b_det[0]=3 => x(box0)=3 ---\n");
    clear_all();
    b_det[0] = 3;
    run();

    fail = 0;
    for (r = 0; r < GRID_SIZE; r++) {
        for (c = 0; c < GRID_SIZE; c++) {
            if (result[r][c][0][0] != 3) {
                printf("[FAIL] T2 x(box0)[%d][%d]=%d (exp 3)\n",
                       r, c, result[r][c][0][0]);
                fail = 1;
            }
            if (result[r][c][0][4] != 500) {
                printf("[FAIL] T2 conf(box0)[%d][%d]=%d (exp 500)\n",
                       r, c, result[r][c][0][4]);
                fail = 1;
            }
            if (result[r][c][1][0] != 0) {
                printf("[FAIL] T2 x(box1)[%d][%d]=%d (exp 0)\n",
                       r, c, result[r][c][1][0]);
                fail = 1;
            }
        }
    }
    if (!fail) printf("[PASS] TEST 2: x(box0)=3, conf=500, x(box1)=0.\n\n");
    else       all_pass = 0;

    /* ==============================================================
     * TEST 3: b_det[4]=1  -->  conf(box0) = sigmoid(1) = 731
     * ============================================================== */
    printf("--- TEST 3: b_det[4]=1 => conf(box0)=731 ---\n");
    clear_all();
    b_det[4] = 1;
    run();

    fail = 0;
    for (r = 0; r < GRID_SIZE; r++) {
        for (c = 0; c < GRID_SIZE; c++) {
            if (result[r][c][0][4] != 731) {
                printf("[FAIL] T3 conf(box0)[%d][%d]=%d (exp 731)\n",
                       r, c, result[r][c][0][4]);
                fail = 1;
            }
        }
    }
    if (!fail) printf("[PASS] TEST 3: conf(box0)=sigmoid(1)=731.\n\n");
    else       all_pass = 0;

    /* ==============================================================
     * TEST 4: b_det[4]=-8  -->  conf(box0) = sigmoid(-8) = 0
     * ============================================================== */
    printf("--- TEST 4: b_det[4]=-8 => conf(box0)=0 ---\n");
    clear_all();
    b_det[4] = -8;
    run();

    fail = 0;
    for (r = 0; r < GRID_SIZE; r++) {
        for (c = 0; c < GRID_SIZE; c++) {
            if (result[r][c][0][4] != 0) {
                printf("[FAIL] T4 conf(box0)[%d][%d]=%d (exp 0)\n",
                       r, c, result[r][c][0][4]);
                fail = 1;
            }
        }
    }
    if (!fail) printf("[PASS] TEST 4: conf(box0)=sigmoid(-8)=0.\n\n");
    else       all_pass = 0;


    printf("--- TEST 5: b_det[8]=2 => x(box1)=2 ---\n");
    clear_all();
    b_det[8] = 2;
    run();

    fail = 0;
    for (r = 0; r < GRID_SIZE; r++) {
        for (c = 0; c < GRID_SIZE; c++) {
            if (result[r][c][1][0] != 2) {
                printf("[FAIL] T5 x(box1)[%d][%d]=%d (exp 2)\n",
                       r, c, result[r][c][1][0]);
                fail = 1;
            }
            if (result[r][c][0][0] != 0) {
                printf("[FAIL] T5 x(box0)[%d][%d]=%d (exp 0)\n",
                       r, c, result[r][c][0][0]);
                fail = 1;
            }
        }
    }
    if (!fail) printf("[PASS] TEST 5: x(box1)=2, x(box0)=0.\n\n");
    else       all_pass = 0;

    printf("--- Decoded output slice (all-zero config, row=0) ---\n");
    printf(" col | box |   x    y    w    h  conf  cls0  cls1  cls2\n");
    printf("-----+-----+------------------------------------------\n");
    clear_all();
    run();
    for (c = 0; c < GRID_SIZE; c++) {
        for (b = 0; b < BOX_SIZE; b++) {
            printf("  %2d |  %d  |", c, b);
            for (v = 0; v < OUTPUT_DECODED; v++) {
                printf(" %4d ", result[0][c][b][v]);
            }
            printf("\n");
        }
    }

    printf("\n%s\n",
           all_pass ? "=== All tests PASSED ===" : "=== Some tests FAILED ===");
    return all_pass ? 0 : 1;
}
