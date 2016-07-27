
/*
  the Xilinx Motion Adaptive Noise Reduction (MANR) core
  
*/

//-------------------------------------------------------------------


#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "platform/frame_size.h"

#include "manr.h"

void manr (char nr_strength,
           unsigned short yc_in[NUMROWS*NUMCOLS], 
           unsigned short yc_in_prev[NUMROWS*NUMCOLS], 
           unsigned short yc_out[NUMROWS*NUMCOLS]
           )
{
#pragma  AP INTERFACE ap_fifo port=yc_in
#pragma  AP INTERFACE ap_fifo port=yc_in_prev
#pragma  AP INTERFACE ap_fifo port=yc_out
  
  int rows = NUMROWS;
  int cols = NUMCOLS;
  
  int   row,col,i;
  int   h_mask[5]    = {1,3,8,3,1};
  
  int   img_y_diff_filtered;
  int   y_mtf_val = 0;
  
  
  // shift registers to reduce memory footprint
  int luma_shift_reg[6] = {0, 0, 0, 0, 0, 0};
  int u_shift_reg[6] = {0, 0, 0, 0, 0, 0};
  int v_shift_reg[6] = {0, 0, 0, 0, 0, 0};
  int yc_shift_reg[6] = {0, 0, 0, 0, 0, 0};
  int y_diff[6] = {0, 0, 0, 0, 0, 0};
  int y_diff_pad[8] = {0, 0, 0, 0, 0, 0, 0, 0};
  int y_end_pad;
  int u_diff[6] = {0, 0, 0, 0, 0, 0};
  int v_diff[6] = {0, 0, 0, 0, 0, 0};
  //Noise reduction coefficient table
  const int mtf_aggressive[MTF_SIZE]  = {255,250,200,160,100,65,50,40,36,30,28,25,23,21,19,18,
                                    17, 16, 15, 14, 13,12,12,11,11,10,10,10,10, 9, 9, 9,
                                     9,  8,  8,  8,  7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 5, 5,
                                     5,  4,  4,  4,  4, 4, 3, 3, 3, 2, 2, 2, 1, 1, 1, 0};
  int mtf_strong[MTF_SIZE]      = {191,188,150,120,75,49,38,30,27,23,21,19,17,16,14,14,
                              13, 12, 11, 11,10, 9, 9, 8, 8, 8, 8, 8, 8, 7, 7, 7,
                               7,  6,  6,  6, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4,
                               4,  3,  3,  3, 3, 3, 2, 2, 2, 2, 2, 2, 1, 1, 1, 0};
  int mtf_med[MTF_SIZE]         = {128,125,100,80,50,33,25,20,18,15,14,13,12,11,10,9,
                               9,  8,  8, 7, 7, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5,5,
                               5,  4,  4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 3,3,
                               3,  2,  2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1,0};
  int mtf_weak[MTF_SIZE]        = {64,63,50,40,25,16,13,10,9,8,7,6,6,5,5,5,
                              4, 4, 4, 4, 3, 3, 3, 3,3,3,3,3,3,2,2,2,
                              2, 2, 2, 2, 2, 2, 2, 2,2,2,2,1,1,1,1,1,
                              1, 1, 1, 1, 1, 1, 1, 1,1,1,1,1,0,0,0,0};
  
  /////////////////////////////////////////////////////////
  // Create output Luma plane (all frames)
  for (row = 0; row < rows; row++) {
    // #pragma AP loop_tripcount min=300 max=1080
    
    unsigned short prev_temp_out_yc;
    unsigned short current_video_data;
    // Filter the padded difference-plane
    // for (col = 0; col < cols + 5; col++) {
    for (col = 0; col < cols; col++) {
#pragma AP pipeline II=1
      
      // #pragma AP loop_tripcount min=300 max=1920
      
      unsigned short previous_video_data;
      unsigned short current_video_data_u;
      unsigned short previous_video_data_u;
      unsigned short current_video_data_v;
      unsigned short previous_video_data_v;
      
      current_video_data = yc_in[row*NUMCOLS + col];
      previous_video_data = yc_in_prev[row*NUMCOLS +col];
      for(int l = 0; l < 5; l++){
#pragma AP unroll
        luma_shift_reg[l] = luma_shift_reg[l+1];
        yc_shift_reg[l] = yc_shift_reg[l+1];
        y_diff[l] = y_diff[l+1];
        u_shift_reg[l] = u_shift_reg[l+1];
        v_shift_reg[l] = v_shift_reg[l+1];
        u_diff[l] = u_diff[l+1];
        v_diff[l] = v_diff[l+1];
      }
      yc_shift_reg[5] = current_video_data;
      
      for(int l = 0; l < 7; l++){
#pragma AP unroll
        y_diff_pad[l] = y_diff_pad[l+1];
      }
      luma_shift_reg[5] = (current_video_data >> BYTESHIFT) & LSB_MASK_16;
      y_diff[5] = ((previous_video_data >> BYTESHIFT) & LSB_MASK_16)  - ((current_video_data >> BYTESHIFT) & LSB_MASK_16);
      
      if (!(col & 1)) {
        current_video_data_u = (current_video_data & LSB_MASK_16);
        previous_video_data_u = (previous_video_data & LSB_MASK_16);
        u_diff[5] = previous_video_data_u - current_video_data_u;
        u_shift_reg[5] = current_video_data_u;
      }
      else {
        current_video_data_v = (current_video_data & LSB_MASK_16);
        previous_video_data_v = (previous_video_data & LSB_MASK_16);
        v_diff[5] = previous_video_data_v - current_video_data_v;
        v_shift_reg[5] = current_video_data_v;
      }
      
      if(col == 0){
        y_diff_pad[5] = y_diff_pad[6] = abs(y_diff[5]);
      }
      y_diff_pad[7] = abs(y_diff[5]);
      if(col == (cols -1)){
        y_end_pad = abs(y_diff[5]);
      }
      
      if(col > 4){
        img_y_diff_filtered = 0;
        if(col == (cols + 4)){
          img_y_diff_filtered += y_diff_pad[0] * h_mask[0] + y_diff_pad[1] * h_mask[1] + y_diff_pad[2] * h_mask[2] + y_end_pad * h_mask[3] + y_end_pad * h_mask[4];
        }
        else{
          for (i=0;i<5;i++){
            img_y_diff_filtered += y_diff_pad[i]*h_mask[i];
          }
        }
        // Divide by 16 to normalize
        img_y_diff_filtered = img_y_diff_filtered>>4;
        
        // Select MTF value from the MTF LUT:
        // When the filtered difference is greater than MTF_SIZE_MINUS_1, use MTF[MTF_SIZE_MINUS_1], otherwise use MTF[img_y_diff_filtered[row][col]]
        
        switch(nr_strength)
          {
          case(0):
            y_mtf_val = 0;
            break;
          case(1):
            y_mtf_val = (img_y_diff_filtered > MTF_SIZE_MINUS_1) ? mtf_weak[MTF_SIZE_MINUS_1] : mtf_weak[img_y_diff_filtered];
            break;
          case(2):
            y_mtf_val = (img_y_diff_filtered > MTF_SIZE_MINUS_1) ? mtf_med[MTF_SIZE_MINUS_1] : mtf_med[img_y_diff_filtered];
            break;
          case(3):
            y_mtf_val = (img_y_diff_filtered > MTF_SIZE_MINUS_1) ? mtf_strong[MTF_SIZE_MINUS_1] : mtf_strong[img_y_diff_filtered];
            break;
          case(4):
            y_mtf_val = (img_y_diff_filtered > MTF_SIZE_MINUS_1) ? mtf_aggressive[MTF_SIZE_MINUS_1] : mtf_aggressive[img_y_diff_filtered];
            break;
          }
        short temp_out_y;
        unsigned short temp_out_yc;
        temp_out_y = luma_shift_reg[0] + (y_mtf_val*(y_diff[0]/256));
        temp_out_yc = (((unsigned short) temp_out_y) << BYTESHIFT) & MSB_MASK_16;
        short temp_out_u;
        short temp_out_v;
        int colval = col ;// -5;
        if (!(col & 1)) {
          temp_out_u = u_shift_reg[0] + (y_mtf_val*(u_diff[0]/256));
          temp_out_yc |= (temp_out_u & LSB_MASK_16);
        }
        else {
          temp_out_v = v_shift_reg[0] + (y_mtf_val*(v_diff[0]/256));
          temp_out_yc |= (temp_out_v & LSB_MASK_16);
        }
        
        if (row < (NUMROWS >> 1)) { // for demo only, to limit MANR to top  half of frame
          yc_out[row*NUMCOLS + colval] =  prev_temp_out_yc;
        }
        else if (row == (NUMROWS >> 1)) { // draw boundary pixel
          yc_out[row*NUMCOLS + colval] = YUV_WHITE_VAL;
        }
        else { // for demo only, just copy input to the output for the bottom half of frame
          yc_out[row*NUMCOLS + colval] = yc_shift_reg[0]; // previous_col_data;
        }
        prev_temp_out_yc = temp_out_yc;
      }
      else { // just send 0
        yc_out[row*NUMCOLS + col] = YUV_BLACK_VAL;
      }
    }
  }
}  

