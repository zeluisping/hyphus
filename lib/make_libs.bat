@echo off

echo DevIL...
ar rcs DevIL.lib			libDevIL.a

echo ILU...
ar rcs ILU.lib				libILU.a

echo ILUT...
ar rcs ILUT.lib				libILUT.a

echo glew32...
ar rcs libglew32.lib		libglew32.a

echo glew32.dll...
ar rcs libglew32.dll.lib	libglew32.dll.a

echo SDL2...
ar rcs libSDL2.lib			libSDL2.a

echo SDL2.dll...
ar rcs libSDL2.dll.lib		libSDl2.dll.a

echo SDL2main...
ar rcs libSDL2main.lib		libSDL2main.a
