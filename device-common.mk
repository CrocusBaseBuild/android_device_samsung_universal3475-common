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

LOCAL_PATH := device/samsung/universal3475-common

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Audio
PRODUCT_PACKAGES += \
    audio.primary.universal3475 \
    audio.a2dp.default \
    audio.r_submix.default \
    audio.usb.default \
    tinymix \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl
    
# ADB Insecure
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.secure=0 \
    ro.adb.secure=0 \
    ro.debuggable=1 \
    persist.service.adb.enable=1 

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl.3475 \
    libbt-vendor

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-impl-legacy \
    android.hardware.camera.provider@2.4-service

# Configstore
PRODUCT_PACKAGES += \
    android.hardware.configstore@1.0-impl \
    android.hardware.configstore@1.0-service

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service

# Flat device tree for boot image
PRODUCT_PACKAGES += \
    dtbhtoolExynos

# GPS
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl

# Graphics
PRODUCT_PACKAGES += \
    libion \
    libfimg \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.mapper@2.0-impl \
    libhwc2on1adapter

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.0-impl \
    android.hardware.health@2.0-service

# Keymaster
PRODUCT_PACKAGES += \
    keystore.exynos5 \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.samsung

# Livedisplay
PRODUCT_PACKAGES += \
    vendor.lineage.livedisplay@2.0-service.samsung-exynos

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video_le.xml

# Memory
PRODUCT_PACKAGES += \
    android.hardware.memtrack@1.0-impl

# Mobicore
PRODUCT_PACKAGES += \
    mcDriverDaemon \
    libMcClient \
    libMcRegistry

# Power
PRODUCT_PACKAGES += \
    power.universal7580 \
    android.hardware.power@1.0-service \
    android.hardware.power@1.0-impl

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml

# ramdisk
PRODUCT_PACKAGES += \
    init.power.rc \
    fstab.universal3475 \
    init.baseband.rc \
    init.samsung.rc \
    init.universal3475.rc \
    init.universal3475.usb.rc \
    init.recovery.universal3475.rc \
    init.wifi.rc \
    ueventd.universal3475.rc

# RenderScript
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# SamsungDoze
PRODUCT_PACKAGES += \
    SamsungDoze

# SEC
PRODUCT_PACKAGES += \
    libsecnativefeature

# Seccomp filters
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp/mediaextractor-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor.policy \
    $(LOCAL_PATH)/seccomp/mediacodec-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \
    android.hardware.vibrator@1.0-impl \
    android.hardware.vibrator@1.0-service

# Shims
PRODUCT_PACKAGES += \
    libcamera_client_shim \
    libexynoscamera_shim \
    libExynosOMX_shim \
    libstagefright_shim \
    libui_shim

# TextClassifier
PRODUCT_PACKAGES += \
    textclassifier.bundle1

# Touch features
PRODUCT_PACKAGES += \
    vendor.lineage.touch@1.0-service.samsung

# Trust HAL
PRODUCT_PACKAGES += \
    vendor.lineage.trust@1.0-service

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service.basic

# Wifi
PRODUCT_PACKAGES += \
    wifiloader \
    hostapd \
    wificond \
    wifilogd \
    wlutil \
    libwpa_client \
    wpa_supplicant \
    wpa_supplicant.conf \
    android.hardware.wifi@1.0-service \
    android.hardware.wifi@1.0 \
    android.hardware.wifi@1.0-impl

# Overriden service definition
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/init/android.hardware.media.omx@1.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/android.hardware.media.omx@1.0-service.rc \
    $(LOCAL_PATH)/configs/init/mediaserver.rc:system/etc/init/mediaserver.rc

# Properties
-include $(LOCAL_PATH)/system_prop.mk

# call Samsung LSI board support package
$(call inherit-product, hardware/samsung_slsi/exynos5/exynos5.mk)
$(call inherit-product, hardware/samsung_slsi/exynos3475/exynos3475.mk)

# call the proprietary setup
$(call inherit-product, vendor/samsung/universal3475-common/universal3475-common-vendor.mk)
