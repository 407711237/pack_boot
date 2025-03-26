#!/bin/bash

# 定义文件路径
BOOT="${BOOT_PATH}"
KERNEL="${KERNEL_PATH}"
OUTPUT="boot.img.new"

# 解包提取的boot.img
magiskboot unpack "$BOOT"

# 删除旧kernel并替换
rm ./kernel
mv "$KERNEL" ./

# 重新打包
magiskboot repack boot.img "$OUTPUT"

# 清理临时文件
rm -rf "$EXTRACTED_BOOT"
