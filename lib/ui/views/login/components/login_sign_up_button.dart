import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/ui/views/sign_up/sign_up_screen.dart';

class LoginSignUpButton extends StatelessWidget {
  LoginSignUpButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: GestureDetector(
        onTap: () {
          HapticFeedback.lightImpact();
          Get.to(SignUpScreen());
        },
        child: Text(
          TranslationKeys.dontHaveAccountSignUp.tr,
          style: context.textTheme.bodyMedium?.copyWith(
            color: kLightTextSecondaryColor,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}
