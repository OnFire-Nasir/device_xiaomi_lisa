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

# Inherit some common banana stuff.
$(call inherit-product, vendor/banana/config/common.mk)
TARGET_BOOT_ANIMATION_RES := 1080
BANANA_MAINTAINER := OnFire-Nasir

# Inherit Gapps stuff
WITH_GAPPS := true

# Inherit some AOSP stuffs
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_EXCLUDE_MATLOG := true
TARGER_SUPPORTS_NEXT_GEN_ASSISTANT := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_BLUR := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := banana_lisa
PRODUCT_DEVICE := lisa
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi 11 Lite NE
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=lisa \
    PRIVATE_BUILD_DESC="lisa-user 13 RKQ1.211001.001 V14.0.6.0.TKOCNXM release-keys"

BUILD_FINGERPRINT := Xiaomi/lisa/lisa:13/RKQ1.211001.001/V14.0.6.0.TKOCNXM:user/release-keys
