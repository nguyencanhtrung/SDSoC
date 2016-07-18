#include <stdio.h>
#include <stdlib.h>
#include <xil_io.h>
#include "xiicps.h"
#include <xparameters.h>
#include "xuartps.h"
#include "audio.h"
#include <sds_lib.h>

unsigned char IicConfig(unsigned int DeviceIdPS);
void AudioPllConfig();
void AudioWriteToReg(unsigned char u8RegAddr, unsigned char u8Data);
void AudioConfigureJacks();
void LineinLineoutConfig(void);
void audio_sample_write(int DataL, int DataR);
void audio_sample_read(int * DataL, int * DataR);
void audio_sample_wait(void);

XIicPs Iic;

#define N	58
typedef short	coef_t;
typedef short	data_t;
typedef long	acc_t;

void fir (
	  data_t *y,
	  data_t x
	  )
{
	  const data_t c[N+1]={
	 #include "fir_coef.dat"
		};


	  static data_t shift_reg[N];
	  acc_t acc;
	  int i;

	  acc=(acc_t)shift_reg[N-1]*(acc_t)c[N];
	  for (i=N-1;i!=0;i--) {
		acc+=(acc_t)shift_reg[i-1]*(acc_t)c[i];
		shift_reg[i]=shift_reg[i-1];
	  }
	  acc+=(acc_t)x*(acc_t)c[0];
	  shift_reg[0]=x;
	  *y = acc>>15;
}


#define SAMPLES N+5
void filter(void)
{
	int i=0;
	data_t signal, output;

	int DataL, DataR;
	int FilOutDataL, FilOutDataR;

	Xil_Out32(XPAR_AXI_GPIO_0_BASEADDR, 0b1);
	Xil_Out32(XPAR_AXI_GPIO_0_BASEADDR + 0x4, 0b1);
    for (i=0;i<SAMPLES;i++) {
	  if(i==0)
		  signal = 0x8000;
	  else
		  signal = 0;
	  fir(&output,signal);
	  printf("%i %d %d\n",i,(int)signal,(int)output);
    }

	while (1)
	{
		audio_sample_wait();
		audio_sample_read(&DataL, &DataR);
		fir(&FilOutDataL, (DataL>>8));
		fir(&FilOutDataR, (DataR>>8));
		FilOutDataL = (FilOutDataL & 0x0000ffff) << 8;
		FilOutDataR = (FilOutDataR & 0x0000ffff) << 8;
		audio_sample_write(FilOutDataL, FilOutDataR);
	}
}

int main(void)
{

	//Configure the IIC data structure
	IicConfig(XPAR_XIICPS_0_DEVICE_ID);

	//Configure the Audio Codec's PLL
	AudioPllConfig();

	//Configure the Line in and Line out ports.
	//Call LineInLineOutConfig() for a configuration that
	//enables the HP jack too.
	AudioConfigureJacks();

	Xil_Out32(XPAR_AXI_GPIO_0_BASEADDR, 0b1);
	Xil_Out32(XPAR_AXI_GPIO_0_BASEADDR + 0x4, 0b1);

	filter();

}

