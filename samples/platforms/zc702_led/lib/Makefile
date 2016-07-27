ifeq ($(shell uname), Linux)
	S =;
	MKDIR = mkdir -p
	fixpath = $1
else
	S =&
	MKDIR = mkdir
	fixpath = $(subst /,\,$1)
endif

.PHONY: all

all: libzc702_led.a

libzc702_led.a: uio_axi_gpio.c
	arm-xilinx-linux-gnueabi-gcc -c -g uio_axi_gpio.c
	arm-xilinx-linux-gnueabi-ar crvs libzc702_led.a uio_axi_gpio.o

clean:
	rm -rf libzc702_led.a uio_axi_gpio.o


