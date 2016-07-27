#include "my_sqrt.h"

void my_sqrt(float x, float *ret)
{
#ifdef __SDSVHLS__
  *ret = sqrtf(x);
#endif
}
