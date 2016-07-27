################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += ../hw/img_filters.c

OBJS += ./hw/img_filters.o 


# Each subdirectory must supply rules for building sources it contributes
hw/%.o: ../hw/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux gcc compiler'
	arm-xilinx-linux-gnueabi-gcc -Wall -O3  -c -fmessage-length=0 -MMD -MP  -o"$@" "$<" 
	@echo 'Finished building: $<'
	@echo ' '


