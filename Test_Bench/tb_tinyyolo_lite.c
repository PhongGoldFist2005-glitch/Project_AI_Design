#include <stdio.h>
#include <string.h>
#include "tinyyolo_lite.h"
#include "weights.h"

#define MAX_FAILURES_SHOWN 8

/* Global buffers avoid stack overflow in HLS C simulation. */
static data_t image [INPUT_ROWS][INPUT_COLS][INPUT_CH];
static data_t result[GRID_SIZE][GRID_SIZE][BOX_SIZE][OUTPUT_DECODED];

static data_t test_conv1[CONV1_ROWS][CONV1_COLS][C1];
static data_t test_pool1[POOL1_ROWS][POOL1_COLS][C1];
static data_t test_conv2[CONV2_ROWS][CONV2_COLS][C2];
static data_t test_pool2[POOL2_ROWS][POOL2_COLS][C2];
static data_t test_conv3[CONV3_ROWS][CONV3_COLS][C3];
static data_t test_det  [GRID_SIZE][GRID_SIZE][DET_OUT];

static data_t det_in       [GRID_SIZE][GRID_SIZE][DET_OUT];
static data_t decode_result[GRID_SIZE][GRID_SIZE][BOX_SIZE][OUTPUT_DECODED];

/* Must match the diagnostic coefficient banks in weights.h. */
static const data_t conv1_coeff[C1] = {
     1,  2, -3,  5, -7,  3, -5,  6
};

static const data_t conv2_coeff[C2] = {
     1,  2, -3,  5, -7,  3, -5,  6,
     7, -2,  4, -6,  9, -4,  8, -9
};

static const data_t conv3_coeff[C3] = {
      1,   2,  -3,   5,  -7,   3,  -5,   6,
      7,  -2,   4,  -6,   9,  -4,   8,  -9,
     10,  -8,  11, -10,   3,  -7,   5, -11,
      6,  -5,   2,  -4,   7,  -9,   8,  -6
};

static const data_t det_coeff[DET_OUT] = {
     1,  2, -3,  5, -7,  3, -5,  6,
     7, -2,  4, -6,  9, -4,  8, -9
};

static void record_mismatch(
    const char *test_name,
    int i0,
    int i1,
    int i2,
    int i3,
    data_t actual,
    data_t expected,
    int *errors
)
{
    if (*errors < MAX_FAILURES_SHOWN) {
        printf("[FAIL] %s[%d][%d][%d][%d]=%d (exp %d)\n",
               test_name, i0, i1, i2, i3, actual, expected);
    }
    (*errors)++;
}

static int report_test(const char *test_name, int errors)
{
    if (errors == 0) {
        printf("[PASS] %s\n\n", test_name);
        return 1;
    }

    printf("[FAIL] %s: %d mismatch(es)\n\n", test_name, errors);
    return 0;
}

static data_t expected_sigmoid(data_t x)
{
    static const data_t lut[17] = {
        0, 1, 2, 7, 18, 47, 119, 269, 500,
        731, 881, 953, 982, 993, 998, 999, 1000
    };

    if (x < -8)
        return 0;
    if (x > 8)
        return 1000;
    return lut[x + 8];
}

static void clear_top_io(void)
{
    memset(image,  0, sizeof(image));
    memset(result, 0, sizeof(result));
}

static void clear_decode_io(void)
{
    memset(det_in,        0, sizeof(det_in));
    memset(decode_result, 0, sizeof(decode_result));
}

static void fill_det_channel(int channel, data_t value)
{
    int r, c;

    for (r = 0; r < GRID_SIZE; r++) {
        for (c = 0; c < GRID_SIZE; c++) {
            det_in[r][c][channel] = value;
        }
    }
}

/* Original test 1: zero input must remain zero through zero-bias layers. */
static int test_zero_top(void)
{
    int r, c, b, v;
    int errors = 0;

    printf("--- TEST 1: zero image through top-level ---\n");
    clear_top_io();
    tinyyolo_lite(image, result);

    for (r = 0; r < GRID_SIZE; r++) {
        for (c = 0; c < GRID_SIZE; c++) {
            for (b = 0; b < BOX_SIZE; b++) {
                for (v = 0; v < OUTPUT_DECODED; v++) {
                    data_t expected = (v == 4) ? 500 : 0;

                    if (result[r][c][b][v] != expected) {
                        record_mismatch("T1", r, c, b, v,
                                        result[r][c][b][v], expected, &errors);
                    }
                }
            }
        }
    }

    return report_test("TEST 1: zero top-level output", errors);
}

/* Original test 2: channel 0 belongs to x of box 0. */
static int test_decode_box0_x(void)
{
    int r, c;
    int errors = 0;

    printf("--- TEST 2: decode raw[0]=3 ---\n");
    clear_decode_io();
    fill_det_channel(0, 3);
    decode(det_in, decode_result);

    for (r = 0; r < GRID_SIZE; r++) {
        for (c = 0; c < GRID_SIZE; c++) {
            if (decode_result[r][c][0][0] != 3)
                record_mismatch("T2-box0-x", r, c, 0, 0,
                                decode_result[r][c][0][0], 3, &errors);
            if (decode_result[r][c][0][4] != 500)
                record_mismatch("T2-box0-conf", r, c, 0, 4,
                                decode_result[r][c][0][4], 500, &errors);
            if (decode_result[r][c][1][0] != 0)
                record_mismatch("T2-box1-x", r, c, 1, 0,
                                decode_result[r][c][1][0], 0, &errors);
        }
    }

    return report_test("TEST 2: box 0 channel mapping", errors);
}

/* Original test 3: sigmoid(1) is represented as 731/1000. */
static int test_decode_sigmoid_one(void)
{
    int r, c;
    int errors = 0;

    printf("--- TEST 3: decode raw[4]=1 ---\n");
    clear_decode_io();
    fill_det_channel(4, 1);
    decode(det_in, decode_result);

    for (r = 0; r < GRID_SIZE; r++) {
        for (c = 0; c < GRID_SIZE; c++) {
            if (decode_result[r][c][0][4] != 731)
                record_mismatch("T3-conf", r, c, 0, 4,
                                decode_result[r][c][0][4], 731, &errors);
        }
    }

    return report_test("TEST 3: sigmoid(1)=731", errors);
}

/* Original test 4: LUT endpoint at -8. */
static int test_decode_sigmoid_minus_eight(void)
{
    int r, c;
    int errors = 0;

    printf("--- TEST 4: decode raw[4]=-8 ---\n");
    clear_decode_io();
    fill_det_channel(4, -8);
    decode(det_in, decode_result);

    for (r = 0; r < GRID_SIZE; r++) {
        for (c = 0; c < GRID_SIZE; c++) {
            if (decode_result[r][c][0][4] != 0)
                record_mismatch("T4-conf", r, c, 0, 4,
                                decode_result[r][c][0][4], 0, &errors);
        }
    }

    return report_test("TEST 4: sigmoid(-8)=0", errors);
}

/* Original test 5: box 1 starts at raw channel 8. */
static int test_decode_box1_x(void)
{
    int r, c;
    int errors = 0;

    printf("--- TEST 5: decode raw[8]=2 ---\n");
    clear_decode_io();
    fill_det_channel(8, 2);
    decode(det_in, decode_result);

    for (r = 0; r < GRID_SIZE; r++) {
        for (c = 0; c < GRID_SIZE; c++) {
            if (decode_result[r][c][1][0] != 2)
                record_mismatch("T5-box1-x", r, c, 1, 0,
                                decode_result[r][c][1][0], 2, &errors);
            if (decode_result[r][c][0][0] != 0)
                record_mismatch("T5-box0-x", r, c, 0, 0,
                                decode_result[r][c][0][0], 0, &errors);
        }
    }

    return report_test("TEST 5: box 1 channel mapping", errors);
}

static int test_conv1_relu(void)
{
    int r, c, ic, oc;
    int errors = 0;

    printf("--- TEST 6: Conv1 + ReLU ---\n");
    memset(image,      0, sizeof(image));
    memset(test_conv1, 0, sizeof(test_conv1));

    for (r = 0; r < INPUT_ROWS; r++) {
        for (c = 0; c < INPUT_COLS; c++) {
            for (ic = 0; ic < INPUT_CH; ic++) {
                image[r][c][ic] = ((r * 7 + c * 3 + ic) % 11) - 5;
            }
        }
    }

    conv_layer1(image, test_conv1);

    for (r = 0; r < CONV1_ROWS; r++) {
        for (c = 0; c < CONV1_COLS; c++) {
            for (oc = 0; oc < C1; oc++) {
                data_t product = image[r][c][0] * conv1_coeff[oc];
                data_t expected = (product > 0) ? product : 0;

                if (test_conv1[r][c][oc] != expected)
                    record_mismatch("T6-conv1", r, c, oc, 0,
                                    test_conv1[r][c][oc], expected, &errors);
            }
        }
    }

    return report_test("TEST 6: Conv1 signed multiply and ReLU", errors);
}

static int test_conv2_relu(void)
{
    int r, c, ic, oc;
    int errors = 0;

    printf("--- TEST 7: Conv2 + ReLU ---\n");
    memset(test_pool1, 0, sizeof(test_pool1));
    memset(test_conv2, 0, sizeof(test_conv2));

    for (r = 0; r < POOL1_ROWS; r++) {
        for (c = 0; c < POOL1_COLS; c++) {
            for (ic = 0; ic < C1; ic++) {
                test_pool1[r][c][ic] = ((r * 5 + c * 2 + ic) % 13) - 6;
            }
        }
    }

    conv_layer2(test_pool1, test_conv2);

    for (r = 0; r < CONV2_ROWS; r++) {
        for (c = 0; c < CONV2_COLS; c++) {
            for (oc = 0; oc < C2; oc++) {
                data_t product = test_pool1[r][c][0] * conv2_coeff[oc];
                data_t expected = (product > 0) ? product : 0;

                if (test_conv2[r][c][oc] != expected)
                    record_mismatch("T7-conv2", r, c, oc, 0,
                                    test_conv2[r][c][oc], expected, &errors);
            }
        }
    }

    return report_test("TEST 7: Conv2 signed multiply and ReLU", errors);
}

static int test_conv3_relu(void)
{
    int r, c, ic, oc;
    int errors = 0;

    printf("--- TEST 8: Conv3 + ReLU ---\n");
    memset(test_pool2, 0, sizeof(test_pool2));
    memset(test_conv3, 0, sizeof(test_conv3));

    for (r = 0; r < POOL2_ROWS; r++) {
        for (c = 0; c < POOL2_COLS; c++) {
            for (ic = 0; ic < C2; ic++) {
                test_pool2[r][c][ic] = ((r * 3 + c * 5 + ic) % 15) - 7;
            }
        }
    }

    conv_layer3(test_pool2, test_conv3);

    for (r = 0; r < CONV3_ROWS; r++) {
        for (c = 0; c < CONV3_COLS; c++) {
            for (oc = 0; oc < C3; oc++) {
                data_t product = test_pool2[r][c][0] * conv3_coeff[oc];
                data_t expected = (product > 0) ? product : 0;

                if (test_conv3[r][c][oc] != expected)
                    record_mismatch("T8-conv3", r, c, oc, 0,
                                    test_conv3[r][c][oc], expected, &errors);
            }
        }
    }

    return report_test("TEST 8: Conv3 signed multiply and ReLU", errors);
}

static int test_maxpool1(void)
{
    int r, c, ch;
    int errors = 0;

    printf("--- TEST 9: MaxPool1 ---\n");
    memset(test_conv1, 0, sizeof(test_conv1));
    memset(test_pool1, 0, sizeof(test_pool1));

    for (r = 0; r < CONV1_ROWS; r++) {
        for (c = 0; c < CONV1_COLS; c++) {
            for (ch = 0; ch < C1; ch++) {
                test_conv1[r][c][ch] = ch * 100000 + r * 100 + c + 1;
            }
        }
    }

    maxpool_layer1(test_conv1, test_pool1);

    for (r = 0; r < POOL1_ROWS; r++) {
        for (c = 0; c < POOL1_COLS; c++) {
            for (ch = 0; ch < C1; ch++) {
                data_t expected = test_conv1[2 * r + 1][2 * c + 1][ch];

                if (test_pool1[r][c][ch] != expected)
                    record_mismatch("T9-pool1", r, c, ch, 0,
                                    test_pool1[r][c][ch], expected, &errors);
            }
        }
    }

    return report_test("TEST 9: MaxPool1 selects each 2x2 maximum", errors);
}

static int test_maxpool2(void)
{
    int r, c, ch;
    int errors = 0;

    printf("--- TEST 10: MaxPool2 ---\n");
    memset(test_conv2, 0, sizeof(test_conv2));
    memset(test_pool2, 0, sizeof(test_pool2));

    for (r = 0; r < CONV2_ROWS; r++) {
        for (c = 0; c < CONV2_COLS; c++) {
            for (ch = 0; ch < C2; ch++) {
                test_conv2[r][c][ch] = ch * 100000 + r * 100 + c + 1;
            }
        }
    }

    maxpool_layer2(test_conv2, test_pool2);

    for (r = 0; r < POOL2_ROWS; r++) {
        for (c = 0; c < POOL2_COLS; c++) {
            for (ch = 0; ch < C2; ch++) {
                data_t expected = test_conv2[2 * r + 1][2 * c + 1][ch];

                if (test_pool2[r][c][ch] != expected)
                    record_mismatch("T10-pool2", r, c, ch, 0,
                                    test_pool2[r][c][ch], expected, &errors);
            }
        }
    }

    return report_test("TEST 10: MaxPool2 selects each 2x2 maximum", errors);
}

static int test_detection_head(void)
{
    int r, c, ic, oc;
    int errors = 0;

    printf("--- TEST 11: Detection Head ---\n");
    memset(test_conv3, 0, sizeof(test_conv3));
    memset(test_det,   0, sizeof(test_det));

    for (r = 0; r < CONV3_ROWS; r++) {
        for (c = 0; c < CONV3_COLS; c++) {
            for (ic = 0; ic < C3; ic++) {
                test_conv3[r][c][ic] = ic * 1000 + r * 100 + c - 500;
            }
        }
    }

    detection_head(test_conv3, test_det);

    for (r = 0; r < GRID_SIZE; r++) {
        for (c = 0; c < GRID_SIZE; c++) {
            for (oc = 0; oc < DET_OUT; oc++) {
                data_t expected = test_conv3[r][c][0] * det_coeff[oc];

                if (test_det[r][c][oc] != expected)
                    record_mismatch("T11-head", r, c, oc, 0,
                                    test_det[r][c][oc], expected, &errors);
            }
        }
    }

    return report_test("TEST 11: Detection Head signed multiply", errors);
}

static int test_decode_full_mapping(void)
{
    int r, c, ch, b, v;
    int errors = 0;

    printf("--- TEST 12: complete Decode mapping ---\n");
    clear_decode_io();

    for (r = 0; r < GRID_SIZE; r++) {
        for (c = 0; c < GRID_SIZE; c++) {
            for (ch = 0; ch < DET_OUT; ch++) {
                det_in[r][c][ch] = ch - 8 + r - c;
            }
        }
    }

    decode(det_in, decode_result);

    for (r = 0; r < GRID_SIZE; r++) {
        for (c = 0; c < GRID_SIZE; c++) {
            for (b = 0; b < BOX_SIZE; b++) {
                for (v = 0; v < OUTPUT_DECODED; v++) {
                    int channel = b * OUTPUT_DECODED + v;
                    data_t expected = det_in[r][c][channel];

                    if (v == 4)
                        expected = expected_sigmoid(expected);

                    if (decode_result[r][c][b][v] != expected)
                        record_mismatch("T12-decode", r, c, b, v,
                                        decode_result[r][c][b][v],
                                        expected, &errors);
                }
            }
        }
    }

    return report_test("TEST 12: all Decode channels and boxes", errors);
}

static int test_decode_saturation(void)
{
    int r, c;
    int errors = 0;

    printf("--- TEST 13: sigmoid saturation ---\n");
    clear_decode_io();
    fill_det_channel(4, -9);
    fill_det_channel(12, 9);
    decode(det_in, decode_result);

    for (r = 0; r < GRID_SIZE; r++) {
        for (c = 0; c < GRID_SIZE; c++) {
            if (decode_result[r][c][0][4] != 0)
                record_mismatch("T13-low", r, c, 0, 4,
                                decode_result[r][c][0][4], 0, &errors);
            if (decode_result[r][c][1][4] != 1000)
                record_mismatch("T13-high", r, c, 1, 4,
                                decode_result[r][c][1][4], 1000, &errors);
        }
    }

    return report_test("TEST 13: sigmoid clamps outside [-8,8]", errors);
}

static int test_nonzero_top(void)
{
    int r, c, ch, b, v;
    int errors = 0;
    long long checksum = 0;

    printf("--- TEST 14: non-zero end-to-end top-level ---\n");
    clear_top_io();

    for (r = 0; r < INPUT_ROWS; r++) {
        for (c = 0; c < INPUT_COLS; c++) {
            image[r][c][0] = r * INPUT_COLS + c + 1;
            for (ch = 1; ch < INPUT_CH; ch++) {
                image[r][c][ch] = (r + c + ch) % 4;
            }
        }
    }

    tinyyolo_lite(image, result);

    for (r = 0; r < GRID_SIZE; r++) {
        for (c = 0; c < GRID_SIZE; c++) {
            data_t path_value =
                image[4 * r + 3][4 * c + 3][0];

            checksum += result[r][c][0][0];

            for (b = 0; b < BOX_SIZE; b++) {
                for (v = 0; v < OUTPUT_DECODED; v++) {
                    int channel = b * OUTPUT_DECODED + v;
                    data_t expected = path_value * det_coeff[channel];

                    if (v == 4)
                        expected = expected_sigmoid(expected);

                    if (result[r][c][b][v] != expected)
                        record_mismatch("T14-top", r, c, b, v,
                                        result[r][c][b][v], expected, &errors);
                }
            }
        }
    }

    if (errors == 0)
        printf("       non-zero output checksum = %lld\n", checksum);

    return report_test("TEST 14: non-zero end-to-end pipeline", errors);
}

static void print_zero_decode_slice(void)
{
    int c, b, v;

    printf("--- Decoded output slice (zero raw detection, row=0) ---\n");
    printf(" col | box |   x    y    w    h  conf  cls0  cls1  cls2\n");
    printf("-----+-----+------------------------------------------\n");
    clear_decode_io();
    decode(det_in, decode_result);

    for (c = 0; c < GRID_SIZE; c++) {
        for (b = 0; b < BOX_SIZE; b++) {
            printf("  %2d |  %d  |", c, b);
            for (v = 0; v < OUTPUT_DECODED; v++) {
                printf(" %4d ", decode_result[0][c][b][v]);
            }
            printf("\n");
        }
    }
    printf("\n");
}

int main(void)
{
    int passed = 0;
    int total = 0;

    total++; passed += test_zero_top();
    total++; passed += test_decode_box0_x();
    total++; passed += test_decode_sigmoid_one();
    total++; passed += test_decode_sigmoid_minus_eight();
    total++; passed += test_decode_box1_x();
    total++; passed += test_conv1_relu();
    total++; passed += test_conv2_relu();
    total++; passed += test_conv3_relu();
    total++; passed += test_maxpool1();
    total++; passed += test_maxpool2();
    total++; passed += test_detection_head();
    total++; passed += test_decode_full_mapping();
    total++; passed += test_decode_saturation();
    total++; passed += test_nonzero_top();

    print_zero_decode_slice();

    printf("=== C simulation summary: %d/%d tests PASSED ===\n",
           passed, total);
    return (passed == total) ? 0 : 1;
}
