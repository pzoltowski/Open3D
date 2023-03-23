set(CMAKE_SYSTEM_NAME iOS)  # works for tvOS or watchOS too
set(CMAKE_OSX_ARCHITECTURES "arm64;x86_64" CACHE STRING "")
#set(CMAKE_SYSTEM_PROCESSOR aarch64)

#get_property(__in_try_compile GLOBAL PROPERTY IN_TRY_COMPILE)
#if(__in_try_compile)
    set(CMAKE_XCODE_ATTRIBUTE_CODE_SIGNING_ALLOWED NO)
#endif()
#unset(__in_try_compile)
