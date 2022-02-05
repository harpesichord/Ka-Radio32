#!/bin/bash
# Setup Tooling

pip install --upgrade setuptools
python -m pip install --upgrade pip
pip install future
pacman -S mingw-w64-i686-python2-cryptography
pip install cryptography
pip install -r $IDF_PATH/requirements.txt
pacman -Sy python3