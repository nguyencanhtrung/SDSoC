################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/correlation_accel_v4.cpp \
../src/main.cpp 

OBJS += \
./src/correlation_accel_v4.o \
./src/main.o 

CPP_DEPS += \
./src/correlation_accel_v4.d \
./src/main.d 


# Each subdirectory must supply rules for building sources it contributes
src/correlation_accel_v4.o: ../src/correlation_accel_v4.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: SDS++ Linux Compiler'
	sds++ -Wall -O3 -I"../src" -c -fmessage-length=0 -MT"$@" -sds-hw correlation_accel_v4 correlation_accel_v4.cpp -clkid 2 -sds-end -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/correlation_accel_v4.d" -o "$@" "$<" -sds-pf zed
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: SDS++ Linux Compiler'
	sds++ -Wall -O3 -I"../src" -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<" -sds-pf zed
	@echo 'Finished building: $<'
	@echo ' '

