$(call inherit-product, device/lge/d850/full_d850.mk)

# Inherit some common EOS stuff.
$(call inherit-product, vendor/eos/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/eos/config/nfc_enhanced.mk)

# Copy bootanimation
PRODUCT_COPY_FILES += \
vendor/eos/prebuilt/common/bootanimation/1080.zip:system/media/bootanimation.zip

PRODUCT_NAME := eos_d850

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g3" \
    PRODUCT_NAME="g3_att_us" \
    BUILD_FINGERPRINT="lge/g3_att_us/g3:4.4.2/KVT49L.D85010d/D85010d.1403173065:user/release-keys" \
    PRIVATE_BUILD_DESC="g3_att_us-user 4.4.2 KVT49L.D85010d D85010d.1403173065 release-keys"
