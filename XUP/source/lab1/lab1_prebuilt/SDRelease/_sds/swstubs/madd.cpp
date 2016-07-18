#include <stdlib.h>
#include "madd.h"

void madd(float A[NROWS*NCOLS], float B[NROWS*NCOLS], float C[NROWS*NCOLS])
{
  int i, j;

  for (i = 0; i < NROWS; i++)
    for (j = 0; j < NCOLS; j++)
#pragma HLS PIPELINE II=1
      C[i*NCOLS+j] = A[i*NCOLS+j] + B[i*NCOLS+j];

}

#include <stdio.h>
#include <stdlib.h>
#include "cf_stub.h"
void _p0_madd_0(float A[1024], float B[1024], float C[1024]);
void _p0_madd_0(float A[1024], float B[1024], float C[1024])
{
  switch_to_next_partition(0);
  int start_seq[3];
  start_seq[0] = 0x00000000;
  start_seq[1] = 0x00010000;
  start_seq[2] = 0x00020000;
  cf_request_handle_t _p0_swinst_madd_0_cmd;
  cf_send_i(&(_p0_swinst_madd_0.cmd_madd), start_seq, 3*sizeof(int), &_p0_swinst_madd_0_cmd);
  cf_wait(_p0_swinst_madd_0_cmd);

  cf_send_i(&(_p0_swinst_madd_0.B), B, 1024 * 4, &_p0_request_0);

  cf_receive_i(&(_p0_swinst_madd_0.C), C, 1024 * 4, &_p0_madd_0_num_C, &_p0_request_1);

  cf_wait(_p0_request_0);
  cf_wait(_p0_request_1);
  cf_wait(_p0_request_2);
  cf_wait(_p0_request_3);
}

