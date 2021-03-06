mkdir build
cd build

cmake -G "NMake Makefiles" ^
      -D CMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
      -D CMAKE_PREFIX_PATH=%LIBRARY_PREFIX% ^
      -D CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS=TRUE ^
      -D CMAKE_BUILD_TYPE=Release ^
      ..

if errorlevel 1 exit 1

nmake dftatom
if errorlevel 1 exit 1

nmake install
if errorlevel 1 exit 1
