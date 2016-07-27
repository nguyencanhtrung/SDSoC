#ifndef _IMAGE_CORES_H_
#define _IMAGE_CORES_H_
#ifdef __cplusplus
extern "C" {
#endif

#pragma SDS data mem_attribute(rgb_data_in:PHYSICAL_CONTIGUOUS|NON_CACHEABLE)
void rgb_pad2ycbcr(unsigned int rgb_data_in[NUMROWS*NUMPADCOLS], unsigned short  yc_data_out[NUMROWS*NUMCOLS]);

void sobel_filter( unsigned short *inter_pix, unsigned char *output_edge);

void sobel_filter_pass(unsigned short *inter_pix, unsigned char *output_edge, unsigned short *original_pix);

void combo_image(char pass_through_option, unsigned char *motion_image, unsigned short *original, unsigned short *output_image);

void diff_image(unsigned char *current_pix, unsigned char *previous_pix, unsigned short *original, unsigned short *original_output, unsigned char *motion_image);

void median_char_filter_pass(char threshold, unsigned char *input_edge, unsigned short *input_pix, unsigned char *median_pix, unsigned short *original_pix);

#pragma SDS data mem_attribute(rgb_out:PHYSICAL_CONTIGUOUS|NON_CACHEABLE)
void ycbcr2rgb_pad(unsigned short yc_in[NUMROWS*NUMCOLS], unsigned int rgb_out[NUMROWS*NUMPADCOLS]);

#ifdef __cplusplus
};
#endif
#endif
