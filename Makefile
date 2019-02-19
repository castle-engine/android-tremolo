# Trivial Makefile to build OpenAL shared libraries for Android,
# and copy them over to Castle Game Engine subdirs.

.PHONY: default
default:
	ndk-build

.PHONY: clean
clean:
	rm -Rf libs/ obj/

.PHONY: build
build: clean default
	cp -f libs/armeabi-v7a/libtremolo.so \
	  $(CASTLE_ENGINE_PATH)/tools/build-tool/data/android/integrated-services/ogg_vorbis/app/src/main/jni/armeabi-v7a/libtremolo.so
	cp -f libs/arm64-v8a/libtremolo.so \
	  $(CASTLE_ENGINE_PATH)/tools/build-tool/data/android/integrated-services/ogg_vorbis/app/src/main/jni/arm64-v8a/libtremolo.so
