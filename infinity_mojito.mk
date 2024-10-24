#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from mojito device
$(call inherit-product, device/xiaomi/mojito/device.mk)

# Inherit some LineageOS stuffs
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Some Build Flags
TARGET_BOOT_ANIMATION_RES := 1080

# Infinity build flag
# Whether you are compiling being an OFFICIAL Maintainer:
INFINITY_BUILD_TYPE := UNOFFICIAL
# Maintainer Name
INFINITY_MAINTAINER := "K4LCHAKRA"

# Whether the compiled package ships Google Apps:
WITH_GAPPS := true

# Whether the compiled shiped gapps package uses Google Dialer, Messaging, Contacts:
TARGET_BUILD_GOOGLE_TELEPHONY := true

# Whether the comiled package ships ViMusic
TARGET_BUILD_VIMUSIC := true

# Whether the compiled package ships Moto Calculator irrespective VANILLA or GAPPS:
USE_MOTO_CALCULATOR := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := infinity_mojito
PRODUCT_DEVICE := mojito
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 10
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
