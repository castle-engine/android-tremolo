TARGET_PLATFORM := android-3

ROOT_PATH := $(call my-dir)

########################################################################################################
# Compile Tremolo as a shared library.

include $(CLEAR_VARS)

TARGET_PLATFORM := android-3

LOCAL_MODULE     := tremolo
LOCAL_ARM_MODE   := arm
LOCAL_PATH       := $(ROOT_PATH)/tremolo
LOCAL_SRC_FILES  := bitwise.c      \
                    bitwiseARM.s   \
                    codebook.c     \
                    dpen.s         \
                    dsp.c          \
                    floor0.c       \
                    floor1.c       \
                    floor1ARM.s    \
                    floor_lookup.c \
                    framing.c      \
                    info.c         \
                    mapping0.c     \
                    mdct.c         \
                    mdctARM.s      \
                    misc.c         \
                    res012.c       \
                    speed.s        \
                    vorbisfile.c   \

                    # mdctLARM.s     \
                    # floor1LARM.s   \

LOCAL_CFLAGS     := -ffast-math -D_ARM_ASSEM_

include $(BUILD_SHARED_LIBRARY)

########################################################################################################
