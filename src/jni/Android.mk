LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := iozone

LOCAL_SRC_FILES := iozone.c libbif.c

LOCAL_CFLAGS := -c -O3 -Dunix -DHAVE_ANSIC_C -DHAVE_PREAD \
		-DNAME='"linux-arm"' -DLINUX_ARM  \
		-Dlinux -Dandroid
#-D_LARGEFILE64_SOURCE  -DASYNC_IO

#LOCAL_LDLIBS := -lrt -lpthread
LOCAL_SHARED_LIBRARIES := rt pthread

include $(BUILD_EXECUTABLE)

