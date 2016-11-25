# qfusion-libsrcs

This is the source for the statically linked libraries used in Qfusion, with the settings we use for building them.

## Compiling zlib
1. open visual studio, locate the project file in zlib\contrib\vstudio\vc[v:9,10]\zlibstat.vc[x]project
2. go to the tools menu -> visual studio command prompt
3. in the command prompt, locate the zlib directory
4. type:
`nmake -f win32/Makefile.msc clean`
5. to compile with no ASM code, type:
`nmake -f win32/Makefile.msc OBJA="inffast.obj" zlib.lib`
To build optimized library:
x86:
`nmake -f win32/Makefile.msc LOC="-DASMV -DASMINF" OBJA="inffas32.obj match686.obj" zlib.lib`
x64:
`nmake -f win32/Makefile.msc AS=ml64 LOC="-DASMV -DASMINF" OBJA="inffasx64.obj gvmat64.obj inffas8664.c" zlib.lib`
6. locate and copy the zlib.lib file

## Compiling libjpeg
1. open visual studio,  go to the tools menu -> visual studio command prompt
2. in command prompt change current directory to libjpeg
3. type:
`nmake /f Makefile.vc clean`
4. to build debug configuration, type:
`nmake /f Makefile.vc libjpeg.lib`
alternatively, to build release configuration, type:
`nmake nodebug=1 /f Makefile.vc libjpeg.lib`
5. locate and copy the libjpeg.lib file

## Compiling libcurl
1. open visual studio,  go to the tools menu -> visual studio command prompt
2. in command prompt change current directory to libcurl/lib
3. type:
`nmake /f Makefile.vc9 clean`
4. to build debug configuration, type:
`nmake CFG=debug-zlib /f Makefile.vc9`
alternatively, to build release configuration, type:
`nmake CFG=release-zlib /f Makefile.vc9`
5. locate and copy the libcurl.lib file in either 'debug-zlib' or 'release-zlib' directory

## Compiling libogg
libogg/win32/VS2008/libogg_static.vcproj

## Compiling libvorbis
libvorbis/win32/VS2008/libvorbis/libvorbis_static.vcproj

libvorbis/win32/VS2008/libvorbisfile/libvorbisfile_static.vcproj

## Notes on OpenSSL
Some libcrypto assembly files were pre-converted to make OpenSSL buildable without Perl.

Also the symlink paths in `include` were changed to real `#include` directives.

The build scripts for Android depend on these changes, make sure the above is applied when updating OpenSSL.
