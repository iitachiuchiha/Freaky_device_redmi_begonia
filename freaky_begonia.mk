#
# Copyright (C) 2019 Potato Open Sauce Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
PRODUCT_RELEASE_NAME := begonia

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from begonia device
$(call inherit-product, device/redmi/begonia/device.mk)

# Inherit from our custom product configuration
TARGET_BOOT_ANIMATION_RES := 1080X1920

$(call inherit-product, vendor/freaky/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := begonia
PRODUCT_NAME := freaky_begonia
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 8 Pro
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "google/coral/coral:10/QQ2A.200405.005/6254899:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="begonia-user 10 QP1A.190711.020 V11.0.2.0.QGGEUXM release-keys" \
    PRODUCT_NAME="begonia" \
    TARGET_DEVICE="begonia"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# FreakyOS Stuff
CUSTOM_BUILD_TYPE := OFFICIAL
TARGET_GAPPS_ARCH := arm64
