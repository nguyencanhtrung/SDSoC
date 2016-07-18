APPSOURCES = audio.c
EXECUTABLE = zed_audio_sa.elf

VERBOSE  = #-verbose
PLATFORM = ../../../zed_audio

SDS_FLAGS = \
-sds-pf ${PLATFORM} \
-sds-hw audio audio.c -sds-end \
-target-os standalone ${VERBOSE}

CC = sdscc ${SDS_FLAGS}

IDIRS = -I. 
LDIRS = 
LLIBS =  
OLEVEL = 

CFLAGS = -Wall ${OLEVEL} -c ${IDIRS} 
LFLAGS = ${OLEVEL} ${LDIRS} ${LLIBS} 

SOURCES := $(patsubst %,./%,$(APPSOURCES))   
OBJECTS := $(APPSOURCES:.c=.o)

.PHONY: all

all: ${EXECUTABLE}

${EXECUTABLE}: ${OBJECTS}
	${CC} ${OBJECTS} -o $@  ${LFLAGS} 

%.o: %.c
	${CC} ${CFLAGS} $< -o $@

clean:
	${RM} ${EXECUTABLE} ${OBJECTS}

ultraclean: clean
	${RM} -rf _sds sd_card ${EXECUTABLE}.bit

