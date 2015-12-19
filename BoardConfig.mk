USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/htc/a32e/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := false
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := a32e

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 user_debug=31 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlyprintk vmalloc=400m androidboot.hardware=htc_a32e androidusb.pid=0x066B
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 4096

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x02000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x02000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0xc0000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0xa0000000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/htc/a32e/kernel

BOARD_HAS_NO_SELECT_BUTTON := true
