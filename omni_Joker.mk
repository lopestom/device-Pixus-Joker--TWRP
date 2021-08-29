#
# Copyright (C) 2019 The Android Open Source Project
# Copyright (C) 2019 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator 
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
ALLOW_MISSING_DEPENDENCIES := true
LOCAL_PATH := device/Pixus/Joker

# Release name
PRODUCT_RELEASE_NAME := Pixus_Joker

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from our custom product configuration
#$(call inherit-product, vendor/omni/config/common_tablet.mk)
$(call inherit-product, vendor/omni/config/common.mk)

# Device identifier.
PRODUCT_NAME := omni_Joker
PRODUCT_DEVICE := Joker
PRODUCT_BRAND := Pixus
PRODUCT_MODEL := Joker
PRODUCT_MANUFACTURER := Pixus


# enable stock zip packages flash
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.treble.enabled=true \
    persist.sys.usb.config=mtp,adb \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1 \
    ro.secure=0 \
    ro.adb.secure=0 \
    ro.allow.mock.location=1 \
   ro.debuggable=1 \
   persist.sys.isUsbOtgEnabled=true \
   ro.sys.usb.mtp.whql.enable=0 \
   ro.sys.usb.storage.type=mtp

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31 \
