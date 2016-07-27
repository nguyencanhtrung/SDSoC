#ifndef MANR_H
#define MANR_H
#ifdef __cplusplus
extern "C" {
#endif

#pragma SDS data mem_attribute(rgb_data_in:PHYSICAL_CONTIGUOUS|NON_CACHEABLE)
void rgb_pad2ycbcr(unsigned int rgb_data_in[NUMROWS*NUMPADCOLS], unsigned short  yc_data_out[NUMROWS*NUMCOLS]);

void manr ( char nr_strength, unsigned short *yc_in, unsigned short *yc_in_prev, unsigned short *yc_out); 

void sobel_filter ( unsigned short *yc_in, unsigned short *yc_out); 

#pragma SDS data mem_attribute(rgb_out:PHYSICAL_CONTIGUOUS|NON_CACHEABLE)
void ycbcr2rgb_pad(unsigned short yc_in[NUMROWS*NUMCOLS], unsigned int rgb_out[NUMROWS*NUMPADCOLS]);


#ifdef __cplusplus
};
#endif
#endif 
