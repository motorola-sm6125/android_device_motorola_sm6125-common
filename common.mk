#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH) \
    hardware/motorola

# Inherit from the proprietary files makefile.
$(call inherit-product, vendor/motorola/sm6125-common/sm6125-common-vendor.mk)
