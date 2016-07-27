/******************************************************************************
*
* (c) Copyright 2012-2013 Xilinx, Inc. All rights reserved.
*
* This file contains confidential and proprietary information of Xilinx, Inc.
* and is protected under U.S. and international copyright and other
* intellectual property laws.
*
* DISCLAIMER
* This disclaimer is not a license and does not grant any rights to the
* materials distributed herewith. Except as otherwise provided in a valid
* license issued to you by Xilinx, and to the maximum extent permitted by
* applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL
* FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS,
* IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES OF
* MERCHANTABILITY, NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE;
* and (2) Xilinx shall not be liable (whether in contract or tort, including
* negligence, or under any other theory of liability) for any loss or damage
* of any kind or nature related to, arising under or in connection with these
* materials, including for any direct, or any indirect, special, incidental,
* or consequential loss or damage (including loss of data, profits, goodwill,
* or any type of loss or damage suffered as a result of any action brought by
* a third party) even if such damage or loss was reasonably foreseeable or
* Xilinx had been advised of the possibility of the same.
*
* CRITICAL APPLICATIONS
* Xilinx products are not designed or intended to be fail-safe, or for use in
* any application requiring fail-safe performance, such as life-support or
* safety devices or systems, Class III medical devices, nuclear facilities,
* applications related to the deployment of airbags, or any other applications
* that could lead to death, personal injury, or severe property or
* environmental damage (individually and collectively, "Critical
* Applications"). Customer assumes the sole risk and liability of any use of
* Xilinx products in Critical Applications, subject only to applicable laws
* and regulations governing limitations on product liability.
*
* THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE
* AT ALL TIMES.
*
*******************************************************************************/

/*****************************************************************************
 *
 * @file hwi.c
 *
 * Implementation of pipeline controlling application. Manages threads and calls the
 * APIs to control the pipeline.
 *
 ******************************************************************************/

#include <stdio.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <string.h>
#include <pthread.h>

#include "hwi.h"
#include "driver_include.h"
#include "gpio_utils.h"
#include "udriver.h"
#include "xylonfb.h"
#include "cvc.h"

//To detect FMC.
#include "fru_handler.h"


//shared variables between threads. // not using good mutual exclusion for now. (but shouldn't have problem
static volatile int gActiveState = SOBEL_OFF; // input to sync thread (set by changeSobelMode and used by sync thread)
static volatile int gSwSobelState = SW_SOBEL_STATE_OFF; // output from sync thread (set by sync thread to ack to changesobel mode -- semaphore is option, but doesn't really need that.)
static volatile int gLiveVideoOn = 0;
static volatile int gPerformanceOn = 0;
unsigned int gResolution = E_Resolution_1080P;

unsigned long gLayerBase[MAX_LAYER];
unsigned int ibufferoffset;
static volatile int SelectSobelMode = SOBEL_OFF;

/* variables for memory bandwith usage */
static volatile unsigned long hp0_read_cnt;
static volatile unsigned long hp1_read_cnt;
static volatile unsigned long hp0_write_cnt;
static volatile unsigned long hp1_write_cnt;

static struct xvdma_chan_cfg gTpg_chan_cfg;
static struct xvdma_buf_info gTpg_buf_info;

/* variables for screen and window resolution */
static int hwi_winWidth;
static int hwi_winHeight;
static int hwi_screenWidth;
static int hwi_screenHeight;

static int hwi_tpgVdmaInitialized;
static int hwi_cvcInitialized;
static int isFMCpresent;




//Threads to be created.
void *thread_sw_sync(void* temp);

pthread_t perf_count_thread;
pthread_t sw_sync_thread;
//Initial thread creation state.
int ithreadsbookkeeping[2];

#ifdef VDMA_MM2S_HACK
void configureVDMA_hack(unsigned long vdma_physical_base, int dir, unsigned long mem_base)
{
	unsigned long int PhysicalAddress = vdma_physical_base ;
	int map_len = 0x20;
	int fd = open( "/dev/mem", O_RDWR);
	unsigned char* vdma_base_address;

	vdma_base_address = (unsigned char*)mmap(NULL, map_len, PROT_READ | PROT_WRITE, MAP_SHARED, fd, (off_t)PhysicalAddress);

	//check if it worked
	if(vdma_base_address == MAP_FAILED)
	{
		perror("VDMA Mapping memory for absolute memory access failed.\n");
		return;
	}
	DEBUG_Printf ("VDMA mapping 0x%x to 0x%x, size = %d\n ", (int )PhysicalAddress, (int)vdma_base_address, map_len );

	if (dir == DMA_MEM_TO_DEV)
	{
		REG_WRITE(vdma_base_address, 0x0 /* 0x30 + additional_offset*/, 0x10003);
		REG_WRITE(vdma_base_address,0x58 /*VDMA_FRMDLY_STRIDE */,0x2000);
		REG_WRITE(vdma_base_address,0x5c /*VDMA_START_ADDRESS1*/,mem_base);
		mem_base += ibufferoffset;
		REG_WRITE(vdma_base_address,0x60 /*VDMA_START_ADDRESS2*/,mem_base);
		mem_base += ibufferoffset;
		REG_WRITE(vdma_base_address,0x64 /*VDMA_START_ADDRESS3*/,mem_base);

		REG_WRITE(vdma_base_address,0x54/*VDMA_HSIZE*/,0x1E00);
		REG_WRITE(vdma_base_address,0x50/*VDMA_VSIZE*/,0x438);

	}
	else
	{
		REG_WRITE(vdma_base_address, 0x30, 0x10003);
		REG_WRITE(vdma_base_address,0xa8,0x2000);
		REG_WRITE(vdma_base_address,0xac,mem_base);
		mem_base += ibufferoffset;
		REG_WRITE(vdma_base_address,0xb0,mem_base);
		mem_base += ibufferoffset;
		REG_WRITE(vdma_base_address,0xb4,mem_base);

		REG_WRITE(vdma_base_address,0xa4,0x1E00);
		REG_WRITE(vdma_base_address,0xa0,0x438);
	}

	munmap((void *)vdma_base_address, map_len);
	close(fd);

}
#endif

void ChangeSobelMode(int newMode)
{
	static int currentStatus = -1;
	static int currentLiveMode = 0;


	gActiveState = newMode;



	if (newMode != SOBEL_SW)
	{
		while(gSwSobelState != SW_SOBEL_STATE_OFF)
			sleep(1);
		DEBUG_Text ("Resetting all vdma\n");
		resetStop_VDMA_ALL();
		DEBUG_Text ("Resetting vdma done\n");

	}
	else
	{
		if (currentLiveMode != gLiveVideoOn && currentStatus == SOBEL_SW)
		{
			gActiveState = SOBEL_OFF;
			while(gSwSobelState != SW_SOBEL_STATE_OFF)
				sleep(1);
			gActiveState = newMode;
		}
		while(gSwSobelState != SW_SOBEL_STATE_ON)
			sleep(1);
	}

	currentLiveMode = gLiveVideoOn;

	if (newMode == SOBEL_HW)
	{

	}
	else if(newMode == SOBEL_OFF)
	{
		configureVDMA(VDMA_ID_TPG,DMA_DEV_TO_MEM,gLayerBase[DISPLAY_LAYER]);
		startVDMA(VDMA_ID_TPG, DMA_DEV_TO_MEM);

		DEBUG_Text ("TPG vdma configured\n");

	}

	// might want to wait here if to activate sw sobel filter.
	currentStatus = newMode;
}

void vdma_reset(int vdma_id, int vdma_dir)
{
	int fd_vdma;
	struct xvdma_chan_cfg chan_cfg;
	struct xvdma_dev xdma_device_info;

	if ((fd_vdma = open("/dev/xvdma", O_RDWR)) < 0)
	{
		printf("Cannot open device node xvdma\n");
		//exit(1);
	}

	xdma_device_info.device_id = vdma_id;
	if (ioctl(fd_vdma, XVDMA_GET_DEV_INFO, &xdma_device_info) < 0)
	{
		printf("%s: Failed to get info for device id:%d", __func__, vdma_id);
	}

	if(vdma_dir == DMA_DEV_TO_MEM)
	{// rx
		chan_cfg.chan = xdma_device_info.rx_chan;
	}
	else
	{
		chan_cfg.chan = xdma_device_info.tx_chan;
	}

	chan_cfg.config.reset = 1;
	chan_cfg.config.direction = vdma_dir;

	if (ioctl(fd_vdma, XVDMA_STOP_TRANSFER, &(chan_cfg.chan)) < 0)
		printf("VDMA: XVDMA_STOP_TRANSFER calling failed\n");


	if (ioctl(fd_vdma, XVDMA_DEVICE_CONTROL, &chan_cfg) < 0)
		printf("VDMA: XVDMA_DEVICE_CONTROL calling failed\n");

	close(fd_vdma);
}


void gpio_reset(int level)
{




	// reset TPG
	gpio_export(TPG_RST_PIN);
	gpio_dir_out(TPG_RST_PIN);
	gpio_value(TPG_RST_PIN, level);
	gpio_unexport(TPG_RST_PIN);


#ifdef VTC_DETECT_HACK
	unsigned int activeSize =0;
	// set the external clock for the
	//Added as a check to enable external video only after detecting through VTC detect.
	///&& (gLiveVideoOn != currentLiveMode)
	if (gLiveVideoOn ) {

		//To be removed once VTC Detect is fixed.


		activeSize= get_detector_active_size();
		if(activeSize==0)
		{
			//FMC Card is not present.
			//Set video live to false.
			printf("%s :: FMC Card Not Present \n",__func__);
			gLiveVideoOn = 0;
		}


	}
#endif

	//Only if FMC is present switch to external video.
	if (gLiveVideoOn ) {
		if(!isFMCpresent)
		{
			//FMC Card is not present.
			//Set video live to false.
			printf("%s :: FMC Card Not Present \n",__func__);
			gLiveVideoOn = 0;

		}
	}
	gpio_export(EXT_SYNC_PIN);
	gpio_dir_out(EXT_SYNC_PIN);

	gpio_value(EXT_SYNC_PIN, gLiveVideoOn);
	gpio_unexport(EXT_SYNC_PIN);


}


void resetStop_VDMA_ALL(void)
{
	static int currentLiveMode = 0;
	unsigned int activeSize =0;


	gpio_reset(RST_ACTIVE);	// pull the reset line.



	// reset the Chroma-resampler and YUV to rgb converter.
	chr_stop_reset();
	yuv2rgb_stop_reset();

	DEBUG_Text("Reseting TPG_VDMA\n");
	// Reset TPG VDMA
	vdma_reset(VDMA_ID_TPG, DMA_DEV_TO_MEM);		// tpg
	DEBUG_Text("VDMA Reset Done\n");

	// release the reset ( and set the required external clock)

	//enable chroma resmapler and yuv converter

	chr_configure(gResolution);
	chr_start();

	yuv2rgb_configure(gResolution);
	yuv2rgb_start();


	gpio_reset(RST_INACTIVE);


	if (gLiveVideoOn && (gLiveVideoOn != currentLiveMode))
	{
		//Detected Vertical Active Frame Size.ACTIVE_VSIZE 28:16
		// The height of the frame without blanking in number of lines.

		//Some Delay is added before reading VTC Detect register.
		//Need to removed by reading VTC detect LOCK register.
		sleep(1);

		activeSize= get_detector_active_size();
		unsigned int vertSize = (activeSize >> 16) & 0xFFF;
		unsigned int horSize = (activeSize) & 0xFFF;

		// check if the input clock resolution.
		//printf("Resolution :: %d %d \n",horSize,vertSize);

		if ((gVideoParam[gResolution][E_HActive] != horSize)
				|| (gVideoParam[gResolution][E_VActive] != vertSize)){
			printf("Incorrect Input [Required(got):%d(%d) x %d(%d) @ 60fps(Hz)] \nTurning on the previous pattern\n",
					gVideoParam[gResolution][E_HActive], horSize,
					gVideoParam[gResolution][E_VActive], vertSize);
		        SetTpgPattern(gResolution, 0);
		}
		else
		{

			SetTpgPattern(gResolution, 0);
		}
	}
	currentLiveMode = gLiveVideoOn;


}


void configureVDMA(int vdma_id, int vdma_direction, unsigned long base_address)
{
	struct xvdma_dev xvdma_dev;
	struct xvdma_chan_cfg chan_cfg;
	struct xvdma_buf_info buf_info;
	int fd_vdma;

	if ((fd_vdma = open("/dev/xvdma", O_RDWR)) < 0)
	{
		printf("Cannot open device node xvdma\n");
		//	exit(1);
	}

	xvdma_dev.device_id = vdma_id;

	if (ioctl(fd_vdma, XVDMA_GET_DEV_INFO, &xvdma_dev) < 0)
	{
		printf("%s: Failed to get info for device id:%d", __func__, vdma_id);
	}

	if(vdma_direction == DMA_DEV_TO_MEM)		// frome device to memory
	{// rx
		chan_cfg.chan = xvdma_dev.rx_chan;
		buf_info.chan = xvdma_dev.rx_chan;
		buf_info.mem_type = DMA_DEV_TO_MEM;
	}
	else										// from memory to devie
	{
		chan_cfg.chan = xvdma_dev.tx_chan;
		buf_info.chan = xvdma_dev.tx_chan;
		buf_info.mem_type = DMA_MEM_TO_DEV;
	}

	/* Set up hardware configuration information */

	chan_cfg.config.vsize = gVideoParam[gResolution][E_VActive];
	chan_cfg.config.hsize = gVideoParam[gResolution][E_HActive] * 4; // width length in bytes (Assuming always a pixel is of 32bpp / 24bpp unpacked)
	chan_cfg.config.stride = STRIDE_LENGTH * 4;		// stride length in bytes (Assuming always a pixel is of 32bpp / 24bpp unpacked)

	chan_cfg.config.frm_cnt_en = 0; /* irq interrupt disabled(0), enabled(1) */
	chan_cfg.config.frm_dly = 0;
	chan_cfg.config.park = 0; /* circular_buf_en(0), park_mode(1) */
	chan_cfg.config.gen_lock = 0; /* Gen-Lock */
	chan_cfg.config.disable_intr = 0;
	chan_cfg.config.direction = vdma_direction;
	chan_cfg.config.reset = 0;
	chan_cfg.config.coalesc = 0;
	chan_cfg.config.delay = 0;
	chan_cfg.config.master = 0;
	if(vdma_id == 0)
		chan_cfg.config.ext_fsync = 2; //fsync type
	else
		chan_cfg.config.ext_fsync = 0; //fsync type




	if (ioctl(fd_vdma, XVDMA_DEVICE_CONTROL, &chan_cfg) < 0)			// --1--
		printf("VDMA: XVDMA_DEVICE_CONTROL calling failed\n");

	buf_info.device_id = vdma_id;
	buf_info.direction = vdma_direction;
	buf_info.shared_buffer = 0;
	buf_info.fixed_buffer = 1;
	buf_info.addr_base = base_address;
	buf_info.buf_size = ibufferoffset;
	buf_info.frm_cnt = 3;
	if (ioctl(fd_vdma, XVDMA_PREP_BUF, &buf_info) < 0)
		printf("%s: Calling XVDMA_PREP_BUF failed\n",__func__);

	close(fd_vdma);
}

void startVDMA(int vdma_id, int vdma_direction)
{
	struct xvdma_dev xvdma_dev;
	int fd_vdma;
	struct xvdma_transfer xfer_param;
	if ((fd_vdma = open("/dev/xvdma", O_RDWR)) < 0)
	{
		printf("Cannot open device node xvdma\n");
		//	exit(1);
	}

	xvdma_dev.device_id = vdma_id;
	xfer_param.wait = 0;

	if (ioctl(fd_vdma, XVDMA_GET_DEV_INFO, &xvdma_dev) < 0)
	{
		printf("%s: Failed to get info for device id:%d", __func__, vdma_id);
	}

	switch(vdma_direction)
	{
	case DMA_DEV_TO_MEM:
	{
		xfer_param.chan =  xvdma_dev.rx_chan;
	}
	break;

	case DMA_MEM_TO_DEV:
	{
		xfer_param.chan =  xvdma_dev.tx_chan;
	}
	break;

	default:
		perror("Invalid direction for start transfer");
		break;

	}
	if (ioctl(fd_vdma, XVDMA_START_TRANSFER, &xfer_param) < 0)
		printf("%s: Calling XVDMA_START_TRANSFER failed\n",__func__);

	close(fd_vdma);
}


void cvc_vdma_sw_sync_init(void)
{
	void init_vdma_park_mode(int vdma_id, int vdma_direction, unsigned long base_address);

	init_vdma_park_mode(VDMA_ID_TPG, DMA_DEV_TO_MEM, gLayerBase[SOBEL_LAYER]);
}

void setCVC_TPGBuffer(int cvc_id, int tpg_id)
{

	int fd_vdma = -1;
	struct xvdma_transfer xfer_param;


	set_cvc_frm_id(DISPLAY_LAYER,cvc_id);


	if ((fd_vdma = open("/dev/xvdma", O_RDWR)) < 0)
	{
		perror("Cannot open device node xvdma\n");
		//	exit(1);
	}

	if(gTpg_chan_cfg.config.park == 1)
		gTpg_chan_cfg.config.park_frm = tpg_id;
	else
	{
		perror("\n\n *********  PARK MODE NOT SET ***** Some error in configuration\n\n");
	}


	if (ioctl(fd_vdma, XVDMA_DEVICE_CONTROL, &gTpg_chan_cfg) < 0)
		perror("calling XVDMA_DEVICE_CONTROL failed\n");

	if (ioctl(fd_vdma, XVDMA_PREP_BUF, &gTpg_buf_info) < 0)
		perror("Calling XVDMA_PREP_BUF failed\n");

	xfer_param.chan = gTpg_chan_cfg.chan;
	xfer_param.wait = 0;

	if (ioctl(fd_vdma, XVDMA_START_TRANSFER, &xfer_param) < 0)
		printf("%s: Calling XVDMA_START_TRANSFER failed\n",__func__);

	close(fd_vdma);
}


void init_vdma_park_mode(int vdma_id, int vdma_direction, unsigned long base_address)
{
	struct xvdma_dev xvdma_dev;
	int fd_vdma;

	if ((fd_vdma = open("/dev/xvdma", O_RDWR)) < 0)
	{
		printf("Cannot open device node xvdma\n");
		//	exit(1);
	}

	xvdma_dev.device_id = vdma_id;

	if (ioctl(fd_vdma, XVDMA_GET_DEV_INFO, &xvdma_dev) < 0)
	{
		printf("%s: Failed to get info for device id:%d", __func__, vdma_id);
	}

	if(vdma_direction == DMA_DEV_TO_MEM)
	{// rx
		gTpg_chan_cfg.chan = xvdma_dev.rx_chan;
		gTpg_buf_info.chan = xvdma_dev.rx_chan;
		gTpg_buf_info.mem_type = DMA_DEV_TO_MEM;
	}
	else
	{
		gTpg_chan_cfg.chan = xvdma_dev.tx_chan;
		gTpg_buf_info.chan = xvdma_dev.tx_chan;
		gTpg_buf_info.mem_type = DMA_MEM_TO_DEV;
	}

	/* Set up hardware configuration information */
	gTpg_chan_cfg.config.vsize = gVideoParam[gResolution][E_VActive];
	gTpg_chan_cfg.config.hsize = gVideoParam[gResolution][E_HActive] * 4; // width length in bytes (Assuming always a pixel is of 32bpp / 24bpp unpacked)
	gTpg_chan_cfg.config.stride = STRIDE_LENGTH * 4;		// stride length in bytes (Assuming always a pixel is of 32bpp / 24bpp unpacked_)

	gTpg_chan_cfg.config.frm_cnt_en = 0;
	gTpg_chan_cfg.config.frm_dly = 0;
	gTpg_chan_cfg.config.gen_lock = 0;
	// We don't really need to have interrupts enabled; but keeping it enabled because
	// vdma driver has a bug: it only cleans (frees) the structures allocated at
	// start transfer in interrupt handler and no other place.
	// if not done, then kernel will crash after 1 hr.. (after few million calls to the driver)
	gTpg_chan_cfg.config.disable_intr = 0;
	gTpg_chan_cfg.config.direction = vdma_direction;
	gTpg_chan_cfg.config.reset = 0;
	gTpg_chan_cfg.config.coalesc = 0;
	gTpg_chan_cfg.config.delay = 0;
	gTpg_chan_cfg.config.master = 0;

	gTpg_chan_cfg.config.park = 1;
	gTpg_chan_cfg.config.park_frm = 0;
	if(vdma_id == 0)
		gTpg_chan_cfg.config.ext_fsync = 2;
	else
		gTpg_chan_cfg.config.ext_fsync = 0;


	gTpg_buf_info.device_id = vdma_id;
	gTpg_buf_info.direction = vdma_direction;
	gTpg_buf_info.shared_buffer = 0;
	gTpg_buf_info.fixed_buffer = 1;
	gTpg_buf_info.addr_base = base_address;
	gTpg_buf_info.buf_size = ibufferoffset;
	gTpg_buf_info.frm_cnt = 3;
	close(fd_vdma);

}



////////////////////////////////////////////////////////////////////////////////////////////

//hwi_init function should be called once.
int hwi_init(int screenWidth, int screenHeight,int winWidth, int winHeight)
{




	// Performs UIO initialization.
	if (tpg_init() != 0)
	{
		printf("TPG UIO node not found\n");
		return EXIT_FAILURE;
	}
	if (cre_init() != 0)
	{
		printf("CRE  UIO node not found\n");
		return EXIT_FAILURE;
	}
	if (yuv2rgb_init() != 0)
	{
		printf("YUV UIO node not found\n");
		return EXIT_FAILURE;
	}

	if (vtc_init() != 0)
	{
		printf("VTC UIO node not found\n");
		return EXIT_FAILURE;
	}

	hwi_screenWidth = screenWidth;
	hwi_screenHeight = screenHeight;
	hwi_winWidth = screenWidth>winWidth?winWidth:screenWidth;
	hwi_winHeight = screenHeight>winHeight?winHeight:screenHeight;

	gPerformanceOn = 1;
	//Retrieve Layer Base address and offset from FrameBuffer driver API.
	struct fb_fix_screeninfo screeninfo;
	memset((void *) &screeninfo,0,sizeof(struct fb_fix_screeninfo));
	//Temporarily Using id field as identifier for FrameBuffer device LAYER0.
	sprintf(screeninfo.id, "/dev/fb0");
	//Call CVC function to populate the screen values.
	if (getFBScreenInfo(&screeninfo)!=EXIT_SUCCESS)
	{
		perror("TRD :: FrameBuffer Error App Exiting ");
		exit(EXIT_FAILURE);
	}
	//Load LAYER0 Base address from FrameBuffer screen info.
	gLayerBase[0]=screeninfo.smem_start;

	memset((void *) &screeninfo,0,sizeof(struct fb_fix_screeninfo));
	//Temporarily Using id field as identifier for FrameBuffer device (LAYER1).
	sprintf(screeninfo.id, "/dev/fb1");

	//Call CVC function to populate the screen values.
	if (getFBScreenInfo(&screeninfo)!=EXIT_SUCCESS)
	{
		perror("TRD :: FrameBuffer Error App Exiting ");
		exit(EXIT_FAILURE);

	}

	gLayerBase[1]=screeninfo.smem_start;


	//LAYER 2 , Base address is calculated from LAYER 1 base address + len.
	gLayerBase[2]=screeninfo.smem_start+screeninfo.smem_len;


	//Compute buffer offset . Since there are 3 buffers in each layer .
	ibufferoffset=screeninfo.smem_len/3;



	//Read FMC Detect status
	if(fmc_status()==EXIT_SUCCESS)
		isFMCpresent=1;



	return EXIT_SUCCESS;
}

//Performs HW un-initialization .
int hwi_deinit()
{

	gPerformanceOn = 0;

	ithreadsbookkeeping[0]=0;
	ithreadsbookkeeping[1]=0;

	// Un-initialize the UIO drivers

	tpg_deinit();
	cre_deinit();
	yuv2rgb_deinit();
	// perf_monitor_deinit();
	vtc_deinit();

	return EXIT_SUCCESS;
}
//Check if input resolution is supported by TRD.
int hwi_isresolutionSupported(int screenWidth, int screenHeight )
{

	int i=0;
	for (i=0 ;i < E_Resolution_MAX; i++)
	{
		if ((unsigned) (screenHeight) == gVideoParam[i][E_VActive] && (unsigned)(screenWidth) == gVideoParam[i][E_HActive])
		{
			gResolution = i;
			break;
		}
	}




	if (i == E_Resolution_MAX)
	{
		printf("Invalid Resolution ");
		return EXIT_FAILURE;

	}
	return EXIT_SUCCESS;

}


int hwi_initPerfMon()
{

	return EXIT_SUCCESS;
}

int hwi_initCvc(applicationModeE appmode)
{
	if(!hwi_cvcInitialized)
	{

		resetStop_VDMA_ALL();




		switch(appmode)
		{
		case SOBEL_QT:
			//Sobel_qt application specific initialization.
			set_gui_layer_mode(1);

			set_disp_layer_mode(1); //Set the DISPLAY layer parameters.
			hwi_setHmiWindowParam(0,hwi_screenHeight-hwi_winHeight,hwi_winWidth,hwi_winHeight);
			break;

		case SOBEL_CMD:
			//Sobel_cmd application specific initialization.

			disable_cvc_layer(GUI_LAYER);
			set_disp_layer_mode(1);
			break;
		}



		hwi_cvcInitialized = 1;
	}
	return EXIT_SUCCESS;
}

int hwi_deinitCvc(applicationModeE appmode)
{
	gPerformanceOn = 0;

	if(hwi_cvcInitialized)
	{

		switch(appmode)
		{
		case SOBEL_QT:
			//Sobel_qt application specific initialization.
			set_gui_layer_mode(0);
			set_disp_layer_mode(0); //Reset DISPLAY LAYER.

			//set the UI Layer to normal.

			hwi_setHmiWindowParam(0,0,hwi_screenWidth,hwi_screenHeight);
			break;

		case SOBEL_CMD:
			//Sobel_cmd application specific initialization.
			set_disp_layer_mode(0);
			enable_cvc_layer(GUI_LAYER);
			break;
		}

		hwi_cvcInitialized = 0;



	}
	return EXIT_SUCCESS;
}

int hwi_setHmiWindowParam(int xoffset,int yoffset,int width,int height)
{

	set_cvc_hmi_layer_parameters(xoffset,yoffset,width,height);
	return EXIT_SUCCESS;


}


int hwi_initTpgVdma(void)
{


	if(!hwi_tpgVdmaInitialized)
	{
		hwi_tpgVdmaInitialized = 1;

		gActiveState = SW_SOBEL_STATE_OFF;  // input to sync thread (set by changeSobelMode and used by sync thread)
		gSwSobelState = SW_SOBEL_STATE_ON; // output from sync thread (set by sync thread to ack to changesobel mode -- semaphore is option, but doesn't really need that.)
		gLiveVideoOn = 0;
		SelectSobelMode = SOBEL_OFF;



		resetStop_VDMA_ALL();
		configure_timebase(gResolution);
	}
	return EXIT_SUCCESS;
}


int hwi_deinitTpgVdma(void)
{
	if(hwi_tpgVdmaInitialized)
	{
		hwi_tpgVdmaInitialized = 0;
		//resetStop_VDMA_ALL();
		SelectSobelMode = SOBEL_OFF;
		ChangeSobelMode(SelectSobelMode);
		gActiveState = STATE_EXIT;  // this kills the thread

	}




	return EXIT_SUCCESS;
}


int hwi_setTpgMode(tpgModeE mode)
{
	int ret = 0;
	int pattern = 0;

	switch(mode)
	{
	case TPG_INTERFERENCE_E:
		pattern = 0x000010EA;
		break;
	case TPG_VIDEO_E:
		pattern = 0;
		break;
	default:
		ret = -1;
		break;
	}

	if(ret == 0)
	{
		if(pattern == 0)
			gLiveVideoOn = 1;
		else
		{
			gLiveVideoOn = 0;
			SetTpgPattern(gResolution, pattern);
		}

	}
	return ret;
}


int hwi_setSobelMode(sobelModeE mode)
{
	int ret =0;
	switch(mode)
	{
	case SOBEL_OFF_E:
		mode = SOBEL_OFF;
		break;
	case  SOBEL_ON_SW_NO_NEON_E:
		mode = SOBEL_SW;
		break;
	case SOBEL_ON_HW_E:
		// mode = SOBEL_HW;
		mode = SOBEL_OFF;
		break;
	default:
		ret = -1;
		break;
	}
	if(ret == 0)
	{
		SelectSobelMode = mode;
		ChangeSobelMode(mode);
	}
	return ret;
}

int hwi_getVideoInputState(void)
{
	return gLiveVideoOn;
}


//Set the transparency of GUI_LAYER.
//A value of 100% in the alpha channel gives a fully solid pixel
//0% provides full transparency
void hwi_setTransparency(int value)
{

	//Alpha - brightness
	value=(0xFF-value);
	set_layer_alpha(GUI_LAYER, value);
}

void hwi_setSobelInvert(sobelModeE mode ,int status)
{

	switch(mode)
	{

	case SOBEL_ON_SW_NO_NEON_E:

		break;


	case SOBEL_ON_HW_E:

		break;

	default:
		printf("%s :: Invalid Mode ",__func__);
		break;
	}
}



void hwi_setSobelMinThreshold(sobelModeE mode ,int value)
{


	switch(mode)
	{

	case SOBEL_ON_SW_NO_NEON_E:
		break;


	case SOBEL_ON_HW_E:

		break;

	default:
		printf("%s :: Invalid Mode ",__func__);
		break;
	}

}

void hwi_setSobelMaxThreshold(sobelModeE mode,int value)
{

	switch(mode)
	{

	case SOBEL_ON_SW_NO_NEON_E:
		break;


	case SOBEL_ON_HW_E:

		break;

	default:
		printf("%s :: Invalid Mode ",__func__);
		break;
	}
}


int hwi_getResolution(int *hres,int *vres)
{



	struct fb_var_screeninfo vinfo;
	struct fb_fix_screeninfo finfo;
	int fbfd, err=EXIT_FAILURE;

	char fb_name[10], fb_id;

	fb_id = 0;

	sprintf(fb_name, "/dev/fb%d", fb_id);
	/* Open the file for reading and writing */
	fbfd = open(fb_name, O_RDWR);
	if (fbfd < 0)
	{
		printf("Error : cann't open framebuffer device %s\n", fb_name);
		close(fbfd);
		return EXIT_FAILURE;
	}

	/* Get fixed screen information */
	err = ioctl(fbfd, FBIOGET_FSCREENINFO, &finfo);
	if (err)
	{
		printf("Error reading fb_fix info.\n");
		close(fbfd);
		return EXIT_FAILURE;

	}
	/* Get variable screen information */
	err = ioctl(fbfd, FBIOGET_VSCREENINFO, &vinfo);
	if (err)
	{
		printf("Error reading fb_var info.\n");
		close(fbfd);
		return EXIT_FAILURE;
	}

	if (!strncmp("Xylon FB", finfo.id, 8))
	{
		//Check Layer Resolution.
		*hres=vinfo.xres;
		*vres=vinfo.yres;

	}
	else
	{
		close(fbfd);
		return EXIT_FAILURE;
	}
	close(fbfd);

	return EXIT_SUCCESS;
}


int hwi_setResolution(int x,int y)
{




	struct fb_var_screeninfo vinfo;
	struct fb_fix_screeninfo finfo;
	int fbfd, err;

	char fb_name[10], fb_id;

	fb_id = 0;

	sprintf(fb_name, "/dev/fb%d", fb_id);
	/* Open the file for reading and writing */
	fbfd = open(fb_name, O_RDWR);
	if (fbfd < 0)
	{
		printf("Error : cann't open framebuffer device %s\n", fb_name);
		close(fbfd);
		return EXIT_FAILURE;
	}

	/* Get fixed screen information */
	err = ioctl(fbfd, FBIOGET_FSCREENINFO, &finfo);
	if (err)
	{
		printf("Error reading fb_fix information.\n");
		close(fbfd);
		return EXIT_FAILURE;
	}
	/* Get variable screen information */
	err = ioctl(fbfd, FBIOGET_VSCREENINFO, &vinfo);
	if (err)
	{
		printf("Error reading fb_var info.\n");
		close(fbfd);
		return EXIT_FAILURE;
	}

	vinfo.xres=x;
	vinfo.yres=y;


	/* Set variable screen information */
	err = ioctl(fbfd, FBIOPUT_VSCREENINFO, &vinfo);
	if (err)
	{
		printf("Error writing fb_var info.\n");
		close(fbfd);
		return EXIT_FAILURE;
	}

	close(fbfd);
	return EXIT_SUCCESS;
}


#define DEFAULT_XRES 1920
#define DEFAULT_YRES 1080
void init_all()
{

	int ihorzRes=DEFAULT_XRES,iverRes=DEFAULT_YRES;

	//Set the current resolution to the input resolution.

	int iret=hwi_setResolution(ihorzRes,iverRes);

	if(iret!=EXIT_SUCCESS)
	{
		printf("TRD :: Check if monitor supports input resolution ..");
		exit(EXIT_FAILURE);
	}


	//Perform hw intialization.
	int ret=hwi_init(ihorzRes,iverRes,ihorzRes,iverRes);

	//Added check for hw_init successful.
	if(ret!=EXIT_SUCCESS)
	{
		printf("TRD :: hw_int failed  \n");
		exit(EXIT_FAILURE);
	}

	//Initialize Logic CVC display controller.
	hwi_initCvc(SOBEL_CMD);
	hwi_initTpgVdma();
	hwi_setTpgMode(TPG_VIDEO_E);
	hwi_setSobelMode(SOBEL_ON_SW_NO_NEON_E);

	set_cvc_circular_mode(DISPLAY_LAYER,1);
	resetStop_VDMA_ALL();
	cvc_vdma_sw_sync_init();
	set_cvc_circular_mode(DISPLAY_LAYER,0);
	gSwSobelState = SW_SOBEL_STATE_ON;
}

