$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Halium
$(call inherit-product, $(SRC_TARGET_DIR)/product/halium.mk)

# Inherit from lmi device
$(call inherit-product, device/xiaomi/lmi/device.mk)

PRODUCT_NAME := lineage_lmi
PRODUCT_DEVICE := lmi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi K30 Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lmi-user 11 RKQ1.200826.002 V12.5.3.0.RJKMIXM release-keys"

BUILD_FINGERPRINT := Redmi/lmi/lmi:11/RKQ1.200826.002/V12.5.3.0.RJKMIXM:user/release-keys
