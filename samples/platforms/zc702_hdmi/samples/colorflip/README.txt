To build the application:
	cd Release 
	make
This creates a directory called sd_card which can be copied to an sd card to
boot linux on a zc702_hdmi platform (zc702 board with Avnet ImageON FMC card)

To build a sw-only version of the application:
	cd DebugSw
	make
This creates a file called colorflip_sw.elf which can be copied onto the SD
card generated in the previous step to run a sw-only version for comparison
with the HW accelerated version


To run the application:
Insert the SD card with the required boot files and executables into the
zc702 board, make sure the HDMI I/Os are connected, and boot in SD mode
At the command prompt on the putty or sdk window:
	cd /media/mmc1
	./colorflip.elf
Fpr for the SW-only version
	./colorflip_sw.elf 

