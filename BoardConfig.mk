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

DEVICE_PATH := device/alldocube/iPlay_20

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a55
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a15

TARGET_USES_64_BIT_BINDER := true

# Platform
TARGET_BOARD_PLATFORM := sp9863a

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sp9863a
TARGET_NO_BOOTLOADER := true

# Assert
TARGET_OTA_ASSERT_DEVICE := iPlay_20

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 36700160
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 41943040
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1125335040
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_PARTITION_SIZE := 406413312
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 3221225472‬				      
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs

TARGET_COPY_OUT_VENDOR := vendor

# Dynamic Partitions
BOARD_SUPER_PARTITION_SIZE := 4299161600
BOARD_SUPER_PARTITION_GROUPS := google_dynamic_partitions
BOARD_GOOGLE_DYNAMIC_PARTITIONS_SIZE := 4299161600
BOARD_GOOGLE_DYNAMIC_PARTITIONS_LIST := system vendor product 

# System as root
#BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_ROOT_EXTRA_FOLDERS := bluetooth dsp firmware persist

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyS1,115200n8 buildvariant=user
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x05400000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SECOND_OFFSET := 0x00f00000
BOARD_DTB_OFFSET := 0x015f1000

TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64

BOARD_KERNEL_IMAGE_NAME := Image.gz
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
BOARD_PREBUILT_DTBO := $(DEVICE_PATH)/prebuilt/dtbo.img

BOARD_HASH_TYPE := sha1
BOARD_BOOTIMG_HEADER_VERSION := 2

BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_INCLUDE_DTB_IN_BOOTIMG := true

BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --second_offset $(BOARD_KERNEL_SECOND_OFFSET)
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)
BOARD_MKBOOTIMG_ARGS += --dtb_offset $(BOARD_DTB_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --base $(BOARD_KERNEL_BASE)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE) --board ""

TARGET_KERNEL_SOURCE := kernel/alldocube/iPlay_20
TARGET_KERNEL_CONFIG := iPlay_20_defconfig

# Hack to get keymaster to recognize the key files
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 16.1.0

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true

# Metadata
BOARD_USES_METADATA_PARTITION := true
BOARD_ROOT_EXTRA_FOLDERS += metadata


# Crypto
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_INCLUDE_FBE := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# TWRP Configuration
BOARD_CHARGER_DISABLE_INIT_BLANK := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_INITRC := $(DEVICE_PATH)/recovery/root/init.rc
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_CUSTOM_CPU_TEMP_PATH :=  /sys/devices/virtual/thermal/thermal_zone3/temp
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/devices/platform/sprd_backlight/backlight/sprd_backlight/brightness\"
TW_BRIGHTNESS_PATH := /sys/devices/platform/sprd_backlight/backlight/sprd_backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 64
TW_THEME := portrait_hdpi
TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_NO_USB_STORAGE := false
#TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_MTP_DEVICE := /dev/mtp_usb
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_USE_TOOLBOX := true
TW_EXTRA_LANGUAGES := false
TW_DEFAULT_LANGUAGE := ru
TW_NO_SCREEN_BLANK := true
TW_NO_BATT_PERCENT := false
TW_EXCLUDE_TWRPAPP := true
DEVICE_RESOLUTION := 1920x1200
RECOVERY_SDCARD_ON_DATA := true
TARGET_DISABLE_TRIPLE_BUFFERING := false

# Debug
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true



# Show build time on the splash screen
TW_DEVICE_VERSION=$(shell date '+%Y%m%d') by usertow
