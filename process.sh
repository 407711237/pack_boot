#!/bin/bash

# 定义文件路径
PAYLOAD="${PAYLOAD_PATH}"
KERNEL="${KERNEL_PATH}"
EXTRACTED_BOOT="extracted_boot.img"
OUTPUT="boot.img.new"

# 使用magiskboot提取boot.img
magiskboot extract "$PAYLOAD" boot "$EXTRACTED_BOOT"

# 解包提取的boot.img
magiskboot unpack "$EXTRACTED_BOOT"

# 删除旧kernel并替换
rm ./kernel
mv "$KERNEL" ./

# 重新打包
magiskboot repack boot.img "$OUTPUT"

# 清理临时文件
rm -rf "$EXTRACTED_BOOT"
