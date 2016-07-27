################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

BIN_DIR := $(dir $(shell which sdscc))
PLATFORM := $(BIN_DIR)../samples/platforms/zc702_hdmi

# All of the sources participating in the build are defined here
-include sources.mk
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
colorflip.elf.size \


# All Target
all: colorflip.elf secondary-outputs

# Tool invocations
colorflip.elf: $(OBJS)  $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM Linux gcc linker'
	sds++  -o"colorflip.elf" $(LIBS) $(OBJS) $(USER_OBJS) $(SDSFLAGS)
	@echo 'Finished building target: $@'
	@echo ' '

colorflip.elf.size: colorflip.elf
	@echo 'Invoking: ARM Linux Print Size'
	arm-xilinx-linux-gnueabi-size colorflip.elf  |tee "colorflip.elf.size"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(EXECUTABLES)$(ELFSIZE)$(S_UPPER_DEPS) colorflip.elf colorflip.elf.bit
	-@echo ' '

ultraclean: clean
	-$(RM) -rf _sds sd_card 
	-@echo ' '

secondary-outputs: $(ELFSIZE)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
