################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/ST/STM32_BLE_Manager/Src/BLE_Manager.c 

OBJS += \
./Middlewares/ST/STM32_BLE_Manager/Src/BLE_Manager.o 

C_DEPS += \
./Middlewares/ST/STM32_BLE_Manager/Src/BLE_Manager.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/ST/STM32_BLE_Manager/Src/%.o Middlewares/ST/STM32_BLE_Manager/Src/%.su Middlewares/ST/STM32_BLE_Manager/Src/%.cyclo: ../Middlewares/ST/STM32_BLE_Manager/Src/%.c Middlewares/ST/STM32_BLE_Manager/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/BlueNRG-MS/utils -I../Middlewares/ST/BlueNRG-MS/includes -I../BlueNRG-MS/Target -I../Middlewares/ST/BlueNRG-MS/hci/hci_tl_patterns/Basic -I../Middlewares/ST/STM32_BLE_Manager/Inc -I"C:/Users/Casa/STM32CubeIDE/workspace_2/Bluetooth/Middlewares/ST/STM32_BLE_Manager" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-ST-2f-STM32_BLE_Manager-2f-Src

clean-Middlewares-2f-ST-2f-STM32_BLE_Manager-2f-Src:
	-$(RM) ./Middlewares/ST/STM32_BLE_Manager/Src/BLE_Manager.cyclo ./Middlewares/ST/STM32_BLE_Manager/Src/BLE_Manager.d ./Middlewares/ST/STM32_BLE_Manager/Src/BLE_Manager.o ./Middlewares/ST/STM32_BLE_Manager/Src/BLE_Manager.su

.PHONY: clean-Middlewares-2f-ST-2f-STM32_BLE_Manager-2f-Src

