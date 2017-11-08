$(call inherit-product, device/htc/m7spr/full_m7spr.mk)


# Inherit from those products. Most specific first.             
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from m7-common
$(call inherit-product, device/htc/m7-common/m7-common.mk)

# Inherit full phone configuration
$(call inherit-product, vendor/xenonhd/config/common_full_phone.mk)

# Get non-open-source specific aspects          
$(call inherit-product, vendor/htc/m7/m7-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/htc/m7/overlay

#enable SuperSU
WITH_SUPERSU := true
ROOT_METHOD=magisk

PRODUCT_PACKAGES += \
    AdAway \
    KernelAdiutor \
    MiXplorer

# Set those variables here to overwrite the inherited values.
PRODUCT_BRAND := htc
PRODUCT_DEVICE := m7spr
PRODUCT_MANUFACTURER := HTC
PRODUCT_MODEL := One
PRODUCT_NAME := xenonhd_m7spr

PRODUCT_PROPERTY_OVERRIDES += ro.xenonhd.maintainer=ljjehl
                                                                                1,1           Top
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sprint_wwe \
    BUILD_ID=LRX22F \
    BUILD_FINGERPRINT="htc/sprint_wwe/m7wls:5.0.2/LRX22F/461956.2:user/release-keys" \
    PRIVATE_BUILD_DESC="6.16.651.2 CL461956 release-keys"

