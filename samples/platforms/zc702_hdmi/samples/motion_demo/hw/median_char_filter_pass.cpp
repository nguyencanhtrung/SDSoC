/*****************************************************************************
 *
 *     Author: Xilinx, Inc.
 *
 *     This text contains proprietary, confidential information of
 *     Xilinx, Inc. , is distributed by under license from Xilinx,
 *     Inc., and may be used, copied and/or disclosed only pursuant to
 *     the terms of a valid license agreement with Xilinx, Inc.
 *
 *     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"
 *     AS A COURTESY TO YOU, SOLELY FOR USE IN DEVELOPING PROGRAMS AND
 *     SOLUTIONS FOR XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE,
 *     OR INFORMATION AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE,
 *     APPLICATION OR STANDARD, XILINX IS MAKING NO REPRESENTATION
 *     THAT THIS IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,
 *     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE
 *     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY
 *     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE
 *     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR
 *     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF
 *     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 *     FOR A PARTICULAR PURPOSE.
 *
 *     Xilinx products are not intended for use in life support appliances,
 *     devices, or systems. Use in such applications is expressly prohibited.
 *
 *     (c) Copyright 2011 Xilinx Inc.
 *     All rights reserved.
 *
 *****************************************************************************/

#include <stdio.h>
#include "frame_size.h"
#include "image_cores.h"

#include "image_demo.h"

#define MF_SIZE 5
#define MF_SIZE_MINUS1 4
#define MF_SIZE_MINUS2 3
// MF_MID is index of mid that is 0 based
#define MF_MID 2
#define MF_MID_MINUS1 1
#define X_MF_OFFSET 5

typedef ap_window<unsigned char,MF_SIZE,MF_SIZE> X_MEDIAN_WINDOW;
typedef ap_linebuffer<unsigned short,MF_SIZE_MINUS1, NUMCOLS> X_MEDIAN_YUV_BUFFER;
typedef ap_linebuffer<unsigned char, MF_SIZE, NUMCOLS> X_MEDIAN_Y_BUFFER;

unsigned char median_operator2(X_MEDIAN_WINDOW window)
{
  int i;
  int j;
  unsigned char mid = 0;
  unsigned short border = 0;

  unsigned int approx_median = 0;
  for(i=MF_SIZE_MINUS1; i >= 0; i--){
    for(j=MF_SIZE_MINUS1; j >= 0; j--){
	unsigned char tmp = window.getval(i,j);
	approx_median += tmp;
		if(i==MF_MID && j==MF_MID) {
			mid = tmp;
		}
		else if(i==0 || i==(MF_SIZE_MINUS1) || j==0 || j==(MF_SIZE_MINUS1)) {
			border += tmp;
		}
    }
  }

  approx_median = approx_median >> 5;
	unsigned char ret = (mid != 0) ? ((border > 509) ? (unsigned char) approx_median : 0) : 0;
	return ret;

}


////Median Filter with a passthrough of the current color pixel
void median_char_filter_pass(char threshold, unsigned char input_edge[NUMROWS*NUMCOLS], unsigned short input_pix[NUMROWS*NUMCOLS],unsigned char median_pix[NUMROWS*NUMCOLS], unsigned short original_pix[NUMROWS*NUMCOLS])
{
#pragma HLS INTERFACE ap_fifo port=input_edge
#pragma HLS INTERFACE ap_fifo port=input_pix
#pragma HLS INTERFACE ap_fifo port=median_pix
#pragma HLS INTERFACE ap_fifo port=original_pix
#pragma HLS interface ap_ctrl_chain port=return
  int row;
  int col;

  X_MEDIAN_Y_BUFFER buff_A;
  X_MEDIAN_YUV_BUFFER buff_BO;
  X_MEDIAN_WINDOW buff_C;
  unsigned char shiftA0, shiftA1, shiftA2;
	for(row = 0; row < NUMROWS+MF_MID; row++){
		for(col = 0; col < NUMCOLS+MF_MID; col++){
			#pragma AP PIPELINE II = 1
      // Temp values are used to reduce the number of memory reads
   		   	unsigned char temp[5];
   		   	unsigned char tempx;
      
      //Line Buffer fill
				buff_A.shift_up(col);
				buff_BO.shift_up(col);
				temp[0] = buff_A.getval(1,col);
				temp[1] = buff_A.getval(2,col);
				temp[2] = buff_A.getval(3,col);
				temp[3] = buff_A.getval(4,col);
                                shiftA2 = shiftA1;
                                shiftA1 = shiftA0;
                                shiftA0 = temp[1];
      //There is an offset to accomodate the active pixel region
      //There are only NUMCOLS and NUMROWS valid pixels in the image
      		if((col < NUMCOLS) & (row < NUMROWS)){
				unsigned char new_edge;
				unsigned short new_pix;
				new_pix = input_pix[row*NUMCOLS+col];
				new_edge = input_edge[row*NUMCOLS+col];
				buff_BO.insert_bottom(new_pix,col);
				buff_A.insert_bottom(new_edge,col);
				tempx = new_edge;
      		}

      //Shift the processing window to make room for the new column
      		buff_C.shift_right();

      		if(col < NUMCOLS){
				buff_C.insert(temp[3],MF_SIZE_MINUS1,MF_SIZE_MINUS1);
				buff_C.insert(temp[2],3,MF_SIZE_MINUS1);
				buff_C.insert(temp[1],2,MF_SIZE_MINUS1);
				buff_C.insert(temp[0],1,MF_SIZE_MINUS1);
				buff_C.insert(tempx,0,MF_SIZE_MINUS1);
      		}
      		unsigned char edge;

			edge = median_operator2(buff_C);

			if(row > MF_MID_MINUS1 && col > MF_MID_MINUS1) {
   	   			if(row > MF_SIZE_MINUS2 && col > MF_SIZE_MINUS2 && row < NUMROWS && col < NUMCOLS){
					median_pix[(row-MF_MID)*NUMCOLS+(col-MF_MID)]   = (threshold==0) ? shiftA2 : ((edge < threshold) ? 0 : 255);
					original_pix[(row-MF_MID)*NUMCOLS+(col-MF_MID)] = buff_BO.getval(MF_MID,col-MF_MID);
				} else { // top and left sides before calculations are done, and also bot and right sides
					median_pix[(row-MF_MID)*NUMCOLS+(col-MF_MID)]    = 0;
					original_pix[(row-MF_MID)*NUMCOLS+(col-MF_MID)]  = buff_BO.getval(MF_MID,col-MF_MID);
				}
			}
		}
	}
}




