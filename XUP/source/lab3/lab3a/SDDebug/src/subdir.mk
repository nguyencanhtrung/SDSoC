################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/SDSoC_lab_design_main.c \
../src/edge_detect.c \
../src/rgb_2_gray.c \
../src/sharpen.c 

OBJS += \
./src/SDSoC_lab_design_main.o \
./src/edge_detect.o \
./src/rgb_2_gray.o \
./src/sharpen.o 

C_DEPS += \
./src/SDSoC_lab_design_main.d \
./src/edge_detect.d \
./src/rgb_2_gray.d \
./src/sharpen.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDSCC Compiler'
	sdscc -DTIME_SHARPEN -DTIME_EDGE_DETECT -Wall -O0 -g -I"../src" -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<" -sds-hw sharpen_filter sharpen.c  -clkid 1 -sds-end -sds-hw sobel_filter edge_detect.c  -clkid 1 -sds-end -target-os standalone -sds-pf zed
	@echo 'Finished building: $<'
	@echo ' '


