APPSOURCES = arraycopy.cpp  main.cpp
EXECUTABLE = zc702_acp_test.elf

PLATFORM = ../zc702_acp
VERBOSE  = #-verbose
OLEVEL   = -O3

SDSFLAGS = \
-sds-pf ${PLATFORM} \
-sds-hw arraycopy arraycopy.cpp -sds-end \
${VERBOSE}

CPP = sds++ $(SDSFLAGS)
CC  = sdscc $(SDSFLAGS)

IDIRS = -I.
LDIRS =
LLIBS = 

CFLAGS = -Wall ${OLEVEL} -c ${IDIRS}
LFLAGS = ${OLEVEL} ${LDIRS} ${LLIBS}

SOURCES := $(patsubst %,./%,$(APPSOURCES))   
OBJECTS := $(APPSOURCES:.cpp=.o)

.PHONY: all

all: ${EXECUTABLE}

${EXECUTABLE}: ${OBJECTS}
	${CPP} ${LFLAGS} ${OBJECTS} -o $@ 

%.o: %.cpp
	${CPP} ${CFLAGS} $< -o $@

%.o: %.c
	${CC} ${CFLAGS} $< -o $@

clean:
	${RM} ${EXECUTABLE} ${OBJECTS} 

ultraclean: clean
	${RM} -rf ${EXECUTABLE} ${EXECUTABLE}.bit _sds sd_card 

