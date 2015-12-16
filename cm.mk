# Release name
PRODUCT_RELEASE_NAME := a32e

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/a32e/device_a32e.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a32e
PRODUCT_NAME := cm_a32e
PRODUCT_BRAND := htc
PRODUCT_MODEL := a32e
PRODUCT_MANUFACTURER := htc
