/************************************************************************
 * TU Kaiserslautern - Microelectronics									*
 * Author:  Trung C. Nguyen												*
 * Project: Financial Correlation Computation - Master thesis			*
 * File:	"correlation_core_axis_v1.hpp"								*
 * Current version: v2.00												*
 * Revision:															*
 * 		- v0.01	:	Create the file  - Aug. 11. 2016					*
 * 		- v0.02	:	Improve the core - Sep. 17 2016						*
 * 					+ Reduce 1 BRAM 252 * 4								*
 * 					+ Reduce latency - 252 clk							*
 * 					+ Reduce resource (29% Slice)						*
 * 		- v0.03 : 	- Sep. 20 2016										*
 * 					Using nested loop with the same algorithm as 		*
 * 					v0.02 												*
 * 		- v0.04	:	Changing from AXI STREAM to AXI MASTER				*
 * 					Do not need Xilinx DMA anymore						*
 * 					Sep.25 2016											*
 * 		- v0.05 :   Combine 2 AXI master								*
 * 		- v1.00 :	- Oct. 05 2016										*
 * 					Changing v0.03 to ultilize parallelism 				*
 * 		- v2.00 :   Move to SDSoC										*
 *																		*
 *************************************************************************/
#ifndef CORRELATION_ACCL_H_
#define CORRELATION_ACCL_H_
/*-------------------------- Libraries -----------------------------*/
#include "hls_stream.h"
//#include "hls_math.h"		/*< Math lib for synthesize - Co-Sim */
#include "math.h"			/*< Math lib for C-simulation */
// #include <ap_int.h>			/*< Will use ap_ufixed for floating point
// 							 	* after using float*/
// #include <iostream>
// #include <fstream>			/*< Stream class to both read and write
// 								* from/to files*/
#ifdef __SDSVHLS__
#include "ap_axi_sdata.h"
#endif
#include <string.h>
#include <stdlib.h>			/*< atof */
#include <stdio.h>
using namespace std;

/*==================================================================*/
/*-------------------------- Parameters ----------------------------*/
/*==================================================================*/
#ifndef BRAM_ROM_SIZE
#define BRAM_ROM_SIZE 		252				/*< Default*/
#endif

#define ALLOW_ERR_THRES 	0.00001f

#define MAX_NUM_INDICES 	10000
#define MAX_NUM_DAYS 		252

#define ACCUM_PARTITION  	6

/*-------------------------- Type definition ------------------------*/
// typedef struct {
// 	float 		data;
// 	ap_uint<1>	last;
// } axis_t;

/*==================================================================*/
/****************** FUNCTION PROTOTYPES *****************************/
/*==================================================================*/
static void weight_rom_init(
		float 	weightRom[BRAM_ROM_SIZE],
		int 	NUMBER_OF_DAYS);

#pragma SDS data copy(in_indices[0: number_of_indices * number_of_days])
#pragma SDS data copy(out_correlation[0: number_of_indices - 1])
#pragma SDS data sys_port(in_indices:AFI, out_correlation:AFI)
#pragma SDS data data_mover(in_indices: AXIDMA_SG, out_correlation: AXIDMA_SIMPLE)
#ifdef __SDSVHLS__
void correlation_accel_v3(		int 	number_of_days,										/* CPU in*/
								int 	number_of_indices,									/* CPU in*/

								ap_axiu<32,1,1,1> in_indices[MAX_NUM_INDICES * MAX_NUM_DAYS],
           						ap_axiu<32,1,1,1> out_correlation[MAX_NUM_INDICES / 2 * (MAX_NUM_INDICES - 1)] );
#else
void correlation_accel_v3(
								int 	number_of_days,										/* CPU in*/
								int 	number_of_indices,									/* CPU in*/

								float	in_indices[MAX_NUM_INDICES * MAX_NUM_DAYS],			/*  Input*/
								float   out_correlation[MAX_NUM_INDICES / 2 * (MAX_NUM_INDICES - 1)]);
#endif

#ifdef __SDSVHLS__
void frontEnd(
				int NUMBER_OF_DAYS,
				int NUMBER_OF_INDICES,
				ap_axiu<32,1,1,1> in_indices[MAX_NUM_INDICES * MAX_NUM_DAYS],

				hls::stream<float> &sum_weight_out,
				hls::stream<float> &sum_return_out,
				hls::stream<float> &sum_weight_returnSquare_out,
				hls::stream<float> &sum_weight_return_out,
				hls::stream<float> &sum_weight_returnA_returnB_out,
				hls::stream<float> &sum_returnA_out,
				hls::stream<float> &sum_weight_returnSquareA_out,
				hls::stream<float> &sum_weight_returnA_out
);
#else
void frontEnd(
				int NUMBER_OF_DAYS,
				int NUMBER_OF_INDICES,
				float in_indices[MAX_NUM_INDICES * MAX_NUM_DAYS],

				float sum_weight_out[MAX_NUM_INDICES],
				float sum_return_out[MAX_NUM_INDICES],
				float sum_weight_returnSquare_out[MAX_NUM_INDICES],
				float sum_weight_return_out[MAX_NUM_INDICES],
				float sum_weight_returnA_returnB_out[MAX_NUM_INDICES],
				float sum_returnA_out[MAX_NUM_INDICES],
				float sum_weight_returnSquareA_out[MAX_NUM_INDICES],
				float sum_weight_returnA_out[MAX_NUM_INDICES]
);
#endif

#ifdef __SDSVHLS__
void backEnd(
				int NUMBER_OF_DAYS,
				int NUMBER_OF_INDICES,

				hls::stream<float> &sum_weight_in,
				hls::stream<float> &sum_return_in,
				hls::stream<float> &sum_weight_returnSquare_in,
				hls::stream<float> &sum_weight_return_in,
				hls::stream<float> &sum_weight_returnA_returnB_in,
				hls::stream<float> &sum_returnA_in,
				hls::stream<float> &sum_weight_returnSquareA_in,
				hls::stream<float> &sum_weight_returnA_in,

				ap_axiu<32,1,1,1> out_correlation[MAX_NUM_INDICES / 2 * (MAX_NUM_INDICES - 1)]
);
#else
void backEnd(
				int NUMBER_OF_DAYS,
				int NUMBER_OF_INDICES,

				float sum_weight_in[MAX_NUM_INDICES],
				float sum_return_in[MAX_NUM_INDICES],
				float sum_weight_returnSquare_in[MAX_NUM_INDICES],
				float sum_weight_return_in[MAX_NUM_INDICES],
				float sum_weight_returnA_returnB_in[MAX_NUM_INDICES],
				float sum_returnA_in[MAX_NUM_INDICES],
				float sum_weight_returnSquareA_in[MAX_NUM_INDICES],
				float sum_weight_returnA_in[MAX_NUM_INDICES],

				float out_correlation[MAX_NUM_INDICES / 2 * (MAX_NUM_INDICES - 1)]
);
#endif

#endif