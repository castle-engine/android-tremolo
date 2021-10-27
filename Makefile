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
	  $(CASTLE_ENGINE_PATH)/tools/build-tool/data/android/integrated-services/ogg_vorbis/app/src/main/jniLibs/armeabi-v7a/libtremolo.so
	cp -f libs/arm64-v8a/libtremolo.so \
	  $(CASTLE_ENGINE_PATH)/tools/build-tool/data/android/integrated-services/ogg_vorbis/app/src/main/jniLibs/arm64-v8a/libtremolo.so
	cp -f libs/x86/libtremolo.so \
	  $(CASTLE_ENGINE_PATH)/tools/build-tool/data/android/integrated-services/ogg_vorbis/app/src/main/jniLibs/x86/libtremolo.so
	cp -f libs/x86_64/libtremolo.so \
	  $(CASTLE_ENGINE_PATH)/tools/build-tool/data/android/integrated-services/ogg_vorbis/app/src/main/jniLibs/x86_64/libtremolo.so
