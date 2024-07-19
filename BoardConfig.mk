#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Include the common OEM chipset BoardConfig.
include device/oneplus/sm8350-common/BoardConfigCommon.mk

DEVICE_PATH := device/realme/ice

# Display
TARGET_SCREEN_DENSITY := 480

# Broken Modules Fix
BUILD_BROKEN_MISSING_REQUIRED_MODULES := true

# Enable UFFD GC
OVERRIDE_ENABLE_UFFD_GC := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/oplus/RMX3461
TARGET_KERNEL_CLANG_VERSION := r498229b
KERNEL_CC := CC=clang
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive

# Partitions
BOARD_ONEPLUS_DYNAMIC_PARTITIONS_SIZE := 10196353024 # BOARD_SUPER_PARTITION_SIZE - 4MB
BOARD_SUPER_PARTITION_SIZE := 10200547328

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 103

# Touch
SOONG_CONFIG_NAMESPACES += OPLUS_LINEAGE_TOUCH_HAL
SOONG_CONFIG_OPLUS_LINEAGE_TOUCH_HAL := INCLUDE_DIR
SOONG_CONFIG_OPLUS_LINEAGE_TOUCH_HAL_INCLUDE_DIR := \
    $(DEVICE_PATH)/configs/touch/include

# Include the proprietary files BoardConfig.
include vendor/realme/ice/BoardConfigVendor.mk
