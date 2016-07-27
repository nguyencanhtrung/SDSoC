#ifndef _IMAGE_DEMO_H_
#define _IMAGE_DEMO_H_



// I/O Image Settings

#define ABSDIFF(x,y)	((x>y)? x - y : y - x)
#define ABS(x)          ((x>0)? x : -x)

// #include "ap_interfaces.h"
#include "ap_video.h"

typedef ap_window<unsigned char,3,3> WINDOW;
typedef ap_window<unsigned char,7,7> MEDIAN_WINDOW;
typedef ap_linebuffer<unsigned char, 3, NUMCOLS> Y_BUFFER;
typedef ap_linebuffer<unsigned short, 2, NUMCOLS> YUV_BUFFER;
typedef ap_linebuffer<unsigned short,6, NUMCOLS> MEDIAN_YUV_BUFFER;
typedef ap_linebuffer<unsigned char, 7, NUMCOLS> MEDIAN_Y_BUFFER;
typedef ap_linebuffer<unsigned short, 7, NUMCOLS> YUV_BUFFER_7;

#endif
