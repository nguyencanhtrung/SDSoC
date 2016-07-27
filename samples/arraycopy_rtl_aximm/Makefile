APPSOURCES = arraycopy.cpp  main.cpp
EXECUTABLE = arraycopy_rtl_aximm.elf

PLATFORM = -sds-pf zc702
VERBOSE  = #-verbose
OLEVEL   = -O3
CLKID    = #-clkid 2
DMCLKID  = #-dmclkid 2
SWONLY   = 

SDSFLAGS = \
${PLATFORM} \
-sds-hw arraycopy arraycopy.cpp \
-vlnv xilinx.com:user:arraycopy:1.0 \
-ip-map arraycopy.fcnmap.xml \
-ip-params arraycopy.params.xml \
-ip-repo repo \
-sds-end \
${DMCLKID} ${VERBOSE} ${SWONLY}

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
	${RM} -r ${EXECUTABLE} ${EXECUTABLE}.bit _sds sd_card 

