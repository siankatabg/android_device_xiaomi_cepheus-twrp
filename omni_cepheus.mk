#
# Copyright (C) 2019 The TwrpBuilder Open-Source Project
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
PRODUCT_RELEASE_NAME := cepheus

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

ALLOW_MISSING_DEPENDENCIES := true

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := cepheus
PRODUCT_NAME := omni_cepheus
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi Mi 9
PRODUCT_MANUFACTURER := Xiaomi

