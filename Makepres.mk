LOCAL_PATH := $(call my-dir)

###################### openssl ######################
include $(CLEAR_VARS)

LOCAL_MODULE := openssl

LOCAL_PREMAKE_CONFIG_CMD := if [ ! -f $(LOCAL_PATH)/Makefile ]; then cd $(LOCAL_PATH); ./config no-asm shared --prefix=$(TOPPREFIX)/premake/install; fi

LOCAL_PREMAKE_MAKE_FORCE_ONE := true
LOCAL_PREMAKE_MAKE_CMD := -C $(LOCAL_PATH)

LOCAL_PREMAKE_MAKE_CLEAN_CMD := -C $(LOCAL_PATH) clean

#LOCAL_PREMAKE_DEPEND_MODULE := libz

include $(BUILD_SYSTEM)/premake.mk
