$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/htc/a32e/a32e-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/a32e/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/htc/a32e/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_a32e
PRODUCT_DEVICE := a32e

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    ueventd.qcom.rc

# Qcom init scripts for /etc
PRODUCT_PACKAGES += \
   init.qcom.bms.sh \
   init.qcom.class_core.sh \
   init.qcom.early_boot \
   init.qcom.firmware_links \
   init.qcom.sh \
   init.qcom.syspart_fixup.sh \
   init.qcom.usb
