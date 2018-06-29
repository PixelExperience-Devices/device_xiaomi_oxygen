#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, device/xiaomi/oxygen/full_oxygen.mk)

# Inherit some common PEX stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)
GAPPS_VARIANT := nano
TARGET_GAPPS_ARCH := arm64
CUSTOM_BUILD_TYPE := OFFICIAL

# Include Google Stock Apps - Experimental
GAPPS_PRODUCT_PACKAGES += \
    GoogleCamera \
    Music2 \
    PixelLauncherIcons

# AOSP Extras
GAPPS_FORCE_MMS_OVERRIDES := true
GAPPS_FORCE_WEBVIEW_OVERRIDES := true

# Product Config
PRODUCT_NAME := aosp_oxygen
BOARD_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="oxygen-user 7.1.1 NMF26F V9.2.1.0.NDDMIEK release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "Xiaomi/oxygen/oxygen:7.1.1/NMF26F/V9.2.1.0.NDDMIEK:user/release-keys"
