#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

COMMON_PATH := device/motorola/sm6125-common

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := cortex-a73

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a73

# Bootloader
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_IMAGE_NAME := Image.gz
BOARD_KERNEL_PAGESIZE := 4096
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)

BOARD_KERNEL_CMDLINE += console=null androidboot.hardware=qcom lpm_levels.sleep_disabled=1
BOARD_KERNEL_CMDLINE += msm_rtb.filter=0x237 service_locator.enable=1 swiotlb=1 loop.max_part=7
BOARD_KERNEL_CMDLINE += cgroup.memory=nokmem,nosocket androidboot.init_fatal_reboot_target=recovery

TARGET_KERNEL_SOURCE := kernel/motorola/sm6125
TARGET_KERNEL_CONFIG := vendor/trinket-perf_defconfig vendor/mot-trinket.config

# Platform
BOARD_USES_QCOM_HARDWARE := true
TARGET_BOARD_PLATFORM := trinket

# Include the proprietary files BoardConfig.
include vendor/motorola/sm6125-common/BoardConfigVendor.mk
