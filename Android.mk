LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := picasso
LOCAL_MODULE_TAGS := optional

LOCAL_STATIC_JAVA_LIBRARIES := \
    picasso-okhttp

LOCAL_SRC_FILES := \
    $(call all-java-files-under, src)
	
include $(BUILD_STATIC_JAVA_LIBRARY)

##################################################

include $(CLEAR_VARS)

LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := \
    picasso-okhttp:libs/okhttp-1.0.2.jar

include $(BUILD_MULTI_PREBUILT)
