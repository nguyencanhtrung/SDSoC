#ifndef HWI_EXPORT_H
#define HWI_EXPORT_H

#define NUMROWS 1080
#define NUMCOLS 1920
#define NUMPADCOLS 2048

/* The following three values are COPIED from hwi.h 
 * INPUT_LAYER is called SOBEL_LAYER in hwi.h
 */
#define MAX_BUFFER 3
#define DISPLAY_LAYER 1
#define INPUT_LAYER  2

extern unsigned long gLayerBase[MAX_BUFFER];
extern unsigned int ibufferoffset;

#ifdef __cplusplus
extern "C" {
#endif

void init_all(void);
void setCVC_TPGBuffer(int,int);

#ifdef __cplusplus
};
#endif

#endif



