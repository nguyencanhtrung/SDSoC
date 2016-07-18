# 1 "C:/xup/SDSoC/labs/lab5/src/sharpen.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 310 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/xup/SDSoC/labs/lab5/src/sharpen.c" 2







# 1 "C:/xup/SDSoC/labs/lab5/src/lab_design.h" 1
# 12 "C:/xup/SDSoC/labs/lab5/src/lab_design.h"
# 1 "C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-eabi/include\\inttypes.h" 1
# 16 "C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-eabi/include\\inttypes.h"
# 1 "C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-eabi/include\\sys/features.h" 1
# 17 "C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-eabi/include\\inttypes.h" 2
# 1 "C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/lib/gcc/arm-xilinx-eabi/4.9.2/include\\stdint.h" 1








# 1 "C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-eabi/include\\stdint.h" 1
# 12 "C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-eabi/include\\stdint.h"
# 1 "C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-eabi/include\\machine/_default_types.h" 1
# 27 "C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-eabi/include\\machine/_default_types.h"
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 41 "C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-eabi/include\\machine/_default_types.h"
typedef short __int16_t;

typedef unsigned short __uint16_t;
# 63 "C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-eabi/include\\machine/_default_types.h"
typedef int __int32_t;

typedef unsigned int __uint32_t;
# 89 "C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-eabi/include\\machine/_default_types.h"
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 120 "C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-eabi/include\\machine/_default_types.h"
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 146 "C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-eabi/include\\machine/_default_types.h"
typedef short __int_least16_t;

typedef unsigned short __uint_least16_t;
# 168 "C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-eabi/include\\machine/_default_types.h"
typedef int __int_least32_t;

typedef unsigned int __uint_least32_t;
# 186 "C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-eabi/include\\machine/_default_types.h"
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 200 "C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-eabi/include\\machine/_default_types.h"
typedef long int __intptr_t;

typedef long unsigned int __uintptr_t;
# 13 "C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-eabi/include\\stdint.h" 2
# 41 "C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-eabi/include\\stdint.h"
typedef __int8_t int8_t ;
typedef __uint8_t uint8_t ;




typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int16_t int16_t ;
typedef __uint16_t uint16_t ;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int32_t int32_t ;
typedef __uint32_t uint32_t ;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int64_t int64_t ;
typedef __uint64_t uint64_t ;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 95 "C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-eabi/include\\stdint.h"
  typedef signed char int_fast8_t;
  typedef unsigned char uint_fast8_t;
# 105 "C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-eabi/include\\stdint.h"
  typedef short int_fast16_t;
  typedef unsigned short uint_fast16_t;
# 115 "C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-eabi/include\\stdint.h"
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 125 "C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-eabi/include\\stdint.h"
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 174 "C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-eabi/include\\stdint.h"
  typedef long long int intmax_t;
# 183 "C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-eabi/include\\stdint.h"
  typedef long long unsigned int uintmax_t;






typedef __intptr_t intptr_t;
typedef __uintptr_t uintptr_t;
# 10 "C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/lib/gcc/arm-xilinx-eabi/4.9.2/include\\stdint.h" 2
# 18 "C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-eabi/include\\inttypes.h" 2

# 1 "C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/lib/gcc/arm-xilinx-eabi/4.9.2/include\\stddef.h" 1
# 324 "C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/lib/gcc/arm-xilinx-eabi/4.9.2/include\\stddef.h"
typedef unsigned int wchar_t;
# 20 "C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-eabi/include\\inttypes.h" 2
# 281 "C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-eabi/include\\inttypes.h"
typedef struct {
  intmax_t quot;
  intmax_t rem;
} imaxdiv_t;





extern intmax_t imaxabs(intmax_t j);
extern imaxdiv_t imaxdiv(intmax_t numer, intmax_t denomer);
extern intmax_t strtoimax(const char *__restrict, char **__restrict, int);
extern uintmax_t strtoumax(const char *__restrict, char **__restrict, int);
extern intmax_t wcstoimax(const wchar_t *__restrict, wchar_t **__restrict, int);
extern uintmax_t wcstoumax(const wchar_t *__restrict, wchar_t **__restrict, int);
# 12 "C:/xup/SDSoC/labs/lab5/src/lab_design.h" 2
# 38 "C:/xup/SDSoC/labs/lab5/src/lab_design.h"
typedef union pixel {
 struct {
  uint8_t red;
  uint8_t green;
  uint8_t blue;
 };
 struct {
  uint8_t gray;
 };
} pixel_t;

typedef struct frame {
 uint32_t height;
 uint32_t width;
 uint8_t *colorFrame;
 uint8_t *grayFrame;
} frame_t;
# 9 "C:/xup/SDSoC/labs/lab5/src/sharpen.c" 2
# 1 "C:/xup/SDSoC/labs/lab5/src/sharpen.h" 1
# 14 "C:/xup/SDSoC/labs/lab5/src/sharpen.h"
#pragma SDS data buffer_depth(input:2073600, output:2073600)
int sharpen_filter(uint8_t *input, uint8_t *output);
# 10 "C:/xup/SDSoC/labs/lab5/src/sharpen.c" 2
# 21 "C:/xup/SDSoC/labs/lab5/src/sharpen.c"
typedef uint8_t window_t[3][3];
typedef uint8_t linebuffer_t[3][1920];


static unsigned char sharpen_operator(window_t window);
static void linebuffer_shift_up(linebuffer_t M, int col);
static uint8_t linebuffer_getval(linebuffer_t M, int RowIndex, int ColIndex);
static void linebuffer_insert_bottom(linebuffer_t M, uint8_t value, int col);
static void window_shift_right(window_t M);
static void window_insert(window_t M, uint8_t value, int row, int col);
static uint8_t window_getval(window_t M, int RowIndex, int ColIndex);


static unsigned char sharpen_operator(window_t window) {
 short x_weight = 0;

 short edge_weight;
 unsigned char edge_val;

 int i;
 int j;

 const short x_op[3][3] = { { 0, -1, 0 }, { -1, 5, -1 },
   { 0, -1, 0 } };


 for (i = 0; i < 3; i++) {
  for (j = 0; j < 3; j++) {

   x_weight = x_weight + (window_getval(window, i, j) * x_op[i][j]);
  }
 }

 edge_weight = ((x_weight>0)? x_weight : -x_weight);

 edge_val = (unsigned char) edge_weight;

 return edge_val;
}



int sharpen_filter(uint8_t *input, uint8_t *output) {

#pragma AP INTERFACE ap_fifo port=input depth=2073600
#pragma AP INTERFACE ap_fifo port=output depth=2073600

 int row;
 int col;
 int index = 0;

 linebuffer_t buff_A;
 window_t buff_C;

 for (row = 0; row < 1080 + 1; row++) {
  for (col = 0; col < 1920 + 1; col++) {

#pragma AP PIPELINE II = 1


 unsigned short input_data = 0;
   unsigned char temp = 0;
   unsigned char tempx = 0;


   if (col < 1920) {
    linebuffer_shift_up(buff_A, col);
    temp = linebuffer_getval(buff_A, 0, col);
   }



   if ((col < 1920) & (row < 1080)) {
    unsigned char y;
    index = row * 1920 + col;
    input_data = input[index];
    y = input_data >> 0;
    tempx = y;
    linebuffer_insert_bottom(buff_A, tempx, col);
   }


   window_shift_right(buff_C);



   if (col < 1920) {
    window_insert(buff_C, linebuffer_getval(buff_A, 2, col), 0, 2);
    window_insert(buff_C, temp, 1, 2);
    window_insert(buff_C, tempx, 2, 2);
   }

   unsigned char edge;



   edge = sharpen_operator(buff_C);



   if (row > 0 && col > 0) {
    index = (row - 1) * 1920 + (col - 1);
    output[index] = (edge << 0) | 0;
   }
  }
 }
 return 0;
}





static void linebuffer_shift_up(linebuffer_t M, int col) {
#pragma AP inline
 int i;
 for (i = 3 - 1; i > 0; i--) {
#pragma AP unroll
 M[i][col] = M[i - 1][col];
 }
}




static uint8_t linebuffer_getval(linebuffer_t M, int RowIndex, int ColIndex) {
#pragma AP inline

 uint8_t return_value;
 return_value = M[RowIndex][ColIndex];
 return return_value;
}





static void linebuffer_insert_bottom(linebuffer_t M, uint8_t value, int col) {
#pragma AP inline

 M[0][col] = value;
}





static void window_shift_right(window_t M) {
#pragma AP inline
 int i, j;
 for (i = 0; i < 3; i++) {
#pragma AP unroll
 for (j = 0; j < 3 - 1; j++) {
#pragma AP unroll
 M[i][j] = M[i][j + 1];
  }
 }
}




static void window_insert(window_t M, uint8_t value, int row, int col) {
#pragma AP inline
 M[row][col] = value;
}




static uint8_t window_getval(window_t M, int RowIndex, int ColIndex) {
#pragma AP inline
 uint8_t return_value;
 return_value = M[RowIndex][ColIndex];
 return return_value;
}
