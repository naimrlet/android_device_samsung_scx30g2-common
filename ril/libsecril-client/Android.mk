# Copyright 2006 The Android Open Source Project

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := eng

LOCAL_SRC_FILES:= \
    secril-client.cpp

LOCAL_SHARED_LIBRARIES := \
    libutils \
    libbinder \
    libcutils \
    libhardware_legacy \
    liblog

LOCAL_PROPRIETARY_MODULE := true

LOCAL_MODULE:= libsecril-client-sprd

LOCAL_POST_INSTALL_CMD := \
	mv $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/$(LOCAL_MODULE).so $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/libsecril-client.so

LOCAL_PRELINK_MODULE := false

include $(BUILD_SHARED_LIBRARY)
