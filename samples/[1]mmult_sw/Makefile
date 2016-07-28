APPSOURCES = mmult.cpp mmult_accel.cpp 
EXECUTABLE = mmult.elf

SDSFLAGS   = -sds-pf zed 
CC = sds++ ${SDSFLAGS}

CFLAGS = -Wall -O3 -c

LFLAGS = -O3 -sds-pf zed

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
