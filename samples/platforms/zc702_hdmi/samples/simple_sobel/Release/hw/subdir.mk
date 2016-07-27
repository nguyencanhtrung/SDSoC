################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += ../hw/img_filters.c

OBJS += ./hw/img_filters.o 

SDSFLAGS += -sds-pf $(PLATFORM) \
	-sds-hw img_process img_filters.c -clkid 1 -sds-end \
	-dmclkid 1

# Each subdirectory must supply rules for building sources it contributes
hw/%.o: ../hw/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux gcc compiler'
	sdscc -Wall -O3  -c -fmessage-length=0 -MMD -MP  -o"$@" "$<" $(SDSFLAGS)
	@echo 'Finished building: $<'
	@echo ' '


