# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8952
TARGET_BOARD_PLATFORM_GPU := qcom-adreno510

# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a9

#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x002800000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x002880000
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 0x0DFFFC000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x05FD03C00
BOARD_CACHEIMAGE_PARTITION_SIZE    := 0x1F4000000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/lg/h840/kernel
# Boot image
BOARD_MKBOOTIMG_ARGS := --base 80000000 --pagesize 2048 --kernel_offset 00008000 --ramdisk_offset 02000000 --tags_offset 00000100   --cmdline 'console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 user_debug=30 msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlyprintk androidboot.hardware=alicee vmalloc=300m'  

TWHAVE_SELINUX := true
#TW_USE_TOOLBOX := true
TW_NO_EXFAT_FUSE := true
TW_THEME := portrait_mdpi
#RECOVERY_SDCARD_ON_DATA := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
#TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/mt_usb/gadget/lun%d/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
# TWRP specific build flags
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 149
