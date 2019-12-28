# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from perry device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := motorola
PRODUCT_DEVICE := perry
PRODUCT_MANUFACTURER := motorola
PRODUCT_NAME := lineage_perry
PRODUCT_MODEL := perry

PRODUCT_GMS_CLIENTID_BASE := android-motorola
TARGET_VENDOR := motorola
TARGET_VENDOR_PRODUCT_NAME := perry
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC=" 7 NPQS26.69-64-17 20 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := 7.1.1/NPQS26.69-64-17/20:user/release-keys
