################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/fsl_clock.c \
../drivers/fsl_common.c \
../drivers/fsl_flash.c \
../drivers/fsl_gpio.c \
../drivers/fsl_lpsci.c \
../drivers/fsl_lpsci_freertos.c \
../drivers/fsl_smc.c \
../drivers/fsl_uart.c \
../drivers/fsl_uart_freertos.c 

OBJS += \
./drivers/fsl_clock.o \
./drivers/fsl_common.o \
./drivers/fsl_flash.o \
./drivers/fsl_gpio.o \
./drivers/fsl_lpsci.o \
./drivers/fsl_lpsci_freertos.o \
./drivers/fsl_smc.o \
./drivers/fsl_uart.o \
./drivers/fsl_uart_freertos.o 

C_DEPS += \
./drivers/fsl_clock.d \
./drivers/fsl_common.d \
./drivers/fsl_flash.d \
./drivers/fsl_gpio.d \
./drivers/fsl_lpsci.d \
./drivers/fsl_lpsci_freertos.d \
./drivers/fsl_smc.d \
./drivers/fsl_uart.d \
./drivers/fsl_uart_freertos.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/%.o: ../drivers/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
<<<<<<< HEAD
	arm-none-eabi-gcc -std=gnu99 -DCR_INTEGER_PRINTF -DCPU_MKL25Z128VLK4_cm0plus -DCPU_MKL25Z128VLK4 -DDEBUG -DFSL_RTOS_FREE_RTOS -DFRDM_KL25Z -DFREEDOM -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -D__REDLIB__ -DSDK_DEBUGCONSOLE=0 -I"C:\Users\sagar\git\ECEN5813project6_SE_DK\board" -I"C:\Users\sagar\git\ECEN5813project6_SE_DK\source" -I"C:\Users\sagar\git\ECEN5813project6_SE_DK" -I"C:\Users\sagar\git\ECEN5813project6_SE_DK\drivers" -I"C:\Users\sagar\git\ECEN5813project6_SE_DK\CMSIS" -I"C:\Users\sagar\git\ECEN5813project6_SE_DK\utilities" -I"C:\Users\sagar\git\ECEN5813project6_SE_DK\freertos" -I"C:\Users\sagar\git\ECEN5813project6_SE_DK\startup" -O0 -fno-common -g -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
=======
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DCPU_MKL25Z128VLK4_cm0plus -DCPU_MKL25Z128VLK4 -DDEBUG -DFSL_RTOS_FREE_RTOS -DFRDM_KL25Z -DFREEDOM -DSDK_DEBUGCONSOLE=0 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -I"C:\Users\Dhruva\git\ECEN5813project6_SE_DK\board" -I"C:\Users\Dhruva\git\ECEN5813project6_SE_DK\source" -I"C:\Users\Dhruva\git\ECEN5813project6_SE_DK" -I"C:\Users\Dhruva\git\ECEN5813project6_SE_DK\drivers" -I"C:\Users\Dhruva\git\ECEN5813project6_SE_DK\CMSIS" -I"C:\Users\Dhruva\git\ECEN5813project6_SE_DK\utilities" -I"C:\Users\Dhruva\git\ECEN5813project6_SE_DK\freertos" -I"C:\Users\Dhruva\git\ECEN5813project6_SE_DK\startup" -O0 -fno-common -g -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
>>>>>>> branch 'master' of https://github.com/sagareligar/ECEN5813project6_SE_DK.git
	@echo 'Finished building: $<'
	@echo ' '


