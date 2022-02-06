#
# Copyright (C) 2020 The Android Open Source Project
# Copyright (C) 2020 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from iPlay_20 device
$(call inherit-product, device/alldocube/iPlay_20/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)


PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/recovery/root,recovery/root)

#Extra required packages
PRODUCT_PACKAGES += \
    libion.recovery \
    android.hardware.fastboot@1.0-impl-mock \
    android.hardware.fastboot@1.0-impl-mock.recovery

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := iPlay_20
PRODUCT_NAME := omni_iPlay_20
PRODUCT_BRAND := Alldocube
PRODUCT_MODEL :=  iPlay_20
PRODUCT_MANUFACTURER := Alldocube
PRODUCT_RELEASE_NAME :=  Alldocube 

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=s9863a1h10 \
    PRODUCT_NAME=s9863a1h10_Natv \
    PRIVATE_BUILD_DESC="s9863a1h10_Natv-user 10 QP1A.190711.020 38446 release-keys"

BUILD_FINGERPRINT := SPRD/s9863a1h10_Natv/s9863a1h10:10/QP1A.190711.020/38446:user/release-keys

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.adb.secure=0 \
    persist.sys.usb.config=mtp \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1
