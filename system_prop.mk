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

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    af.fast_track_multiplier=1 \
    audio_hal.force_voice_config=wide

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196610

# HWC
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.latch_unsignaled=1

# Wifi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    net.tethering.noprovisioning=true

# USB
PRODUCT_PROPERTY_OVERRIDES += \
    persist.adb.notify=0 \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1 \
    persist.sys.usb.config=mtp,adb

# Network
# Define default initial receive window size in segments.
PRODUCT_PROPERTY_OVERRIDES += \
    net.tcp.default_init_rwnd=60
