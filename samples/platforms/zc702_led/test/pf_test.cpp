#include <stdio.h>
#include <cstdlib>
#include "uio_axi_gpio.h"
#include "zc702_led_test.h"
#include "sds_lib.h"

int compare_uint32_arrays(uint32 *A, uint32 *B)
{
     for (int i = 0; i < N; i++) {
          if (A[i] != B[i]) {
               printf("A[%d] = %x, B[%d] = %x do not match\n", i, A[i], i, B[i]);
               return -1;
          }
     }
     return 0;
}

int main(int argc, char **argv)
{
	axi_gpio axi_gpio_0;
	int status = axi_gpio_init(&axi_gpio_0, "gpio");
	if (status < 0) {
		perror("axi_gpio_init");
		return -1;
	}

        printf("Allocating arrays\n");
        uint32 *A, *B;
        A = (uint32 *)sds_alloc(NUMBYTES);
        B = (uint32 *)sds_alloc(NUMBYTES);
        
        if (A == NULL) {
             printf("Could not allocate memory A - exiting\n");
        }
        else if (B == NULL) {
             printf("Could not allocate memory B - exiting\n");
        }
        else {
             bool success = true;
             printf("LEDs match iteration index...\n");
             for (int j = 0; j < 64; j++) {
                  axi_gpio_write_reg(axi_gpio_0.baseaddr, 0, (unsigned char) j);
                  for (int i = N-1; i >= 0; i-- ) {
                       A[i] = rand() % N ;
                       B[i] = 0;
                  }
                  
                  printf("A: ");
                  for (int i = 0; i < N; i++)
                       printf("%5d", A[i]);
                  printf("\n");
                  
                  arraycopy(A, B);
                  
                  if (compare_uint32_arrays(A, B)) {
                       success = false;
                       break;
                  }
                  printf("Iteration %2d matched.  Update LEDs and spin CPU to make change visible.\n",  j);
                  for (int i=0; i < 50000000; i++);
             }
             printf("Freeing array\n");
             sds_free(A);
             printf("%s\n", success ? "Test passed!" : "Better luck next time...");
             axi_gpio_release(&axi_gpio_0);
        } 
	return 0;
}
