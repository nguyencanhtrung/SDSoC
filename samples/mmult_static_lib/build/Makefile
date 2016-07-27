SOURCES = mmult_accel.cpp mmult_call.cpp
EXECUTABLE = mmult_accel.elf

PLATFORM = zc702
SDSFLAGS = -sds-pf ${PLATFORM} \
	-sds-hw mmult_accel mmult_accel.cpp -sds-end

CC = sds++ ${SDSFLAGS}
AR = arm-xilinx-linux-gnueabi-ar

CFLAGS = -Wall -O3 -c
LFLAGS = -O3

.PHONY: all

all: ${EXECUTABLE}

mmult_accel.o: mmult_accel.cpp
	${CC} ${CFLAGS} $< -o $@

mmult_call.o: mmult_call.cpp
	${CC} ${CFLAGS} $< -o $@

${EXECUTABLE}: mmult_call.o mmult_accel.o
	${CC} $^ -o $@

clean:
	${RM} ${EXECUTABLE} mmult_accel.o mmult_call.o mmult.o

ultraclean: clean
	${RM} ${EXECUTABLE}.bit 
	${RM} -rf _sds sd_card
