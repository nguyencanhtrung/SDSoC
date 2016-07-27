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
#include "image_demo.h"

//Sobel Computation using a 3x3 neighborhood
unsigned char sobel_operator(WINDOW *window)
{
  short x_weight = 0;
  short y_weight = 0;

  short edge_weight;
  unsigned char edge_val;

  char i;
  char j;


  const char x_op[3][3] = { {-1,0,1},
			    {-2,0,2},
			    {-1,0,1}};

  const char y_op[3][3] = { {1,2,1},
			    {0,0,0},
			    {-1,-2,-1}};

  //Compute approximation of the gradients in the X-Y direction
  for(i=0; i < 3; i++){
    for(j = 0; j < 3; j++){

      // X direction gradient
      x_weight = x_weight + (window->getval(i,j) * x_op[i][j]);
      
      // Y direction gradient
      y_weight = y_weight + (window->getval(i,j) * y_op[i][j]);
    }
  }
  
  edge_weight = ABS(x_weight) + ABS(y_weight);

  edge_val = (255-(unsigned char)(edge_weight));

  //Edge thresholding
  if(edge_val > 150)
    edge_val = 0;
    // else if(edge_val < 100)
  else
    edge_val = 255;

  return edge_val;
}

//Main function for Sobel Filtering
//This function includes a line buffer for a streaming implementation
void sobel_filter(unsigned short inter_pix[NUMROWS*NUMCOLS],unsigned char output_edge[NUMROWS*NUMCOLS])
{
#pragma HLS INTERFACE ap_fifo port=inter_pix
#pragma HLS INTERFACE ap_fifo port=output_edge
#pragma HLS interface ap_ctrl_chain port=return
  int row;
  int col;

  Y_BUFFER buff_A;

  WINDOW buff_C;

  for(row = 0; row < NUMROWS+1; row++){
    for(col = 0; col < NUMCOLS+1; col++){
      #pragma AP PIPELINE II = 1

      // Temp values are used to reduce the number of memory reads
      unsigned char temp;
      unsigned char tempx;
      
      //Line Buffer fill
      if(col < NUMCOLS){
	buff_A.shift_up(col);
	temp = buff_A.getval(0,col);
      }

      //There is an offset to accomodate the active pixel region
      //There are only NUMCOLS and NUMROWS valid pixels in the image
      if((col < NUMCOLS) && (row < NUMROWS)){
	unsigned short new_pix;
	new_pix = inter_pix[row*NUMCOLS+col];
	tempx = (new_pix >> 8) & 0xFF;
	buff_A.insert_bottom(tempx,col);
      }

      //Shift the processing window to make room for the new column
      buff_C.shift_right();

      //The Sobel processing window only needs to store luminance values
      //rgb2y function computes the luminance from the color pixel
      if(col < NUMCOLS){
	buff_C.insert(buff_A.getval(2,col),0,2);
	buff_C.insert(temp,1,2);
	buff_C.insert(tempx,2,2);
      }
      unsigned char edge;

      //The sobel operator only works on the inner part of the image
      //This design assumes there are no edges on the boundary of the image
      if( row <= 1 || col <= 1 || row > (NUMROWS-1) || col > (NUMCOLS-1)){
	//edge.R = edge.G = edge.B = 0;
	edge = 0;
      }
      else{

	//Sobel operation on the inner portion of the image
	edge = sobel_operator(&buff_C);
      }

      //The output image is offset from the input to account for the line buffer
      if((row > 0) && (col > 0)){
	output_edge[(row-1)*NUMCOLS+(col-1)] = edge;
      }
    }
  }
}

