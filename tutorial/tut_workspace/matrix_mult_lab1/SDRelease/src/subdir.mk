################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/madd.cpp \
../src/main.cpp \
../src/mmult.cpp 

OBJS += \
./src/madd.o \
./src/main.o \
./src/mmult.o 

CPP_DEPS += \
./src/madd.d \
./src/main.d \
./src/mmult.d 


# Each subdirectory must supply rules for building sources it contributes
src/madd.o: ../src/madd.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: SDS++ Linux Compiler'
	sds++ -Wall -O3 -I"../src" -c -fmessage-length=0 -MT"$@" -sds-hw madd madd.cpp -sds-end -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/madd.d" -o "$@" "$<" -sds-pf zed
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: SDS++ Linux Compiler'
	sds++ -Wall -O3 -I"../src" -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<" -sds-pf zed
	@echo 'Finished building: $<'
	@echo ' '

src/mmult.o: ../src/mmult.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: SDS++ Linux Compiler'
	sds++ -Wall -O3 -I"../src" -c -fmessage-length=0 -MT"$@" -sds-hw mmult mmult.cpp -sds-end -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/mmult.d" -o "$@" "$<" -sds-pf zed
	@echo 'Finished building: $<'
	@echo ' '


