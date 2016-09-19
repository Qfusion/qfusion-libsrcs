# Install script for directory: /Users/Victor/Documents/qfusion/libsrcs/libfreetype

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/freetype2" TYPE DIRECTORY FILES "/Users/Victor/Documents/qfusion/libsrcs/libfreetype/include/" REGEX "/internal$" EXCLUDE)
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Library/Frameworks" TYPE DIRECTORY FILES "/Users/Victor/Documents/qfusion/libsrcs/libfreetype/Debug/freetype.framework" USE_SOURCE_PERMISSIONS)
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Library/Frameworks/freetype.framework/Versions/A/freetype" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Library/Frameworks/freetype.framework/Versions/A/freetype")
      execute_process(COMMAND "/usr/bin/install_name_tool"
        -id "freetype.framework/Versions/A/freetype"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Library/Frameworks/freetype.framework/Versions/A/freetype")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Library/Frameworks/freetype.framework/Versions/A/freetype")
      endif()
    endif()
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Library/Frameworks" TYPE DIRECTORY FILES "/Users/Victor/Documents/qfusion/libsrcs/libfreetype/Release/freetype.framework" USE_SOURCE_PERMISSIONS)
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Library/Frameworks/freetype.framework/Versions/A/freetype" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Library/Frameworks/freetype.framework/Versions/A/freetype")
      execute_process(COMMAND "/usr/bin/install_name_tool"
        -id "freetype.framework/Versions/A/freetype"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Library/Frameworks/freetype.framework/Versions/A/freetype")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Library/Frameworks/freetype.framework/Versions/A/freetype")
      endif()
    endif()
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Library/Frameworks" TYPE DIRECTORY FILES "/Users/Victor/Documents/qfusion/libsrcs/libfreetype/MinSizeRel/freetype.framework" USE_SOURCE_PERMISSIONS)
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Library/Frameworks/freetype.framework/Versions/A/freetype" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Library/Frameworks/freetype.framework/Versions/A/freetype")
      execute_process(COMMAND "/usr/bin/install_name_tool"
        -id "freetype.framework/Versions/A/freetype"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Library/Frameworks/freetype.framework/Versions/A/freetype")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Library/Frameworks/freetype.framework/Versions/A/freetype")
      endif()
    endif()
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Library/Frameworks" TYPE DIRECTORY FILES "/Users/Victor/Documents/qfusion/libsrcs/libfreetype/RelWithDebInfo/freetype.framework" USE_SOURCE_PERMISSIONS)
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Library/Frameworks/freetype.framework/Versions/A/freetype" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Library/Frameworks/freetype.framework/Versions/A/freetype")
      execute_process(COMMAND "/usr/bin/install_name_tool"
        -id "freetype.framework/Versions/A/freetype"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Library/Frameworks/freetype.framework/Versions/A/freetype")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Library/Frameworks/freetype.framework/Versions/A/freetype")
      endif()
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/Users/Victor/Documents/qfusion/libsrcs/libfreetype/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
