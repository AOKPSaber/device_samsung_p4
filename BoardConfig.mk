#
# Copyright (C) 2011 The Android Open-Source Project
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

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Include p4-common
-include device/samsung/p4-common/BoardConfigCommon.mk

# Use the non-open-source parts, if they're present
-include vendor/samsung/p4/BoardConfigVendor.mk

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 710934528
BOARD_USERDATAIMAGE_PARTITION_SIZE := 14200340480

# Try to build the kernel
TARGET_KERNEL_SOURCE := kernel/samsung/p4
TARGET_KERNEL_CONFIG := cyanogenmod_samsung_p4-jb_defconfig

