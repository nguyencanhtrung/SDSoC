CPP_APPSOURCES = mmult.cpp mmult_accel.cpp 
C_APPSOURCES = main.c
EXECUTABLE = mmult.elf

PLATFORM = zc702 -target-os freertos
SDSFLAGS = -sds-pf ${PLATFORM} \
	-sds-hw mmult_accel mmult_accel.cpp -sds-end \
	-poll-mode 1

CPP = sds++ ${SDSFLAGS}
CC = sdscc ${SDSFLAGS}

CFLAGS = -Wall -O3 -c

LFLAGS = -O3

OBJECTS := $(CPP_APPSOURCES:.cpp=.o) $(C_APPSOURCES:.c=.o)

.PHONY: all

all: ${EXECUTABLE}

${EXECUTABLE}: ${OBJECTS}
	${CPP} ${LFLAGS} ${OBJECTS} -o $@ 

main.o: main.c
	${CC} ${CFLAGS} $< -o $@

%.o: %.cpp
	${CPP} ${CFLAGS} $< -o $@

clean:
	${RM} ${EXECUTABLE} ${OBJECTS} 

ultraclean: clean
	${RM} ${EXECUTABLE}.bit 
	${RM} -rf _sds sd_card
