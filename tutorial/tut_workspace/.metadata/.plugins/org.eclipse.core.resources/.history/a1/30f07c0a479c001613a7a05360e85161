#===========================================================#
# TU Kaiserslautern - Microelectronics						#
# Author: Trung C. Nguyen									#
# Master Thesis: High Performance  ... on FPGA-based system	#
#															#
# Revision:													#
#	- v1.0: 												#
#															#
#===========================================================# 

#=================== MACRO ===========================
ACCEL		= correlation_accel_v1
ACCELFILE 	= correlation_accel_v1.cpp
SYNMODE		= -poll-mode 1
PLATFORM   	= zed

#OS		= standalone / freertos
#APPSOURCES 	= correlation_accel_v1.cpp			
#EXECUTABLE 	= correlation_accel_v1.elf

SDSFLAGS   	= -sds-pf ${PLATFORM}	\		
		  -sds-hw ${ACCEL} ${ACCELFILE} sds-end \
		  ${SYNMODE}

CC = sds++ ${SDSFLAGS}

CFLAGS = -Wall -O3 -c

LFLAGS = -O3 -sds-pf ${PLATFORM}

OBJECTS := $(APPSOURCES:.cpp=.o)

#=================== RULES ===========================
.PHONY: all

all: ${EXECUTABLE}

${EXECUTABLE}: ${OBJECTS}
	${CC} ${LFLAGS} ${OBJECTS} -o $@ 

%.o: %.cpp
	${CC} ${CFLAGS} $< -o $@

clean:
	${RM} ${EXECUTABLE} ${OBJECTS}

ultraclean: clean
	${RM} ${EXECUTABLE}.bit 
	${RM} -rf _sds sd_card
