#
# Copyright (C) 2021-2023 KonstaKANG
#
# SPDX-License-Identifier: Apache-2.0
#

# Car UI Portrait Emulator Target

# Exclude AAE Car System UI
DO_NOT_INCLUDE_AAE_CAR_SYSTEM_UI := true

# Exclude Car UI Reference Design
DO_NOT_INCLUDE_CAR_UI_REFERENCE_DESIGN := true

# Exclude Car Visual Overlay
DISABLE_CAR_PRODUCT_VISUAL_OVERLAY := true

# Copy additional files
PRODUCT_COPY_FILES += \
    packages/services/Car/car_product/car_ui_portrait/car_ui_portrait.ini:config.ini \
    packages/services/Car/car_product/car_ui_portrait/bootanimation/bootanimation.zip:system/media/bootanimation.zip

$(call inherit-product, device/brcm/rpi4/aosp_rpi4_car.mk)

# TODO(b/303863968): Set it to true after cleaning up the system partition
# changes from this makefile
PRODUCT_ENFORCE_ARTIFACT_PATH_REQUIREMENTS := false

$(call inherit-product, packages/services/Car/car_product/car_ui_portrait/apps/car_ui_portrait_apps.mk)
$(call inherit-product, packages/services/Car/car_product/car_ui_portrait/rro/car_ui_portrait_rro.mk)

PRODUCT_COPY_FILES += \
    packages/services/Car/car_product/car_ui_portrait/car_ui_portrait_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/car_ui_portrait_hardware.xml


# Device identifier. This must come after all inclusions.
PRODUCT_DEVICE := rpi4
PRODUCT_NAME := aosp_rpi4_car_portrait
PRODUCT_BRAND := Raspberry
PRODUCT_MODEL := Raspberry Pi 4
PRODUCT_MANUFACTURER := Raspberry
PRODUCT_RELEASE_NAME := Raspberry Pi 4
