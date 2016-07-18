/*
 * edge_detect.h
 *
 *  Created on: May 29, 2015
 *      Author: shaunpur
 */

#ifndef EDGE_DETECT_H_
#define EDGE_DETECT_H_

/* macros */
#define edge_detect	sobel_filter

/* function proto-types */

//#pragma SDS data sys_port(input:AFI, output:AFI)
#pragma SDS data buffer_depth(input:2073600, output:2073600)
int sobel_filter(uint8_t *input, uint8_t *output);

#endif /* EDGE_DETECT_H_ */
