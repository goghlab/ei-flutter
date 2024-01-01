/*
Author: XamDesign
Date: 23.05.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ei_autoshop/core/constants/color_constants.dart';
import 'package:ei_autoshop/core/translations/translation_keys.dart';
import 'package:ei_autoshop/ui/views/sign_in/sign_in_screen.dart';

class LoginSignInButton extends StatelessWidget {
  const LoginSignInButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: GestureDetector(
        onTap: () {
          HapticFeedback.lightImpact();
          Get.to(
                () => const SignInScreen(),
          );
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
