/*
 * sharpen.h
 *
 *  Created on: Jun 5, 2015
 *      Author: lancer
 */

#ifndef SHARPEN_H_
#define SHARPEN_H_

/* function proto-types */

//#pragma SDS data sys_port(input:AFI, output:AFI)
#pragma SDS data buffer_depth(input:2073600, output:2073600)
int sharpen_filter(uint8_t *input, uint8_t *output);


#endif /* SHARPEN_H_ */
