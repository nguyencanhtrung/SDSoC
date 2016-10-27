/************************************************************************
 * TU Kaiserslautern - Microelectronics									*
 * Author:  Trung C. Nguyen												*
 * Project: Financial Correlation Computation - Master thesis			*
 * File:	"correlationComp.cpp"	- v0.04.1							*
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
 ************************************************************************/
#include "correlation_accel_v1.hpp"
/*=======================================================================*/
/****************** 	TOP FUNCTION - CORE 	**************************/
/*=======================================================================*/
int correlation_accel_v1(
	int 	number_of_days,										/* CPU in*/
	int 	number_of_indices,									/* CPU in*/

	float	in_indices[MAX_NUM_INDICES * MAX_NUM_DAYS],			/*  Input*/
	float   out_correlation[MAX_NUM_INDICES / 2 * (MAX_NUM_INDICES - 1)]
)
{
	/* AXI Master*/
	#pragma HLS INTERFACE m_axi depth=2520000 	offset=direct port=in_indices
	#pragma HLS INTERFACE m_axi depth=49995000 	offset=direct port=out_correlation
	/* AXI LITE  */
	#pragma HLS INTERFACE ap_ctrl_hs port=return

	int NUMBER_OF_DAYS 		= number_of_days;
	int NUMBER_OF_INDICES 	= number_of_indices;

	/*----------------------------------------------------------*
	 * PART 1: WEIGHT ROOM Initialization 			    		*
	 * ---------------------------------------------------------*/
	static float weight_rom[BRAM_ROM_SIZE];
	weight_rom_init(weight_rom, NUMBER_OF_DAYS);

	/*----------------------------------------------------------*
	 * PART 2: Correlation Comp. Core 			    			*
	 * ---------------------------------------------------------*/
	OUTER_LOOP:
		for(int row_index = 0; row_index < NUMBER_OF_INDICES - 1; row_index++){
			// BRAM Declaration to store lnReturn of the first index of a row
			static float bramA[BRAM_ROM_SIZE];
			static float bramB[BRAM_ROM_SIZE];
			// Step 0.1: copy data into BramA
			memcpy(	bramA,
					&in_indices[NUMBER_OF_DAYS * row_index],
					NUMBER_OF_DAYS * sizeof(float));

			INNER_LOOP:
				for(int column_index = row_index + 1; column_index < NUMBER_OF_INDICES; column_index++){
					// Step 0.2: copy data into BramB
					memcpy(	bramB,
							&in_indices[NUMBER_OF_DAYS * column_index],
							NUMBER_OF_DAYS * sizeof(float));

					static int counter = 0;

					// Channels to store accumulation
					float acc_returnA[ACUM_PARTITION];
					float acc_returnB[ACUM_PARTITION];
					float acc_weight_returnSquareA[ACUM_PARTITION];
					float acc_weight_returnA[ACUM_PARTITION];
					float acc_weight_returnSquareB[ACUM_PARTITION];
					float acc_weight_returnB[ACUM_PARTITION];
					float acc_weight_returnA_returnB[ACUM_PARTITION];

					/*----------------------------------------------------
					 * Step 1: Handling the first index of a row 	 	 -
					 * --------------------------------------------------*/
					// 1.1: Reset all accumulated channels
					RESET_REGISTERS:
					for(int i = 0; i < ACUM_PARTITION; i++){
					#pragma HLS UNROLL		/*< FULLY UNROLL */
						acc_returnA[i] 					= 0.0f;
						acc_returnB[i]					= 0.0f;
						acc_weight_returnSquareA[i]		= 0.0f;
						acc_weight_returnA[i]			= 0.0f;
						acc_weight_returnSquareB[i]		= 0.0f;
						acc_weight_returnB[i]			= 0.0f;
						acc_weight_returnA_returnB[i]	= 0.0f;
					}


					/*---------------------------------------------------
					 * Step 2: Parallel Accumulating		     		-
					 * --------------------------------------------------*/
					ACCUMULATION_LOOP:
					for(int i = 0; i < NUMBER_OF_DAYS - 1; i++){
					#pragma HLS PIPELINE
						float lnReturnA			= logf(bramA[i]/bramA[i+1]); /*< BramA and B must be 2-port BRAM */
						float lnReturnB 		= logf(bramB[i]/bramB[i+1]);
						float weight			= weight_rom[i+1];

						//Return Accumulation
						acc_returnA[i%ACUM_PARTITION]		+= lnReturnA;
						acc_returnB[i%ACUM_PARTITION]		+= lnReturnB;

						// Weight * return square Accumulation
						acc_weight_returnSquareA[i%ACUM_PARTITION] 	+= lnReturnA * lnReturnA * weight;
						acc_weight_returnSquareB[i%ACUM_PARTITION]	+= lnReturnB * lnReturnB * weight;

						// Weight * return Accumulation
						acc_weight_returnA[i%ACUM_PARTITION]		+= lnReturnA * weight;
						acc_weight_returnB[i%ACUM_PARTITION]		+= lnReturnB * weight;

						// Weight * returnA * returnB Accumulation
						acc_weight_returnA_returnB[i%ACUM_PARTITION]+= lnReturnA * lnReturnB * weight;
					}

					float sum_returnA 					= 0.0f;
					float sum_returnB 					= 0.0f;
					float sum_weight_returnSquareA 		= 0.0f;
					float sum_weight_returnA 			= 0.0f;
					float sum_weight_returnSquareB 		= 0.0f;
					float sum_weight_returnB 			= 0.0f;
					float sum_weight_returnA_returnB 	= 0.0f;
					float sum_weight					= weight_rom[0];
					LAST_ACCUM_LOOP:
					for(int i = 0; i < ACUM_PARTITION; i++){
					#pragma HLS PIPELINE II=5
						sum_returnA 					+= acc_returnA[i];
						sum_returnB 					+= acc_returnB[i];
						sum_weight_returnSquareA		+= acc_weight_returnSquareA[i];
						sum_weight_returnA 				+= acc_weight_returnA[i];
						sum_weight_returnSquareB 		+= acc_weight_returnSquareB[i];
						sum_weight_returnB 				+= acc_weight_returnB[i];
						sum_weight_returnA_returnB 		+= acc_weight_returnA_returnB[i];
					}

					/*---------------------------------------------------
					 * Step 3: Compute Correlation		    	     	-
					 * --------------------------------------------------*/
					float meanReturn1 =  sum_returnA / float(NUMBER_OF_DAYS - 1);
					float meanReturn2 =  sum_returnB / float(NUMBER_OF_DAYS - 1);

					float volatilityA = sqrtf((sum_weight_returnSquareA - 2.0f *
										meanReturn1 * sum_weight_returnA)/ sum_weight
										+  (meanReturn1 * meanReturn1));
					float volatilityB = sqrtf((sum_weight_returnSquareB - 2.0f *
										meanReturn2 * sum_weight_returnB)/ sum_weight
										+  (meanReturn2 * meanReturn2));
					float covariance  = (sum_weight_returnA_returnB - meanReturn1 *
										sum_weight_returnB - meanReturn2 *
										sum_weight_returnA)/ sum_weight
										+ meanReturn1 * meanReturn2;
					float corr_temp;
					corr_temp = covariance / (volatilityA * volatilityB);

					out_correlation[counter] = corr_temp;

					counter++;
				}
		}
	return 0;
}


/*=======================================================================*/
/********************** 	SUB FUNCTIONS 		**************************/
/*=======================================================================*/
/**********************     weight_rom_init     **************************
 * A ROM stores weight of individual days								 *
 * The first cell is used to store sum of all weights					 *
 *																		 *
 * @param    	- Global Array with size = WEIGHT_ROM_SIZE				 *
 * 				 (extra cell to store sum)								 *
 * 				- Number of days of one index							 *
 * @return:		None											  		 *
 *																		 *
 * @example:															 *
 * 		Sample view:													 *
 * 			[0]   				|	sum of weight						 *
 * 			[1]   				|	1									 *
 * 			[2]					|	0.94								 *
 *  		:					:	:									 *
 *  							:	:									 *
 * 		[WEIGHT_ROM_SIZE - 1]	|	...									 *
 *																		 *
 * @Note:																 *
 * 		Do not need to store weight of the earliest day.				 *
 * 		Since we do not have log(return) of that day					 *
 *-----------------------------------------------------------------------*/
static void weight_rom_init(
		float weightRom[BRAM_ROM_SIZE],
		int NUMBER_OF_DAYS)
{
	float lambda 		= 0.94f;
	weightRom[0]		= 1.0f;		/*< store sum of weight */
	weightRom[1] 		= 1.0f;		/*< lastest day */

	INIT_WEIGHT_ROM:
	for(int i = 2; i < BRAM_ROM_SIZE; i++) {
		weightRom[i] 	= lambda * weightRom[i - 1];
	}

	COMP_SUM_OF_WEIGHT:
	for(int i = 2; i < NUMBER_OF_DAYS; i++){
		weightRom[0]	+= weightRom[i]; /*< Accumulate sum of
											* weight */
	}
}
