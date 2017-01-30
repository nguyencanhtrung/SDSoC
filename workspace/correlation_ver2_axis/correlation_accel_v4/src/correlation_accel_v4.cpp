/************************************************************************
 * TU Kaiserslautern - Microelectronics									*
 * Author:  Trung C. Nguyen												*
 * Project: Financial Correlation Computation - Master thesis			*
 * File:	"correlation_core_axis_v1.cpp"								*
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
#include "correlation_accel_v3.hpp"



/*=======================================================================*/
/****************** 	TOP FUNCTION - CORE 	**************************/
/*=======================================================================*/
#ifdef __SDSVHLS__

void correlation_accel_v4(		int 	number_of_days,										/* CPU in*/
								int 	number_of_indices,									/* CPU in*/

								ap_axiu<32,1,1,1> in_indices[MAX_NUM_INDICES * MAX_NUM_DAYS],
           						ap_axiu<32,1,1,1> out_correlation[MAX_NUM_INDICES / 2 * (MAX_NUM_INDICES - 1)] )
#else
void correlation_accel_v4(
								int 	number_of_days,										/* CPU in*/
								int 	number_of_indices,									/* CPU in*/

								float	in_indices[MAX_NUM_INDICES * MAX_NUM_DAYS],			/*  Input*/
								float   out_correlation[MAX_NUM_INDICES / 2 * (MAX_NUM_INDICES - 1)]
								)
#endif
{

#ifdef __SDSVHLS__
#pragma HLS interface axis  port=out_correlation
#pragma HLS interface axis  port=in_indices
#pragma HLS interface ap_ctrl_hs port=return
#pragma HLS DATAFLOW
#endif

	const int NUMBER_OF_DAYS 			= number_of_days;
	const int NUMBER_OF_INDICES 		= number_of_indices;

#ifdef __SDSVHLS__
	hls::stream<float> sum_weight;
	hls::stream<float> sum_return;
	hls::stream<float> sum_weight_returnSquare;
	hls::stream<float> sum_weight_return;
	hls::stream<float> sum_weight_returnA_returnB;
	hls::stream<float> sum_returnA;
	hls::stream<float> sum_weight_returnSquareA;
	hls::stream<float> sum_weight_returnA;

#pragma HLS STREAM variable=sum_weight depth=2
#pragma HLS STREAM variable=sum_return depth=2
#pragma HLS STREAM variable=sum_weight_returnSquare depth=2
#pragma HLS STREAM variable=sum_weight_return depth=2
#pragma HLS STREAM variable=sum_weight_returnA_returnB depth=2
#pragma HLS STREAM variable=sum_returnA depth=2
#pragma HLS STREAM variable=sum_weight_returnSquareA depth=2
#pragma HLS STREAM variable=sum_weight_returnA depth=2
#else
	float sum_weight[NUMBER_OF_INDICES - 1];
	float sum_return[NUMBER_OF_INDICES - 1];
	float sum_weight_returnSquare[NUMBER_OF_INDICES - 1];
	float sum_weight_return[NUMBER_OF_INDICES - 1];
	float sum_weight_returnA_returnB[NUMBER_OF_INDICES - 1];
	float sum_returnA[NUMBER_OF_INDICES - 1];
	float sum_weight_returnSquareA[NUMBER_OF_INDICES - 1];
	float sum_weight_returnA[NUMBER_OF_INDICES - 1];
#endif

#ifdef __SDSVHLS__
frontEnd(
				NUMBER_OF_DAYS,
				NUMBER_OF_INDICES,
				in_indices,

				sum_weight,
				sum_return,
				sum_weight_returnSquare,
				sum_weight_return,
				sum_weight_returnA_returnB,
				sum_returnA,
				sum_weight_returnSquareA,
				sum_weight_returnA
);

	backEnd(
				NUMBER_OF_DAYS,
				NUMBER_OF_INDICES,
				sum_weight,
				sum_return,
				sum_weight_returnSquare,
				sum_weight_return,
				sum_weight_returnA_returnB,
				sum_returnA,
				sum_weight_returnSquareA,
				sum_weight_returnA,
				out_correlation);
#else
	frontEnd(
				NUMBER_OF_DAYS,
				NUMBER_OF_INDICES,
				in_indices,

				sum_weight,
				sum_return,
				sum_weight_returnSquare,
				sum_weight_return,
				sum_weight_returnA,
				sum_returnA,
				sum_weight_returnSquareA,
				sum_weight_returnA
);
	backEnd(
				NUMBER_OF_DAYS,
				NUMBER_OF_INDICES,

				sum_weight,
				sum_return,
				sum_weight_returnSquare,
				sum_weight_return,
				sum_weight_returnA_returnB,
				sum_returnA,
				sum_weight_returnSquareA,
				sum_weight_returnA,

				out_correlation
	);
#endif

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
//--------------------------------------------------------------------------
#ifdef __SDSVHLS__
void frontEnd(
				int NUMBER_OF_DAYS,
				int NUMBER_OF_INDICES,
				ap_axiu<32,1,1,1> in_indices[MAX_NUM_INDICES * MAX_NUM_DAYS],

				hls::stream<float> &ln_returnA_out_c1,
				hls::stream<float> &weight_returnSquareA_out_c1,
				hls::stream<float> &weight_returnA_out_c1,

				hls::stream<float> &ln_returnA_out_c2,
				hls::stream<float> &weight_returnSquareA_out_c2,
				hls::stream<float> &weight_returnA_out_c2,

				hls::stream<float> &sum_weight_out_c1,
				hls::stream<float> &ln_returnB_out_c1,
				hls::stream<float> &weight_returnSquareB_out_c1,
				hls::stream<float> &weight_returnB_out_c1,
				hls::stream<float> &weight_returnA_returnB_out_c1,

				hls::stream<float> &sum_weight_out_c2,
				hls::stream<float> &ln_returnB_out_c2,
				hls::stream<float> &weight_returnSquareB_out_c2,
				hls::stream<float> &weight_returnB_out_c2,
				hls::stream<float> &weight_returnA_returnB_out_c2)
#else
void frontEnd(
				int NUMBER_OF_DAYS,
				int NUMBER_OF_INDICES,
				float in_indices[MAX_NUM_INDICES * MAX_NUM_DAYS],

				float ln_returnA_out_c1[MAX_NUM_INDICES * MAX_NUM_DAYS],
				float weight_returnSquareA_out_c1[MAX_NUM_INDICES * MAX_NUM_DAYS],
				float weight_returnA_out_c1[MAX_NUM_INDICES * MAX_NUM_DAYS],

				float ln_returnA_out_c2[MAX_NUM_INDICES * MAX_NUM_DAYS],
				float weight_returnSquareA_out_c2[MAX_NUM_INDICES * MAX_NUM_DAYS],
				float weight_returnA_out_c2[MAX_NUM_INDICES * MAX_NUM_DAYS],

				float sum_weight_out_c1[MAX_NUM_INDICES * MAX_NUM_DAYS],
				float ln_returnB_out_c1[MAX_NUM_INDICES * MAX_NUM_DAYS],
				float weight_returnSquareB_out_c1[MAX_NUM_INDICES * MAX_NUM_DAYS],
				float weight_returnB_out_c1[MAX_NUM_INDICES * MAX_NUM_DAYS],
				float weight_returnA_returnB_out_c1[MAX_NUM_INDICES * MAX_NUM_DAYS],

				float sum_weight_out_c2[MAX_NUM_INDICES * MAX_NUM_DAYS],
				float ln_returnB_out_c2[MAX_NUM_INDICES * MAX_NUM_DAYS],
				float weight_returnSquareB_out_c2[MAX_NUM_INDICES * MAX_NUM_DAYS],
				float weight_returnB_out_c2[MAX_NUM_INDICES * MAX_NUM_DAYS],
				float weight_returnA_returnB_out_c2[MAX_NUM_INDICES * MAX_NUM_DAYS]
)
#endif


{
#ifdef __SDSVHLS__
	volatile ap_axiu<32,1,1,1> tmp1;
    union {
          int ival;
          float floatval;
     } conv1;
#endif
	/*----------------------------------------------------------*
	 * PART 1: WEIGHT ROOM Initialization 						*
	 * ---------------------------------------------------------*/
	static float weight_rom[BRAM_ROM_SIZE];
	weight_rom_init(weight_rom, NUMBER_OF_DAYS);
	float sum_weight = weight_rom[0];

	/*----------------------------------------------------------*
	 * PART 2: Correlation Comp. Core 							*
	 * ---------------------------------------------------------*/
	// BRAM Declaration to store lnReturn of the first index of a row
	static float lnReturnA[BRAM_ROM_SIZE];
	float shift_reg[2];

	#ifdef __SDSVHLS__
	#pragma HLS ARRAY_PARTITION variable=shift_reg complete dim=1
	#endif

	/*----------------------------------------------------
	 * Step 1: Handling the first index of the row 	 	 -
	 * --------------------------------------------------*/
	#ifdef __SDSVHLS__
           conv1.ival  	= in_indices[0].data;
           shift_reg[1] = conv1.floatval;
           tmp1.keep  	= in_indices[0].keep;
           tmp1.strb  	= in_indices[0].strb;
           tmp1.user  	= in_indices[0].user;
           tmp1.last  	= in_indices[0].last;
           tmp1.id   	= in_indices[0].id;
           tmp1.dest  	= in_indices[0].dest;
	#else
           shift_reg[1] = in_indices[0];
	#endif

	LOOP_FIRST_INDEX:
		for(int i = 1; i <= NUMBER_OF_DAYS - 1; i++){
		#ifdef __SDSVHLS__
		#pragma HLS PIPELINE
			if(i == 1){
               conv1.ival  		= in_indices[i].data;
               shift_reg[0] 	= conv1.floatval;
               tmp1.keep  		= in_indices[i].keep;
               tmp1.strb  		= in_indices[i].strb;
               tmp1.user  		= in_indices[i].user;
               tmp1.last  		= in_indices[i].last;
               tmp1.id    		= in_indices[i].id;
               tmp1.dest  		= in_indices[i].dest;
           } else {
				shift_reg[1]	=  shift_reg[0];

				conv1.ival  	= in_indices[i].data;
               	shift_reg[0]	= conv1.floatval;
               	tmp1.keep  		= in_indices[i].keep;
               	tmp1.strb  		= in_indices[i].strb;
               	tmp1.user  		= in_indices[i].user;
               	tmp1.last  		= in_indices[i].last;
               	tmp1.id    		= in_indices[i].id;
               	tmp1.dest  		= in_indices[i].dest;
			}
		#else
			if(i == 1){
              	shift_reg[0] 	= in_indices[i];
			}
            else {
            	shift_reg[1] 	= shift_reg[0];
            	shift_reg[0] 	= in_indices[i];
              }
		#endif
	
			// Receiving input stream and shifting registers
			float lnReturn						= logf(shift_reg[1]/shift_reg[0]);
			// Weight * returnA * returnB Accumulation
			lnReturnA[i - 1] 					=	lnReturn;
		}
	/*----------------------------------------------------
	 * STEP 2: Handling the floating indices of a row 	 -
	 * --------------------------------------------------*/
	for(int column_index = 1; column_index < NUMBER_OF_INDICES; column_index ++){
		int index = column_index * NUMBER_OF_DAYS;
		// 2.2: Feed index
		#ifdef __SDSVHLS__
           conv1.ival  	= in_indices[index].data;
           shift_reg[1] = conv1.floatval;
           tmp1.keep  	= in_indices[index].keep;
           tmp1.strb  	= in_indices[index].strb;
           tmp1.user  	= in_indices[index].user;
           tmp1.last  	= in_indices[index].last;
           tmp1.id   	= in_indices[index].id;
           tmp1.dest  	= in_indices[index].dest;
		#else
           shift_reg[1] = in_indices[index];
		#endif

		ACCUMULATION_LOOP_FLOATING_INDEX:
			for(int i = 1; i <= NUMBER_OF_DAYS - 1; i++){
			#ifdef __SDSVHLS__
			#pragma HLS PIPELINE
				if(i == 1){
	               conv1.ival  		= in_indices[index + i].data;
	               shift_reg[0] 	= conv1.floatval;
	               tmp1.keep  		= in_indices[index + i].keep;
	               tmp1.strb  		= in_indices[index + i].strb;
	               tmp1.user  		= in_indices[index + i].user;
	               tmp1.last  		= in_indices[index + i].last;
	               tmp1.id    		= in_indices[index + i].id;
	               tmp1.dest  		= in_indices[index + i].dest;
	           } else {
					shift_reg[1]	=  shift_reg[0];

					conv1.ival  	= in_indices[index + i].data;
	               	shift_reg[0]	= conv1.floatval;
	               	tmp1.keep  		= in_indices[index + i].keep;
	               	tmp1.strb  		= in_indices[index + i].strb;
	               	tmp1.user  		= in_indices[index + i].user;
	               	tmp1.last  		= in_indices[index + i].last;
	               	tmp1.id    		= in_indices[index + i].id;
	               	tmp1.dest  		= in_indices[index + i].dest;
				}
			#else
				if(i == 1){
	              	shift_reg[0] 	= in_indices[index + i];
				}
	            else {
	            	shift_reg[1] 	= shift_reg[0];
	            	shift_reg[0] 	= in_indices[index + i];
	              }
			#endif

			float lnReturn						= logf(shift_reg[1]/shift_reg[0]);
			float weight						= weight_rom[i];
			float lnReturnA_temp				= lnReturnA[i - 1];
			float weight_returnA_temp			= lnReturnA_temp * weight;
			float weight_returnSquareA_temp 	= lnReturnA_temp * lnReturnA_temp * weight;

			float weight_returnB_temp			= lnReturn * weight;
			float weight_returnSquareB_temp 	= lnReturn * lnReturn * weight;
			float weight_returnA_returnB_temp 	= lnReturnA_temp * lnReturn * weight;

			#ifdef __SDSVHLS_
			if(column_index % 2 == 1) {
				ln_returnA_out_c1 				<< lnReturnA_temp;
				weight_returnSquareA_out_c1 	<< weight_returnSquareA_temp;
				weight_returnA_out_c1 			<< weight_returnA_temp;

				sum_weight_out_c1				<< weight_rom[0];
				ln_returnB_out_c1				<< lnReturn;
				weight_returnSquareB_out_c1		<< weight_returnSquareB_temp;
				weight_returnB_out_c1			<< weight_returnB_temp;
				weight_returnA_returnB_out_c1	<< weight_returnA_returnB_temp;
			}
			else {
				ln_returnA_out_c2 				<< lnReturnA_temp;
				weight_returnSquareA_out_c2 	<< weight_returnSquareA_temp;
				weight_returnA_out_c2 			<< weight_returnA_temp;

				sum_weight_out_c2				<< weight_rom[0];
				ln_returnB_out_c2				<< lnReturn;
				weight_returnSquareB_out_c2		<< weight_returnSquareB_temp;
				weight_returnB_out_c2			<< weight_returnB_temp;
				weight_returnA_returnB_out_c2	<< weight_returnA_returnB_temp;
			}
			#else
			if(column_index % 2 == 1) {
				ln_returnA_out_c1[index + i] 				= lnReturnA_temp;
				weight_returnSquareA_out_c1[index + i] 		= weight_returnSquareA_temp;
				weight_returnA_out_c1[index + i] 			= weight_returnA_temp;

				sum_weight_out_c1[index + i]				= weight_rom[0];
				ln_returnB_out_c1[index + i]				= lnReturn;
				weight_returnSquareB_out_c1[index + i]		= weight_returnSquareB_temp;
				weight_returnB_out_c1[index + i]			= weight_returnB_temp;
				weight_returnA_returnB_out_c1[index + i]	= weight_returnA_returnB_temp;
			} else {
				ln_returnA_out_c2[index + i] 				= lnReturnA_temp;
				weight_returnSquareA_out_c2[index + i] 		= weight_returnSquareA_temp;
				weight_returnA_out_c2[index + i] 			= weight_returnA_temp;

				sum_weight_out_c2[index + i]				= weight_rom[0];
				ln_returnB_out_c2[index + i]				= lnReturn;
				weight_returnSquareB_out_c2[index + i]		= weight_returnSquareB_temp;
				weight_returnB_out_c2[index + i]			= weight_returnB_temp;
				weight_returnA_returnB_out_c2[index + i]	= weight_returnA_returnB_temp;
			}
			#endif

			}
	}
}

//--------------------------------------------
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
)
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
)
#endif
{
#ifdef __SDSVHLS__
	volatile ap_axiu<32,1,1,1> tmp1;
    union {
          int ival;
          float floatval;
     } conv1;
#endif
	for(int column_index = 1; column_index < NUMBER_OF_INDICES; column_index++){
	#ifdef __SDSVHLS__
		float sum_weight 				= sum_weight_in.read();
		float sum_return 				= sum_return_in.read();
		float sum_weight_returnSquare 	= sum_weight_returnSquare_in.read();
		float sum_weight_return 		= sum_weight_return_in.read();
		float sum_weight_returnA_returnB= sum_weight_returnA_returnB_in.read();
		float sum_returnA			 	=sum_returnA_in.read();
		float sum_weight_returnSquareA	= sum_weight_returnSquareA_in.read();
		float sum_weight_returnA		= sum_weight_returnA_in.read();
	#else
		float sum_weight 				= sum_weight_in[column_index - 1];
		float sum_return 				= sum_return_in[column_index - 1];
		float sum_weight_returnSquare 	= sum_weight_returnSquare_in[column_index - 1];
		float sum_weight_return 		= sum_weight_return_in[column_index - 1];
		float sum_weight_returnA_returnB= sum_weight_returnA_returnB_in[column_index - 1];
		float sum_returnA			 	=sum_returnA_in[column_index - 1];
		float sum_weight_returnSquareA	= sum_weight_returnSquareA_in[column_index - 1];
		float sum_weight_returnA		= sum_weight_returnA_in[column_index - 1];
	#endif
		// 3: Compute Volatility, Covariance and Correlation
		float meanReturnA =  sum_returnA / float(NUMBER_OF_DAYS - 1);
		float meanReturnB =  sum_return / float(NUMBER_OF_DAYS - 1);

		float volatilityA = sqrtf((sum_weight_returnSquareA - 2.0f *	\
							meanReturnA * sum_weight_returnA)/ sum_weight	\
							+  (meanReturnA * meanReturnA));
		float volatilityB = sqrtf((sum_weight_returnSquare - 2.0f *	\
							meanReturnB * sum_weight_return)/ sum_weight	\
							+  (meanReturnB * meanReturnB));
		float covariance  = (sum_weight_returnA_returnB - meanReturnA *		\
							sum_weight_return - meanReturnB *				\
							sum_weight_returnA)/ sum_weight					\
							+ meanReturnA * meanReturnB;
		float corr_temp = covariance / (volatilityA * volatilityB);

		#ifdef __SDSVHLS__
		//#pragma HLS PIPELINE II=1
			   conv1.floatval 							= corr_temp;
			   out_correlation[column_index - 1].data  	= conv1.ival;
			   out_correlation[column_index - 1].keep  	= 15;
			   out_correlation[column_index - 1].strb  	= 1;
			   out_correlation[column_index - 1].user  	= 0;
			   out_correlation[column_index - 1].last  	= (column_index == (NUMBER_OF_INDICES - 1)) ? 1 : 0;
			   out_correlation[column_index - 1].id    	= 0;
			   out_correlation[column_index - 1].dest  	= 0;
		#else
			   out_correlation[column_index - 1] = corr_temp;
		#endif
	}
}
//------------------------------------------------------------------
#ifdef __SDSVHLS__
void midEnd(
		int NUMBER_OF_DAYS,
		int NUMBER_OF_INDICES,

		hls::stream<float> &ln_returnA_in,
		hls::stream<float> &weight_returnSquareA_in,
		hls::stream<float> &weight_returnA_in,

		hls::stream<float> &sum_weight_in,
		hls::stream<float> &ln_returnB_in,
		hls::stream<float> &weight_returnSquareB_in,
		hls::stream<float> &weight_returnB_in,
		hls::stream<float> &weight_returnA_returnB_in,

		hls::stream<float> &sum_weight_out,
		hls::stream<float> &sum_return_out,
		hls::stream<float> &sum_weight_returnSquare_out,
		hls::stream<float> &sum_weight_return_out,
		hls::stream<float> &sum_weight_returnA_returnB_out,
		hls::stream<float> &sum_returnA_out,
		hls::stream<float> &sum_weight_returnSquareA_out,
		hls::stream<float> &sum_weight_returnA_out
)
#else
void midEnd(
		int NUMBER_OF_DAYS,
		int NUMBER_OF_INDICES,

		float ln_returnA_in[MAX_NUM_INDICES * MAX_NUM_DAYS],
		float weight_returnSquareA_in[MAX_NUM_INDICES * MAX_NUM_DAYS],
		float weight_returnA_in[MAX_NUM_INDICES * MAX_NUM_DAYS],

		float sum_weight_in[MAX_NUM_INDICES * MAX_NUM_DAYS],
		float ln_returnB_in[MAX_NUM_INDICES * MAX_NUM_DAYS],
		float weight_returnSquareB_in[MAX_NUM_INDICES * MAX_NUM_DAYS],
		float weight_returnB_in[MAX_NUM_INDICES * MAX_NUM_DAYS],
		float weight_returnA_returnB_in[MAX_NUM_INDICES * MAX_NUM_DAYS],

		float sum_weight_out[MAX_NUM_INDICES],
		float sum_return_out[MAX_NUM_INDICES],
		float sum_weight_returnSquare_out[MAX_NUM_INDICES],
		float sum_weight_return_out[MAX_NUM_INDICES],
		float sum_weight_returnA_returnB_out[MAX_NUM_INDICES],
		float sum_returnA_out[MAX_NUM_INDICES],
		float sum_weight_returnSquareA_out[MAX_NUM_INDICES],
		float sum_weight_returnA_out[MAX_NUM_INDICES]
)
#endif

{
for(int column_index = 1; column_index < NUMBER_OF_INDICES; column_index++){
		// Channels to store accumulation
		float acc_return[ACCUM_PARTITION];
		float acc_weight_returnSquare[ACCUM_PARTITION];
		float acc_weight_return[ACCUM_PARTITION];
		float acc_weight_returnA_returnB[ACCUM_PARTITION];

		float acc_returnA[ACCUM_PARTITION];
		float acc_weight_returnSquareA[ACCUM_PARTITION];
		float acc_weight_returnA[ACCUM_PARTITION];

		RESET_REGISTERS:
		for(int i = 0; i < ACCUM_PARTITION; i++){
		#ifdef __SDSVHLS__
		#pragma HLS UNROLL		/*< FULLY UNROLL */
		#endif
			acc_return[i] 					= 0.0f;
			acc_weight_returnSquare[i]		= 0.0f;
			acc_weight_return[i]			= 0.0f;
			acc_weight_returnA_returnB[i]	= 0.0f;

			acc_returnA[i] 					= 0.0f;
			acc_weight_returnSquareA[i]		= 0.0f;
			acc_weight_returnA[i] 			= 0.0f;
		}

		int index = column_index * NUMBER_OF_DAYS;
		int index_channel = (column_index - 1) * (NUMBER_OF_DAYS-1);

		float sum_return 					= 0.0f;
		float sum_weight_returnSquare 		= 0.0f;
		float sum_weight_return 			= 0.0f;
		float sum_weight_returnA_returnB 	= 0.0f;
		float sum_weight  					= 0.0f;

		float sum_returnA 					= 0.0f;
		float sum_weight_returnSquareA 		= 0.0f;
		float sum_weight_returnA 			= 0.0f;

		for(int i = 1; i <= NUMBER_OF_DAYS - 1; i++){

			float lnReturnA_temp;
			float weight_returnA_temp;
			float weight_returnSquareA_temp;

			float lnReturnB_temp;
			float weight_returnB_temp;
			float weight_returnSquareB_temp;
			float weight_returnA_returnB_temp;

		#ifdef __SDSVHLS__
		#pragma HLS PIPELINE
			sum_weight 					= sum_weight_in.read();
			lnReturnA_temp				= ln_returnA_in.read();
			weight_returnA_temp			= weight_returnA_in.read();
			weight_returnSquareA_temp 	= weight_returnSquareA_in.read();

			lnReturnB_temp				= ln_returnB_in.read();
			weight_returnB_temp			= weight_returnB_in.read();
			weight_returnSquareB_temp 	= weight_returnSquareB_in.read();
			weight_returnA_returnB_temp	= weight_returnA_returnB_in.read();
		#else
			sum_weight 					= sum_weight_in[(i - 1) + index_channel];
			lnReturnA_temp				= ln_returnA_in[(i - 1) + index_channel];
			weight_returnA_temp			= weight_returnA_in[(i - 1) + index_channel];
			weight_returnSquareA_temp 	= weight_returnSquareA_in[(i - 1) + index_channel];

			lnReturnB_temp				= ln_returnB_in[(i - 1) + index_channel];
			weight_returnB_temp			= weight_returnB_in[(i - 1) + index_channel];
			weight_returnSquareB_temp 	= weight_returnSquareB_in[(i - 1) + index_channel];
			weight_returnA_returnB_temp	= weight_returnA_returnB_in[(i - 1) + index_channel];
		#endif
			acc_return[i % ACCUM_PARTITION] 					+= lnReturnB_temp;
			acc_weight_returnSquare[i % ACCUM_PARTITION]		+= weight_returnSquareB_temp;
			acc_weight_return[i % ACCUM_PARTITION]				+= weight_returnB_temp;
			acc_weight_returnA_returnB[i % ACCUM_PARTITION]		+= weight_returnA_returnB_temp;

			acc_returnA[i % ACCUM_PARTITION] 					+= lnReturnA_temp;
			acc_weight_returnSquareA[i % ACCUM_PARTITION]		+= weight_returnSquareA_temp;
			acc_weight_returnA[i % ACCUM_PARTITION] 			+= weight_returnA_temp;
		}


		LAST_ACCUM_LOOP:
		for(int i = 0; i < ACCUM_PARTITION; i++){
		#ifdef __SDSVHLS__
		#pragma HLS PIPELINE II=5
		#endif

			sum_returnA 				+= acc_returnA;
			sum_weight_returnSquareA 	+= acc_weight_returnSquareA;
			sum_weight_returnA 			+= acc_weight_returnA;

			sum_return 					+= acc_return[i];
			sum_weight_returnSquare		+= acc_weight_returnSquare[i];
			sum_weight_return 			+= acc_weight_return[i];
			sum_weight_returnA_returnB 	+= acc_weight_returnA_returnB[i];
		}

		#ifdef __SDSVHLS__
		sum_weight_out 						<< sum_weight;
		sum_return_out						<< sum_return;
		sum_weight_returnSquare_out			<< sum_weight_returnSquare;
		sum_weight_return_out				<< sum_weight_return;
		sum_weight_returnA_returnB_out		<< sum_weight_returnA_returnB;
		sum_returnA_out						<< sum_returnA;
		sum_weight_returnSquareA_out		<< sum_weight_returnSquareA;
		sum_weight_returnA_out				<< sum_weight_returnA;
		#else
		sum_weight_out[column_index - 1] 					= sum_weight;
		sum_return_out[column_index - 1]					= sum_return;
		sum_weight_returnSquare_out[column_index - 1]		= sum_weight_returnSquare;
		sum_weight_return_out[column_index - 1]				= sum_weight_return;
		sum_weight_returnA_returnB_out[column_index - 1]	= sum_weight_returnA_returnB;
		sum_returnA_out[column_index - 1]					= sum_returnA;
		sum_weight_returnSquareA_out[column_index - 1]		= sum_weight_returnSquareA;
		sum_weight_returnA_out[column_index - 1]			= sum_weight_returnA;
		#endif
	}
}


