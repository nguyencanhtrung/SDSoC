################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

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
colorflip_sw.elf.size \


# All Target
all: colorflip_sw.elf secondary-outputs

# Tool invocations
colorflip_sw.elf: $(OBJS)  $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM Linux gcc linker'
	arm-xilinx-linux-gnueabi-g++ -L$(XILINX_XD)/arm-xilinx-linux-gnueabi/lib -L$(XILINX_XD)/samples/platforms/zc702_hdmi/arm-xilinx-linux-gnueabi/lib -o"colorflip_sw.elf" $(OBJS) $(USER_OBJS) -lsds_lib $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

colorflip_sw.elf.size: colorflip_sw.elf
	@echo 'Invoking: ARM Linux Print Size'
	arm-xilinx-linux-gnueabi-size colorflip_sw.elf  |tee "colorflip_sw.elf.size"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(EXECUTABLES)$(ELFSIZE)$(S_UPPER_DEPS) colorflip_sw.elf 
	-@echo ' '

secondary-outputs: $(ELFSIZE)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
