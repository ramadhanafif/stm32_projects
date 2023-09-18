################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../external/RTT/SEGGER_RTT.c \
../external/RTT/SEGGER_RTT_printf.c 

OBJS += \
./external/RTT/SEGGER_RTT.o \
./external/RTT/SEGGER_RTT_printf.o 

C_DEPS += \
./external/RTT/SEGGER_RTT.d \
./external/RTT/SEGGER_RTT_printf.d 


# Each subdirectory must supply rules for building sources it contributes
external/RTT/%.o external/RTT/%.su external/RTT/%.cyclo: ../external/RTT/%.c external/RTT/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xC -DUSE_FULL_ASSERT -c -I../Core/Inc -I"C:/Users/ramad/Documents/projectSTM32/f401x/uart_wifi/external/Config" -I"C:/Users/ramad/Documents/projectSTM32/f401x/uart_wifi/external/RTT" -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-external-2f-RTT

clean-external-2f-RTT:
	-$(RM) ./external/RTT/SEGGER_RTT.cyclo ./external/RTT/SEGGER_RTT.d ./external/RTT/SEGGER_RTT.o ./external/RTT/SEGGER_RTT.su ./external/RTT/SEGGER_RTT_printf.cyclo ./external/RTT/SEGGER_RTT_printf.d ./external/RTT/SEGGER_RTT_printf.o ./external/RTT/SEGGER_RTT_printf.su

.PHONY: clean-external-2f-RTT

