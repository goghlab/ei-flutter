/*
Author: XamDesign
Date: 3.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ei_autoshop/core/translations/translation_keys.dart';
import 'package:ei_autoshop/core/utils/base/base_controller.dart';
import 'package:ei_autoshop/core/utils/base/base_stateless.dart';
import 'package:ei_autoshop/core/utils/device_utils.dart';
import 'package:ei_autoshop/core/widgets/custom_submit_button.dart';

class ChangePasswordChangeNowButton extends BaseStatelessWidget {
  const ChangePasswordChangeNowButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: DeviceUtils.getDynamicWidth(context, 0.07),
      ),
      child: CustomSubmitButton(
        title: TranslationKeys.changeNow.tr,
        onTap: () {
          if (BaseController
              .settingsController.changePasswordFormKey.currentState!
              .validate()) {
            if (BaseController.settingsController.validateChangePassword()) {
              Get
                ..back()
                ..showSnackbar(
                  GetSnackBar(
                    message: TranslationKeys.changesSavedSuccessfully.tr,
                    duration: const Duration(seconds: 3),
                  ),
                );
            } else {
              Get.showSnackbar(
                GetSnackBar(
                  message: TranslationKeys.passwordsDontMatch.tr,
                  duration: const Duration(seconds: 3),
                ),
              );
            }
          }
        },
      ),
    );
  }
}
