#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from ginkgo device
$(call inherit-product, device/xiaomi/ginkgo/device.mk)

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# BCR
TARGET_PREBUILT_BCR := false

TARGET_ENABLE_BLUR := true
AXION_CAMERA_REAR_INFO := 48,8,2
AXION_CAMERA_FRONT_INFO := 13
AXION_MAINTAINER := Hirokixd
AXION_PROCESSOR := Snapdragon_665_(11nm)
TORCH_STR_SUPPORTED := false
BYPASS_CHARGE_SUPPORTED := false
TARGET_TOUCH_BOOST_SUPPORTED := true

AXION_CPU_PRIME_CORES := 7
AXION_CPU_BIG_CORES := 4,5,6
AXION_CPU_SMALL_CORES := 0,1,2,3

PRODUCT_SYSTEM_PROPERTIES += \
    persist.sys.axion_cpu_prime=$(AXION_CPU_PRIME_CORES) \
    persist.sys.axion_cpu_big=$(AXION_CPU_BIG_CORES) \
    persist.sys.axion_cpu_small=$(AXION_CPU_SMALL_CORES)

# CPU governor support
PERF_GOV_SUPPORTED := true
PERF_DEFAULT_GOV := schedutil
PERF_ANIM_OVERRIDE := true

# GPU
GPU_FREQS_PATH := /sys/class/kgsl/kgsl-3d0/freq_table_mhz
GPU_MIN_FREQ_PATH := /sys/class/kgsl/kgsl-3d0/min_clock_mhz

# High Brightness Mode (HBM)
HBM_SUPPORTED := false

# LineageOS apps
ifneq ($(WITH_GMS),true)
TARGET_INCLUDES_LOS_PREBUILTS := true
endif

# MiuiCamera
TARGET_USES_MIUI_CAMERA := true

PRODUCT_NAME := lineage_ginkgo
PRODUCT_DEVICE := ginkgo
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 8

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := xiaomi/ginkgo_eea/ginkgo:11/RKQ1.201004.002/V12.5.12.0.RCOEUXM:user/release-keys
