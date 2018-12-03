DEVICE_PATH := device/motorola/perry
BOARD_VENDOR := motorola

# Assert
TARGET_OTA_ASSERT_DEVICE := perry,perry_retail

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=30 msm_rtb.filter=0x237 ehci-hcd.park=3
BOARD_KERNEL_CMDLINE += androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlycon=msm_hsl_uart,0x78B0000 vmalloc=400M androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80008000
BOARD_KERNEL_IMAGE_NAME := Image.gz
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x80000100
BOARD_RAMDISK_OFFSET := 0x81000000
BOARD_KERNEL_SEPARATED_DT := true
TARGET_CUSTOM_DTBTOOL := dtbTool_custom
BOARD_DTBTOOL_ARGS := --force-v3
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CONFIG := perry_defconfig
TARGET_KERNEL_SOURCE := kernel/motorola/msm8937
KERNEL_TOOLCHAIN := $(PWD)/prebuilts/gcc/$(HOST_OS)-x86/aarch64/aarch64-linux-android-4.9/bin

-include vendor/motorola/perry/BoardConfigVendor.mk
