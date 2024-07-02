#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

COMMON_PATH := device/motorola/sm6125-common

# A/B
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += boot dtbo system vendor vbmeta

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a73

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a73

# Audio
BOARD_USES_ALSA_AUDIO := true
USE_CUSTOM_AUDIO_POLICY := 1
USE_XML_AUDIO_POLICY_CONF := 1
AUDIO_FEATURE_ENABLED_GEF_SUPPORT := true
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := trinket
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom androidboot.memcg=1 lpm_levels.sleep_disabled=1
BOARD_KERNEL_CMDLINE += msm_rtb.filter=0x237 service_locator.enable=1 swiotlb=1 loop.max_part=7
BOARD_KERNEL_CMDLINE += cgroup.memory=nokmem,nosocket androidboot.usbcontroller=4e00000.dwc3
BOARD_KERNEL_CMDLINE += androidboot.hab.cid=50
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
TARGET_KERNEL_SOURCE := kernel/motorola/sm6125
TARGET_KERNEL_CONFIG := vendor/trinket-perf_defconfig vendor/ext_config/moto-trinket.config

# Partitions
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

# Platform
BOARD_USES_QCOM_HARDWARE := true
TARGET_BOARD_PLATFORM := trinket
TARGET_BOARD_PLATFORM_GPU := qcom-adreno610

# Recovery
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# SEPolicy
include device/qcom/sepolicy_vndr/SEPolicy.mk

# Treble
BOARD_VNDK_VERSION := current
TARGET_COPY_OUT_VENDOR := vendor

# Vendor security patch level
VENDOR_SECURITY_PATCH := 2022-08-01

# Verified boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA2048
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

# Include the proprietary files
include vendor/motorola/sm6125-common/BoardConfigVendor.mk
