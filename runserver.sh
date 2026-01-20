#!/bin/bash
# Script to run Django server with MySQL library path

export DYLD_LIBRARY_PATH=/usr/local/mysql-9.5.0-macos15-arm64/lib:$DYLD_LIBRARY_PATH
python manage.py runserver "$@"

