#
# Copyright (C) 2022 TeamWin Recovery Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

TARGET_OTA_ASSERT_DEVICE := trelte,treltexx

LOCAL_PATH := device/samsung/treltexx

# Platform
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_VARIANT := cortex-a53
TARGET_BOOTLOADER_BOARD_NAME := universal5433
TARGET_SOC := exynos5433

# Kernel
TARGET_PREBUILT_KERNEL   := $(LOCAL_PATH)/prebuilt/zImage
TARGET_PREBUILT_DTB      := $(LOCAL_PATH)/prebuilt/dtb
BOARD_KERNEL_CMDLINE     :=	buildvariant=eng
BOARD_KERNEL_BASE        := 0x10000000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_KERNEL_PAGESIZE    := 2048
BOARD_MKBOOTIMG_ARGS     := --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --dtb $(LOCAL_PATH)/prebuilt/dtb

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE := 14680064
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3774873600
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26965164032 # Account for length=-16384
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_KERNEL_HAVE_EXFAT := true
TARGET_KERNEL_HAVE_NTFS := true

# Workaround for error copying vendor files to recovery ramdisk
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := product
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4

# Bootloader
TARGET_NO_BOOTLOADER    := true
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE    := true
TW_EXCLUDE_NANO 		:= true
TW_EXCLUDE_BASH 		:= true
TW_EXCLUDE_TWRPAPP 		:= true
# Display & Graphics
TW_MAX_BRIGHTNESS 		         := 255
TW_DEFAULT_BRIGHTNESS 			 := 162
TW_THEME                         := portrait_hdpi
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_BRIGHTNESS_PATH               := "/sys/devices/13800000.decon_fb/backlight/panel/brightness"
TW_DEVICE_VERSION	:= 0_notnoelchannel
# TWRP Recovery
TW_EXCLUDE_SUPERSU          := true
BOARD_SUPPRESS_SECURE_ERASE := true
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/recovery.fstab

