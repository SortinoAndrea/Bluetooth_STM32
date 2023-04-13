################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../STM32_BLE_Manager/App/BLE_Implementation.c 

OBJS += \
./STM32_BLE_Manager/App/BLE_Implementation.o 

C_DEPS += \
./STM32_BLE_Manager/App/BLE_Implementation.d 


# Each subdirectory must supply rules for building sources it contributes
STM32_BLE_Manager/App/%.o STM32_BLE_Manager/App/%.su STM32_BLE_Manager/App/%.cyclo: ../STM32_BLE_Manager/App/%.c STM32_BLE_Manager/App/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../BlueNRG-MS/Target -I../STM32_BLE_Manager/App -I../Middlewares/ST/BlueNRG-MS/utils -I../Middlewares/ST/BlueNRG-MS/includes -I../Middlewares/ST/BlueNRG-MS/hci/hci_tl_patterns/Basic -I../Middlewares/ST/STM32_BLE_Manager/Inc -I"C:/Users/Casa/STM32CubeIDE/workspace_2/Bluetooth/STM32_BLE_Manager" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-STM32_BLE_Manager-2f-App

clean-STM32_BLE_Manager-2f-App:
	-$(RM) ./STM32_BLE_Manager/App/BLE_Implementation.cyclo ./STM32_BLE_Manager/App/BLE_Implementation.d ./STM32_BLE_Manager/App/BLE_Implementation.o ./STM32_BLE_Manager/App/BLE_Implementation.su

.PHONY: clean-STM32_BLE_Manager-2f-App

