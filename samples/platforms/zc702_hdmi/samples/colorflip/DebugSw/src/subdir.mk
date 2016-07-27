################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += ../src/main_app.c 

OBJS += ./src/main_app.o 

C_DEPS += ./src/main_app.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux gcc compiler'
	arm-xilinx-linux-gnueabi-gcc -DSDS_NOMMAP -I$(XILINX_XD)/arm-xilinx-linux-gnueabi/include -I ${XILINX_XD}/samples/platforms/zc702_hdmi/arm-xilinx-linux-gnueabi/include  -Wall -O3  -I"../hw" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


