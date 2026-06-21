// ==============================================================
// File generated on Sun Jun 21 18:16:51 +0700 2026
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "image_0"
#define AUTOTB_TVIN_image_0  "../tv/cdatafile/c.tinyyolo_lite.autotvin_image_0.dat"
// wrapc file define: "image_1"
#define AUTOTB_TVIN_image_1  "../tv/cdatafile/c.tinyyolo_lite.autotvin_image_1.dat"
// wrapc file define: "image_2"
#define AUTOTB_TVIN_image_2  "../tv/cdatafile/c.tinyyolo_lite.autotvin_image_2.dat"
// wrapc file define: "output_r"
#define AUTOTB_TVOUT_output_r  "../tv/cdatafile/c.tinyyolo_lite.autotvout_output_r.dat"
#define AUTOTB_TVIN_output_r  "../tv/cdatafile/c.tinyyolo_lite.autotvin_output_r.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "output_r"
#define AUTOTB_TVOUT_PC_output_r  "../tv/rtldatafile/rtl.tinyyolo_lite.autotvout_output_r.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			image_0_depth = 0;
			image_1_depth = 0;
			image_2_depth = 0;
			output_r_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{image_0 " << image_0_depth << "}\n";
			total_list << "{image_1 " << image_1_depth << "}\n";
			total_list << "{image_2 " << image_2_depth << "}\n";
			total_list << "{output_r " << output_r_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int image_0_depth;
		int image_1_depth;
		int image_2_depth;
		int output_r_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern "C" void tinyyolo_lite (
int image[64][64][3],
int output_r[8][8][2][8]);

extern "C" void AESL_WRAP_tinyyolo_lite (
int image[64][64][3],
int output_r[8][8][2][8])
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;


		// output port post check: "output_r"
		aesl_fh.read(AUTOTB_TVOUT_PC_output_r, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_output_r, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_output_r, AESL_token); // data

			sc_bv<32> *output_r_pc_buffer = new sc_bv<32>[1024];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'output_r', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'output_r', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					output_r_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_output_r, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_output_r))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: output_r
				{
					// bitslice(31, 0)
					// {
						// celement: output_r(31, 0)
						// {
							sc_lv<32>* output_r_lv0_0_7_1_lv1_0_7_1_lv2_0_1_1_lv3_0_7_1 = new sc_lv<32>[1024];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: output_r(31, 0)
						{
							// carray: (0) => (7) @ (1)
							for (int i_0 = 0; i_0 <= 7; i_0 += 1)
							{
								// carray: (0) => (7) @ (1)
								for (int i_1 = 0; i_1 <= 7; i_1 += 1)
								{
									// carray: (0) => (1) @ (1)
									for (int i_2 = 0; i_2 <= 1; i_2 += 1)
									{
										// carray: (0) => (7) @ (1)
										for (int i_3 = 0; i_3 <= 7; i_3 += 1)
										{
											if (&(output_r[0][0][0][0]) != NULL) // check the null address if the c port is array or others
											{
												output_r_lv0_0_7_1_lv1_0_7_1_lv2_0_1_1_lv3_0_7_1[hls_map_index].range(31, 0) = sc_bv<32>(output_r_pc_buffer[hls_map_index].range(31, 0));
												hls_map_index++;
											}
										}
									}
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: output_r(31, 0)
						{
							// carray: (0) => (7) @ (1)
							for (int i_0 = 0; i_0 <= 7; i_0 += 1)
							{
								// carray: (0) => (7) @ (1)
								for (int i_1 = 0; i_1 <= 7; i_1 += 1)
								{
									// carray: (0) => (1) @ (1)
									for (int i_2 = 0; i_2 <= 1; i_2 += 1)
									{
										// carray: (0) => (7) @ (1)
										for (int i_3 = 0; i_3 <= 7; i_3 += 1)
										{
											// sub                    : i_0 i_1 i_2 i_3
											// ori_name               : output_r[i_0][i_1][i_2][i_3]
											// sub_1st_elem           : 0 0 0 0
											// ori_name_1st_elem      : output_r[0][0][0][0]
											// output_left_conversion : output_r[i_0][i_1][i_2][i_3]
											// output_type_conversion : (output_r_lv0_0_7_1_lv1_0_7_1_lv2_0_1_1_lv3_0_7_1[hls_map_index]).to_uint64()
											if (&(output_r[0][0][0][0]) != NULL) // check the null address if the c port is array or others
											{
												output_r[i_0][i_1][i_2][i_3] = (output_r_lv0_0_7_1_lv1_0_7_1_lv2_0_1_1_lv3_0_7_1[hls_map_index]).to_uint64();
												hls_map_index++;
											}
										}
									}
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] output_r_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "image_0"
		char* tvin_image_0 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_image_0);

		// "image_1"
		char* tvin_image_1 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_image_1);

		// "image_2"
		char* tvin_image_2 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_image_2);

		// "output_r"
		char* tvin_output_r = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_output_r);
		char* tvout_output_r = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_output_r);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_image_0, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_image_0, tvin_image_0);

		sc_bv<32>* image_0_tvin_wrapc_buffer = new sc_bv<32>[4096];

		// RTL Name: image_0
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: image(31, 0)
				{
					// carray: (0) => (63) @ (1)
					for (int i_0 = 0; i_0 <= 63; i_0 += 1)
					{
						// carray: (0) => (63) @ (1)
						for (int i_1 = 0; i_1 <= 63; i_1 += 1)
						{
							// carray: (0) => (0) @ (2)
							for (int i_2 = 0; i_2 <= 0; i_2 += 2)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : image[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : image[0][0][0]
								// regulate_c_name       : image
								// input_type_conversion : image[i_0][i_1][i_2]
								if (&(image[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<32> image_tmp_mem;
									image_tmp_mem = image[i_0][i_1][i_2];
									image_0_tvin_wrapc_buffer[hls_map_index].range(31, 0) = image_tmp_mem.range(31, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 4096; i++)
		{
			sprintf(tvin_image_0, "%s\n", (image_0_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_image_0, tvin_image_0);
		}

		tcl_file.set_num(4096, &tcl_file.image_0_depth);
		sprintf(tvin_image_0, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_image_0, tvin_image_0);

		// release memory allocation
		delete [] image_0_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_image_1, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_image_1, tvin_image_1);

		sc_bv<32>* image_1_tvin_wrapc_buffer = new sc_bv<32>[4096];

		// RTL Name: image_1
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: image(31, 0)
				{
					// carray: (0) => (63) @ (1)
					for (int i_0 = 0; i_0 <= 63; i_0 += 1)
					{
						// carray: (0) => (63) @ (1)
						for (int i_1 = 0; i_1 <= 63; i_1 += 1)
						{
							// carray: (1) => (1) @ (2)
							for (int i_2 = 1; i_2 <= 1; i_2 += 2)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : image[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : image[0][0][0]
								// regulate_c_name       : image
								// input_type_conversion : image[i_0][i_1][i_2]
								if (&(image[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<32> image_tmp_mem;
									image_tmp_mem = image[i_0][i_1][i_2];
									image_1_tvin_wrapc_buffer[hls_map_index].range(31, 0) = image_tmp_mem.range(31, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 4096; i++)
		{
			sprintf(tvin_image_1, "%s\n", (image_1_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_image_1, tvin_image_1);
		}

		tcl_file.set_num(4096, &tcl_file.image_1_depth);
		sprintf(tvin_image_1, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_image_1, tvin_image_1);

		// release memory allocation
		delete [] image_1_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_image_2, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_image_2, tvin_image_2);

		sc_bv<32>* image_2_tvin_wrapc_buffer = new sc_bv<32>[4096];

		// RTL Name: image_2
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: image(31, 0)
				{
					// carray: (0) => (63) @ (1)
					for (int i_0 = 0; i_0 <= 63; i_0 += 1)
					{
						// carray: (0) => (63) @ (1)
						for (int i_1 = 0; i_1 <= 63; i_1 += 1)
						{
							// carray: (2) => (2) @ (2)
							for (int i_2 = 2; i_2 <= 2; i_2 += 2)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : image[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : image[0][0][0]
								// regulate_c_name       : image
								// input_type_conversion : image[i_0][i_1][i_2]
								if (&(image[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<32> image_tmp_mem;
									image_tmp_mem = image[i_0][i_1][i_2];
									image_2_tvin_wrapc_buffer[hls_map_index].range(31, 0) = image_tmp_mem.range(31, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 4096; i++)
		{
			sprintf(tvin_image_2, "%s\n", (image_2_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_image_2, tvin_image_2);
		}

		tcl_file.set_num(4096, &tcl_file.image_2_depth);
		sprintf(tvin_image_2, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_image_2, tvin_image_2);

		// release memory allocation
		delete [] image_2_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_output_r, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_output_r, tvin_output_r);

		sc_bv<32>* output_r_tvin_wrapc_buffer = new sc_bv<32>[1024];

		// RTL Name: output_r
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: output_r(31, 0)
				{
					// carray: (0) => (7) @ (1)
					for (int i_0 = 0; i_0 <= 7; i_0 += 1)
					{
						// carray: (0) => (7) @ (1)
						for (int i_1 = 0; i_1 <= 7; i_1 += 1)
						{
							// carray: (0) => (1) @ (1)
							for (int i_2 = 0; i_2 <= 1; i_2 += 1)
							{
								// carray: (0) => (7) @ (1)
								for (int i_3 = 0; i_3 <= 7; i_3 += 1)
								{
									// sub                   : i_0 i_1 i_2 i_3
									// ori_name              : output_r[i_0][i_1][i_2][i_3]
									// sub_1st_elem          : 0 0 0 0
									// ori_name_1st_elem     : output_r[0][0][0][0]
									// regulate_c_name       : output_r
									// input_type_conversion : output_r[i_0][i_1][i_2][i_3]
									if (&(output_r[0][0][0][0]) != NULL) // check the null address if the c port is array or others
									{
										sc_lv<32> output_r_tmp_mem;
										output_r_tmp_mem = output_r[i_0][i_1][i_2][i_3];
										output_r_tvin_wrapc_buffer[hls_map_index].range(31, 0) = output_r_tmp_mem.range(31, 0);
                                 				       hls_map_index++;
									}
								}
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1024; i++)
		{
			sprintf(tvin_output_r, "%s\n", (output_r_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_output_r, tvin_output_r);
		}

		tcl_file.set_num(1024, &tcl_file.output_r_depth);
		sprintf(tvin_output_r, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_output_r, tvin_output_r);

		// release memory allocation
		delete [] output_r_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		tinyyolo_lite(image, output_r);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_output_r, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_output_r, tvout_output_r);

		sc_bv<32>* output_r_tvout_wrapc_buffer = new sc_bv<32>[1024];

		// RTL Name: output_r
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: output_r(31, 0)
				{
					// carray: (0) => (7) @ (1)
					for (int i_0 = 0; i_0 <= 7; i_0 += 1)
					{
						// carray: (0) => (7) @ (1)
						for (int i_1 = 0; i_1 <= 7; i_1 += 1)
						{
							// carray: (0) => (1) @ (1)
							for (int i_2 = 0; i_2 <= 1; i_2 += 1)
							{
								// carray: (0) => (7) @ (1)
								for (int i_3 = 0; i_3 <= 7; i_3 += 1)
								{
									// sub                   : i_0 i_1 i_2 i_3
									// ori_name              : output_r[i_0][i_1][i_2][i_3]
									// sub_1st_elem          : 0 0 0 0
									// ori_name_1st_elem     : output_r[0][0][0][0]
									// regulate_c_name       : output_r
									// input_type_conversion : output_r[i_0][i_1][i_2][i_3]
									if (&(output_r[0][0][0][0]) != NULL) // check the null address if the c port is array or others
									{
										sc_lv<32> output_r_tmp_mem;
										output_r_tmp_mem = output_r[i_0][i_1][i_2][i_3];
										output_r_tvout_wrapc_buffer[hls_map_index].range(31, 0) = output_r_tmp_mem.range(31, 0);
                                 				       hls_map_index++;
									}
								}
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1024; i++)
		{
			sprintf(tvout_output_r, "%s\n", (output_r_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_output_r, tvout_output_r);
		}

		tcl_file.set_num(1024, &tcl_file.output_r_depth);
		sprintf(tvout_output_r, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_output_r, tvout_output_r);

		// release memory allocation
		delete [] output_r_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "image_0"
		delete [] tvin_image_0;
		// release memory allocation: "image_1"
		delete [] tvin_image_1;
		// release memory allocation: "image_2"
		delete [] tvin_image_2;
		// release memory allocation: "output_r"
		delete [] tvout_output_r;
		delete [] tvin_output_r;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

