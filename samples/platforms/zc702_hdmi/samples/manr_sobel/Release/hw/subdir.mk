################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += ../hw/manr.c \
 ../hw/sobel_filter.cpp \
 ../hw/rgb_pad2ycbcr.c \
 ../hw/ycbcr2rgb_pad.c \
 ../hw/img_filters.c

OBJS += ./hw/manr.o \
  ./hw/sobel_filter.o \
  ./hw/rgb_pad2ycbcr.o \
  ./hw/ycbcr2rgb_pad.o \
  ./hw/img_filters.o

C_DEPS += ./hw/img_filters.d 

SDSFLAGS += -sds-pf $(PLATFORM) \
	-sds-hw manr manr.c -clkid 1 -sds-end \
	-sds-hw sobel_filter sobel_filter.cpp -clkid 1 -sds-end \
	-sds-hw rgb_pad2ycbcr rgb_pad2ycbcr.c -clkid 1 -sds-end \
	-sds-hw ycbcr2rgb_pad ycbcr2rgb_pad.c -clkid 1 -sds-end \
	-dmclkid 1

hw/%.o: ../hw/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux gcc compiler'
	sdscc -Wall -O3  -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



