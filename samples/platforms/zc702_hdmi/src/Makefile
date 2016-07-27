
CROSS_COMPILE = arm-xilinx-linux-gnueabi-
AR = ${CROSS_COMPILE}ar
LD = ${CROSS_COMPILE}ld
CXX = ${CROSS_COMPILE}g++
CC = ${CROSS_COMPILE}gcc
MKDIR = mkdir -p

BUILDDIR ?= build

LIB_LIB = libzc702hdmi.a


CXXFLAGS=-c -O3 -fno-strict-aliasing -Wall -Iinclude 
CFLAGS=-c -O3 -fno-strict-aliasing -Wall -Wstrict-prototypes -Wmissing-declarations -Wmissing-prototypes -Iinclude 

C_SOURCES= cvc.c  fru.c  fru_handler.c  gpio_utils.c  uCreSample.c  uTpg.c  uVtc.c  uYuv2rgb.c  udriver.c  uio_common.c  hwi.c 

SRCDIR := src

C_OBJS := $(C_SOURCES:%.c=${BUILDDIR}/%.o)
OBJECTS := ${C_OBJS}

.PHONY: all

all: ${BUILDDIR}/${LIB_LIB}


${BUILDDIR}:
	${MKDIR} $@

${BUILDDIR}/${LIB_LIB}: ${OBJECTS} | ${BUILDDIR}
	${AR} rcs $@ $^

${C_OBJS}:${BUILDDIR}/%.o: ${SRCDIR}/%.c | ${BUILDDIR}
	${CC} ${CFLAGS} $< -o $@


clean:
	${RM} -r ${BUILDDIR}

