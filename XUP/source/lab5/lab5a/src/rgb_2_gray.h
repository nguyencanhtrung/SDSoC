/*
 * rgb2gray.h
 *
 *  Created on: May 28, 2015
 *      Author: shaunpur
 */

#ifndef RGB2GRAY_H_
#define RGB2GRAY_H_

/* function prototypes */
#pragma SDS data buffer_depth(input:2073600, output:2073600)
int rgb_2_gray(uint32_t *color, uint8_t *gray);

#endif /* RGB2GRAY_H_ */

/*
 #pragma SDS data mem_attribute (color:PHYSICAL_CONTIGUOUS|NON_CACHEABLE,gray:PHYSICAL_CONTIGUOUS|NON_CACHEABLE)
 with
 #pragma AP INTERFACE ap_fifo port=color
 #pragma AP INTERFACE ap_fifo port=gray does not play nicely*/
