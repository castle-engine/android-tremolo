# Same as Castle Game Engine minimal platform version
TARGET_PLATFORM := android-16

ROOT_PATH := $(call my-dir)

########################################################################################################
# Compile Tremolo (normal precision) as a shared library.

include $(CLEAR_VARS)

# Same as Castle Game Engine minimal platform version
TARGET_PLATFORM := android-16

LOCAL_MODULE     := tremolo
LOCAL_ARM_MODE   := arm
LOCAL_PATH       := $(ROOT_PATH)/tremolo
LOCAL_SRC_FILES  := bitwise.c      \
                    codebook.c     \
                    dsp.c          \
                    floor0.c       \
                    floor1.c       \
                    floor_lookup.c \
                    framing.c      \
                    info.c         \
                    mapping0.c     \
                    mdct.c         \
                    misc.c         \
                    res012.c       \
                    vorbisfile.c   \


LOCAL_CFLAGS     := -ffast-math -D_ARM_ASSEM_

# Compile Position-Independent code.
# See https://discourse.libsdl.org/t/warning-shared-library-text-segment-is-not-shareable/23517/7
#
# Avoids error at compilation
# .../ndk/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/lib/gcc/arm-linux-androideabi/4.9.x/../../../../arm-linux-androideabi/bin/ld: warning: shared library text segment is not shareable
# (this error can be converted into a warning, but then it fails at installation)
LOCAL_CFLAGS += -fPIC -DONLY_C

include $(BUILD_SHARED_LIBRARY)

########################################################################################################
# Compile Tremolo (low precision) as a shared library.

include $(CLEAR_VARS)

# Same as Castle Game Engine minimal platform version
TARGET_PLATFORM := android-16

LOCAL_MODULE     := tremolo-low-precision
LOCAL_ARM_MODE   := arm
LOCAL_PATH       := $(ROOT_PATH)/tremolo
LOCAL_SRC_FILES  := bitwise.c      \
                    codebook.c     \
                    dsp.c          \
                    floor0.c       \
                    floor1.c       \
                    floor_lookup.c \
                    framing.c      \
                    info.c         \
                    mapping0.c     \
                    mdct.c         \
                    misc.c         \
                    res012.c       \
                    vorbisfile.c   \


LOCAL_CFLAGS     := -ffast-math -D_ARM_ASSEM_
LOCAL_CFLAGS += -fPIC -DONLY_C

include $(BUILD_SHARED_LIBRARY)

########################################################################################################
