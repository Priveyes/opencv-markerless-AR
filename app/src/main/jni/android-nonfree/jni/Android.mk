LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

OPENCV_MK_PATH := C:\Users\Pascal\AndroidstudioProjects\OpenCV-3.4.1-android-sdk\sdk\native\jni\OpenCV.mk
include ${OPENCV_MK_PATH}

OPENCV_INSTALL_MODULES:=on
OPENCV_CAMERA_MODULES:=off

LOCAL_CFLAGS := -Werror -O3 -ffast-math
LOCAL_ARM_MODE := arm
LOCAL_C_INCLUDES:= ../..//sdk/native/jni/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include 
LOCAL_MODULE    := nonfree
LOCAL_SRC_FILES := src/nonfree_init.cpp  src/sift.cpp src/surf.cpp 
LOCAL_LDLIBS +=  -L$(LOCAL_PATH)/lib -llog

include $(BUILD_SHARED_LIBRARY)
