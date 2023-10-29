:: https://github.com/scivision/mumps/blob/main/Readme_Windows.md
:: Generate build files
cmake -G "MinGW Makefiles" ^
      -B build ^
      -D CMAKE_BUILD_TYPE:STRING=RELEASE ^
      -D CMAKE_PREFIX_PATH:PATH=%LIBRARY_PREFIX%\mingw-w64 ^
      -D CMAKE_INSTALL_PREFIX:PATH=%LIBRARY_PREFIX%\mingw-w64 ^
      -D HDF5_BUILD_CPP_LIB:BOOL=ON ^
      -D HDF5_BUILD_FORTRAN:BOOL=ON ^
      -D CMAKE_POSITION_INDEPENDENT_CODE:BOOL=ON ^
      -D BUILD_SHARED_LIBS:BOOL=ON ^
      -D BUILD_STATIC_LIBS:BOOL=OFF ^
      -D ONLY_SHARED_LIBS:BOOL=ON ^
      -D HDF5_BUILD_HL_LIB:BOOL=ON ^
      -D HDF5_BUILD_TOOLS:BOOL=ON ^
      -D HDF5_BUILD_HL_GIF_TOOLS:BOOL=ON ^
      -D HDF5_ENABLE_PARALLEL:BOOL=ON ^
      -D HDF5_ENABLE_THREADSAFE:BOOL=ON ^
      -D ALLOW_UNSUPPORTED:BOOL=ON

:: Build
cmake --build build --parallel
cmake --install build
