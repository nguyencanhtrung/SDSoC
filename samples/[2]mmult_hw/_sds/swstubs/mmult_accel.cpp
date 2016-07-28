#include <stdio.h>
#include <stdlib.h>

#include "mmult_accel.h"

void mmult_accel (float in_A[A_NROWS*A_NCOLS],
                  float in_B[A_NCOLS*B_NCOLS],
                  float out_C[A_NROWS*B_NCOLS])
{
  for (int row = 0; row < A_NROWS; row++) {
    for (int col = 0; col < B_NCOLS; col++) {
      float result = 0.0;
      for (int k = 0; k < A_NCOLS; k++) {
        result += in_A[row*A_NCOLS+k] * in_B[k*B_NCOLS+col];
      }
      out_C[row*A_NCOLS+col] = result;
    }
  }
}

#include <stdio.h>
#include <stdlib.h>
#include "cf_stub.h"
void _p0_mmult_accel_0(float in_A[1024], float in_B[1024], float out_C[1024]);
void _p0_mmult_accel_0(float in_A[1024], float in_B[1024], float out_C[1024])
{
  switch_to_next_partition(0);
  int start_seq[3];
  start_seq[0] = 0x00000003;
  start_seq[1] = 0x00010001;
  start_seq[2] = 0x00020000;
  cf_request_handle_t _p0_swinst_mmult_accel_0_cmd;
  cf_send_i(&(_p0_swinst_mmult_accel_0.cmd_mmult_accel), start_seq, 3*sizeof(int), &_p0_swinst_mmult_accel_0_cmd);
  cf_wait(_p0_swinst_mmult_accel_0_cmd);

  cf_send_i(&(_p0_swinst_mmult_accel_0.in_A_PORTA), in_A, 1024 * 4, &_p0_request_0);
  cf_send_i(&(_p0_swinst_mmult_accel_0.in_B_PORTA), in_B, 1024 * 4, &_p0_request_1);

  cf_receive_i(&(_p0_swinst_mmult_accel_0.out_C_PORTA), out_C, 1024 * 4, &_p0_mmult_accel_0_num_out_C_PORTA, &_p0_request_2);

  cf_wait(_p0_request_0);
  cf_wait(_p0_request_1);
  cf_wait(_p0_request_2);
}


