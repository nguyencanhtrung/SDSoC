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

/*
 * Sobel demo code
 */

#include <stdio.h>
#include "frame_size.h"
#include "image_cores.h"

void combo_image(char pass_through_option, unsigned char motion_image[NUMROWS*NUMCOLS],unsigned short original[NUMROWS*NUMCOLS],unsigned short output_image[NUMROWS*NUMCOLS])
{
#pragma HLS INTERFACE ap_fifo port=output_image
#pragma HLS INTERFACE ap_fifo port=motion_image
#pragma HLS INTERFACE ap_fifo port=original
#pragma HLS interface ap_ctrl_chain port=return

  int i;
  int j;
  unsigned short original_pix;
  unsigned char diff_pix;
  unsigned short combo_pix;
  const unsigned char y = 76;
  const unsigned char u = 84;
  const unsigned char v = 255;
  
  for(i=0; i < NUMROWS; i++){
    for(j=0; j < NUMCOLS; j++){
#pragma AP PIPELINE II = 1
      original_pix = original[i*NUMCOLS + j];
      diff_pix = motion_image[i*NUMCOLS + j];
      if(diff_pix == 255){
	if(j%2){
	  combo_pix = ((unsigned short)y << 8) | v;
	}
	else{
	  combo_pix = ((unsigned short)y << 8) | u;
	}
      }
      else{
	combo_pix = original_pix;
      }
      if (pass_through_option == 1) {
         output_image[i*NUMCOLS + j] = original_pix;
      }
      else {
         output_image[i*NUMCOLS + j] = combo_pix;
      }
    }
  }
}


