# Easily compile Tremolo as a shared library using Android NDK

"Tremolo" is (simplifying a little) a fast native library
to read OggVorbis on Android.
See http://wss.co.uk/pinknoise/tremolo/ for the details.

Compile by simple

```
ndk-build
```

or

```
make
```

here. This assumes you have Android NDK installed and `ndk-build` on $PATH.
This will create files

```
libs/armeabi-v7a/libtremolo.so
libs/armeabi-v7a/libtremolo-low-precision.so
```

You can use them in your Android NDK projects. Choose one version -- normal, or low precision. The low precision version may be faster, although the quality is horrible in my tests. The API is the same, and is also compatible with (a subset of) libvorbisfile.

For example you can use these libraries with [Castle Game Engine](http://castle-engine.sourceforge.net/) "ogg_vorbis"
component (see https://github.com/castle-engine/castle-engine/wiki/Android-Project-Components-Integrated-with-Castle-Game-Engine#ogg_vorbis
), just copy the chosen .so file to `castle-engine/tools/build-tool/data/android/integrated-components/ogg_vorbis/app/src/main/jniLibs/armeabi-v7a/`.

The source code here is taken from Tremolo 0.08 release,
http://wss.co.uk/pinknoise/tremolo/Tremolo008.zip .
The idea to arrange it like this, to easily compile using NDK,
is from http://repo.or.cz/openal-soft/android.git .
Michalis only did some tiny changes to `Android.mk` to easily compile
both shared libraries.
