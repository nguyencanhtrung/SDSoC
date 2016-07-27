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
 * Implementation of software Sobel filter.
 *
 ******************************************************************************/

#include <stdio.h>
#include "img_filters.h"
static unsigned char  line_buffer[3][1920];		


unsigned char rgb2y(unsigned char R, unsigned char G, unsigned char B)
{
	unsigned char y;
	y = ((66 * R + 129 * G + 25 * B + 128) >> 8) + 16;
	return y;
}

void img_process(int rgb_data_in[2211840], int rgb_data_out[2211840], int isobelInvert, int iminsobelSensitivity, int imaxsobelSensitivity)
{
#pragma AP INTERFACE ap_fifo port=rgb_data_in
#pragma AP INTERFACE ap_fifo port=rgb_data_out
        int height = 1080;
        int width = 1920;
        int stride = 2048;
	short x_weight;
	short y_weight;
	short edge_weight;
	unsigned char edge_val;

	unsigned char in_R, in_G, in_B;

	int  pix_i = 0, pix_j = 0;
	volatile int junk_pix; // read unused pixels from width to stride-1
    volatile unsigned int pixel;

	/* Clearing 0th row : Sobel filter is not applied on 0th ROW: to have consistent data flow */
	for(pix_j = 0; pix_j < stride; pix_j++)
	{
		rgb_data_out[pix_j] = 0;
	}
	rgb_data_out = rgb_data_out + stride;

	/* convert initial(i-1 & i) 2-rows of RGB pixel data into line buffers after conv. into Y(luminance) */

	for(pix_j = 0; pix_j < (width + 1); pix_j++)
	{
		pixel = *rgb_data_in;
		in_B = ((pixel) & 0x000000FF);
		in_G = (((pixel) >>8 )& 0x000000FF);
		in_R = (((pixel) >>16)& 0x000000FF);
		line_buffer[0][pix_j]  = rgb2y(in_R, in_G, in_B) ;

		rgb_data_in++;
	}
	for (pix_j = width+1; pix_j < stride; pix_j++) {
		junk_pix = *rgb_data_in;
		rgb_data_in++;
	}

	for(pix_j = 0; pix_j < (width + 1); pix_j++)	/* 1st row */
	{
		pixel = *rgb_data_in;
		in_B = ((pixel) & 0x000000FF);
		in_G = (((pixel) >>8 )& 0x000000FF);
		in_R = (((pixel) >>16)& 0x000000FF);
		line_buffer[1][pix_j]  = rgb2y(in_R, in_G, in_B) ;

		rgb_data_in++;
	}
	for (pix_j = width+1; pix_j < stride; pix_j++) {
		junk_pix = *rgb_data_in;
		rgb_data_in++;
	}

	for(pix_i = 2; pix_i < height; pix_i++)
	{
		/* copy (pix_i) row into line_buffer, i.e: line_buffer[2] <-- row[pix_i] */
		for(pix_j = 0; pix_j < (width + 1); pix_j++)
		{
			pixel = *rgb_data_in;
			in_B = ((pixel) & 0x000000FF);
			in_G = (((pixel) >>8 )& 0x000000FF);
			in_R = (((pixel) >>16)& 0x000000FF);
			line_buffer[2][pix_j]  = rgb2y(in_R, in_G, in_B) ;

			rgb_data_in++;
		}
		for (pix_j = width+1; pix_j < stride; pix_j++) {
			junk_pix = *rgb_data_in;
			rgb_data_in++;
		}

		*rgb_data_out = 0; // making first pixel zero.

		/* compute Sobel filtering over (pix_i - 1) pixels, i.e: sobel_filtering(&line_buffer[1][0])*/
		for(pix_j = 1; pix_j < (width + 1); pix_j++)
		{
			x_weight =  line_buffer[0][pix_j-1]*(-1) + line_buffer[0][pix_j+1]	 +   line_buffer[1][pix_j-1]*(-2) + line_buffer[1][pix_j+1]*(2) + line_buffer[2][pix_j-1]*(-1) + line_buffer[2][pix_j+1] ;
			//	x_weight =		 window[0][0]*(-1) +		    window[0][2]		 +	      window[1][0]*(-2)		  +		 window[1][2]*(2)		+      window[2][0]*(-1)	   +	  window[2][2] ;
			y_weight =  line_buffer[0][pix_j-1]	   + line_buffer[0][pix_j]*(2) +   line_buffer[0][pix_j+1] + line_buffer[2][pix_j-1]*(-1)  + line_buffer[2][pix_j]*(-2)   + line_buffer[2][pix_j+1]*(-1) ;
			//	y_weight =	 	 window[0][0]		   +	  window[0][1]*(2)	   +        window[0][2]	   +	  window[2][0]*(-1)		   +      window[2][1]*(-2)		  +		 window[2][2]*(-1) ;

			edge_weight = ABS(x_weight) + ABS(y_weight);



			if(edge_weight < 255)
				edge_val = (255-(unsigned char)(edge_weight));
			else
				edge_val = 0;


			if(edge_val > imaxsobelSensitivity)
				edge_val = 255;
			else if(edge_val < iminsobelSensitivity)
				edge_val = 0;


			//If sobel invert is enabled.
			if(isobelInvert)
				edge_val=255-edge_val;


			{
				rgb_data_out++;	
				*rgb_data_out = (edge_val) | (edge_val<<8) | (edge_val<<16) | 0xFF000000;
			}

		}	
		for (pix_j = width+1; pix_j < stride; pix_j++) {
			rgb_data_out++;
			*rgb_data_out = 0;
			
		}
		rgb_data_out++;

		for(pix_j = 0; pix_j < (width /* PBJ no need of '+ 1' */); pix_j++)
		{
			line_buffer[0][pix_j] = line_buffer[1][pix_j] ;
			line_buffer[1][pix_j] = line_buffer[2][pix_j] ;
		}
	}
	// clearing the last line
	for(pix_j=0; pix_j < stride; pix_j++)
	{
		rgb_data_out[pix_j] = 0;
	}
}


