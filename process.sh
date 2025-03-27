#!/bin/bash

# 定义文件路径
BOOT="${BOOT_PATH}"
KERNEL="${KERNEL_PATH}"

# 解包提取的boot.img
magiskboot unpack "$BOOT"

# 删除旧kernel并替换
mv -f "$KERNEL" ./kernel

# 重新打包
magiskboot repack boot.img
