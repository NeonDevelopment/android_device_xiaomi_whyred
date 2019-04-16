#
# Copyright (C) 2018 The LineageOS Project
#
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

PRODUCT_PACKAGES += \
    omni_charger_res_images \
    animation.txt \
    font_charger.png

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default

# Camera
#PRODUCT_PACKAGES += \
#    SnapdragonCamera2

# Display
PRODUCT_PACKAGES += \
    libtinyxml2

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0

# Light
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.xiaomi_sdm660

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_profiles_vendor.xml:system/etc/media_profiles_vendor.xml

# Net
PRODUCT_PACKAGES += \
    libandroid_net \
    netutils-wrapper-1.0

# Ramdisk
PRODUCT_PACKAGES += \
    init.qcom.rc

# RIL
PRODUCT_PACKAGES += \
    ims-ext-common

# RCS
PRODUCT_PACKAGES += \
    com.android.ims.rcsmanager \
    com.android.ims.rcsmanager.xml \
    RcsService \
    PresencePolling

# Treble
PRODUCT_COPY_FILES += \
    system/core/rootdir/init.zygote64_32.rc:root/init.zygote64_32.rc \
    system/core/rootdir/init.zygote32_64.rc:root/init.zygote32_64.rc

TARGET_SUPPORTS_32_BIT_APPS := true
TARGET_SUPPORTS_64_BIT_APPS := true

PRODUCT_PACKAGES += \
    ld.config.txt

# TODO(b/78308559): includes vr_hwc into GSI before vr_hwc move to vendor
PRODUCT_PACKAGES += \
    vr_hwc

# VNDK-SP:
PRODUCT_PACKAGES += \
    vndk_package

# Call the proprietary setup
$(call inherit-product, vendor/xiaomi/whyred/whyred-vendor.mk)
