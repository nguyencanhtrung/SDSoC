/************************************************************************
 * TU Kaiserslautern - Microelectronics									*
 * Author:  Trung C. Nguyen												*
 * Project: Financial Correlation Computation - Master thesis			*
 * File:	"correlation_accel.cpp"										*
 * Current version: v1.00												*
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
 * Note:																*
 *		#ifdef __SDSVHLS__												*
 *		#endif															*
 * 		To ensure when doing C-simulation for functional testing, those *
 * 		pragmas inside are disable										* 
 *																		*
 *************************************************************************/
#include "correlation_core.hpp"

#define ACCUM_PARTITION 6

/*=======================================================================*/
/****************** 	TOP FUNCTION - CORE 	**************************/
/*=======================================================================*/
void correlation_accel_v2(
	const int 			number_of_days,							/* CPU in*/
	const int 			number_of_indices,						/* CPU in*/
	hls::stream<float> 	&in_index,								/*  Input*/
	hls::stream<axis_t> &out_correlation 						/* Output*/
)
{
#ifdef __SDSVHLS__
#pragma HLS INTERFACE s_axilite port=number_of_indices 	bundle=cpu_control
#pragma HLS INTERFACE s_axilite port=number_of_days 	bundle=cpu_control
#pragma HLS INTERFACE s_axilite port=return 			bundle=cpu_control
#pragma HLS INTERFACE axis 		port=out_correlation
#pragma HLS INTERFACE axis 		port=in_index
#endif

	const int NUMBER_OF_DAYS 			= number_of_days;
	const int NUMBER_OF_INDICES 		= number_of_indices;

	/*----------------------------------------------------------*
	 * PART 1: WEIGHT ROOM Initialization 						*
	 * ---------------------------------------------------------*/
	static float weight_rom[BRAM_ROM_SIZE];
	weight_rom_init(weight_rom, NUMBER_OF_DAYS);
	float sum_weight = weight_rom[0];

	// Checking content of WEIGHT ROM in C-Simulation
	#ifndef __SYNTHESIS__
		ofstream weight_rom_file ("weight_rom.dat",
									ios::out | ios::app);
		if(!weight_rom_file.is_open()){
			cout << "FAILED TO OPEN WEIGHT_ROM FILE!" << endl;
		}
		for(int i = 0; i < BRAM_ROM_SIZE; i++){
			weight_rom_file << weight_rom[i] << endl;
		}
		weight_rom_file.close();
	#endif

	/*----------------------------------------------------------*
	 * PART 2: Correlation Comp. Core 							*
	 * ---------------------------------------------------------*/
	// BRAM Declaration to store lnReturn of the first index of a row
	static float lnReturnA[BRAM_ROM_SIZE];

	// Channels to store accumulation
	float acc_return[ACCUM_PARTITION];
	float acc_weight_returnSquare[ACCUM_PARTITION];
	float acc_weight_return[ACCUM_PARTITION];
	float acc_weight_returnA_returnB[ACCUM_PARTITION];

	float shift_reg[2];
	#ifdef __SDSVHLS__
	#pragma HLS ARRAY_PARTITION variable=shift_reg complete dim=1
	#endif
	// Storing result of the first index of a row
	float sum_returnA				= 0.0f;
	float sum_weight_returnSquareA	= 0.0f;
	float sum_weight_returnA 		= 0.0f;

	/*----------------------------------------------------
	 * Step 1: Handling the first index of a row 	 	 -
	 * --------------------------------------------------*/
	// 1.1: Reset all accumulated channels
	RESET_REGISTERS_FIRST_INDEX:
		for(int i = 0; i < ACCUM_PARTITION; i++){
		#ifdef __SDSVHLS__
		#pragma HLS UNROLL		/*< FULLY UNROLL */
		#endif
			acc_return[i] 					= 0.0f;
			acc_weight_returnSquare[i]		= 0.0f;
			acc_weight_returnSquare[i]		= 0.0f;
			acc_weight_return[i]			= 0.0f;
		}

	// 1.2: Feed the first index
	in_index	>> shift_reg[1];
	ACCUMULATION_LOOP_FIRST_INDEX:
		for(int i = 1; i <= NUMBER_OF_DAYS - 1; i++){
		#ifdef __SDSVHLS__
		#pragma HLS PIPELINE
		#endif
			// Receiving input stream and shifting registers
			if(i == 1){
				in_index 					>> shift_reg[0];
			} else {
				shift_reg[1]				=  shift_reg[0];
				in_index 					>> shift_reg[0];
			}

			float lnReturn					= hls::logf(shift_reg[1]/shift_reg[0]);
			float weight					= weight_rom[i];

			int channel 					= i%ACCUM_PARTITION;
			// Return Accumulation
			acc_return[channel]				+= lnReturn;

			// Weight * return square Accumulation
			acc_weight_returnSquare[channel]+= lnReturn * lnReturn * weight;

			// Weight * return Accumulation
			acc_weight_return[channel]		+= lnReturn * weight;

			// Weight * returnA * returnB Accumulation
			lnReturnA[i - 1] 				= lnReturn;
		}

	// 1.3: Final stage of accumulation
	LAST_ACCUM_LOOP_FIRST_INDEX:
	for(int i = 0; i < ACCUM_PARTITION; i++){
	#ifdef __SDSVHLS__
	#pragma HLS PIPELINE II=5
	#endif
		sum_returnA 						+= acc_return[i];
		sum_weight_returnSquareA			+= acc_weight_returnSquare[i];
		sum_weight_returnA 					+= acc_weight_return[i];
	}

	/*----------------------------------------------------
	 * STEP 2: Handling the floating indices of a row 	 -
	 * --------------------------------------------------*/
	for(int column_index = 1; column_index < NUMBER_OF_INDICES; column_index ++){
		// 2.1: Reset all accumulated channels
		RESET_REGISTERS:
			for(int i = 0; i < ACCUM_PARTITION; i++){
			#ifdef __SDSVHLS__
			#pragma HLS UNROLL		/*< FULLY UNROLL */
			#endif
				acc_return[i] 					= 0.0f;
				acc_weight_returnSquare[i]		= 0.0f;
				acc_weight_returnSquare[i]		= 0.0f;
				acc_weight_return[i]			= 0.0f;
				acc_weight_returnA_returnB[i]	= 0.0f;
			}

		// 2.2: Feed index
		in_index	>> shift_reg[1];

		ACCUMULATION_LOOP_FLOATING_INDEX:
			for(int i = 1; i <= NUMBER_OF_DAYS - 1; i++){
			#ifdef __SDSVHLS__
			#pragma HLS PIPELINE
			#endif
				// Receiving input stream and shifting registers
				if(i == 1){
					in_index 					>> shift_reg[0];
				} else {
					shift_reg[1]				=  shift_reg[0];
					in_index 					>> shift_reg[0];
				}

				float lnReturn					= hls::logf(shift_reg[1]/shift_reg[0]);
				float weight					= weight_rom[i];
				int channel 					= i%ACCUM_PARTITION;

				// Return Accumulation
				acc_return[channel]				+= lnReturn;

				// Weight * return square Accumulation
				acc_weight_returnSquare[channel]+= lnReturn * lnReturn * weight;

				// Weight * return Accumulation
				acc_weight_return[channel]		+= lnReturn * weight;

				// Weight * returnA * returnB Accumulation
				acc_weight_returnA_returnB[channel]+= lnReturnA[i - 1] * lnReturn * weight;
			}

		// 2.3: Final stage of accumulation
		float sum_return 						= 0.0f;
		float sum_weight_returnSquare 			= 0.0f;
		float sum_weight_return 				= 0.0f;
		float sum_weight_returnA_returnB 		= 0.0f;

		LAST_ACCUM_LOOP:
		for(int i = 0; i < ACCUM_PARTITION; i++){
		#ifdef __SDSVHLS__
		#pragma HLS PIPELINE II=5
		#endif

			sum_return 							+= acc_return[i];
			sum_weight_returnSquare				+= acc_weight_returnSquare[i];
			sum_weight_return 					+= acc_weight_return[i];
			sum_weight_returnA_returnB 			+= acc_weight_returnA_returnB[i];
		}

		// 3: Compute Volatility, Covariance and Correlation
		float meanReturnA =  sum_returnA / float(NUMBER_OF_DAYS - 1);
		float meanReturnB =  sum_return / float(NUMBER_OF_DAYS - 1);

		float volatilityA = hls::sqrtf((sum_weight_returnSquareA - 2.0f *	\
							meanReturnA * sum_weight_returnA)/ sum_weight	\
							+  (meanReturnA * meanReturnA));
		float volatilityB = hls::sqrtf((sum_weight_returnSquare - 2.0f *	\
							meanReturnB * sum_weight_return)/ sum_weight	\
							+  (meanReturnB * meanReturnB));
		float covariance  = (sum_weight_returnA_returnB - meanReturnA *		\
							sum_weight_return - meanReturnB *				\
							sum_weight_returnA)/ sum_weight					\
							+ meanReturnA * meanReturnB;
		axis_t corr_temp;
		corr_temp.data = covariance / (volatilityA * volatilityB);
		if (column_index == NUMBER_OF_INDICES - 1){
			corr_temp.last = 1;
		} else {
			corr_temp.last = 0;
		}
		out_correlation 	<< corr_temp;

		/*-----------------------------------------------------------------*/
		/*< For C-simulation and Co-simulation >*/
		/*-----------------------------------------------------------------*/
			#ifndef __SYNTHESIS__
			cout << "----------------------------------------" 		<< endl;
			cout << "Mean of Return A = \t\t" 	<< meanReturnA 		<< endl;
			cout << "Mean of Return B = \t\t" 	<< meanReturnB 		<< endl;
			cout << "Daily Volatility A = \t" 	<< volatilityA 		<< endl;
			cout << "Daily Volatility B = \t" 	<< volatilityB 		<< endl;
			cout << "Covariance   = \t\t\t"   	<< covariance  		<< endl;
			cout << "Correlation  = \t\t\t"   	<< corr_temp.data 	<< endl;
			cout << "*************************************"    		<< endl;
			#endif
		/*-----------------------------------------------------------------*/
	}

}

/*==========================================================================*/
/********************** 	SUB FUNCTIONS 		*****************************/
/*==========================================================================*/
/**********************     weight_rom_init     *****************************
 * A ROM stores weight of individual days									*
 * The first cell is used to store sum of all weights						*
 *																			*
 * @param    	Static array with with size of BRAM_ROM_SIZE				*
 * 				(extra cell to store sum)									*
 * @return:		None														*
 *																			*
 * @example:																*
 * 		Sample view:														*
 * 			[0]   				|	sum of weight							*
 * 			[1]   				|	1										*
 * 			[2]					|	0.94									*
 *  		:					:	:										*
 *  							:	:										*
 * 		[BRAM_ROM_SIZE - 1]		|	...										*
 *																			*
 * @Note:																	*
 * 		Do not need to store weight of the earliest day.					*
 * 		Since we do not have log(return) of that day						*
 *--------------------------------------------------------------------------*/
static void weight_rom_init(
		float weightRom[BRAM_ROM_SIZE],
		int NUMBER_OF_DAYS)
{
	float lambda 		= 0.94f;
	weightRom[0]		= 1.0f;						/*< store sum of weight */
	weightRom[1] 		= 1.0f;								/*< lastest day */

	INIT_WEIGHT_ROM:
	for(int i = 2; i < BRAM_ROM_SIZE; i++) {
		weightRom[i] 	= lambda * weightRom[i - 1];
	}

	COMP_SUM_OF_WEIGHT:
	for(int i = 2; i < NUMBER_OF_DAYS; i++){
		weightRom[0]	+= weightRom[i]; 				/*< Accumulate sum of
																	* weight */
	}
}
