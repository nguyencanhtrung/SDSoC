APPSOURCES = pf_test.cpp 
EXECUTABLE = pf_axis.elf

VERBOSE  = #-verbose
PLATFORM = ../pf_axis

SDSCC_FLAGS = \
-sds-pf ${PLATFORM} \
${VERBOSE} 

CC = sds++ ${SDSCC_FLAGS}

IDIRS = -I. 
LDIRS = 
LLIBS = -lpf_axis
OLEVEL = -ggdb

CFLAGS = -Wall ${OLEVEL} -c ${IDIRS} 
LFLAGS = ${OLEVEL} ${LDIRS} ${LLIBS} 

SOURCES := $(patsubst %,./%,$(APPSOURCES))   
OBJECTS := $(APPSOURCES:.cpp=.o)

.PHONY: all

all: ${EXECUTABLE}

${EXECUTABLE}: ${OBJECTS}
	${CC} ${OBJECTS} ${LFLAGS} -o $@  

%.o: %.cpp
	${CC} ${CFLAGS} $< -o $@

clean:
	${RM} ${EXECUTABLE} ${OBJECTS}

ultraclean: clean
	${RM} -rf _sds sd_card ${EXECUTABLE}.bit
