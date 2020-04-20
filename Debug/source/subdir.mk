################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source/circ_buffer.c \
../source/global_defines.c \
../source/led_control.c \
../source/logger.c \
../source/lookup.c \
../source/main.c \
../source/mtb.c \
../source/semihost_hardfault.c 

OBJS += \
./source/circ_buffer.o \
./source/global_defines.o \
./source/led_control.o \
./source/logger.o \
./source/lookup.o \
./source/main.o \
./source/mtb.o \
./source/semihost_hardfault.o 

C_DEPS += \
./source/circ_buffer.d \
./source/global_defines.d \
./source/led_control.d \
./source/logger.d \
./source/lookup.d \
./source/main.d \
./source/mtb.d \
./source/semihost_hardfault.d 


# Each subdirectory must supply rules for building sources it contributes
source/%.o: ../source/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
<<<<<<< HEAD
	arm-none-eabi-gcc -std=gnu99 -DCR_INTEGER_PRINTF -DCPU_MKL25Z128VLK4_cm0plus -DCPU_MKL25Z128VLK4 -DDEBUG -DFSL_RTOS_FREE_RTOS -DFRDM_KL25Z -DFREEDOM -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -D__REDLIB__ -DSDK_DEBUGCONSOLE=0 -I"C:\Users\sagar\git\ECEN5813project6_SE_DK\board" -I"C:\Users\sagar\git\ECEN5813project6_SE_DK\source" -I"C:\Users\sagar\git\ECEN5813project6_SE_DK" -I"C:\Users\sagar\git\ECEN5813project6_SE_DK\drivers" -I"C:\Users\sagar\git\ECEN5813project6_SE_DK\CMSIS" -I"C:\Users\sagar\git\ECEN5813project6_SE_DK\utilities" -I"C:\Users\sagar\git\ECEN5813project6_SE_DK\freertos" -I"C:\Users\sagar\git\ECEN5813project6_SE_DK\startup" -O0 -fno-common -g -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
=======
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DCPU_MKL25Z128VLK4_cm0plus -DCPU_MKL25Z128VLK4 -DDEBUG -DFSL_RTOS_FREE_RTOS -DFRDM_KL25Z -DFREEDOM -DSDK_DEBUGCONSOLE=0 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -I"C:\Users\Dhruva\git\ECEN5813project6_SE_DK\board" -I"C:\Users\Dhruva\git\ECEN5813project6_SE_DK\source" -I"C:\Users\Dhruva\git\ECEN5813project6_SE_DK" -I"C:\Users\Dhruva\git\ECEN5813project6_SE_DK\drivers" -I"C:\Users\Dhruva\git\ECEN5813project6_SE_DK\CMSIS" -I"C:\Users\Dhruva\git\ECEN5813project6_SE_DK\utilities" -I"C:\Users\Dhruva\git\ECEN5813project6_SE_DK\freertos" -I"C:\Users\Dhruva\git\ECEN5813project6_SE_DK\startup" -O0 -fno-common -g -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
>>>>>>> branch 'master' of https://github.com/sagareligar/ECEN5813project6_SE_DK.git
	@echo 'Finished building: $<'
	@echo ' '


