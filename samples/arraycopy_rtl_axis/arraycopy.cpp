#include <stdio.h>
#include <stdlib.h>

#include "arraycopy.h"

// Copy n values from array a to array b
//
// Array arguments are passed as pointers over axilite and accessed 
// via an IP aximm master port.  
//
// See arraycopy.fcnmap.xml for the software/hardware interface mapping.
// 
// SDSoC will use this function definition to create a stub function to
// control the IP and transfer data between CPU and hardware function, and
// rewrite any calling code to invoke the generated stub in lieu of this
// function.
//
// For more information on importing HDL IP, refer to 
// UG1027 - Introduction to SDSoC, Chapter 16
// UG1146 - SDSoC Platforms and Libraries, Chapter 2
// 
void arraycopy(u64 A[N], u64 B[N], int M) 
{
     // This function body can be non-empty if you want to provide a software
     // implemenation, but currently SDSoC does not support both hardware
     // and software implementations of the same function within the same
     // application.
}

// for conformance testing 
void arraycopy_sw(u64 A[N], u64 B[N], int M) 
{
     if (M < 0 || M > N)
          M = N;

     int val = A[0];
     for(int i = 0; i < M; i++) {
          B[i] = A[i];
          if (val < A[i])
               val = A[i];
     }
}

