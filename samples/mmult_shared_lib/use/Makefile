APPSOURCES = mmult.cpp
EXECUTABLE = mmult.elf

CC = arm-xilinx-linux-gnueabi-g++

CFLAGS = -Wall -O3 -c
LFLAGS = -O3

OBJECTS := $(APPSOURCES:.cpp=.o)

.PHONY: all

all: ${EXECUTABLE}

${EXECUTABLE}: ${OBJECTS}
	${CC} ${LFLAGS} ${OBJECTS} -L./lib -lmmult_accel -lpthread -o $@ 

mmult.o: mmult.cpp
	${CC} ${CFLAGS} -I./include $< -o $@

clean:
	${RM} ${EXECUTABLE} ${OBJECTS} 
