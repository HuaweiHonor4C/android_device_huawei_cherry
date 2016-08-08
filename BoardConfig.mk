#
# Copyright 2016 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

USE_CAMERA_STUB := true
TARGET_OTA_ASSERT_DEVICE := cherry,chm-u01
EXPERIMENTAL_USE_JAVA7 := true
requires_openjdk := true
# 64-bit 
ANDROID_64=true
TARGET_USES_64_BIT_BINDER := true
TARGET_USES_HISI_DTIMAGE := true
TARGET_SUPPORTS_32_BIT_APPS := true
TARGET_SUPPORTS_64_BIT_APPS := true

# Audio
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := true

# Primary Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_ABI := arm64-v8a
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_NEON := true

# Secondary Architecture
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_VARIANT := cortex-a7
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi

# Compiler Optimizations
ARCH_ARM_HIGH_OPTIMIZATION := true

# Wifi & Bluetooth
#BOARD_WLAN_DEVICE                := bcmdhd
#BOARD_WLAN_DEVICE_REV            := bcm4343
#WPA_SUPPLICANT_VERSION           := VER_0_8_X
#BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
#BOARD_HOSTAPD_DRIVER             := NL80211
#BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
#WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcmdhd/parameters/firmware_path"
#WIFI_DRIVER_FW_PATH_STA          := "/system/vendor/firmware/fw_bcm4343s_hw.bin"
#WIFI_DRIVER_FW_PATH_AP           := "/system/vendor/firmware/fw_bcm4343s_apsta_hw.bin"
#WIFI_DRIVER_FW_PATH_P2P          := "/system/vendor/firmware/fw_bcm4343s_p2p_hw.bin"
#WIFI_BAND                        := 802_11_ABG
#BOARD_HAVE_BLUETOOTH := true
#BOARD_HAVE_BLUETOOTH_BCM := true
#BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := "device/huawei/cherry4c/bluetooth"
#BOARD_BLUEDROID_VENDOR_CONF := device/huawei/cherry4c/bluetooth/vnd_cherry.txt

# GPU and Open GL Rendering
USE_OPENGL_RENDERER := true
ANDROID_ENABLE_RENDERSCRIPT := true
TARGET_HARDWARE_3D := true
BOARD_EGL_CFG := device/huawei/cherry4c/egl.cfg
TARGET_BOARD_GPU := mali-450mp

# Arbitary Board Props
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := false
TARGET_NO_RECOVERY := false
TARGET_BOARD_PLATFORM := hi6210sft
TARGET_BOOTLOADER_BOARD_NAME := hi6210sft
TARGET_CPU_SMP := true
TARGET_SOC := kirin620
BOARD_VENDOR := huawei

# Kernel
BOARD_KERNEL_CMDLINE := hisi_dma_print=0 vmalloc=384M maxcpus=8 coherent_pool=512K no_irq_affinity androidboot.selinux=permissive ate_enable=true androidboot.hardware=hi6210sft
BOARD_KERNEL_BASE := 0x07478000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x07b88000 --tags_offset 0x02988000
#TARGET_PREBUILT_KERNEL := device/huawei/cherry4c/kernel
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel
TARGET_KERNEL_CONFIG := cyanogenmod_hi6210sft_defconfig
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
TARGET_KERNEL_ARCH := arm64
BOARD_KERNEL_IMAGE_NAME := Image

# Partition Sizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 25165824
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2550136832
BOARD_USERDATAIMAGE_PARTITION_SIZE := 4064280576
BOARD_FLASH_BLOCK_SIZE := 131072

# Display
DEVICE_SCREEN_HEIGHT := 1280
DEVICE_SCREEN_WIDTH := 720

# Recovery
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_RECOVERY_FSTAB := device/huawei/cherry4c/recovery.fstab
RECOVERY_FSTAB_VERSION := 2
TARGET_USERIMAGES_USE_EXT4 := true

# Preload bootanimation
TARGET_BOOTANIMATION_PRELOAD := true

# Enable WEBGL in WebKit
ENABLE_WEBGL := true
