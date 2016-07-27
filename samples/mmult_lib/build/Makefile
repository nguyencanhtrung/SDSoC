LIBSOURCES = mmult_accel.cpp 
LIBRARY = libmmult.a

PLATFORM = zc702
SDSFLAGS = -sds-pf ${PLATFORM} \
	-sds-hw mmult_accel mmult_accel.cpp -sds-end

CC = sds++ ${SDSFLAGS}
AR = arm-xilinx-linux-gnueabi-ar

CFLAGS = -Wall -O3 -c

OBJECTS := $(LIBSOURCES:.cpp=.o)

.PHONY: all

all: ${LIBRARY}

${LIBRARY}: ${OBJECTS}
	${AR} crs $@ $^

%.o: %.cpp
	${CC} ${CFLAGS} $< -o $@

clean:
	${RM} ${OBJECTS} ${LIBRARY}

apfclean: clean
	${RM} -rf _sds
