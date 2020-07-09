#!/bin/sh

echo "Building Default Linux image (Python 3.8.3, Focal, 64bit)"
docker build -f Dockerfile-py3-focal-amd64 \
--build-arg PYTHON_VERSION 3.8.3
--build-arg PYINSTALLER_VERSION 3.6
-t pyinstaller-linux \
-t pyinstaller-linux:64bit \
-t pyinstaller-linux:focal \
-t pyinstaller-linux:python3 \
-t pyinstaller-linux:python3-64bit \
-t pyinstaller-linux:python3-focal \
-t pyinstaller-linux:python3-focal-64bit \
-t pyinstaller-linux:python3.8 \
-t pyinstaller-linux:python3.8-64bit \
-t pyinstaller-linux:python3.8-focal \
-t pyinstaller-linux:python3.8-focal-64bit \
-t pyinstaller-linux:python3.8.3 \
-t pyinstaller-linux:python3.8.3-64bit \
-t pyinstaller-linux:python3.8.3-focal \
-t pyinstaller-linux:python3.8.3-focal-64bit \
.

echo "Building Linux image (Python 3.7.5, Precise, 64bit)"
docker build -f Dockerfile-py3-precise-amd64 \
--build-arg PYTHON_VERSION 3.7.5
--build-arg PYINSTALLER_VERSION 3.6
-t pyinstaller-linux:precise \
-t pyinstaller-linux:python3.7 \
-t pyinstaller-linux:python3.7.5 \
.

echo "Building Default Windows image (Python 3.8.3, Xenial, 64bit)"
docker build -f Dockerfile-py3-xenial-win64 \
--build-arg PYTHON_VERSION 3.8.3
--build-arg PYINSTALLER_VERSION 3.6
-t pyinstaller-windows \
-t pyinstaller-windows:64bit \
-t pyinstaller-windows:xenial \
-t pyinstaller-windows:python3 \
-t pyinstaller-windows:python3-64bit \
-t pyinstaller-windows:python3-xenial \
-t pyinstaller-windows:python3-xenial-64bit \
-t pyinstaller-windows:python3.8 \
-t pyinstaller-windows:python3.8-64bit \
-t pyinstaller-windows:python3.8-xenial \
-t pyinstaller-windows:python3.8-xenial-64bit \
-t pyinstaller-windows:python3.8.5 \
-t pyinstaller-windows:python3.8.5-64bit \
-t pyinstaller-windows:python3.8.5-xenial \
-t pyinstaller-windows:python3.8.5-xenial-64bit \
.

echo "Building Windows image (Python 3.7.5, Xenial, 64bit)"
docker build -f Dockerfile-py3-xenial-win64 \
--build-arg PYTHON_VERSION 3.7.5
--build-arg PYINSTALLER_VERSION 3.6
-t pyinstaller-windows:python3.7 \
-t pyinstaller-windows:python3.7-64bit \
-t pyinstaller-windows:python3.7-xenial \
-t pyinstaller-windows:python3.7-xenial-64bit \
-t pyinstaller-windows:python3.7.5 \
-t pyinstaller-windows:python3.7.5-64bit \
-t pyinstaller-windows:python3.7.5-xenial \
-t pyinstaller-windows:python3.7.5-xenial-64bit \
.

echo "Building Default Linux 32 bits image (Python 3, Precise, 32bit)"
docker build -f Dockerfile-py3-precise-i386 \
-t pyinstaller-linux:32bit \
-t pyinstaller-linux:python3-32bit \
-t pyinstaller-linux:python3-precise-32bit \
.

echo "Building Default Windows 32 bits image (Python 3, Xenial, 32bit)"
docker build -f Dockerfile-py3-xenial-win32 \
-t pyinstaller-windows:32bit \
-t pyinstaller-windows:python3-32bit \
-t pyinstaller-windows:python3-xenial-32bit \
.

echo "Building Default Windows Python 2 image (Python 2, Trusty, 32bit)"
docker build -f Dockerfile-py2-trusty-win32 \
-t pyinstaller-linux:python2 \
-t pyinstaller-linux:python2-trusty \
-t pyinstaller-linux:python2-32bit \
-t pyinstaller-linux:python2-trusty-32bit \
.

echo "Building Default Linux Python 2 image (Python 2, Precise, 64bit)"
docker build -f Dockerfile-py2-precise-amd64 \
-t pyinstaller-linux:python2 \
-t pyinstaller-linux:python2-precise \
-t pyinstaller-linux:python2-precise-64bit \
.

echo "Building Default Linux Focal image (Python 3, Focal, 64bit)"
docker build -f Dockerfile-py3-focal-amd64 \
-t pyinstaller-linux:focal \
-t pyinstaller-linux:python3-focal \
-t pyinstaller-linux:python3-focal-64bit \
.

echo "Building Default Linux Xenial image (Python 3, Xenial, 64bit)"
docker build -f Dockerfile-py3-xenial-amd64 \
-t pyinstaller-linux:xenial \
-t pyinstaller-linux:python3-xenial \
-t pyinstaller-linux:python3-xenial-64bit \
.
