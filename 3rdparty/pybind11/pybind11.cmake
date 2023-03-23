include(FetchContent)

find_package(Git QUIET REQUIRED)

FetchContent_Declare(
    ext_pybind11
    PREFIX pybind11
    URL https://github.com/pybind/pybind11/archive/refs/tags/v2.6.2.tar.gz
    URL_HASH SHA256=8ff2fff22df038f5cd02cea8af56622bc67f5b64534f1b83b9f133b8366acff2
    DOWNLOAD_DIR "${OPEN3D_THIRD_PARTY_DOWNLOAD_DIR}/pybind11"
    PATCH_COMMAND ${GIT_EXECUTABLE} init
    COMMAND ${GIT_EXECUTABLE} apply --ignore-space-change --ignore-whitespace
        ${CMAKE_CURRENT_LIST_DIR}/0001-fix-for-iOS.patch
)

FetchContent_MakeAvailable(ext_pybind11)
