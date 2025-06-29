#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

COMMON_PATH := device/motorola/sm6125-common

include device/motorola/sm6125-common/BoardConfigCommon.mk

# A/B
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += system_ext product vbmeta_system recovery

# Partitions
BOARD_DTBOIMG_PARTITION_SIZE := 25165824
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864

-include vendor/lineage/config/BoardConfigReservedSize.mk
## The following set to sofiar partition size
BOARD_SUPER_PARTITION_SIZE := 8690597888
BOARD_SUPER_PARTITION_GROUPS := mot_dp_group
BOARD_MOT_DP_GROUP_PARTITION_LIST := product system system_ext vendor
BOARD_MOT_DP_GROUP_SIZE = $(shell expr $(BOARD_SUPER_PARTITION_SIZE) / 2 - 4194304) # 4MiB overhead

BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4

# Recovery
BOARD_INCLUDE_RECOVERY_DTBO := true
TARGET_RECOVERY_FSTAB := $(COMMON_PATH)/rootdir/etc/fstab.dynamic

# Treble
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_SYSTEM_EXT := system_ext
