/************************************************************************
 * TU Kaiserslautern - Microelectronics									*
 * Author:  Trung C. Nguyen												*
 * Project: Financial Correlation Computation - Master thesis			*
 * File:	"correlationComp.h"	- v1 									*
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
 *		- v0.04.1	Same as v0.04 but using nested loop					*
 *																		*
 * 		- v1.00: 	Move to SDSoC										*
 ************************************************************************/
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

void correlation_accel_v1(
	const int number_of_days,						/* CPU in*/
	const int number_of_indices,					/* CPU in*/
	volatile float		*in_indices,				/*  Input*/
	const int			tx_offset,				   	/* Offset of TX buffer*/

	volatile float      *out_correlation, 			/* Output*/
	const int			rx_offset				 	/* Offset of RX buffer*/
);