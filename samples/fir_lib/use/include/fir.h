#ifndef FIR_H_
#define FIR_H_

#define N_DATA 32
#define N_COEF 11

/*
  The fir_load function loads new coefficients into the FIR filter.
  Coefficients are then mirrored symmetrically by the IP core. e.g. For
  21 coefficients, only load indices 0 to 11. Coefficients 12 to 20 are
  mirrored from indices 10 to 0.  
*/
void fir_reload(signed char H[N_COEF]);

/* 
  The fir_config function enables the new coefficients to be active. Always
  pass an array with a sinlge element with value 0. Call this function after
  calling fir_load.
*/
void fir_config(signed char H[1]);

/*
  The fir function executes an FIR filter function on the X input and produces
  the Y output using any previously loaded coefficients.
*/
void fir(signed char X[N_DATA], short Y[N_DATA]);

#endif /* FIR_H_ */
