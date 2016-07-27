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
#include "platform/frame_size.h"
#include "ap_video.h"

#include "manr.h"
#define SOBEL_SIZE 3
#define ABSDIFF(x,y)    ((x>y)? x - y : y - x)
#define ABS(x)          ((x>0)? x : -x)

typedef ap_window<unsigned char,SOBEL_SIZE,SOBEL_SIZE> WINDOW;
typedef ap_linebuffer<unsigned char, SOBEL_SIZE, NUMCOLS> Y_BUFFER;


//Sobel Computation using a 3x3 neighborhood
unsigned char sobel_operator(WINDOW *window)
{
  short x_weight = 0;
  short y_weight = 0;
  
  short edge_weight;
  unsigned char edge_val;
  
  int i;
  int j;
  
  const short x_op[SOBEL_SIZE][SOBEL_SIZE] = { {-1,0,1},
                             {-2,0,2},
                             {-1,0,1}};
  
  const short y_op[SOBEL_SIZE][SOBEL_SIZE] = { {1,2,1},
                             {0,0,0},
                             {-1,-2,-1}};
  
  //Compute approximation of the gradients in the X-Y direction
  for(i=0; i < SOBEL_SIZE; i++){
    for(j = 0; j < SOBEL_SIZE; j++){
      
      // X direction gradient
      x_weight = x_weight + (window->getval(i,j) * x_op[i][j]);
      
      // Y direction gradient
      y_weight = y_weight + (window->getval(i,j) * y_op[i][j]);
    }
  }
  
  edge_weight = ABS(x_weight) + ABS(y_weight);
  
  //Edge thresholding
  if(edge_weight > 200)
    edge_weight = 255;
  else if(edge_weight < 100)
    edge_weight = 0;
  edge_val = (unsigned char)edge_weight;
  
  return edge_val;
}

//Main function for Sobel Filtering
//This function includes a line buffer for a streaming implementation
void sobel_filter(unsigned short yc_in[NUMROWS*NUMCOLS],unsigned short yc_out[NUMROWS*NUMCOLS])
{
#pragma AP INTERFACE ap_fifo port=yc_in
#pragma AP INTERFACE ap_fifo port=yc_out
  
  int row;
  int col;
  
  Y_BUFFER buff_A;
  WINDOW buff_C;
  
  for(row = 0; row < NUMROWS+1; row++){
    for(col = 0; col < NUMCOLS+1; col++){
#pragma AP PIPELINE II = 1
      
      // Temp values are used to reduce the number of memory reads
      unsigned short input_data = 0;
      unsigned char temp = 0;
      unsigned char tempx = 0;
      
      //Line Buffer fill
      if(col < NUMCOLS) {
        buff_A.shift_up(col);
        temp = buff_A.getval(0,col);
      }
      
      //There is an offset to accomodate the active pixel region
      //There are only NUMCOLS and NUMROWS valid pixels in the image
      if((col < NUMCOLS) & (row < NUMROWS)) {
        unsigned char y;
        input_data = yc_in[row*NUMCOLS+col];
        y = input_data >> BYTESHIFT ;
        tempx = y;
        buff_A.insert_bottom(tempx,col);
      }
      
      //Shift the processing window to make room for the new column
      buff_C.shift_right();
      
      //The Sobel processing window only needs to store luminance values
      //rgb2y function computes the luminance from the color pixel
      if(col < NUMCOLS) {
        buff_C.insert(buff_A.getval(2,col),0,2);
        buff_C.insert(temp,1,2);
        buff_C.insert(tempx,2,2);
      }

      unsigned char edge;
      //The sobel operator only works on the inner part of the image
      //This design assumes there are no edges on the boundary of the image
      if( row <= 1 || col <= 1 || row > (NUMROWS-1) || col > (NUMCOLS-1)) {
        edge=0;
      }
      else {
        //Sobel operation on the inner portion of the image
        edge = sobel_operator(&buff_C);
      }
      
      //The output image is offset from the input to account for the line buffer
      if(row > 0 && col > 0) {
        if (col < (NUMCOLS >> 1)) { // for demo only, copy the input directly to output
          yc_out[(row-1)*NUMCOLS+(col-1)] = input_data;
        }
        else { // for demo only
          yc_out[(row-1)*NUMCOLS+(col-1)] = (edge << BYTESHIFT) | YUV_BLACK_VAL; 
        }
      }
    }
  }
}
