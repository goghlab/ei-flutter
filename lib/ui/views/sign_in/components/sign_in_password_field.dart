// signInPasswordField.dart
import 'package:flutter/material.dart';
import 'package:ei_autoshop/core/widgets/custom_text_field/custom_text_field_with_title.dart';
import 'package:ei_autoshop/core/translations/translation_keys.dart';
import 'package:ei_autoshop/core/utils/device_utils.dart';
import 'package:get/get.dart';

class SignInPasswordField extends StatelessWidget {
  final TextEditingController controller;

  const SignInPasswordField({required this.controller, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: DeviceUtils.getDynamicWidth(context, 0.02),
      ),
      child: CustomTextFieldWithTitle(
        title: TranslationKeys.passwordTitle.tr,
        hintText: TranslationKeys.passwordHint.tr,
        textInputAction: TextInputAction.done,
        obscureText: true,
        controller: controller, // Add this line
      ),
    );
  }
}
