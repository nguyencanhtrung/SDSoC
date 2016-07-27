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
 *     (c) Copyright 2013 Xilinx Inc.
 *     All rights reserved.
 *
 *****************************************************************************/


/*****************************************************************************
 *
 * @file img_filters.h
 *
 *
 ******************************************************************************/

#include <stdio.h>
#include "img_filters.h"

void img_process(int rgb_in[PIXELS_PER_FRAME], int rgb_out[PIXELS_PER_FRAME], int param0, int param1, int param2)
{
#pragma AP INTERFACE ap_fifo port=rgb_in
#pragma AP INTERFACE ap_fifo port=rgb_out

	unsigned char in_R, in_G, in_B;

	int  pix_j;
	volatile unsigned int pixel_out, pixel_out0, pixel_out1; 
        volatile unsigned int pixel;


	for(pix_j = 0; pix_j < PIXELS_PER_FRAME;  pix_j++)
	{
#pragma AP pipeline II=1
		pixel = rgb_in[pix_j];
		in_B = ((pixel) & 0x000000FF);
		in_G = (((pixel) >>8 )& 0x000000FF);
		in_R = (((pixel) >>16)& 0x000000FF);
		pixel_out0 = in_B;
                pixel_out1 = (((pixel_out0 << 8) & 0x0000ff00) | in_G);
                pixel_out = (((pixel_out1 << 8) & 0x00ffff00) | in_R);

		rgb_out[pix_j] = pixel_out;
	}
}


