import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ei_autoshop/core/translations/translation_keys.dart';
import 'package:ei_autoshop/core/utils/base/base_controller.dart';
import 'package:ei_autoshop/core/utils/device_utils.dart';
import 'package:ei_autoshop/core/widgets/custom_text_field/custom_text_field_with_title.dart';
import 'package:ei_autoshop/ui/views/navigation/navigation_screen.dart';

class LoginPasswordField extends StatelessWidget {
  final TextEditingController controller;

  const LoginPasswordField({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: DeviceUtils.getDynamicWidth(context, 0.02),
      ),
      child: CustomTextFieldWithTitle(
        controller: controller,
        title: TranslationKeys.passwordTitle.tr,
        onFieldSubmitted: (v) {
          if (BaseController.authController.formKey.currentState!.validate()) {
            Get.offAll(
              () => const NavigationScreen(),
            );
          }
        },
        hintText: TranslationKeys.passwordHint.tr,
        obscureText: true,
      ),
    );
  }
}
