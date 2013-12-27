USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/OPPO/oppo75_emmc_12007/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := mt6575
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := oppo75_emmc_12007

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00600000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00600000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x28a00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x40000000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/OPPO/oppo75_emmc_12007/kernel

BOARD_HAS_NO_SELECT_BUTTON := true

# Recovery
RECOVERY_NAME := OPPO R801 CWM-based Recovery
TARGET_RECOVERY_FSTAB := device/OPPO/oppo75_emmc_12007/recovery/recovery.fstab
TARGET_RECOVERY_INITRC := device/OPPO/oppo75_emmc_12007/recovery/init.rc
#BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/OPPO/oppo75_emmc_12007/recovery/recovery_keys.c
CWM_EMMC_BOOT_DEVICE_NAME := /dev/bootimg
CWM_EMMC_BOOT_DEVICE_SIZE := 0x00600000
CWM_EMMC_RECOVERY_DEVICE_NAME := /dev/recovery
CWM_EMMC_RECOVERY_DEVICE_SIZE := 0x00600000
CWM_EMMC_UBOOT_DEVICE_NAME := /dev/uboot
CWM_EMMC_UBOOT_DEVICE_SIZE := 0x00060000
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/usb_mass_storage/lun%d/file
TW_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255

#twrp
DEVICE_RESOLUTION := 320x480
TARGET_SCREEN_WIDTH := 320
TARGET_SCREEN_HEIGHT := 480
RECOVERY_GRAPHICS_USE_LINELENGTH := true
#TW_NO_USB_STORAGE := true
TW_FLASH_FROM_STORAGE := true
TW_NO_REBOOT_BOOTLOADER := true
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
SP1_NAME := "uboot"
SP1_BACKUP_METHOD := image
SP1_MOUNTABLE := 0
SP2_NAME := "nvram"
SP2_DISPLAY_NAME := "nvram"
SP2_BACKUP_METHOD := image
SP2_MOUNTABLE := 0
SP3_NAME := "logo"
SP3_DISPLAY_NAME := "logo"
SP3_BACKUP_METHOD := image
SP3_MOUNTABLE := 0

# EXT4
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_USES_MMCUTILS := true
# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
#BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
#BOARD_USE_CUSTOM_RECOVERY_FONT := \"fontcn30_17x43.h\"
TARGET_RECOVERY_PIXEL_FORMAT := \"RGBX_8888\"

BOARD_CUSTOM_BOOTIMG_MK := device/OPPO/oppo75_emmc_12007/custombootimg.mk

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.allow.mock.location=1 \
    persist.mtk.aee.aed=on \
    ro.debuggable=1 \
    persist.sys.usb.config=mass_storage \
    persist.service.acm.enable=0 \
    ro.mount.fs=EXT4
