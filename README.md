# airwin2fmod
Similar to airwin2rack, but creates FMOD plug-ins for Airwindows VSTs

Note: the generated compilation for CMake is not (at all) well optimized and takes an extremely long time. FMOD Still requires more thorough testing as well. So don't be surprised if you get crashes for some of these, or if compilation takes a ridiculously long time.

The template can be changed to whatever you like. As long as the files in it have the same name, the generator doesn't care what they actually do. We use Miniaudio and such for channel conversion only.
