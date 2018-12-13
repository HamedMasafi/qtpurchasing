#!/bin/bash

export ANDROID_HOME=/opt/android-sdk-linux/
export ANDROID_NDK_HOST=linux-x86_64
export ANDROID_NDK_PLATFORM=android-16
export ANDROID_NDK_ROOT=/opt/android-ndk-r10d
export ANDROID_NDK_TOOLCHAIN_PREFIX=arm-linux-androideabi
export ANDROID_NDK_TOOLCHAIN_VERSION=4.9
export ANDROID_NDK_TOOLS_PREFIX=arm-linux-androideabi
export ANDROID_SDK_ROOT=/opt/android-sdk-linux
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export PATH=$PATH:$JAVA_HOME/bin

mkdir -p build-qtpurchasing

cd build-qtpurchasing


/opt/qt/5.11.2/android_armv7/bin/qmake ../qtpurchasing/qtpurchasing.pro

make

make install

make
