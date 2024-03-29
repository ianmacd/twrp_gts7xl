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
PLATFORM_VERSION := 12
PLATFORM_VERSION_LAST_STABLE := 12

DEVICE_PATH := device/samsung/gts7xl

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := kryo

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-2a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a75

TARGET_USES_64_BIT_BINDER := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := kona
TARGET_NO_BOOTLOADER := true

# File systems
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Platform
BOARD_USES_QCOM_HARDWARE := true
TARGET_BOARD_PLATFORM := kona
TARGET_BOARD_PLATFORM_GPU := qcom-adreno650
QCOM_BOARD_PLATFORMS += kona
TARGET_RECOVERY_QCOM_RTC_FIX := true

# Kernel
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image
BOARD_PREBUILT_DTBIMAGE_DIR := $(DEVICE_PATH)/prebuilt/dtb
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/recovery_dtbo
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_INCLUDE_RECOVERY_DTBO := true
TARGET_KERNEL_ARCH := arm64

BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x02000000 --tags_offset 0x01e00000 --header_version 2 --board SRPTC16A002
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_PATH)/bootimg.mk
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom androidboot.memcg=1 lpm_levels.sleep_disabled=1 video=vfb:640x400,bpp=32,memsize=3072000 msm_rtb.filter=0x237 service_locator.enable=1 swiotlb=2048 firmware_class.path=/vendor/firmware_mnt androidboot.usbcontroller=a600000.dwc3
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_TAGS_OFFSET := 0x01e00000
BOARD_RAMDISK_OFFSET := 0x02000000

# Recovery
TARGET_OTA_ASSERT_DEVICE := gts7xl
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_COPY_OUT_VENDOR := vendor
PLATFORM_SECURITY_PATCH := 2021-12-01
VENDOR_SECURITY_PATCH := 2021-12-01

# Partitions
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_BOOTIMAGE_PARTITION_SIZE := 71303168
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 86888448

# Crypto
TW_INCLUDE_CRYPTO := false
TW_INCLUDE_CRYPTO_FBE := false
TW_INCLUDE_FBE_METADATA_DECRYPT := false

# Portrait orientation:
#
#TW_THEME := portrait_hdpi
#TW_ROTATION := 270

# Landscape orientation:
#
TW_THEME := landscape_hdpi
RECOVERY_TOUCHSCREEN_SWAP_XY := true
RECOVERY_TOUCHSCREEN_FLIP_Y := true

# TWRP
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel0-backlight/brightness"
TW_MAX_BRIGHTNESS := 355
TW_DEFAULT_BRIGHTNESS := 213
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_EXTRA_LANGUAGES := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
#TWRP_INCLUDE_LOGCAT := true
#TARGET_USES_LOGD := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_NO_LEGACY_PROPS := true
TW_NO_BIND_SYSTEM := true

BOARD_KERNEL_IMAGE_NAME := Image

# Dynamic Partitions
BOARD_SUPER_PARTITION_SIZE := 7907226240
BOARD_SUPER_PARTITION_GROUPS := samsung_dynamic_partitions
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_PARTITION_LIST := \
    system \
    vendor \
    product \
    odm

# BOARD_GOOGLE_DYNAMIC_PARTITIONS_SIZE is set to BOARD_SUPER_PARTITION_SIZE / 2 - 4MB
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_SIZE := 3949418816

# Set error limit to BOARD_SUPER_PARTITION_SIZE - 500MB
BOARD_SUPER_PARTITION_ERROR_LIMIT := 7382938240
