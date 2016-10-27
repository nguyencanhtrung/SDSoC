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
 * 		- v2.00 :   Move to SDSoC
 *																		*
 *************************************************************************/
/*-------------------------- Libraries -----------------------------*/
#include "hls_stream.h"
#include "hls_math.h"		/*< Math lib for synthesize - Co-Sim */
#include <cmath>			/*< Math lib for C-simulation */
#include <ap_int.h>			/*< Will use ap_ufixed for floating point
							 	* after using float*/
#include <iostream>
#include <fstream>			/*< Stream class to both read and write
								* from/to files*/
#include <string>
#include <stdlib.h>			/*< atof */
using namespace std;

/*-------------------------- Parameters -----------------------------*/
#ifndef BRAM_ROM_SIZE
#define BRAM_ROM_SIZE 	252				/*< Default*/
#endif

#define ALLOW_ERR_THRES 	0.00001f

/*-------------------------- Type definition ------------------------*/
typedef struct {
	float 		data;
	ap_uint<1>	last;
} axis_t;

/****************** FUNCTION PROTOTYPES ******************************/
static void weight_rom_init(
		float 	weightRom[BRAM_ROM_SIZE],
		int 	NUMBER_OF_DAYS);

void correlation_core_v1_hls(
	const int 			number_of_days,						/* CPU in*/
	const int 			number_of_indices,					/* CPU in*/
	hls::stream<float> 	&in_index,							/*  Input*/
	hls::stream<axis_t> &out_correlation 					/* Output*/
);
