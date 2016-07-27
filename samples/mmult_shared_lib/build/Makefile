LIBRARY = libmmult_accel.so

PLATFORM = zc702
SDSFLAGS = -sds-pf ${PLATFORM} \
	-sds-hw mmult_accel mmult_accel.cpp -sds-end

CC = sds++ ${SDSFLAGS}

CFLAGS = -Wall -O3 -c
LFLAGS = -O3

.PHONY: all

all: ${LIBRARY}

mmult_accel.o: mmult_accel.cpp
	${CC} ${CFLAGS} -fPIC $< -o $@

mmult_call.o: mmult_call.cpp
	${CC} ${CFLAGS} -fPIC $< -o $@

${LIBRARY}: mmult_accel.o mmult_call.o
	${CC} -shared $^ -o $@

clean:
	${RM} ${LIBRARY} mmult_accel.o mmult_call.o

apfclean: clean
	${RM} ${LIBRARY}.bit 
	${RM} -rf _sds sd_card
