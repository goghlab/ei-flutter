import 'package:flutter/material.dart';
import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/core/widgets/custom_text_field/custom_text_field_with_title.dart';
import 'package:get/get.dart';

class LoginEmailField extends StatelessWidget {
  final TextEditingController controller;

  const LoginEmailField({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: DeviceUtils.getDynamicWidth(context, 0.02),
      ),
      child: CustomTextFieldWithTitle(
        title: TranslationKeys.emailTitle.tr,
        hintText: TranslationKeys.emailHint.tr,
        textInputAction: TextInputAction.next,
        controller: controller, // Ensure the controller is passed to the CustomTextField
      ),
    );
  }
}
