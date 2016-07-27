APPSOURCES = fir.c main.c
EXECUTABLE = fir.elf

CC = sdscc

VERBOSE = #-verbose

SDSFLAGS = -sds-pf zc702 \
-sds-hw fir fir.c -vlnv xilinx.com:ip:fir_compiler:7.2 -ip-map fir.fcnmap.xml -ip-params fir.params.xml -sds-end \
${VERBOSE}

CFLAGS = -Wall -O3 -c ${SDSFLAGS}

LFLAGS = -O3 ${SDSFLAGS}

OBJECTS := $(APPSOURCES:.c=.o)

.PHONY: all

all: ${EXECUTABLE}

${EXECUTABLE}: ${OBJECTS}
	${CC} ${LFLAGS} ${OBJECTS} -o $@ 

fir.o: fir.c
	${CC} ${CFLAGS} $< -o $@

%.o: %.c
	${CC} ${CFLAGS} $< -o $@

clean:
	${RM} ${EXECUTABLE} ${OBJECTS} 

ultraclean: clean
	${RM} ${EXECUTABLE}.bit 
	${RM} -rf _sds sd_card
