APPSOURCES = mmult.cpp
EXECUTABLE = mmult.elf

CC = arm-xilinx-linux-gnueabi-g++

CFLAGS = -Wall -O3 -c -I./include
#LFLAGS = -O3 -L./lib -lmmult_accel -lcf_lib -lpthread
LFLAGS = -O3 -L./lib -lmmult_accel -lpthread

OBJECTS := $(APPSOURCES:.cpp=.o)

.PHONY: all

all: ${EXECUTABLE}

${EXECUTABLE}: ${OBJECTS}
	${CC} ${OBJECTS} ${LFLAGS}  -o $@

%.o: %.cpp
	${CC} ${CFLAGS} $< -o $@

clean:
	${RM} ${EXECUTABLE} ${OBJECTS} 
