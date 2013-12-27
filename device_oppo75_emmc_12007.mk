$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/OPPO/oppo75_emmc_12007/oppo75_emmc_12007-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/OPPO/oppo75_emmc_12007/overlay

LOCAL_PATH := device/OPPO/oppo75_emmc_12007
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    device/OPPO/oppo75_emmc_12007/recovery/advanced_meta_init.rc:recovery/root/advanced_meta_init.rc \
    device/OPPO/oppo75_emmc_12007/recovery/meta_init.rc:recovery/root/meta_init.rc \
    device/OPPO/oppo75_emmc_12007/recovery/ueventd.goldfish.rc:recovery/root/ueventd.goldfish.rc \
    device/OPPO/oppo75_emmc_12007/recovery/sbup.ko:recovery/root/sbup.ko \
    device/OPPO/oppo75_emmc_12007/recovery/ueventd.rc:recovery/root/ueventd.rc 

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_oppo75_emmc_12007
PRODUCT_DEVICE := oppo75_emmc_12007
