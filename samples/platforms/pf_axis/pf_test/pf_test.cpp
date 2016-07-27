#include <stdio.h>
#include <stdlib.h>

#include "pf_axis.h"
#include "sds_lib.h"

static void print_u64_array(u64 A[N], char* a_name)
{
     int i;
     printf("%s = ", a_name);
     for (i = 0; i < N; i++) {
       printf("%llx, ", (u64)A[i]);
     }
     printf("\n");
}

int main(int argc, char *argv[])
{
     u64 *wbuf = (u64 *) sds_alloc(N * sizeof(u64));
     u64 *rbuf = (u64 *) sds_alloc(N * sizeof(u64));

     if (wbuf == NULL || rbuf == NULL) {
          printf("Could not alloc buffer, exiting.\n");
          printf ("Test FAILED!\n");
          return -1;
     }
     int i, res = 0;
     for (i = 0; i < N; i++) {
          wbuf[i] = (u64) i + (u64) 0xDEAFBEEF;
          rbuf[i]  = (u64) 0;
     }

     pf_write(wbuf);   // write to platform output
     pf_read(rbuf);    // read from platform input
                       // will be equal since platform provides loopback

     print_u64_array(rbuf, (char*) "rbuf");
     print_u64_array(wbuf, (char*) "wbuf");

     for (i = 0; i < N; i++) {
          if (rbuf[i] != rbuf[i]) {
               printf("rbuf[%d] = %llx, wbuf[%d] = %llx do not match\n", 
                      i, rbuf[i], i, wbuf[i]);
               res = -1;
               break;
          }
     }
     sds_free(wbuf);
     sds_free(rbuf);
     printf("Test %s!\n", (res ? "FAILED" : "PASSED"));
     return res;
}
