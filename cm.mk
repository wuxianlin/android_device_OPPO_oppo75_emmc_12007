## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := oppo75_emmc_12007

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/OPPO/oppo75_emmc_12007/device_oppo75_emmc_12007.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := oppo75_emmc_12007
PRODUCT_NAME := cm_oppo75_emmc_12007
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := R801
PRODUCT_MANUFACTURER := OPPO
