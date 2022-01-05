# Easily compile Tremolo for Android for Castle Game Engine

"Tremolo" is (simplifying a little) a fast native library
to read OggVorbis on Android.
See http://wss.co.uk/pinknoise/tremolo/ for the details.

This repository allows to easily recompile Tremolo
and copy the result over the _Castle Game Engine_ sources.
It assumes:

- You have installed Android NDK, and `ndk-build` is on $PATH.

- The source code of _Castle Game Engine_ is in `$CASTLE_ENGINE_PATH`.

Then just run `make build` .

It will recompile the library for
the appropriate Android versions and architectures used by _Castle Game Engine_:

- 32-bit ARM
- 64-bit ARM (aka Aarch64)
- 32-bit X86
- 64-bit X86 (x86_64)

# Low-precision version

It is possible to alternatively use a low-precision version of Tremolo.
Instead of `libtremolo.so`, you would take `libtremolo-low-precision.so`.
The low precision version may be faster,
although the quality is very bad in my tests.

# CGE

You can use these libraries with [Castle Game Engine](https://castle-engine.io/) "ogg_vorbis"
component (see https://github.com/castle-engine/castle-engine/blob/master/tools/build-tool/data/android/integrated-services/ogg_vorbis/README.adoc
).

# Credits

The source code here is taken from Tremolo 0.08 release,
http://wss.co.uk/pinknoise/tremolo/Tremolo008.zip .
The idea to arrange it like this, to easily compile using NDK,
is from http://repo.or.cz/openal-soft/android.git .
Michalis only did some tiny changes to `Android.mk` to easily compile
both shared libraries.
