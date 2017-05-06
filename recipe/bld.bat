pushd "%SRC_DIR%"\python
SET ARROW_HOME=%LIBRARY_PREFIX%
"%PYTHON%" setup.py install --single-version-externally-managed --record=record.txt
if errorlevel 1 exit 1
popd
