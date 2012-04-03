USE_CAMERA_STUB := true

include vendor/lge/thunderc/BoardConfigVendor.mk

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_PMEM := true
BOARD_USES_QCOM_LIBRPC := true
#BOARD_USES_QCOM_LEGACY := true
BOARD_COMBO_DEVICE_SUPPORTED := true
BOARD_CDMA_NETWORK := true

COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT 
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

TARGET_GLOBAL_CFLAGS += -mfpu=vfp -mfloat-abi=softfp -Os
TARGET_GLOBAL_CPPFLAGS += -mfpu=vfp -mfloat-abi=softfp -Os


#Device Information
TARGET_BOARD_PLATFORM := msm7x27
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_BOOTLOADER_BOARD_NAME := thunderc
TARGET_PROVIDES_INIT_TARGET_RC := true



#BOOT AND BOOTLOADER
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
#TARGET_NO_RECOVERY := true

#Camera
#BOARD_USE_FROYO_LIBCAMERA := true

TARGET_PROVIDES_LIBAUDIO := true
TARGET_PROVIDES_LIBRIL := true

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_CUSTOM_BRCM_PATCHRAM_PLUS := ../../../device/lge/thunderc/prebuilt/brcm_patchram_plus.c

#Kernel
BOARD_KERNEL_CMDLINE := mem=471M console=ttyMSM2,115200n8 androidboot.hardware=thunderc
BOARD_KERNEL_BASE := 0x12200000
BOARD_KERNEL_PAGESIZE := 2048

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00700000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00700000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x09e80000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0a4e0000
BOARD_FLASH_BLOCK_SIZE := 131072


# to enable the GPS HAL
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := thunderc
# AMSS version to use for GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000



#Enable OpenGL Hardware Acceleration
BOARD_EGL_CFG := vendor/lge/thunderc/proprietary/$(SUB_MODEL)/lib/egl/egl.cfg
USE_OPENGL_RENDERER := true
TARGET_USES_GENLOCK := true
BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true

#Enable jit
JS_ENGINE := v8
HTTP := chrome
ENABLE_JSC_JIT := true
WITH_JIT := true
ARCH_ARM_HAVE_VFP := true

# Mass Storage for ICS
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_CUSTOM_USB_CONTROLLER := ../../device/lge/thunderc/prebuilt/UsbController.cpp
BOARD_UMS_LUNFILE := /sys/devices/platform/msm_hsusb/gadget/lun0/file
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/usb_mass_storage/lun0/file
BOARD_SDCARD_DEVICE_INTERNAL := /dev/block/vold/179:1
BOARD_SDEXT_DEVICE := /dev/block/vold/179:2

#TouchScreen Compatibility for ICS
BOARD_USE_LEGACY_TOUCHSCREEN := true

TARGET_SPECIFIC_HEADER_PATH := device/lge/thunderc/include
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_CAMERA_USE_GETBUFFERINFO := true
BOARD_USE_CAF_LIBCAMERA := true


BOARD_WLAN_DEVICE := bcm4325
WIFI_DRIVER_FW_STA_PATH         := "/system/etc/wl/rtecdc.bin"
WIFI_DRIVER_FW_AP_PATH          := "/system/etc/wl/rtecdc_apsta.bin"
WIFI_DRIVER_MODULE_NAME         := wireless
BOARD_WIRELESS_CHIP             := bcm4325
WIFI_DRIVER_MODULE_PATH         := "/system/lib/modules/wireless.ko"
WIFI_DRIVER_MODULE_ARG          := "firmware_path=/system/etc/wl/rtecdc.bin nvram_path=/system/etc/wl/nvram.txt"
WPA_SUPPLICANT_VERSION          := VER_0_6_X
WIFI_DRIVER_HAS_LGE_SOFTAP      := true
BOARD_WEXT_NO_COMBO_SCAN       := true
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WIFI_DRIVER_HAS_LGE_SOFTAP := true

BOARD_FM_DEVICE := bcm4325
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

#ICS settings
DISABLE_DEXPREOPT := true
#BOARD_NO_PAGE_FLIPPING := true
BUILD_OLD_LIBCAMERA:= true
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60
COMMON_GLOBAL_CFLAGS += -DTARGET_MSM7x27
COMMON_GLOBAL_CFLAGS += -DMISSING_EGL_EXTERNAL_IMAGE -DMISSING_GRALLOC_BUFFERS
COMMON_GLOBAL_CFLAGS += -DMISSING_EGL_PIXEL_FORMAT_YV12
COMMON_GLOBAL_CFLAGS += -DUSE_LGE_ALS_DUMMY
TARGET_FORCE_CPU_UPLOAD := true

TARGET_OTA_ASSERT_DEVICE := thunderc

# OFFLINE CHARGING
BOARD_GLOBAL_CFLAGS += -DCHARGERMODE_CMDLINE_NAME='"lge.reboot"' -DCHARGERMODE_CMDLINE_VALUE='"pwroff"'
