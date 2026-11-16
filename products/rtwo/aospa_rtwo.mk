#
# SPDX-FileCopyrightText: Paranoid Android
# SPDX-License-Identifier: Apache-2.0
#

ifeq (aospa_rtwo,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from the device configuration.
$(call inherit-product, device/motorola/rtwo/device.mk)

# Inherit from the AOSPA configuration.
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

PRODUCT_BRAND := motorola
PRODUCT_DEVICE := rtwo
PRODUCT_MANUFACTURER := motorola
PRODUCT_MODEL := motorola edge 40 pro
PRODUCT_NAME := aospa_rtwo

# Bootanimation resolution
TARGET_BOOT_ANIMATION_RES := 1080


PRODUCT_GMS_CLIENTID_BASE := android-motorola

endif
