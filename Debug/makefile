################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include utilities/subdir.mk
-include startup/subdir.mk
-include source/subdir.mk
-include freertos/subdir.mk
-include drivers/subdir.mk
-include board/subdir.mk
-include CMSIS/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: ECEN5813_Project6_DK_SE.axf

# Tool invocations
ECEN5813_Project6_DK_SE.axf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MCU Linker'
<<<<<<< HEAD
	arm-none-eabi-gcc -nostdlib -Xlinker -Map="ECEN5813project6_SE_DK.map" -Xlinker --gc-sections -Xlinker -print-memory-usage -Xlinker --sort-section=alignment -Xlinker --cref -mcpu=cortex-m0plus -mthumb -T ECEN5813project6_SE_DK_Debug.ld -o "ECEN5813project6_SE_DK.axf" $(OBJS) $(USER_OBJS) $(LIBS)
=======
	arm-none-eabi-gcc -nostdlib -Xlinker -Map="ECEN5813_Project6_DK_SE.map" -Xlinker --gc-sections -Xlinker -print-memory-usage -Xlinker --sort-section=alignment -Xlinker --cref -mcpu=cortex-m0plus -mthumb -T "ECEN5813_Project6_DK_SE_Debug.ld" -o "ECEN5813_Project6_DK_SE.axf" $(OBJS) $(USER_OBJS) $(LIBS)
>>>>>>> branch 'master' of https://github.com/sagareligar/ECEN5813project6_SE_DK.git
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(C_DEPS) ECEN5813_Project6_DK_SE.axf
	-@echo ' '

post-build:
	-@echo 'Performing post-build steps'
	-arm-none-eabi-size "ECEN5813_Project6_DK_SE.axf"; # arm-none-eabi-objcopy -v -O binary "ECEN5813_Project6_DK_SE.axf" "ECEN5813_Project6_DK_SE.bin" ; # checksum -p MKL25Z128xxx4 -d "ECEN5813_Project6_DK_SE.bin";
	-@echo ' '

.PHONY: all clean dependents post-build

-include ../makefile.targets
