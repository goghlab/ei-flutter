/*
Author: XamDesign
Date: 22.05.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ei_autoshop/core/translations/translation_keys.dart';
import 'package:ei_autoshop/core/utils/base/base_controller.dart';
import 'package:ei_autoshop/core/utils/base/base_stateless.dart';
import 'package:ei_autoshop/core/utils/device_utils.dart';
import 'package:ei_autoshop/core/widgets/custom_text_field/custom_text_field_with_title.dart';

class ChangePasswordNewPasswordField extends BaseStatelessWidget {
  const ChangePasswordNewPasswordField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: DeviceUtils.getDynamicWidth(context, 0.02),
      ),
      child: CustomTextFieldWithTitle(
        title: TranslationKeys.newPasswordTitle.tr,
        hintText: TranslationKeys.newPasswordHint.tr,
        obscureText: true,
        textInputAction: TextInputAction.next,
        onChanged: (val) =>
            BaseController.settingsController.setNewPassword(val),
      ),
    );
  }
}
