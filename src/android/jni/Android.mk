LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

include ../../sdk/native/jni/OpenCV.mk
LOCAL_CFLAGS := -DOPEL_ES_1 -DANDROID_NDK

LOCAL_C_INCLUDES += $(LOCAL_PATH)
LOCAL_C_INCLUDES += $(LOCAL_PATH)/Engine
LOCAL_C_INCLUDES += $(LOCAL_PATH)/App
LOCAL_MODULE    := mixed_sample
LOCAL_SRC_FILES := register_natives.cpp native_main.cpp 
LOCAL_LDLIBS +=  -L$(LOCAL_PATH)/libs -lGLESv1_CM -llog -ldl

include $(BUILD_SHARED_LIBRARY)
