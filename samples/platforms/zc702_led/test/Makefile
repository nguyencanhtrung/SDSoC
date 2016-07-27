APPSOURCES = pf_test.cpp arraycopy.cpp
EXECUTABLE = zc702_led_test.elf

VERBOSE  = #-verbose
PLATFORM = ../zc702_led

SDS_FLAGS = \
-sds-pf ${PLATFORM} \
-sds-hw arraycopy arraycopy.cpp -sds-end \
${VERBOSE}

CC = sds++ ${SDS_FLAGS}

IDIRS = -I. 
LDIRS = 
LLIBS =  
OLEVEL = -g

CFLAGS = -Wall ${OLEVEL} -c ${IDIRS} 
LFLAGS = ${OLEVEL} ${LDIRS} ${LLIBS} 

SOURCES := $(patsubst %,./%,$(APPSOURCES))   
OBJECTS := $(APPSOURCES:.cpp=.o)

.PHONY: all

all: ${EXECUTABLE}

${EXECUTABLE}: ${OBJECTS}
	${CC} ${OBJECTS} -o $@  ${LFLAGS} 

%.o: %.cpp
	${CC} ${CFLAGS} $< -o $@

clean:
	${RM} ${EXECUTABLE} ${OBJECTS}

ultraclean: clean
	${RM} -rf _sds sd_card ${EXECUTABLE}.bit

