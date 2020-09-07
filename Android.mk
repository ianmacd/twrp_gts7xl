LOCAL_PATH := $(call my-dir)

ifneq ($(filter gts7xl, $(TARGET_DEVICE)),)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
