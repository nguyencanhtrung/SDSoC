PLATFORM_SOURCES = rgb_utils.c video_utils.c yuv_utils.c
APPSOURCES = top.cpp manr.cpp sobel_filter.cpp
EXECUTABLE = manr_sobel_fio.elf

PLATFORM = microzed
SDSFLAGS = -sds-pf ${PLATFORM} \
	-sds-hw manr manr.cpp -clkid 1 -sds-end \
	-sds-hw sobel_filter sobel_filter.cpp -clkid 1 -sds-end \
	-Wxl,-poll-mode,1 -dmclkid 1


CC = sdscc ${SDSFLAGS}
CXX = sds++ ${SDSFLAGS}

CFLAGS = -O3 -c -Wall -I. -I./platform 
LFLAGS = -O3  

CPP_OBJECTS := $(APPSOURCES:.cpp=.o)
PLATFORM_OBJECTS := $(PLATFORM_SOURCES:.c=.o)

.PHONY: all

all: ${EXECUTABLE}


${EXECUTABLE}: ${CPP_OBJECTS} ${PLATFORM_OBJECTS}
	${CXX} ${CPP_OBJECTS} ${PLATFORM_OBJECTS} -o $@ $(LFLAGS)

%.o: %.cpp
	${CXX} ${CFLAGS} $< -o $@

%.o: ./platform/%.c
	${CC} ${CFLAGS} $< -o $@ 

clean:
	${RM} ${EXECUTABLE} ${CPP_OBJECTS} ${PLATFORM_OBJECTS}

ultraclean:
	${RM} -rf _sds sd_card ${EXECUTABLE} ${CPP_OBJECTS} ${PLATFORM_OBJECTS}


