#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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

# inherit from common msm8956-common
-include device/xiaomi/msm8956-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/kenzo

# Assertions
TARGET_OTA_ASSERT_DEVICE := kate,kenzo

#Updater Script Add-On
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./build/tools/releasetools/ota_from_target_files -e ./device/xiaomi/kenzo/installer_extra

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/xiaomi/kenzo/bluetooth

# Filesystem
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26838785024 # 26838801408 - 16384

# Kernel
TARGET_KERNEL_CONFIG := lineageos_kenzo_defconfig

# Properties
TARGET_SYSTEM_PROP += device/xiaomi/kenzo/system.prop

# Sepolicy
#BOARD_SEPOLICY_DIRS += device/xiaomi/kenzo/sepolicy

# Enable real time lockscreen charging current values
BOARD_GLOBAL_CFLAGS += -DBATTERY_REAL_INFO

# inherit from the proprietary version
-include vendor/xiaomi/kenzo/BoardConfigVendor.mk
