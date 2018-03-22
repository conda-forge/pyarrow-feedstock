#!/bin/bash

set -e
set -x

# Build dependencies
export ARROW_HOME=$PREFIX
export PARQUET_HOME=$PREFIX


cd python
$PYTHON setup.py build_ext  --build-type=release \
    --with-orc --with-parquet --with-plasma \
    install --single-version-externally-managed --record=record.txt
