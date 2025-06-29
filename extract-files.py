#!/usr/bin/env -S PYTHONPATH=../../../tools/extract-utils python3
#
# SPDX-FileCopyrightText: 2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

from extract_utils.fixups_lib import (
    lib_fixups,
)
from extract_utils.main import (
    ExtractUtils,
    ExtractUtilsModule,
)

namespace_imports = [
    'hardware/motorola',
    'hardware/qcom-caf/sm8150',
    'hardware/qcom-caf/wlan',
    'vendor/qcom/opensource/dataservices',
    'vendor/qcom/opensource/display',
]


module = ExtractUtilsModule(
    'sm6125-common',
    'motorola',
    namespace_imports=namespace_imports,
    lib_fixups=lib_fixups,
)


if __name__ == '__main__':
    utils = ExtractUtils.device(module)
    utils.run()
