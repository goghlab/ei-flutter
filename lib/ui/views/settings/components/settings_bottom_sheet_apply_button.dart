/*
Author: XamDesign
Date: 1.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ei_autoshop/core/translations/translation_keys.dart';
import 'package:ei_autoshop/core/utils/base/base_stateless.dart';
import 'package:ei_autoshop/core/utils/device_utils.dart';
import 'package:ei_autoshop/core/widgets/custom_submit_button.dart';

class SettingsBottomSheetApplyButton extends BaseStatelessWidget {
  final VoidCallback onTap;

  const SettingsBottomSheetApplyButton({required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: DeviceUtils.getDynamicWidth(context, 0.07),
      ),
      child: CustomSubmitButton(
        title: TranslationKeys.apply.tr,
        onTap: onTap,
      ),
    );
  }
}
