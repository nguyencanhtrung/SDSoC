/******************************************************************************
 *
 * (c) Copyright 2012 Xilinx, Inc. All rights reserved.
 *
 * This file contains confidential and proprietary information of Xilinx, Inc.
 * and is protected under U.S. and international copyright and other
 * intellectual property laws.
 *
 * DISCLAIMER:
 * This disclaimer is not a license and does not grant any rights to the
 * materials distributed herewith. Except as otherwise provided in a valid
 * license issued to you by Xilinx, and to the maximum extent permitted by
 * applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL
 * FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS,
 * IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES OF
 * MERCHANTABILITY, NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE;
 * and (2) Xilinx shall not be liable (whether in contract or tort, including
 * negligence, or under any other theory of liability) for any loss or damage
 * of any kind or nature related to, arising under or in connection with these
 * materials, including for any direct, or any indirect, special, incidental,
 * or consequential loss or damage (including loss of data, profits, goodwill,
 * or any type of loss or damage suffered as a result of any action brought by
 * a third party) even if such damage or loss was reasonably foreseeable or
 * Xilinx had been advised of the possibility of the same.
 *
 * CRITICAL APPLICATIONS:
 * Xilinx products are not designed or intended to be fail-safe, or for use in
 * any application requiring fail-safe performance, such as life-support or
 * safety devices or systems, Class III medical devices, nuclear facilities,
 * applications related to the deployment of airbags, or any other applications
 * that could lead to death, personal injury, or severe property or
 * environmental damage (individually and collectively, "Critical
 * Applications"). Customer assumes the sole risk and liability of any use of
 * Xilinx products in Critical Applications, subject only to applicable laws
 * and regulations governing limitations on product liability.
 *
 * THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE
 * AT ALL TIMES.
 *
 *******************************************************************************/

/*****************************************************************************
 *
 * @file main_app.c
 *
 * Implementation of controlling application.
 *
 ******************************************************************************/

#include <stdio.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <pthread.h>
#include <linux/fb.h>
#include <string.h>
#include <stdlib.h>
#include <getopt.h>
#include "zc702hdmi/hwi_export.h"

#include "img_filters.h"
#include "sds_lib.h"
#define TIME_STAMP_INIT  unsigned long long clock_start, clock_end;  clock_start = sds_clock_counter();  
#define TIME_STAMP  { clock_end = sds_clock_counter(); printf("elapsed time %llu \n", clock_end-clock_start); clock_start = sds_clock_counter();  }

//User Includes.





void motion_demo_processing(unsigned int prev_buffer, unsigned int in_buffer, unsigned int out_buffer)
{
	int param0=0, param1=1, param2=2;

TIME_STAMP_INIT
	img_process((unsigned int *)prev_buffer, (unsigned int *)in_buffer, (unsigned int *)out_buffer, param0, param1, param2);
TIME_STAMP

}


void *thread_sw_sync()
{
	unsigned int output_frame[MAX_BUFFER];
	unsigned int input_frame[MAX_BUFFER];
	unsigned int virt_output_frame[MAX_BUFFER];
	unsigned int virt_input_frame[MAX_BUFFER];
	int i = 0;
	int offset = 0;

	// starting indices
	unsigned int map_len = NUMPADCOLS * NUMROWS * sizeof(int);
	int fd = open("/dev/mem", O_RDWR);

	unsigned char* virtual_addr_in;
	unsigned char* virtual_addr_out;

	int infrm_index = 2 ,outfrm_index = 0, accel_prev_index=0, accel_in_index = 1, accel_out_index = 1;

	for (i = 0; i<MAX_BUFFER; i++)
	{
		output_frame[i] = gLayerBase[DISPLAY_LAYER] + offset;
		input_frame[i] = gLayerBase[INPUT_LAYER] + offset;
		offset += ibufferoffset;
		virtual_addr_in = (unsigned char*)mmap(NULL, map_len, PROT_READ | PROT_WRITE, MAP_SHARED, fd, (off_t)input_frame[i]);
		virtual_addr_out = (unsigned char*)mmap(NULL, map_len, PROT_READ | PROT_WRITE, MAP_SHARED, fd, (off_t)output_frame[i]);
		virt_input_frame[i] = (unsigned int)virtual_addr_in;
                virt_output_frame[i] = (unsigned int)virtual_addr_out;
#ifndef SDS_NOMMAP
                sds_mmap((void *)input_frame[i], map_len, virtual_addr_in);
                sds_mmap((void *)output_frame[i], map_len, virtual_addr_out);
#endif
	}
	close (fd);
	setCVC_TPGBuffer(outfrm_index,infrm_index);
	motion_demo_processing(virt_input_frame[accel_prev_index], virt_input_frame[accel_in_index], virt_output_frame[accel_out_index]);
	while(1)
	{
		outfrm_index++;
		outfrm_index %= MAX_BUFFER;

		infrm_index++;
		infrm_index  %= MAX_BUFFER;

		setCVC_TPGBuffer(outfrm_index,infrm_index);

		accel_prev_index = accel_in_index;
		accel_in_index++;
		accel_in_index  %= MAX_BUFFER;

		accel_out_index++;
		accel_out_index  %= MAX_BUFFER;

		motion_demo_processing(virt_input_frame[accel_prev_index], virt_input_frame[accel_in_index], virt_output_frame[accel_out_index]);

	} 
	// do the following on exit
        // sds_munmap(virtual_addr_in);
        // sds_munmap(virtual_addr_out);
	// munmap((void *)virtual_addr_out, map_len);
	// munmap((void *)virtual_addr_in, map_len);
}

int main(int argc, char **argv)
{
	init_all();
	thread_sw_sync(); // Sample code - loop forever, exit with Ctrl-C
	return EXIT_SUCCESS;
}


