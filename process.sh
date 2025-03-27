#!/bin/bash

# 定义文件路径
BOOT="${BOOT_PATH}"
KERNEL="${KERNEL_PATH}"

cp "$BOOT"./boot.img

# 解包提取的boot.img
magiskboot unpack./boot.img

# 删除旧kernel并替换
cp -f "$KERNEL" ./kernel

# 重新打包
magiskboot repack./boot.img
