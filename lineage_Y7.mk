# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from Y7 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := doogee
PRODUCT_DEVICE := Y7
PRODUCT_MANUFACTURER := doogee
PRODUCT_NAME := lineage_Y7
PRODUCT_MODEL := N10

PRODUCT_GMS_CLIENTID_BASE := android-doogee
TARGET_VENDOR := doogee
TARGET_VENDOR_PRODUCT_NAME := Y7
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="s9863a1h10_Natv-user 8.1.0 OPM2.171019.012 20190321 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := DOOGEE/N10/Y7:8.1.0/OPM2.171019.012/20190321:user/release-keys
