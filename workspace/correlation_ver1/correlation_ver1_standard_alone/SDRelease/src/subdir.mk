################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/correlation_accel_v1.cpp \
../src/main.cpp 

OBJS += \
./src/correlation_accel_v1.o \
./src/main.o 

CPP_DEPS += \
./src/correlation_accel_v1.d \
./src/main.d 


# Each subdirectory must supply rules for building sources it contributes
src/correlation_accel_v1.o: ../src/correlation_accel_v1.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: SDS++ Compiler'
	sds++ -Wall -O3 -I"../src" -c -fmessage-length=0 -MT"$@" -sds-hw correlation_accel_v1 correlation_accel_v1.cpp -sds-end -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/correlation_accel_v1.d" -o "$@" "$<" -target-os standalone -sds-pf zed
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: SDS++ Compiler'
	sds++ -Wall -O3 -I"../src" -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<" -target-os standalone -sds-pf zed
	@echo 'Finished building: $<'
	@echo ' '

