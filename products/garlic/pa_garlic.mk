ifeq (pa_garlic,$(TARGET_PRODUCT))

# Inherit all device-specific stuff
$(call inherit-product, device/yu/garlic/full_garlic.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Include correct bootanimation size
TARGET_BOOT_ANIMATION_RES := 1080

# Include common AOSPA stuff
include vendor/pa/main.mk

PRODUCT_NAME := pa_garlic
BOARD_VENDOR := yu
PRODUCT_DEVICE := garlic
PRODUCT_BRAND := YU

PRODUCT_GMS_CLIENTID_BASE := android-micromax

## Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=YU/YU5040/YU5040:7.1.1/NMF26F/1502798695:user/release-keys \
    PRIVATE_BUILD_DESC="p7201-user 7.1.1 NMF26F 1503040709 release-keys"
endif
endif
