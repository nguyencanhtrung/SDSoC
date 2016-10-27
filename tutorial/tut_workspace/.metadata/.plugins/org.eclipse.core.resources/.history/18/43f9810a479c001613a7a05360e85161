/********************************************************************************
 * TU Kaiserslautern - Microelectronics                                         *
 * Author       : Trung C. Nguyen                                              	*
 * Project      : Financial Correlation Computation - Master thesis             *
 * File         : "correlation_core.cpp"                                        *
 * Description  :                                                               *
 *        @param    
 * ---------------------------------------------------------------------------- *
 * Revision:                                                                    *
 *      - v0.01 :    Oct. 1, 2016                                               *
 ********************************************************************************/

/*==============================================================================*
 *						LIBRARIES												*
 *==============================================================================*/
#include <stdio.h>
#include <stdlib.h>

#include "hls_math.h"
#include "hls_stream.h"
/*==============================================================================*
 *						PARAMETERS  											*
 *==============================================================================*/
 #define NUMBER_OF_INDICES 				1000
 #define NUMBER_OF_DAYS_PER_INDEX 		252

 #define NUM_OF_INDICES_IN_MEM			10000
/*---------------------
 * Unchanged parameters																		
 * -------------------*/
 #ifndef MAX_NUMBER_OF_INDICES
 #define MAX_NUMBER_OF_INDICES			10000
 #endif

 #ifndef MAX_NUMBER_OF_DAYS_PER_INDEX
 #define MAX_NUMBER_OF_DAYS_PER_INDEX 	252
 #endif

 #define MAX_NUMBER_OF_CORRELATION 		((MAX_NUMBER_OF_INDICES * (MAX_NUMBER_OF_INDICES - 1))/2)

 #define UPPER_BOUND					(NUM_OF_INDICES_IN_MEM/10)
/* --------------------
 * IP core																					
 * -------------------*/


/*==============================================================================*
 *						MAIN FUNCTION 											*
 *==============================================================================*/
int main()
{   
    float *indicesBuff_hw 		= NULL;
    float *correlationBuff_hw	= NULL;
    indicesBuff_hw 				= (float *) sds_mmap( 	(void *)(0x11000000), 
    										MAX_NUMBER_OF_INDICES * MAX_NUMBER_OF_DAYS_PER_INDEX * sizeof(float),
    										indicesBuff_hw);

    correlationBuff_hw 			= (float *) sds_mmap( 	(void *)(0x01000000), 
    										MAX_NUMBER_OF_CORRELATION * sizeof(float),
    										correlationBuff_hw);

    /************************************************************
     *	 	Step 1: Writing Sample Data into DRAM 				*
     *----------------------------------------------------------*/
	float inputData[5 * NUM_OF_DAYS_PER_INDEX] ={						// 5 indices
		#include "data.txt"
    };

	memcpy(	(float *)(indicesBuff_hw),									// 5
			(float *) inputData,
			 20 * NUM_OF_DAYS_PER_INDEX);

	memcpy(	(float *)(indicesBuff_hw) + NUM_OF_DAYS_PER_INDEX * 5,		// 10
			(float *) inputData,
			 20 * NUM_OF_DAYS_PER_INDEX);

    for (int i = 1; i < UPPER_BOUND; i++){
    	memcpy(	(float *)(indicesBuff_hw)+  NUM_OF_DAYS_PER_INDEX * 5 * 2 * i,	// + 10
				(float *) (indicesBuff_hw),
				 20 * NUM_OF_DAYS_PER_INDEX * 2);
    }
   // Compare memories region
    int errorCount = 0;
    for(int i = 0; i < UPPER_BOUND * 2; i ++){
    	status =  memcmp((float *)(indicesBuff_hw) + NUM_OF_DAYS_PER_INDEX * 5 * i, (float *)(inputData), 5040);
    	if(status != 0){
    		errorCount ++;
    	}
    }

    if(errorCount != 0){
    	printf("Error memcpy!\r\n");
    	return XST_FAILURE;
    }

    /************************************************************
     *	 	Step 1: Writing Sample Data into DRAM 				*
     *----------------------------------------------------------*/
    for(){
    	correlation_accel(	NUMBER_OF_DAYS_PER_INDEX, number_of_indices, 
    						*indicesBuff_hw, *correlationBuff_hw);
    }

}
