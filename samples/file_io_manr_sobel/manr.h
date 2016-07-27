#ifndef MANR_H
#define MANR_H

#define MTF_SIZE_MINUS_1 63 
#define MTF_SIZE 64
#define LSB_MASK_16 0x00ff
#define MSB_MASK_16 0xff00
#define BYTESHIFT 8
#define YUV_BLACK_VAL 0x0080
#define YUV_WHITE_VAL 0xff80
void manr ( char nr_strength, unsigned short *yc_in, unsigned short *yc_in_prev, unsigned short *yc_out); 
void sobel_filter ( unsigned short *yc_in, unsigned short *yc_out); 

#endif 
