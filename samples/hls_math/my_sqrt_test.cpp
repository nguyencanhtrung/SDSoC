#include <stdio.h>
//#include "my_sqrt.h"

void my_sqrt(float x, float *ret);

int main()
{
  float z;

  printf("HLS square root example\n");

  for (int i = 1; i < 10; i++) { 
    my_sqrt((float) i, &z);
    printf("sqrt(%d) = %f\n", i, z);
  }

  return 0;
}
