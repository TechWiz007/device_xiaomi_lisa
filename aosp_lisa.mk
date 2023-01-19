#
# Copyright (C) 2020 PixelExperience
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lisa device
$(call inherit-product, device/xiaomi/lisa/device.mk)

# Inherit some common stuff from PixelExperience.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)
TARGET_USES_AOSP_RECOVERY := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_QUICK_TAP := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_lisa
PRODUCT_DEVICE := lisa
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi 11 Lite NE
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
