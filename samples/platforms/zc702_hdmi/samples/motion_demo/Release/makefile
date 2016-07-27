################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

BIN_DIR := $(dir $(shell which sdscc))
PLATFORM := $(BIN_DIR)../samples/platforms/zc702_hdmi

# All of the sources participating in the build are defined here
-include sources.mk
# -include hw/subdir.mk
-include src/subdir.mk
-include hw/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
ELFSIZE += \
motion_demo.elf.size \


# All Target
all: motion_demo.elf secondary-outputs

# Tool invocations
motion_demo.elf: $(OBJS)  $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM Linux gcc linker'
	sds++ -o"motion_demo.elf"  $(OBJS) $(USER_OBJS) $(SDSFLAGS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

./hw/sobel_filter.o: ../hw/sobel_filter.cpp
	sds++ -c $(SDSFLAGS) -o"$@" "$<" 

./hw/sobel_filter_pass.o: ../hw/sobel_filter_pass.cpp
	sds++ -c $(SDSFLAGS) -o"$@" "$<" 

./hw/diff_image.o: ../hw/diff_image.c
	sdscc -c $(SDSFLAGS) -o"$@" "$<" 

./hw/combo_image.o: ../hw/combo_image.c
	sdscc -c $(SDSFLAGS) -o"$@" "$<" 

./hw/median_char_filter_pass.o: ../hw/median_char_filter_pass.cpp
	sds++ -c $(SDSFLAGS) -o"$@" "$<" 

./hw/rgb_pad2ycbcr.o: ../hw/rgb_pad2ycbcr.c
	sdscc -c $(SDSFLAGS) -o"$@" "$<" 

./hw/ycbcr2rgb_pad.o: ../hw/ycbcr2rgb_pad.c
	sdscc -c $(SDSFLAGS) -o"$@" "$<" 


motion_demo.elf.size: motion_demo.elf
	@echo 'Invoking: ARM Linux Print Size'
	arm-xilinx-linux-gnueabi-size motion_demo.elf  |tee "motion_demo.elf.size"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(EXECUTABLES)$(ELFSIZE)$(S_UPPER_DEPS) motion_demo.elf motion_demo.elf.bit
	-@echo ' '

ultraclean: clean
	-$(RM)  _sds sd_card 
	-@echo ' '

secondary-outputs: $(ELFSIZE)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
