/************************************************************************
 * TU Kaiserslautern - Microelectronics									*
 * Author:  Trung C. Nguyen												*
 * Project: Financial Correlation Computation - Master thesis			*
 * File:	"correlationComp_tb.cpp"	- v0.04.1						*
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
#include "correlationComp.h"
#include <stdbool.h>

/*======================================================================*/
/******************** 	FUNCTION's PRAMETERS 		*********************/
/*======================================================================*/
#ifndef NUMBER_OF_DAYS_TB
#define NUMBER_OF_DAYS_TB 		252
#endif

#ifndef NUMBER_OF_INDICES_TB
#define NUMBER_OF_INDICES_TB 	6		/*< For Testing Max = 5*/
#endif
/*---------------------------------------------------------------
 * If having NUMBER_OF_INDICES_TB = N, 							-
 * total number of correlation calculation can be computed by:	-									-
 * 		(N-1) + (N-2) + ... + 1          (N-1 elements)			-
 * 		total = N * (N-1)/2										-
 *---------------------------------------------------------------*/
#define NUMBER_OF_CALCULATION_TB  \
	(((NUMBER_OF_INDICES_TB - 1) * (NUMBER_OF_INDICES_TB))/2)

/*=======================================================================*/
/******************** 	FUNCTION's PROTOTYPES 		**********************/
/*=======================================================================*/
void weightComp(float *weight, int size, float *weightSum);
float correlationComp_sw(float *indexA, float *indexB,
				float *weight,int size, float &weightSum);

/*=======================================================================*/
/********************** 	MAIN FUNCTION 		**************************/
/*=======================================================================*/
int main(){
	int errorCounter = 0;

	float correlation_hw[NUMBER_OF_CALCULATION_TB];

	float correlation_sw[NUMBER_OF_CALCULATION_TB];

	float input_sample[NUMBER_OF_INDICES_TB][NUMBER_OF_DAYS_TB];
	/*---------------------------------------------------
	 * Step 1: Read inputData.dat and put these 		-
	 * 			inputs in input_sample array 			-
	 *--------------------------------------------------*/
	ifstream inputFile ("inputData.dat", ios::in);
	string line;
	if(!inputFile.is_open()){
		cout << "CANNOT OPEN inputData.dat" << endl;
		return -1;
	}
	else {
		for(int i =0; i < NUMBER_OF_INDICES_TB; i++){
			for(int j = 0; j < NUMBER_OF_DAYS_TB; j++){
				if(getline(inputFile, line)){
					input_sample[i][j] = atof(line.c_str());
				}
			}//second for
		}//first for
		inputFile.close();
	}

		//	Check content of input sample
		//	for(int i =0; i < NUMBER_OF_INDICES_TB; i++){
		//		for(int j = 0; j < NUMBER_OF_DAYS_TB; j++){
		//			cout << i << "-" << j << "::"
		//				 << input_sample[i][j] << endl;
		//		}
		//	}
	/*--------------------------------------------------*
	 * Step 2: Compute the correlation by HW			*
	 *--------------------------------------------------*/
	correlationComp_axi_m_v1_1_hls((int)NUMBER_OF_DAYS_TB,
					(int)NUMBER_OF_INDICES_TB,
					(float *)input_sample, 0,
					(float *)correlation_hw, 0);
	/*--------------------------------------------------*
	 * Step 3: Compute the correlation by SW			*
	 *--------------------------------------------------*/
	float weight_sw[NUMBER_OF_DAYS_TB - 1];
	float weightSum;

	// Create weight_sw array
	weightComp(weight_sw, NUMBER_OF_DAYS_TB, &weightSum);


	int num_of_cal = 0;
	for(int index = 0; index < NUMBER_OF_INDICES_TB - 1; index++){
		for(int index_in = index + 1; index_in < NUMBER_OF_INDICES_TB; index_in++){
			correlation_sw[num_of_cal] = correlationComp_sw(
											input_sample[index],
											input_sample[index_in],
											weight_sw,
											NUMBER_OF_DAYS_TB,
											weightSum);
			num_of_cal ++;
		}
	}

	/*--------------------------------------------------*/
	/* Step 5: Compare results							*/
	/*--------------------------------------------------*/
	cout << "RESULT:" << endl;

	for(int i = 0; i < NUMBER_OF_CALCULATION_TB; i++){
		cout << "software: " << correlation_sw[i]
			 << "\t\t\t"
			 << "hardware: " << correlation_hw[i]
			 << endl;

		if(abs(correlation_hw[i] - correlation_sw[i]) > ALLOW_ERR_THRES){
			errorCounter++;
		}
	}

	if (errorCounter == 0) {
		cout << "TEST PASSED!" << endl;
		return 0;
	} else {
		cout << "TEST FAILED!" << endl;
		return 1;
	}
}
/*=======================================================================*/
/********************** 	SUB FUNCTIONS 		**************************/
/*=======================================================================*/
/*************************************************************************
 * Correlation Computation using MATLAB algorithm						 *
 * @param																 *
 *		- pointer to memory location where indices are stored            *
 *		- pointer to memory location where weights are stored            *
 *		- size  = number of days is examined                             *
 *		- weightSum: reference to sum of all weight              		 *
 * @return																 *
 *		- float: correlation of 2 indices								 *
 * @note																 *
 * 		- none															 *
 *************************************************************************/
float correlationComp_sw(float *indexA, float *indexB,
				float *weight,int size, float &weightSum){
	float lnReturnA[size -1];
	float lnReturnB[size -1];
	float meanReturnA = 0;
	float meanReturnB = 0;

	// Compute natural logarithm of returns
	for(int i = 0; i < size - 1; i++){
		lnReturnA[i] = hls::logf(indexA[i]/indexA[i+1]);
		lnReturnB[i] = hls::logf(indexB[i]/indexB[i+1]);

		meanReturnA += lnReturnA[i]/float(size -1);
		meanReturnB += lnReturnB[i]/float(size -1);
	}

	float diffA[size -1], diffB[size -1];
	float accumA = 0;
	float accumB = 0;
	float accumCov = 0;

	// Volatility computation
	float volatilityA, volatilityB;
	for(int i = 0; i < size -1; i++){
		diffA[i] = lnReturnA[i] - meanReturnA;
		diffB[i] = lnReturnB[i] - meanReturnB;
		accumA += diffA[i] * diffA[i] * weight[i];
		accumB += diffB[i] * diffB[i] * weight[i];
		accumCov += diffA[i] * diffB[i] * weight[i];
	}
	volatilityA = hls::sqrtf(accumA/ weightSum);
	volatilityB = hls::sqrtf(accumB/ weightSum);

	// Covariance computation
	float covariance;
	covariance  = accumCov/ weightSum;

	return (covariance/(volatilityA * volatilityB));
}
/*************************************************************************
 * Weight Computation													 *
 * @param																 *
 *		- pointer to memory location where weight is stored				 *
 *		- size  = number of days is examined							 *
 *		- weightSum: pointer where store sum of all weight				 *
 * @note																 *
 * 		- none															 *
 *************************************************************************/
void weightComp(float *weight, int size, float *weightSum){
	weight[0] 		= 1.0;
	*weightSum		= 1.0;
	for(int i = 1; i < size - 1; i++){
		weight[i] 	= weight[i -1] * 0.94;
		*weightSum	+= weight[i];
	}
}
