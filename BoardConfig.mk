# config.mk
#
# Product-specific compile-time definitions.
#

TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a-branchprot
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-2a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a9

TARGET_HW_DISK_ENCRYPTION := true
TARGET_HW_DISK_ENCRYPTION_PERF := true

BOARD_SECCOMP_POLICY := device/qcom/$(TARGET_BOARD_PLATFORM)/seccomp

# KEYSTONE(Ic253d97bc8b3e0b578b0cc72302a6eb03c0acb1b,b/320732555)
# BOARD_SYSTEMSDK_VERSIONS:= $(SHIPPING_API_LEVEL)

TARGET_NO_BOOTLOADER := true
TARGET_USES_UEFI := true
TARGET_NO_KERNEL := true

# Disable DLKMs compilation for lunch qssi builds.
TARGET_KERNEL_DLKM_DISABLE := true

-include $(QCPATH)/common/msmnile/BoardConfigVendor.mk

USE_OPENGL_RENDERER := true
BOARD_USE_LEGACY_UI := true

ifeq ($(ENABLE_AB), true)
# Defines for enabling A/B builds
AB_OTA_UPDATER := true
# Full A/B partition update set
# AB_OTA_PARTITIONS := xbl rpm tz hyp pmic modem abl boot keymaster cmnlib cmnlib64 system bluetooth

# Minimum partition set for automation to test recovery generation code
# Packages generated by using just the below flag cannot be used for updating a device. You must pass
# in the full set mentioned above as part of your make commandline
TARGET_NO_RECOVERY := true
else
TARGET_NO_RECOVERY := true
# Enable System As Root even for non-A/B
# Add the below cache settings for /cache mountpoint, although we don't need the resultant cache image
# from within Qssi.
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
endif

# Define BOARD_USES_METADATA_PARTITION to create metadata mount point in system image
BOARD_USES_METADATA_PARTITION := true

#Enable split vendor image
ENABLE_VENDOR_IMAGE := true
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x06000000
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024

BOARD_USES_GENERIC_AUDIO := true
BOARD_QTI_CAMERA_32BIT_ONLY := true
TARGET_NO_RPC := true

TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/
TARGET_INIT_VENDOR_LIB := libinit_msm

TARGET_DYNAMIC_64_32_MEDIASERVER := true

#Disable appended dtb.
TARGET_KERNEL_APPEND_DTB := false

#Enable dtb in boot image and boot image header version 2 support.
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_MKBOOTIMG_ARGS := --header_version $(BOARD_BOOTIMG_HEADER_VERSION)

#Enable PD locater/notifier
TARGET_PD_SERVICE_ENABLED := true

#Enable peripheral manager
TARGET_PER_MGR_ENABLED := true

# Enable sensor multi HAL
USE_SENSOR_MULTI_HAL := true

#Enable INTERACTION_BOOST
TARGET_USES_INTERACTION_BOOST := true

#Enable DRM plugins 64 bit compilation
TARGET_ENABLE_MEDIADRM_64 := true

ifeq ($(ENABLE_VENDOR_IMAGE), false)
    $(error "Vendor Image is mandatory !!")
endif

BUILD_BROKEN_DUP_RULES := true

# KEYSTONE(I1056bb73cc2f8796ed941b5dd7b333ef15c60891,b/147756744)
BUILD_BROKEN_NINJA_USES_ENV_VARS := SDCLANG_AE_CONFIG SDCLANG_CONFIG SDCLANG_CONFIG_AOSP SDCLANG_SA_ENABLED
BUILD_BROKEN_NINJA_USES_ENV_VARS += TEMPORARY_DISABLE_PATH_RESTRICTIONS
BUILD_BROKEN_USES_BUILD_HOST_SHARED_LIBRARY := true
BUILD_BROKEN_USES_BUILD_HOST_EXECUTABLE := true
BUILD_BROKEN_USES_BUILD_COPY_HEADERS := true
BUILD_BROKEN_USES_BUILD_HOST_STATIC_LIBRARY := true

RECOVERY_SNAPSHOT_VERSION := current
RAMDISK_SNAPSHOT_VERSION := current
Q_BU_DISABLE_MODULE := true

###### Dynamic Partition Handling ####
ifneq ($(strip $(BOARD_DYNAMIC_PARTITION_ENABLE)),true)
#BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_VENDORIMAGE_PARTITION_SIZE := 1073741824
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_PRODUCTIMAGE_PARTITION_SIZE := 838860800
ifeq ($(ENABLE_AB), true)
AB_OTA_PARTITIONS ?= system
endif
else
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_SYSTEM_EXT := system_ext
BOARD_USES_PRODUCTIMAGE := true
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4
#BOARD_BUILD_SYSTEM_ROOT_IMAGE := false
BOARD_SUPER_PARTITION_SIZE := 12884901888
BOARD_SUPER_PARTITION_GROUPS := qti_dynamic_partitions
BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST := system system_ext product
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 6438256640
BOARD_EXT4_SHARE_DUP_BLOCKS := true
ifeq ($(ENABLE_AB), true)
AB_OTA_PARTITIONS ?= system system_ext product vbmeta_system
endif
endif
###### Dynamic Partition Handling ####

# Use sha256 for dm-verity partitions
BOARD_AVB_SYSTEM_ADD_HASHTREE_FOOTER_ARGS += --hash_algorithm sha256
BOARD_AVB_SYSTEM_EXT_ADD_HASHTREE_FOOTER_ARGS += --hash_algorithm sha256
BOARD_AVB_PRODUCT_ADD_HASHTREE_FOOTER_ARGS += --hash_algorithm sha256

DIRECTED_VENDOR_SNAPSHOT := true
DIRECTED_RECOVERY_SNAPSHOT := true
DIRECTED_RAMDISK_SNAPSHOT := true
-include vendor/qcom/configs/snapshot_modules/*/*.mk