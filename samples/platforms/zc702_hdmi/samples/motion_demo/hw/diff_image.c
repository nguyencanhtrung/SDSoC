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

void diff_image(unsigned char current_pix[NUMROWS*NUMCOLS],unsigned char previous_pix[NUMROWS*NUMCOLS],
		unsigned short original[NUMROWS*NUMCOLS], unsigned short original_output[NUMROWS*NUMCOLS], 
		unsigned char motion_image[NUMROWS*NUMCOLS])
{
#pragma HLS INTERFACE ap_fifo port=current_pix
#pragma HLS INTERFACE ap_fifo port=previous_pix
#pragma HLS INTERFACE ap_fifo port=original
#pragma HLS INTERFACE ap_fifo port=original_output
#pragma HLS INTERFACE ap_fifo port=motion_image
#pragma HLS interface ap_ctrl_chain port=return

  int i,j;
  for(i=0; i < (NUMROWS ); i++){
    for(j=0; j < (NUMCOLS); j++){
#pragma AP PIPELINE II = 1
      unsigned char new_edge;
      unsigned char prev_edge;
      unsigned short pixel;
      unsigned char diff_pixel;
      new_edge = current_pix[i*NUMCOLS+j];
      prev_edge = previous_pix[i*NUMCOLS+j];
      pixel = original[i*NUMCOLS+j];
      if((new_edge != prev_edge) & (new_edge == 255)){
	diff_pixel = 255;
      }
      else {
	diff_pixel = 0;
      }
      motion_image[i*NUMCOLS+j] = diff_pixel;
      original_output[i*NUMCOLS+j] = pixel;
    }
  }
}

