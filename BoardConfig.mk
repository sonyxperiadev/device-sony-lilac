# Copyright 2014 The Android Open Source Project
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

include device/sony/yoshino/PlatformConfig.mk

TARGET_BOOTLOADER_BOARD_NAME := G8441

# Platform
PRODUCT_PLATFORM := yoshino

# NFC
NXP_CHIP_TYPE := PN553
NXP_CHIP_FW_TYPE := PN553

BOARD_KERNEL_CMDLINE += androidboot.hardware=lilac

# Recovery config
BOARD_SONY_INIT_FLAGS += -DDEV_BLOCK_PATH="\"/dev/block/sde"\"
BOARD_SONY_INIT_FLAGS += -DDEV_BLOCK_FOTA_PATH="\"/dev/block/sde47"\"
BOARD_SONY_INIT_FLAGS += -DDEV_BLOCK_FOTA_NUM="47"
BOARD_SONY_INIT_FLAGS += -DDEV_BLOCK_FOTA_MAJOR="259"
BOARD_SONY_INIT_FLAGS += -DDEV_BLOCK_FOTA_MINOR="31"

#Reserve space for data encryption (21009195008-16384)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 21009178624

#TARGET_TAP_TO_WAKE_NODE := "/sys/devices/virtual/input/clearpad/wakeup_gesture"
