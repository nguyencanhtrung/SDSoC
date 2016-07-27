APPSOURCES = mmult.cpp mmult_accel.cpp 
EXECUTABLE = mmult.elf

PLATFORM = zc702
SDSFLAGS = -sds-pf ${PLATFORM} \
	-sds-hw mmult_accel mmult_accel.cpp -sds-end

CC = sds++ ${SDSFLAGS}

CFLAGS = -Wall -O3 -c

LFLAGS = -O3

OBJECTS := $(APPSOURCES:.cpp=.o)

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
