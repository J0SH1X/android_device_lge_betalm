#
# Copyright (C) 2018 The LineageOS Project
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

DEVICE_PATH := device/lge/betalm

# inherit from common beta-common
-include device/lge/beta-common/BoardConfigCommon.mk

# Kernel
BOARD_KERNEL_CMDLINE += androidboot.hardware=betalm

# Recovery
TARGET_RECOVERY_WIPE := $(DEVICE_PATH)/recovery/recovery.wipe
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.betalm

# Security Patch Level
VENDOR_SECURITY_PATCH := 2020-09-01

# inherit from the proprietary version
-include vendor/lge/betalm/BoardConfigVendor.mk
