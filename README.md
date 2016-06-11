# Easily compile Tremolo as a shared library using Android NDK

"Tremolo" is, in short, a fast native library to read OggVorbis on Android.
See http://wss.co.uk/pinknoise/tremolo/ for the details.

Compile by simple `ndk-build` or `make` here.
(assuming you have Android NDK installed and ndk-build on $PATH).
This will give you the libtremolo.so, that you
can use e.g. with Castle Game Engine "ogg_vorbis" component.

The source code here is taken from Tremolo 0.08 release,
http://wss.co.uk/pinknoise/tremolo/Tremolo008.zip .
The idea to arrange it like this, to easily compile using NDK,
is from http://repo.or.cz/openal-soft/android.git ,
with some tiny changes to make it compile as a shared lib.
