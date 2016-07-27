APPSOURCES = main.cpp mmult.cpp madd.cpp 
EXECUTABLE = mmultadd.elf

PLATFORM = zc702
SDSFLAGS = -sds-pf ${PLATFORM} \
	-sds-hw mmult mmult.cpp -sds-end

CC = sds++ ${SDSFLAGS}

CFLAGS = -O3 -c
LFLAGS = -O3

OBJECTS := $(APPSOURCES:.cpp=.o)

.PHONY: all clean apfclean

all: ${EXECUTABLE}

${EXECUTABLE}: ${OBJECTS}
	${CC} ${LFLAGS} $^ -o $@ 

%.o: %.cpp
	${CC} ${CFLAGS} $^ -o $@

clean:
	${RM} ${EXECUTABLE} ${OBJECTS} 

apfclean: clean
	${RM} ${EXECUTABLE}.bit 
	${RM} -rf _sds sd_card
