#!/bin/bash
export CROSS_COMPILE=~/Toolchain/google_gcc/aarch64-linux-android-4.9/bin/aarch64-linux-android-
export CROSS_COMPILE_ARM32=arm-linux-gnueabi-
export ARCH=arm64
export SUBARCH=arm64
ls arch/arm64/configs
read -p "choice your config : " defconfig
make O=output $defconfig -j16
make O=output -j16