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

PRODUCT_BRAND := Nothing
PRODUCT_DEVICE := rtwo
PRODUCT_MANUFACTURER := Nothing
PRODUCT_MODEL := A065
PRODUCT_NAME := aospa_rtwo

# Bootanimation resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Override device name for Play Store.
PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=Pong \
    DeviceProduct=Pong \
    SystemDevice=Pong \
    SystemName=Pong

PRODUCT_GMS_CLIENTID_BASE := android-nothing

endif
