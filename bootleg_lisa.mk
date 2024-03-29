#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lisa device
$(call inherit-product, device/xiaomi/lisa/device.mk)

# Inherit some common Bootleggers stuff.
$(call inherit-product, vendor/bootleggers/config/common_full_phone.mk)
WITH_GAPPS := true
TARGET_USES_BLUR := true
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2400
TARGET_USES_AOSP_CHARGER := true
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false
BOOTLEGGERS_BUILD_TYPE := Unshishufied

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := bootleg_lisa
PRODUCT_DEVICE := lisa
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi 11 Lite NE
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=lisa \
    PRIVATE_BUILD_DESC="lisa-user 13 RKQ1.211001.001 V14.0.6.0.TKOCNXM release-keys"

BUILD_FINGERPRINT := Xiaomi/lisa/lisa:13/RKQ1.211001.001/V14.0.6.0.TKOCNXM:user/release-keys
