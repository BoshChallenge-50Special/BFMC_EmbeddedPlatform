# This file was automagically generated by mbed.org. For more information, 
# see http://mbed.org/handbook/Exporting-to-GCC-ARM-Embedded

###############################################################################
# Boiler-plate

# cross-platform directory manipulation
ifeq ($(shell echo $$OS),$$OS)
    MAKEDIR = if not exist "$(1)" mkdir "$(1)"
    RM = rmdir /S /Q "$(1)"
else
    MAKEDIR = '$(SHELL)' -c "mkdir -p \"$(1)\""
    RM = '$(SHELL)' -c "rm -rf \"$(1)\""
endif

OBJDIR := BUILD
# Move to the build directory
ifeq (,$(filter $(OBJDIR),$(notdir $(CURDIR))))
.SUFFIXES:
mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
MAKETARGET = '$(MAKE)' --no-print-directory -C $(OBJDIR) -f '$(mkfile_path)' \
		'SRCDIR=$(CURDIR)' $(MAKECMDGOALS)
.PHONY: $(OBJDIR) clean
all:
	+@$(call MAKEDIR,$(OBJDIR))
	+@$(MAKETARGET)
$(OBJDIR): all
Makefile : ;
% :: $(OBJDIR) ; :
clean :
	$(call RM,$(OBJDIR))

else

# trick rules into thinking we are in the root, when we are in the bulid dir
VPATH = $(SRCDIR)/

# Boiler-plate
###############################################################################
# Project settings

PROJECT := Nucleo_mbedrobot

# Project settings
###############################################################################
# Objects and Paths

OBJECTS += src/utils/linalg/linalg.o
OBJECTS += src/utils/queue/queue.o
OBJECTS += src/utils/taskmanager/taskmanager.o
OBJECTS += src/utils/serial/serialmonitor.o
OBJECTS += src/examples/echoer.o
OBJECTS += src/examples/blinker.o
OBJECTS += src/examples/sensors/encoderpublisher.o
OBJECTS += src/utils/timer/timer.o

OBJECTS += src/hardware/drivers/steeringmotor.o
OBJECTS += src/hardware/drivers/dcmotor.o
OBJECTS += src/hardware/encoders/quadraturecounter.o
OBJECTS += src/hardware/encoders/quadratureencoder.o

OBJECTS += src/signal/filter/filter.o
OBJECTS += src/signal/systemmodels/systemmodels.o
OBJECTS += src/signal/controllers/motorcontroller.o
OBJECTS += src/signal/controllers/converters.o
OBJECTS += src/signal/controllers/sisocontrollers.o

OBJECTS += src/brain/robotstatemachine.o
OBJECTS += src/main.o


 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_flash_ramfunc.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/PeripheralPins.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/analogin_api.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/analogout_api.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/can_api.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/cmsis_nvic.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/gpio_api.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/gpio_irq_api.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/hal_init_pre.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/hal_tick_16b.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/hal_tick_32b.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/i2c_api.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/lp_ticker.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/mbed_board.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/mbed_overrides.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/pinmap.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/port_api.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/pwmout_api.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/retarget.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/rtc_api.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/serial_api.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/sleep.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/spi_api.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/startup_stm32f401xe.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_adc.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_adc_ex.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_can.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_cec.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_cortex.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_crc.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_cryp.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_cryp_ex.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_dac.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_dac_ex.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_dcmi.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_dcmi_ex.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_dfsdm.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_dma.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_dma2d.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_dma_ex.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_dsi.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_eth.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_flash.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_flash_ex.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_fmpi2c_ex.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_fmpi2c.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_msp_template.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_gpio.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_hash.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_hash_ex.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_hcd.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_i2c.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_i2c_ex.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_i2s.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_i2s_ex.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_irda.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_iwdg.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_lptim.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_ltdc.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_ltdc_ex.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_smartcard.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_nand.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_nor.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_pccard.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_pcd.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_pcd_ex.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_pwr.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_pwr_ex.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_qspi.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_rcc.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_rcc_ex.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_rng.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_rtc.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_rtc_ex.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_sai.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_sai_ex.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_sd.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_sdram.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_spdifrx.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_spi.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_sram.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_tim.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_tim_ex.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_uart.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_usart.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_wwdg.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_ll_fmc.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_ll_fsmc.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_ll_sdmmc.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm32f4xx_ll_usb.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/stm_spi_api.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/system_stm32f4xx.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/trng_api.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/us_ticker_16b.o
 SYS_OBJECTS += libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/us_ticker_32b.o

SYS_OBJECTS += libs/mbed-rtos/TARGET_NUCLEO_F401RE/rtos/Mutex.o
SYS_OBJECTS += libs/mbed-rtos/TARGET_NUCLEO_F401RE/rtos/RtosTimer.o
SYS_OBJECTS += libs/mbed-rtos/TARGET_NUCLEO_F401RE/rtos/Semaphore.o
SYS_OBJECTS += libs/mbed-rtos/TARGET_NUCLEO_F401RE/rtos/Thread.o
SYS_OBJECTS += libs/mbed-rtos/TARGET_NUCLEO_F401RE/rtos/rtos_idle.o
SYS_OBJECTS += libs/mbed-rtos/TARGET_NUCLEO_F401RE/rtx/TARGET_CORTEX_M/HAL_CM.o
SYS_OBJECTS += libs/mbed-rtos/TARGET_NUCLEO_F401RE/rtx/TARGET_CORTEX_M/RTX_Conf_CM.o
SYS_OBJECTS += libs/mbed-rtos/TARGET_NUCLEO_F401RE/rtx/TARGET_CORTEX_M/TARGET_RTOS_M4_M7/TOOLCHAIN_GCC/HAL_CM4.o
SYS_OBJECTS += libs/mbed-rtos/TARGET_NUCLEO_F401RE/rtx/TARGET_CORTEX_M/TARGET_RTOS_M4_M7/TOOLCHAIN_GCC/SVC_Table.o
SYS_OBJECTS += libs/mbed-rtos/TARGET_NUCLEO_F401RE/rtx/TARGET_CORTEX_M/rt_CMSIS.o
SYS_OBJECTS += libs/mbed-rtos/TARGET_NUCLEO_F401RE/rtx/TARGET_CORTEX_M/rt_Event.o
SYS_OBJECTS += libs/mbed-rtos/TARGET_NUCLEO_F401RE/rtx/TARGET_CORTEX_M/rt_List.o
SYS_OBJECTS += libs/mbed-rtos/TARGET_NUCLEO_F401RE/rtx/TARGET_CORTEX_M/rt_Mailbox.o
SYS_OBJECTS += libs/mbed-rtos/TARGET_NUCLEO_F401RE/rtx/TARGET_CORTEX_M/rt_MemBox.o
SYS_OBJECTS += libs/mbed-rtos/TARGET_NUCLEO_F401RE/rtx/TARGET_CORTEX_M/rt_Memory.o
SYS_OBJECTS += libs/mbed-rtos/TARGET_NUCLEO_F401RE/rtx/TARGET_CORTEX_M/rt_Mutex.o
SYS_OBJECTS += libs/mbed-rtos/TARGET_NUCLEO_F401RE/rtx/TARGET_CORTEX_M/rt_OsEventObserver.o
SYS_OBJECTS += libs/mbed-rtos/TARGET_NUCLEO_F401RE/rtx/TARGET_CORTEX_M/rt_Robin.o
SYS_OBJECTS += libs/mbed-rtos/TARGET_NUCLEO_F401RE/rtx/TARGET_CORTEX_M/rt_Semaphore.o
SYS_OBJECTS += libs/mbed-rtos/TARGET_NUCLEO_F401RE/rtx/TARGET_CORTEX_M/rt_System.o
SYS_OBJECTS += libs/mbed-rtos/TARGET_NUCLEO_F401RE/rtx/TARGET_CORTEX_M/rt_Task.o
SYS_OBJECTS += libs/mbed-rtos/TARGET_NUCLEO_F401RE/rtx/TARGET_CORTEX_M/rt_Time.o
SYS_OBJECTS += libs/mbed-rtos/TARGET_NUCLEO_F401RE/rtx/TARGET_CORTEX_M/rt_Timer.o

INCLUDE_PATHS += -I$(SRCDIR)/
INCLUDE_PATHS += -I$(SRCDIR)/libs/mbed-rtos
INCLUDE_PATHS += -I$(SRCDIR)/libs/mbed-rtos/rtos
INCLUDE_PATHS += -I$(SRCDIR)/libs/mbed-rtos/rtx
INCLUDE_PATHS += -I$(SRCDIR)/libs/mbed-rtos/rtx/TARGET_CORTEX_M
INCLUDE_PATHS += -I$(SRCDIR)/libs/mbed-rtos/rtx/TARGET_CORTEX_M/TOOLCHAIN_GCC
INCLUDE_PATHS += -I$(SRCDIR)/libs/mbed-rtos/rtx/TARGET_CORTEX_M/TOOLCHAIN_GCC
INCLUDE_PATHS += -I$(SRCDIR)/libs/mbed-rtos/targets/TARGET_STM
INCLUDE_PATHS += -I$(SRCDIR)/libs/mbed
INCLUDE_PATHS += -I$(SRCDIR)/libs/mbed/TARGET_NUCLEO_F401RE
INCLUDE_PATHS += -I$(SRCDIR)/libs/mbed/TARGET_NUCLEO_F401RE/TARGET_STM
INCLUDE_PATHS += -I$(SRCDIR)/libs/mbed/TARGET_NUCLEO_F401RE/TARGET_STM/TARGET_STM32F4
INCLUDE_PATHS += -I$(SRCDIR)/libs/mbed/TARGET_NUCLEO_F401RE/TARGET_STM/TARGET_STM32F4/TARGET_STM32F401xE
INCLUDE_PATHS += -I$(SRCDIR)/libs/mbed/TARGET_NUCLEO_F401RE/TARGET_STM/TARGET_STM32F4/TARGET_STM32F401xE/TARGET_NUCLEO_F401RE
INCLUDE_PATHS += -I$(SRCDIR)/libs/mbed/TARGET_NUCLEO_F401RE/TARGET_STM/TARGET_STM32F4/TARGET_STM32F401xE/device
INCLUDE_PATHS += -I$(SRCDIR)/libs/mbed/TARGET_NUCLEO_F401RE/TARGET_STM/TARGET_STM32F4/device
INCLUDE_PATHS += -I$(SRCDIR)/libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM
INCLUDE_PATHS += -I$(SRCDIR)/libs/mbed/drivers
INCLUDE_PATHS += -I$(SRCDIR)/libs/mbed/hal
INCLUDE_PATHS += -I$(SRCDIR)/libs/mbed/platform

INCLUDE_PATHS += -I$(SRCDIR)/include


LIBRARY_PATHS := -L../libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM 
LIBRARIES := -l:libmbed.a 
LINKER_SCRIPT := ../libs/mbed/TARGET_NUCLEO_F401RE/TOOLCHAIN_GCC_ARM/STM32F401XE.ld

# Objects and Paths
###############################################################################
# Tools and Flags

AS      = '$(GCC_ARM_FOLDER)/arm-none-eabi-gcc' '-x' 'assembler-with-cpp' '-c' '-Wall' '-Wextra' '-Wno-unused-parameter' '-Wno-missing-field-initializers' '-fmessage-length=0' '-fno-exceptions' '-fno-builtin' '-ffunction-sections' '-fdata-sections' '-funsigned-char' '-MMD' '-fno-delete-null-pointer-checks' '-fomit-frame-pointer' '-Os' '-mcpu=cortex-m4' '-mthumb' '-mfpu=fpv4-sp-d16' '-mfloat-abi=softfp'
CC      = '$(GCC_ARM_FOLDER)/arm-none-eabi-gcc' '-std=gnu99' '-c' '-Wall' '-Wextra' '-Wno-unused-parameter' '-Wno-missing-field-initializers' '-fmessage-length=0' '-fno-exceptions' '-fno-builtin' '-ffunction-sections' '-fdata-sections' '-funsigned-char' '-MMD' '-fno-delete-null-pointer-checks' '-fomit-frame-pointer' '-Os' '-mcpu=cortex-m4' '-mthumb' '-mfpu=fpv4-sp-d16' '-mfloat-abi=softfp'
CPP     = '$(GCC_ARM_FOLDER)/arm-none-eabi-g++' '-std=gnu++14' '-fno-rtti' '-Wvla' '-c' '-Wall' '-Wextra' '-Wno-unused-parameter' '-Wno-missing-field-initializers' '-fmessage-length=0' '-fno-exceptions' '-fno-builtin' '-ffunction-sections' '-fdata-sections' '-funsigned-char' '-MMD' '-fno-delete-null-pointer-checks' '-fomit-frame-pointer' '-Os' '-mcpu=cortex-m4' '-mthumb' '-mfpu=fpv4-sp-d16' '-mfloat-abi=softfp'
LD      = '$(GCC_ARM_FOLDER)/arm-none-eabi-gcc' '-Wl,--gc-sections' '-Wl,--wrap,main' '-Wl,--wrap,exit' '-Wl,--wrap,atexit' '-mcpu=cortex-m4' '-mthumb' '-mfpu=fpv4-sp-d16' '-mfloat-abi=softfp'
ELF2BIN = '$(GCC_ARM_FOLDER)/arm-none-eabi-objcopy'


C_FLAGS += -std=gnu99
C_FLAGS += -D__MBED__=1
C_FLAGS += -DDEVICE_I2CSLAVE=1
C_FLAGS += -DTARGET_LIKE_MBED
C_FLAGS += -DDEVICE_PORTOUT=1
C_FLAGS += -DUSBHOST_OTHER
C_FLAGS += -DTARGET_NUCLEO_F401RE
C_FLAGS += -DTARGET_RTOS_M4_M7
C_FLAGS += -DDEVICE_RTC=1
C_FLAGS += -DTOOLCHAIN_object
C_FLAGS += -DDEVICE_SERIAL_ASYNCH=1
C_FLAGS += -DTARGET_STM32F4
C_FLAGS += -D__CMSIS_RTOS
C_FLAGS += -DTOOLCHAIN_GCC
C_FLAGS += -DDEVICE_I2C_ASYNCH=1
C_FLAGS += -DTARGET_CORTEX_M
C_FLAGS += -DTARGET_LIKE_CORTEX_M4
C_FLAGS += -DTARGET_M4
C_FLAGS += -DTARGET_UVISOR_UNSUPPORTED
C_FLAGS += -DDEVICE_SPI_ASYNCH=1
C_FLAGS += -DDEVICE_SERIAL=1
C_FLAGS += -DDEVICE_INTERRUPTIN=1
C_FLAGS += -DDEVICE_I2C=1
C_FLAGS += -DTRANSACTION_QUEUE_SIZE_SPI=2
C_FLAGS += -D__CORTEX_M4
C_FLAGS += -DDEVICE_STDIO_MESSAGES=1
C_FLAGS += -DTARGET_STM32F401RE
C_FLAGS += -DTARGET_FF_MORPHO
C_FLAGS += -D__FPU_PRESENT=1
C_FLAGS += -DTARGET_FF_ARDUINO
C_FLAGS += -DDEVICE_PORTIN=1
C_FLAGS += -DTARGET_RELEASE
C_FLAGS += -DTARGET_STM
C_FLAGS += -DDEVICE_SERIAL_FC=1
C_FLAGS += -DDEVICE_PORTINOUT=1
C_FLAGS += -D__MBED_CMSIS_RTOS_CM
C_FLAGS += -DDEVICE_SLEEP=1
C_FLAGS += -DTOOLCHAIN_GCC_ARM
C_FLAGS += -DDEVICE_SPI=1
C_FLAGS += -DUSB_STM_HAL
C_FLAGS += -DDEVICE_ERROR_RED=1
C_FLAGS += -DDEVICE_SPISLAVE=1
C_FLAGS += -DDEVICE_ANALOGIN=1
C_FLAGS += -DDEVICE_PWMOUT=1
C_FLAGS += -DMBED_BUILD_TIMESTAMP=1489750457.25
C_FLAGS += -DARM_MATH_CM4
C_FLAGS += -DTARGET_STM32F401xE
C_FLAGS += -include
C_FLAGS += mbed_config.h

CXX_FLAGS += -std=gnu++14
CXX_FLAGS += -fno-rtti
CXX_FLAGS += -Wvla
CXX_FLAGS += -D__MBED__=1
CXX_FLAGS += -DDEVICE_I2CSLAVE=1
CXX_FLAGS += -DTARGET_LIKE_MBED
CXX_FLAGS += -DDEVICE_PORTOUT=1
CXX_FLAGS += -DUSBHOST_OTHER
CXX_FLAGS += -DTARGET_NUCLEO_F401RE
CXX_FLAGS += -DTARGET_RTOS_M4_M7
CXX_FLAGS += -DDEVICE_RTC=1
CXX_FLAGS += -DTOOLCHAIN_object
CXX_FLAGS += -DDEVICE_SERIAL_ASYNCH=1
CXX_FLAGS += -DTARGET_STM32F4
CXX_FLAGS += -D__CMSIS_RTOS
CXX_FLAGS += -DTOOLCHAIN_GCC
CXX_FLAGS += -DDEVICE_I2C_ASYNCH=1
CXX_FLAGS += -DTARGET_CORTEX_M
CXX_FLAGS += -DTARGET_LIKE_CORTEX_M4
CXX_FLAGS += -DTARGET_M4
CXX_FLAGS += -DTARGET_UVISOR_UNSUPPORTED
CXX_FLAGS += -DDEVICE_SPI_ASYNCH=1
CXX_FLAGS += -DDEVICE_SERIAL=1
CXX_FLAGS += -DDEVICE_INTERRUPTIN=1
CXX_FLAGS += -DDEVICE_I2C=1
CXX_FLAGS += -DTRANSACTION_QUEUE_SIZE_SPI=2
CXX_FLAGS += -D__CORTEX_M4
CXX_FLAGS += -DDEVICE_STDIO_MESSAGES=1
CXX_FLAGS += -DTARGET_STM32F401RE
CXX_FLAGS += -DTARGET_FF_MORPHO
CXX_FLAGS += -D__FPU_PRESENT=1
CXX_FLAGS += -DTARGET_FF_ARDUINO
CXX_FLAGS += -DDEVICE_PORTIN=1
CXX_FLAGS += -DTARGET_RELEASE
CXX_FLAGS += -DTARGET_STM
CXX_FLAGS += -DDEVICE_SERIAL_FC=1
CXX_FLAGS += -DDEVICE_PORTINOUT=1
CXX_FLAGS += -D__MBED_CMSIS_RTOS_CM
CXX_FLAGS += -DDEVICE_SLEEP=1
CXX_FLAGS += -DTOOLCHAIN_GCC_ARM
CXX_FLAGS += -DDEVICE_SPI=1
CXX_FLAGS += -DUSB_STM_HAL
CXX_FLAGS += -DDEVICE_ERROR_RED=1
CXX_FLAGS += -DDEVICE_SPISLAVE=1
CXX_FLAGS += -DDEVICE_ANALOGIN=1
CXX_FLAGS += -DDEVICE_PWMOUT=1
CXX_FLAGS += -DMBED_BUILD_TIMESTAMP=1489750457.25
CXX_FLAGS += -DARM_MATH_CM4
CXX_FLAGS += -DTARGET_STM32F401xE
CXX_FLAGS += -include
CXX_FLAGS += mbed_config.h

ASM_FLAGS += -x
ASM_FLAGS += assembler-with-cpp
ASM_FLAGS += -DTRANSACTION_QUEUE_SIZE_SPI=2
ASM_FLAGS += -D__CORTEX_M4
ASM_FLAGS += -DUSB_STM_HAL
ASM_FLAGS += -DARM_MATH_CM4
ASM_FLAGS += -D__FPU_PRESENT=1
ASM_FLAGS += -DUSBHOST_OTHER
ASM_FLAGS += -D__MBED_CMSIS_RTOS_CM
ASM_FLAGS += -D__CMSIS_RTOS


LD_FLAGS :=-Wl,--gc-sections -Wl,--wrap,main -Wl,--wrap,exit -Wl,--wrap,atexit -mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=softfp 

LD_SYS_LIBS += -lstdc++
LD_SYS_LIBS += -lsupc++
LD_SYS_LIBS += -lm
LD_SYS_LIBS += -lc
LD_SYS_LIBS += -lgcc
LD_SYS_LIBS += -lnosys


# Tools and Flags
###############################################################################
# Rules

.PHONY: all lst size


all: $(PROJECT).bin $(PROJECT).hex size


.asm.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Assemble: $(notdir $<)"
	@$(AS) -c $(ASM_FLAGS) $(INCLUDE_PATHS) -o $@ $<

.s.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Assemble: $(notdir $<)"
	@$(AS) -c $(ASM_FLAGS) $(INCLUDE_PATHS) -o $@ $<

#.S.o:
#	+@$(call MAKEDIR,$(dir $@))
#	+@echo "Assemble: $(notdir $<)"
#	@$(AS) -c $(ASM_FLAGS) $(INCLUDE_PATHS) -o $@ $<

.c.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Compile: $(notdir $<)"
	@$(CC) $(C_FLAGS) $(INCLUDE_PATHS) -o $@ $<

.cpp.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Compile: $(notdir $<)"
	@$(CPP) $(CXX_FLAGS) $(INCLUDE_PATHS) -o $@ $<


$(PROJECT).elf: $(OBJECTS) $(SYS_OBJECTS) $(LINKER_SCRIPT)
	+@echo "link: $(notdir $@)"
	@$(LD) $(LD_FLAGS) -T $(filter %.ld, $^) $(LIBRARY_PATHS) --output $@ $(filter %.o, $^) $(LIBRARIES) $(LD_SYS_LIBS)


$(PROJECT).bin: $(PROJECT).elf
	@$(ELF2BIN) -O binary $< $@
	+@echo "===== bin file ready to flash: $(OBJDIR)/$@ =====" 

$(PROJECT).hex: $(PROJECT).elf
	@$(ELF2BIN) -O ihex $< $@


# Rules
###############################################################################
# Dependencies

DEPS = $(OBJECTS:.o=.d) $(SYS_OBJECTS:.o=.d)
-include $(DEPS)
endif

# Dependencies
###############################################################################
