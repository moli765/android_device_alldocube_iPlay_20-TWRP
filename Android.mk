LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),iPlay_20)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
