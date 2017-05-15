pushd "%SRC_DIR%"\python

@rem the symlinks for cmake modules don't work here
copy /Y "%SRC_DIR%\cpp\cmake_modules\BuildUtils.cmake" cmake_modules\
copy /Y "%SRC_DIR%\cpp\cmake_modules\SetupCxxFlags.cmake" cmake_modules\
copy /Y "%SRC_DIR%\cpp\cmake_modules\CompilerInfo.cmake" cmake_modules\
copy /Y "%SRC_DIR%\cpp\cmake_modules\FindNumPy.cmake" cmake_modules\
copy /Y "%SRC_DIR%\cpp\cmake_modules\FilePythonLibsNew.cmake" cmake_modules\

SET ARROW_HOME=%LIBRARY_PREFIX%
"%PYTHON%" setup.py install --single-version-externally-managed --record=record.txt
if errorlevel 1 exit 1
popd
