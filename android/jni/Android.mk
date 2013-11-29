# example Android Native Library makefile
# contributed by Gregory Junker <ggjunker@gmail.com>

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := libwebsockets
LOCAL_CFLAGS    := -DLWS_BUILTIN_GETIFADDRS
LWS_LIB_PATH	:= ../lib
LOCAL_C_INCLUDES:= $(LWS_LIB_PATH)
LOCAL_SRC_FILES := $(addprefix ../,$(wildcard $(LWS_LIB_PATH)/*.c))

$(warning src_files = $(LOCAL_SRC_FILES))

include $(BUILD_STATIC_LIBRARY)
