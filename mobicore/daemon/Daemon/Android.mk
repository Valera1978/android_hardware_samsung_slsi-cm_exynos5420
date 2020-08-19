# =============================================================================
#
# Module: mcDriverDaemon
#
# =============================================================================

# Add new source files here
LOCAL_SRC_FILES += Daemon/MobiCoreDriverDaemon.cpp

# Includes required for the Daemon
LOCAL_C_INCLUDES += $(LOCAL_PATH)/Daemon/public

# Ignore non-reproducible date/time expansions
LOCAL_CFLAGS += -Wno-date-time

LOCAL_CFLAGS += -Wno-unused-parameter
LOCAL_CFLAGS += -Wno-unused-variable
LOCAL_CFLAGS += -Wno-unused-function
LOCAL_CFLAGS += -Wno-null-conversion
LOCAL_CFLAGS += -Wno-gnu-designator

# Internal components
include $(LOCAL_PATH)/Daemon/Device/Android.mk
include $(LOCAL_PATH)/Daemon/Server/Android.mk
